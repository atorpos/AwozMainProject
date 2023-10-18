<?php

namespace Action\API\Activities;

class SwimActivityAdd extends \AW\Action\Api
{

    public function __construct()
    {

    }

    public function get()
    {

    }

    public function post()
    {

        $responseData = file_get_contents('php://input');
//        $data = [];
        \LT\Logger::dump([
            'GET'   =>  $_GET,
            'POST'  =>  $_POST,
            'SERVER'=>  $_SERVER
        ]);

        $json_decode = json_decode($responseData);
        $i = 0;
        foreach ($json_decode as $value) {
            $i ++;
//            var_dump($value->total_time);
            $total_time = bcsub($value->total_time, $value->start_date, 6) ;
            $total_distance = $value->total_distance;
            $start_date = $value->start_date;
            $total_kcal = $value->total_kcal;
            $total_length = $value->length_lap;
            $hb_max = $value->HR_data->max_HR;
            $hb_min = $value->HR_data->min_HR;
            $hb_total = $value->HR_data->total_HR;
            $hb_avg = intval(bcdiv($hb_total, $value->HR_data->total_CT, 6));
            $record_token = \AW\UniqueReference::acquire('active_token');
//            var_dump(intval($total_time));
//            echo extension_loaded('bcmath') ? 'BCMath is enabled' : 'BCMath is not enabled';

            $laptime = $value->pre_lap_record;
            $active_fitness = new \AW\ActiveFitness();
            $active_fitness->active_count = intval($total_kcal);
            $active_fitness->active_client_id = 1;
            $active_fitness->type = 46;
            $active_fitness->active_durition = intval($total_time);
            $active_fitness->active_ave_hb = $hb_avg;
            $active_fitness->active_result = $total_distance;
            $active_fitness->created_date = time();
            $active_fitness->updated_date = time();
            $active_fitness->token = $record_token;
            $active_fitness->hb_max = $hb_max;
            $active_fitness->pool_length = $total_length;
            $active_fitness->start_date = $start_date;
            $active_fitness->hb_min = $hb_min;
            $active_fitness->save();

            $recorded_active = \AW\ActiveFitness::findOne([
                'token' =>  $record_token
            ]);
            var_dump($recorded_active->id);

            foreach ($laptime as $eachlap) {
//                var_dump(number_format($eachlap->swolf, 2). " ". number_format($eachlap->lap_time, 2));
                    $active_fitness_lap = new \AW\ActiveFitnessLaps();
                    $active_fitness_lap->active_fitness_id = $recorded_active->id;
                    $active_fitness_lap->lap = $eachlap->lap;
                    $active_fitness_lap->type = 'StrokeCount';
                    $active_fitness_lap->value = $eachlap->StrokeCount;
                    $active_fitness_lap->token = \AW\UniqueReference::acquire('active_lap_token');
                    $active_fitness_lap->created_time = time();
                    $active_fitness_lap->updated_time = time();
                    $active_fitness_lap->save();

                    $active_fitness_lap_time = new \AW\ActiveFitnessLaps();
                    $active_fitness_lap_time->active_fitness_id = $recorded_active->id;
                    $active_fitness_lap_time->lap = $eachlap->lap;
                    $active_fitness_lap_time->type = 'lap_time';
                    $active_fitness_lap_time->value = number_format($eachlap->lap_time, 2);
                    $active_fitness_lap_time->token = \AW\UniqueReference::acquire('active_lap_token');
                    $active_fitness_lap_time->created_time = time();
                    $active_fitness_lap_time->updated_time = time();
                    $active_fitness_lap_time->save();

                    $active_fitness_lap_id = new \AW\ActiveFitnessLaps();
                    $active_fitness_lap_id->active_fitness_id = $recorded_active->id;
                    $active_fitness_lap_id->lap = $eachlap->lap;
                    $active_fitness_lap_id->type = 'swolf';
                    $active_fitness_lap_id->value = number_format($eachlap->swolf, 2) ;
                    $active_fitness_lap_id->token = \AW\UniqueReference::acquire('active_lap_token');
                    $active_fitness_lap_id->created_time = time();
                    $active_fitness_lap_id->updated_time = time();
                    $active_fitness_lap_id->save();


            }
        }




    }
}