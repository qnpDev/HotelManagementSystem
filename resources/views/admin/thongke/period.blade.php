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
                <li class="active">Thống kê theo quý</li>
            </ol>
        </section>

        <!-- Main content -->
        <section class="content">
            <div class="pull-right-container">
                <div class="row">
                    <div class="col-xs-12">
                        <br>
                        <div class="panel panel-default">
                            <div class="panel-heading"><h4 style="display: inline;">Thống kê theo thu nhập</h4>
                        </div>
                            <div class="panel-body">
                                

                            <div id="container" data-order="{{ $data }}"></div>


                            </div>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-xs-12">
                        <br>
                        <div class="panel panel-default">
                            <div class="panel-heading"><h4 style="display: inline;">Thống kê theo hóa đơn</h4>
                        </div>
                            <div class="panel-body">
                                
                            
                            <div id="hoadon" data-order="{{ $data }}"></div>


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

    var nowyear = new Date().getFullYear()
    var lastyear = (new Date().getFullYear()) - 1
    var listyear = [
        'Q1/'+lastyear, 
        'Q2/'+lastyear, 
        'Q3/'+lastyear, 
        'Q4/'+lastyear,
        'Q1/'+nowyear, 
        'Q2/'+nowyear, 
        'Q3/'+nowyear, 
        'Q4/'+nowyear, 
         
    ]

        function thunhap(){
            var order = $('#container').data('order');
            var chart = Highcharts.chart('container', {
                title: {
                    text: 'Orders by period'
                },

                subtitle: {
                    text: 'Tổng thu nhập theo quý',
                },

                xAxis: {
                    categories: listyear,
                },

                yAxis: {
                    title: {
                        text: 'Tổng thu nhập'
                    },
                },

                credits: {
                    enabled: false
                },

                series: [{
                    name: 'Tổng thu nhập',
                    type: 'line',
                    colorByPoint: true,
                    data: order.tien,
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
        function hoadon(){
            var order = $('#hoadon').data('order');
            var chart = Highcharts.chart('hoadon', {

                title: {
                    text: 'Orders by period'
                },

                subtitle: {
                    text: 'Tổng hóa đơn theo quý',
                },

                xAxis: {
                    categories: listyear,
                },

                yAxis: {
                    title: {
                        text: 'Tổng hóa đơn'
                    },
                },

                credits: {
                    enabled: false
                },

                series: [{
                    name: 'Tổng hóa đơn',
                    type: 'line',
                    colorByPoint: true,
                    data: order.don,
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
        hoadon();

    </script>
@endsection

