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
		$vars = $this->_toTask( $segments );

		if( $vars ){
			return $vars;
		}

		$vars = array();


		if( !empty( $segments[0]) && $segments[0] == 'test' ){
			$app = JFactory::getApplication();
			$app->redirect(JRoute::_('index.php?option=com_users&task=user.login'));
			return;
		}
		if( !empty( $segments[0]) && $segments[0] == 'logout' ){
			$vars['option']  = 'com_users';
			$vars['task']  = 'user.logout';
		}
		elseif( !empty( $segments[0]) && !empty( $segments[1]) && $segments[0] == 'tovisa' ){
			$vars['option']  = 'com_gift';
			$vars['view']  = 'tovisa';
			$vars['id']  = $segments[1];
		}
		elseif( !empty( $segments[0]) && !empty( $segments[1]) && $segments[0] == 'giftcard' ){
			$vars['option']  = 'com_gift';
			$vars['view']  = 'order';
			$vars['id']  = $segments[1];
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

	private function _toTask( $segments ){

		$tasks = array( 'toPay', 'callback' );

		if( !empty( $segments[0] ) && in_array( $segments[0], $tasks ) ){
			return array(
				'option' => 'com_gift',
				'task' => $segments[0]
			);
		}

		return false;
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
