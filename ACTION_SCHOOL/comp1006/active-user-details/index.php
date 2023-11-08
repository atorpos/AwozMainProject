<?php

namespace Action\School\Comp1006\ActiveUserDetails;

class Index extends \AW\Action {


    public function __construct()
    {
        parent::__construct();

        $input = INPUT_GET;

        switch (filter_input(INPUT_SERVER, 'REQUEST_METHOD')) {
            case 'GET':
                $input = INPUT_GET;
                break;
            case 'POST':
                $input = INPUT_POST;
                break;

        }

//        $input = filter_input(INPUT_GET, 'token');
//        var_dump($input);
    }

    public function get()
    {
        $input = filter_input(INPUT_GET, 'token');
        $active_user = \AW\ActiveClient::findOne([
           'token'  =>  $input
        ]);

        $user_name  = $active_user->first_name. ' '.$active_user->last_name;
        $telephone  = $active_user->tel;
        $email      =   $active_user->email;
        $active_type = $active_user->type;
        $active_group = '';
        $country = $active_user->country;
        if ($active_user->active_id == 1) {
            $active_group = 'Self-Motivated Swimming club';
        }


        $this->view->assign('user_name', $user_name);
        $this->view->assign('telephone', $telephone);
        $this->view->assign('email', $email);
        $this->view->assign('active_type', $active_type);
        $this->view->assign('country', $country);
        $this->view->assign('group',$active_group);

        $active_count = \AW\ActiveFitness::find([
            'active_client_id'  =>  $active_user->id
        ]);

        if(count($active_count) == 0) {
            $this->view->assign('total_count', 0);
            $this->view->assign('total_length', 0);
            $this->view->assign('average_hb', 0);
        }
        $total_active_durition = 0;
        $total_active_result = 0;
        $average_hb = 0;
        $total_active_kcal = 0;
        $total_active_count = count($active_count);
        $daily_hr = array();
        $day_of_values = array();
        foreach ($active_count as $_v) {
            $total_active_kcal = bcadd($total_active_kcal, $_v->active_count, 0);
            $total_active_durition = bcadd($total_active_durition, $_v->active_durition, 0);
            $total_active_result = bcadd($total_active_result, $_v->active_result, 0);
            $average_hb = bcadd($average_hb, $_v->active_ave_hb, 0);
            $daily_hr[] = $_v->active_ave_hb;
            date_default_timezone_set('America/New_York');
            $day_of_values[] = "'". date('Y-m-d H:i:s', $_v->created_date) ."'" ;
        }
        $average_hb = bcdiv($average_hb, $total_active_count, 2);
        $this->view->assign('average_hb', $average_hb);
        $this->view->assign('total_length', $total_active_durition);
        $this->view->assign('total_count', $total_active_count);
        $this->view->assign('activities', $active_count);
        $this->view->assign('chart_01', $this->_buildChart($daily_hr, $day_of_values));


    }

    public function post()
    {
        parent::post(); // TODO: Change the autogenerated stub
    }

    private function _buildChart($var, $var_days)
    {
        $chart_data = "[". implode(", ", $var) ."]";
        $chart_x_value = "[". implode(", ", $var_days) ."]";

        $the_chat_struct = "
    function createChart() {
        var element = document.getElementById('kt_apexcharts_3');

        var height = parseInt(KTUtil.css(element, 'height'));
        var labelColor = KTUtil.getCssVariableValue('--kt-gray-500');
        var borderColor = KTUtil.getCssVariableValue('--kt-gray-200');
        var baseColor = KTUtil.getCssVariableValue('--kt-info');
        var lightColor = KTUtil.getCssVariableValue('--kt-info-light');

        if (!element) {
            return;
        }

        var options = {
            series: [{
                name: 'Avg Heart Rate',
                data: ". $chart_data."
            }],
            chart: {
                fontFamily: 'inherit',
                type: 'area',
                height: height,
                toolbar: {
                    show: false
                }
            },
            plotOptions: {

            },
            legend: {
                show: false
            },
            dataLabels: {
                enabled: false
            },
            fill: {
                type: 'solid',
                opacity: 1
            },
            stroke: {
                curve: 'smooth',
                show: true,
                width: 3,
                colors: [baseColor]
            },
            xaxis: {
                categories: ". $chart_x_value .",
                axisBorder: {
                    show: false,
                },
                axisTicks: {
                    show: false
                },
                labels: {
                    style: {
                        colors: labelColor,
                        fontSize: '12px'
                    }
                },
                crosshairs: {
                    position: 'front',
                    stroke: {
                        color: baseColor,
                        width: 1,
                        dashArray: 3
                    }
                },
                tooltip: {
                    enabled: true,
                    formatter: undefined,
                    offsetY: 0,
                    style: {
                        fontSize: '12px'
                    }
                }
            },
            yaxis: {
                labels: {
                    style: {
                        colors: labelColor,
                        fontSize: '12px'
                    }
                }
            },
            states: {
                normal: {
                    filter: {
                        type: 'none',
                        value: 0
                    }
                },
                hover: {
                    filter: {
                        type: 'none',
                        value: 0
                    }
                },
                active: {
                    allowMultipleDataPointsSelection: false,
                    filter: {
                        type: 'none',
                        value: 0
                    }
                }
            },
            tooltip: {
                style: {
                    fontSize: '12px'
                },
                y: {
                    formatter: function (val) {
                        return 'Avg' + val + ' BPM'
                    }
                }
            },
            colors: [lightColor],
            grid: {
                borderColor: borderColor,
                strokeDashArray: 4,
                yaxis: {
                    lines: {
                        show: true
                    }
                }
            },
            markers: {
                strokeColor: baseColor,
                strokeWidth: 3
            }
        };

        var chart = new ApexCharts(element, options);
        chart.render();
    }
    createChart();";


        return $the_chat_struct;
    }

}