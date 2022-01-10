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
                <li class="active">Thống kê theo năm</li>
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
                            <span class="pull-right">
                                <!-- <select class="form-select" style="width: auto">
                                    <option selected><?= date("Y") ?></option>
                                    <option value=<?= date("Y") - 1 ?>><?= date("Y") - 1 ?></option>
                                    <option value=<?= date("Y") - 2 ?>><?= date("Y") - 2 ?></option>
                                    <option value=<?= date("Y") - 3 ?>><?= date("Y") - 3 ?></option>
                                    <option value=<?= date("Y") - 4 ?>><?= date("Y") - 4 ?></option>
                                </select> -->
                            </span>
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
                                

                            <div id="hoadon" data-order="{{ $hoadon }}"></div>


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

        function thunhap(){
            var order = $('#container').data('order');
            var listOfValue = [];
            var listOfYear = [];
            order.forEach(function(element){
                listOfYear.push(element.year);
                listOfValue.push(parseInt(element.value));
            });
            var chart = Highcharts.chart('container', {

                title: {
                    text: 'Orders by years'
                },

                subtitle: {
                    text: 'Tổng thu nhập 5 năm gần nhất'
                },

                xAxis: {
                    categories: listOfYear,
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
                    type: 'column',
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
        function hoadon(){
            var order = $('#hoadon').data('order');
            var listOfValue = [];
            var listOfYear = [];
            order.forEach(function(element){
                listOfYear.push(element.year);
                listOfValue.push(parseInt(element.value));
            });
            var chart = Highcharts.chart('hoadon', {

                title: {
                    text: 'Orders by years'
                },

                subtitle: {
                    text: 'Tổng hóa đơn 5 năm gần nhất'
                },

                xAxis: {
                    categories: listOfYear,
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
                    type: 'column',
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
        hoadon();

    </script>
@endsection

