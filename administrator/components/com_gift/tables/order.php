<?php
defined('_JEXEC') or die('Restricted access');
jimport('joomla.database.table');

class GiftTableOrder extends JTable
{
    public static $_PENDING = 0;
    public static $_CONFIRM = 3;

    public static $_PUBLISHED = 1;
    public static $_UNPUBLISHED = 0;

    public $id;
    public $payment_id;
    public $gift_id;
    public $destinnation;

    public $amount;
    public $deliver;

    public $mobile;
    public $email;

    public $date;
    public $create_datetime;
    public $pay_datetime;

    public $sender_fullname;
    public $sender_mobile;
    public $sender_email;
    public $text;

    public $published;
    public $status;

    public $error;
    public $sms_response;

    function __construct( &$db, $field = 'id' )
    {
        parent::__construct('#__orders', $field, $db);
    }

    public function success(){

        date_default_timezone_set(JFactory::getConfig()->get('offset'));

        if( empty( $this->id ) ){
            throw new Exception('ORDER_ID_IS_EMPTY');
        }

        $this->status = GiftTableOrder::$_CONFIRM;
        $this->pay_datetime = date('Y-m-d H:m:s');

        $this->store();
    }

    public function deliver(){

        if( empty( $this->id ) ){
            throw new Exception('ORDER_ID_IS_EMPTY');
        }

        switch( $this->destinnation ){

            case 1:
            case 2:
                $this->_sendMobile();
                $this->_sendEmail();
            case 3:
                //shipping delivery
                break;

        }
    }

    private function _sendMobile(){

        $gateway = 'http://msg.ge/bi/sendsms.php';

        $username = 'test';
        $passowrd = 'test';
        $client_id = '2';
        $service_id = '0002';

        if( empty( $this->mobile ) ){
            return $this->_error( 'MOBILE_IS_EMPTY' );
        }

        $number = '995'.substr( $this->mobile, strlen($this->mobile) - 9, 9 );
        $text = $this->text;

        $request = $gateway.'?username='.$username.'&password='.$passowrd.'&client_id='.$client_id.'&service_id='.$service_id.'&to='.$number.'&text='.$text;

        $this->sms_response = file_get_contents( $request );

        $response = explode( '-', $this->sms_response);

        if( !( isset( $response[0] ) && $response[0] == '0000' ) ){
            return $this->_error( 'CANNOT_SEND_SMS_CODE_RESPONSE_IS'.$this->sms_response );
        }
    }

    private function _sendEmail(){

        $mainframe 	= JFactory::getApplication();

        $mailer = JFactory::getMailer();
        $mailer->setSender(array($mainframe->get('mailfrom'), $mainframe->get('fromname')));
        $mailer->setSubject('SIURPRIZ.GE');

        $body = $this->_getMailBody();

        $mailer->setBody( $body );
        $mailer->IsHtml( true );

        $mailer->addRecipient( $this->email );

        $sent = $mailer->Send();

        if( $sent !== true ){
            return $this->_error( $sent->__toString() );
        }
    }

    private function _getMailBody(){

        $file = JPATH_ROOT . DIRECTORY_SEPARATOR . 'mails' . DIRECTORY_SEPARATOR . 'giftcard' . '.php';

        if( !file_exists( $file ) ){
            return $this->_error('MAIL_TEMPLATE_NOT_FOUND');
        }

        $vars = array();

        foreach( $this->getProperties() as $key => $field ){
            $vars[strtoupper($key)] = $field;
        }

        ob_start();
        require($file);
        $html = ob_get_clean();

        $body = $this->_parseMailTemplate( $html, $vars );

        return $body;
    }

    private  function _error( $msg ){
        $this->error = $msg;
        $this->store();

        return false;
    }

    private function _parseMailTemplate( $body, $array, $case = true )
    {
        $exclude = array('email', 'subject');
        foreach ( $array as $k => $v )
        {
            if ( in_array( $k, $exclude ) )
            {
                continue;
            }

            if( $case )
                $key = '{' . strtoupper( $k ) . '}';
            else
                $key = '{' . strtolower( $k ) . '}';

            $value = html_entity_decode( $v, ENT_QUOTES );
            $body = str_replace( $key, $value, $body );
        }
        return $body;
    }
}
?>