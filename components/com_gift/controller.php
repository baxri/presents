<?php

defined('_JEXEC') or die;

JTable::addIncludePath(JPATH_ADMINISTRATOR . '/components/com_gift/tables');

class GiftController extends JControllerLegacy
{
    public function toPay(){

        date_default_timezone_set(JFactory::getConfig()->get('offset'));

        try
        {
            $app = JFactory::getApplication();

            $gift_id = JRequest::getCmd('gift_id', 0);

            $destinnation = JRequest::getCmd('destination', 0);
            $amount = @number_format( JRequest::getCmd('amount', 0), 2 );

            $deliver = number_format( ($destinnation == 3 ? 10 : 0), 2 );

            $mobile = JRequest::getVar('mobile', '');
            $email = JRequest::getVar('email', '');

            $date = $this->_formatDate();

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
                case 2:
                    if( empty( $mobile ) && empty( $email ) ){
                        throw  new Exception('EMAL_OR_MOBILE_IS_REQUIRED');
                    }

                    break;
                case 3:

                    throw  new Exception('SERVICE_IS_UNAVAILABLE');

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
                    'status' => GiftTableOrder::$_PENDING
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
                //$order->deliver();
            }
        }

        exit();
    }

    private function _formatDate(){

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

        $d = JRequest::getVar('d', 0);
        $m = JRequest::getVar('m', 0);
        $y = JRequest::getVar('y', 0);

        if( empty( $d ) ){
            throw new Exception('EMPTY_D');
        }

        if( empty( $m ) ){
            throw new Exception('EMPTY_M');
        }

        if( empty( $y ) ){
            throw new Exception('EMPTY_Y');
        }

        if( !isset( $months[$m] ) ){
            throw new Exception('BAD_M');
        }

        $m = $months[$m];

        $date = $y.'-'.( $m < 10 ? '0'.$m : $m ).'-'.( $d < 10 ? '0'.$d : $d );

        $h = JRequest::getVar('h', 0);

        if( empty( $h ) ){
            throw new Exception('EMPTY_H');
        }

        $h = ( $h < 10 ? '0'.$h : $h );

        $hour = $h.':00:00';

        $full_date = $date.' '.$hour;

        return $full_date;
    }
}
