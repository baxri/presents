<?php

defined('_JEXEC') or die;


class GiftRouter extends JComponentRouterBase
{
	public function build(&$query)
	{
		$segments = array();

		if (isset($query['view']))
		{
			unset($query['view']);
		}

		// Fix up search for URL
		$total = count($segments);

		for ($i = 0; $i < $total; $i++)
		{
			// Urlencode twice because it is decoded once after redirect
			$segments[$i] = urlencode(urlencode(stripcslashes($segments[$i])));
		}

		return $segments;
	}

	public function parse(&$segments)
	{
		$vars = array();

		if( !empty( $segments[0]) && $segments[0] == 'login' ){
			die('magaziis paneli');
		}
		elseif( !empty( $segments[0] ) && empty( $segments[1] ) ){
			$vars['option']  = 'com_gift';
			$vars['view']  = 'gift';
			$vars['cat']  = $this->_getCatID( $segments[0] );
		}
		elseif( !empty( $segments[0] ) && !empty( $segments[1] ) ){
			$vars['option']  = 'com_gift';
			$vars['view']  = 'detail';
			$vars['cat']  = $this->_getCatID( $segments[0] );
			$vars['gift']  = $this->_getGiftID( $segments[1] );
		}

		return $vars;
	}

	private function _getCatID( $alias ){

		$db = JFactory::getDBO();
		$query = $db->getQuery(true);

		$query->select('id')
			->from('#__groups')
			->where('alias = '.$db->Quote( $alias ));

		$db->setQuery( $query );

		$id = $db->loadResult();

		return $id;
	}

	private function _getGiftID( $alias ){

		$db = JFactory::getDBO();
		$query = $db->getQuery(true);

		$query->select('id')
			->from('#__gifcards')
			->where('alias = '.$db->Quote( $alias ));

		$db->setQuery( $query );

		$id = $db->loadResult();

		return $id;
	}
}


function searchBuildRoute(&$query)
{
	$router = new SearchRouter;
	return $router->build($query);
}

function searchParseRoute($segments)
{
	$router = new SearchRouter;

	return $router->parse($segments);
}
