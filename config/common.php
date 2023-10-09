<?php

use \LT\Config;

if(Config::value('core.stage') === 'live') {
   Config::register('pa', array(
       'service_api_url'   => 'https://api.awoz.co/',
       'school_panel_url'  =>  'https://work.awoz.co',
       'work_panel_url'     =>  'https://school.awoz.co',
       'www_panel_url'      =>  'https://www.awoz.co'
   ));
}