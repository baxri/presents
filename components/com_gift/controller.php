<?php

defined('_JEXEC') or die;


class GiftController extends JControllerLegacy
{
    public function toPay(){

        try
        {
            $app = JFactory::getApplication();

            $destinnation = JRequest::getCmd('destination');
            $amount = number_format( JRequest::getCmd('amount'), 2 );

            $mobile = JRequest::getVar('mobile');
            $email = JRequest::getVar('email');

            $date = $this->_formatDate( JRequest::getVar('date') );

            $sender_fullname = JRequest::getVar('sender_fullname');
            $sender_mobile = JRequest::getVar('sender_mobile');
            $sender_email = JRequest::getVar('sender_email');

            $text = JRequest::getVar('text');

            $app->redirect($_SERVER['HTTP_REFERER']);

        }catch( Exception $e ){
            $app->redirect($_SERVER['HTTP_REFERER']);
        }

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
        d( $date );
        $correc_time = ( $explode_time_1[0] < 10 ? '0'.$explode_time_1[0] : $explode_time_1[0] ).':'.( $explode_time_1[1] < 10 && $explode_time_1[1] != '00' ? '0'.$explode_time_1[1] : $explode_time_1[1] );

        $date = $correct_date_format.' '.$correc_time;



    }
}
