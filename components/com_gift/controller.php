<?php

defined('_JEXEC') or die;

JTable::addIncludePath(JPATH_ADMINISTRATOR . '/components/com_gift/tables');

class GiftController extends JControllerLegacy
{

    // http://localhost/presents/toPay?date=2016-March-1|22:00&gift_id=15&amount=150&destination=2&mobile=598602084&email=test@mail.ru&sender_fullname=testtest&sender_mobile=598954880&sender_email=sender@mail.ru&test=congratulatoinnnnn!

    public function toPay(){

        date_default_timezone_set(JFactory::getConfig()->get('offset'));

        try
        {
            $app = JFactory::getApplication();

            $gift_id = JRequest::getCmd('gift_id', 0);

            $destinnation = JRequest::getCmd('destination', 0);
            $amount = @number_format( JRequest::getCmd('amount', 0), 2 );

            $deliver = number_format( ($destinnation == 3 ? 5 : 0), 2 );

            $mobile = JRequest::getVar('mobile', '');
            $email = JRequest::getVar('email', '');

            $date = $this->_formatDate( JRequest::getVar('date', '') ); /* 2016-March-1|22:00 */

            $sender_fullname = JRequest::getVar('sender_fullname', '');
            $sender_mobile = JRequest::getVar('sender_mobile', '');
            $sender_email = JRequest::getVar('sender_email', '');

            $text = JRequest::getVar('text');

            if( empty( $amount ) ){
                throw  new Exception('AMOUNT_IS_REQUIRED');
            }

            if( empty( $gift_id ) ){
                throw  new Exception('GIFT_ID_IS_REQUIRED');
            }

            switch( $destinnation ){
                case 1:

                    if( empty( $mobile ) ){
                        throw  new Exception('MOBILE_IS_REQUIRED');
                    }

                    break;
                case 2:

                    if( empty( $email ) ){
                        throw  new Exception('EMAIL_IS_REQUIRED');
                    }

                    break;
                case 3:
                    break;
                default;
                    throw  new Exception('BAD_FORMAT_OF_DESTINATION');
                    break;
            }

            $order = JTable::getInstance( 'order', 'GiftTable' );


            $order->bind(
                array(
                    'gift_id' => $gift_id,
                    'destinnation' => $destinnation,
                    'amount' => $amount,
                    'deliver' => $deliver,
                    'mobile' => $mobile,
                    'email' => $email,
                    'date' => $date,
                    'create_datetime' => date('Y-m-d H:m:s'),
                    'sender_fullname' => $sender_fullname,
                    'sender_mobile' => $sender_mobile,
                    'sender_email' => $sender_email,
                    'text' => $text,
                    'published' => GiftTableOrder::$_PUBLISHED,
                    'status' => GiftTableOrder::$_CONFIRM
                )
            );

            $order->store();


            $app->redirect( JUri::root().'tovisa/'.$order->id );

        }catch( Exception $e ){
            d($e->getMessage());
            //$app->redirect($_SERVER['HTTP_REFERER']);
        }

    }

    public function callback(){

        $id = JRequest::getVar('id');

        if( !empty( $id ) ){
            $order = JTable::getInstance( 'order', 'GiftTable' );
            $order->load( $id );

            if( !empty( $order->id ) ){
                $order->success();
                $order->deliver();
            }
        }

        exit();
    }

    private function _formatDate( $date ){

        $months = array(
            '1' => 'January',
            '2' => 'February',
            '3' => 'March',
            '4' => 'April',
            '5' => 'May',
            '6' => 'June',
            '7' => 'July',
            '8' => 'August',
            '9' => 'September',
            '10' => 'October',
            '11' => 'November',
            '12' => 'December',
        );

        $months = array_flip( $months );

        $explode_date = explode( '|', $date);

        if( empty( $explode_date[0] ) ){
            throw new Exception('EXPLODE_0_IS_EMPTY');
        }

        if( empty( $explode_date[1] ) ){
            throw new Exception('EXPLODE_1_IS_EMPTY');
        }

        $explode_date_0 = explode('-', $explode_date[0] );

        if( empty( $explode_date_0[0] ) ){
            throw new Exception('DATE_0_IS_EMPTY');
        }

        if( empty( $explode_date_0[1] ) ){
            throw new Exception('DATE_1_IS_EMPTY');
        }

        if( empty( $explode_date_0[2] ) ){
            throw new Exception('DATE_2_IS_EMPTY');
        }

        if( !isset( $months[$explode_date_0[1]] ) ){
            throw new Exception('BAD_FORMAT_OF_MONTH');
        }

        $correct_date_format = $explode_date_0[0].'-'.( $months[$explode_date_0[1]] < 10 ? '0'.$months[$explode_date_0[1]] : $months[$explode_date_0[1]] ).'-'.( $explode_date_0[2] < 10 ? '0'.$explode_date_0[2] : $explode_date_0[2] );


        $explode_time_1 = explode(':', $explode_date[1] );

        if( empty( $explode_time_1[0] ) ){
            throw new Exception('TIME_0_IS_EMPTY');
        }

        if( empty( $explode_time_1[1] ) ){
            throw new Exception('TIME_1_IS_EMPTY');
        }

        $correc_time = ( $explode_time_1[0] < 10 ? '0'.$explode_time_1[0] : $explode_time_1[0] ).':'.( $explode_time_1[1] < 10 && $explode_time_1[1] != '00' ? '0'.$explode_time_1[1] : $explode_time_1[1] );

        $date = $correct_date_format.' '.$correc_time;

        return $date;
    }
}
