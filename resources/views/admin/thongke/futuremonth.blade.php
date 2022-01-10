@extends('adminlte::master')
@section('body')


   <script src='https://code.jquery.com/jquery-3.1.1.min.js'></script>
    <script src='https://code.highcharts.com/highcharts.js'></script>
    <script src='https://code.highcharts.com/modules/exporting.js'></script>
    <script src='https://code.highcharts.com/modules/export-data.js'></script>

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>
                Trang chủ
                <small>Thống Kê</small>
            </h1>
            <ol class="breadcrumb">
                <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
                <li class="active">Thống kê</li>
                <li class="active">Thống kê tương lai</li>
            </ol>
        </section>

        <!-- Main content -->
        <section class="content">
            <div class="pull-right-container">
                <div class="row">
                    <div class="col-xs-12">
                        <br>
                        <div class="panel panel-default">
                            <div class="panel-heading"><h4 style="display: inline;">Thống kê theo thu nhập trong tháng tới</h4>
                            <!-- <span class="pull-right">
                                <select id="selectbox" class="form-select" style="width: auto" onchange="location.href = this.value;">
                                    <option value=<?= date("Y") ?>><?= date("Y") ?></option>
                                    <option value=<?= date("Y") - 1 ?>><?= date("Y") - 1 ?></option>
                                    <option value=<?= date("Y") - 2 ?>><?= date("Y") - 2 ?></option>
                                    <option value=<?= date("Y") - 3 ?>><?= date("Y") - 3 ?></option>
                                    <option value=<?= date("Y") - 4 ?>><?= date("Y") - 4 ?></option>
                                </select>
                            </span> -->
                        </div>
                            <div class="panel-body">
                                

                            <div id="container" data-order="{{ $data }}"></div>


                            </div>
                        </div>
                    </div>
                </div>

            </div>

        </section>
        <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->
@endsection
@section('script')
    <script>
        var urlyear = new Date().getFullYear()
        // if (isNaN(urlyear))
        //     document.getElementById("selectbox").selectedIndex = 0
        // else{
        //     var nowyear = new Date().getFullYear()
        //     if(urlyear == nowyear)
        //         document.getElementById("selectbox").selectedIndex = 0
        //     else if(urlyear == (nowyear - 1))
        //         document.getElementById("selectbox").selectedIndex = 1
        //     else if(urlyear == (nowyear - 2))
        //         document.getElementById("selectbox").selectedIndex = 2
        //     else if(urlyear == (nowyear - 3))
        //         document.getElementById("selectbox").selectedIndex = 3
        //     else if(urlyear == (nowyear - 4))
        //         document.getElementById("selectbox").selectedIndex = 4
        // }
        var now = new Date();
        if (now.getMonth() + 1 === 12){
            var nextmonth = 1
            urlyear += 1
        }else
            var nextmonth = now.getMonth() + 2
        function thunhap(){
            var order = $('#container').data('order');
            var listOfValue = [];
            var listOfYear = [];
            order.forEach(function(element){
                listOfYear.push(element.day);
                listOfValue.push(parseInt(element.value));
            });
            var chart = Highcharts.chart('container', {

                title: {
                    text: 'Orders by month'
                },

                subtitle: {
                    text: 'Thu nhập dự tính tháng ' + nextmonth + ' năm ' + (isNaN(urlyear) ? new Date().getFullYear() : urlyear )
                },

                xAxis: {
                    title: {
                        text: 'Ngày'
                    },
                    categories: listOfYear,
                },

                yAxis: {
                    title: {
                        text: 'Tổng đơn đặt'
                    },
                },

                credits: {
                    enabled: false
                },

                series: [{
                    name: 'Tổng đơn đặt',
                    type: 'line',
                    colorByPoint: true,
                    data: listOfValue,
                    showInLegend: false
                }]
            });
            
            $('#plain').click(function () {
                chart.update({
                    chart: {
                        inverted: false,
                        polar: false
                    },
                    subtitle: {
                        text: 'Plain'
                    }
                });
            });

            $('#inverted').click(function () {
                chart.update({
                    chart: {
                        inverted: true,
                        polar: false
                    },
                    subtitle: {
                        text: 'Inverted'
                    }
                });
            });

            $('#polar').click(function () {
                chart.update({
                    chart: {
                        inverted: false,
                        polar: true
                    },
                    subtitle: {
                        text: 'Polar'
                    }
                });
            });
        }
        thunhap();
        

    </script>
@endsection

