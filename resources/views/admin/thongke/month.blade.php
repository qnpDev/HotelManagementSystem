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
                <li class="active">Thống kê theo tháng</li>
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
                                <select id="selectbox" class="form-select" style="width: auto" onchange="location.href = this.value;">
                                    <option value=<?= date("Y") ?>><?= date("Y") ?></option>
                                    <option value=<?= date("Y") - 1 ?>><?= date("Y") - 1 ?></option>
                                    <option value=<?= date("Y") - 2 ?>><?= date("Y") - 2 ?></option>
                                    <option value=<?= date("Y") - 3 ?>><?= date("Y") - 3 ?></option>
                                    <option value=<?= date("Y") - 4 ?>><?= date("Y") - 4 ?></option>
                                </select>
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
        var urlyear = document.URL.split('/')[document.URL.split('/').length - 1]
        if (isNaN(urlyear))
            document.getElementById("selectbox").selectedIndex = 0
        else{
            var nowyear = new Date().getFullYear()
            if(urlyear == nowyear)
                document.getElementById("selectbox").selectedIndex = 0
            else if(urlyear == (nowyear - 1))
                document.getElementById("selectbox").selectedIndex = 1
            else if(urlyear == (nowyear - 2))
                document.getElementById("selectbox").selectedIndex = 2
            else if(urlyear == (nowyear - 3))
                document.getElementById("selectbox").selectedIndex = 3
            else if(urlyear == (nowyear - 4))
                document.getElementById("selectbox").selectedIndex = 4
        }

        function thunhap(){
            var order = $('#container').data('order');
            var listOfValue = [];
            var listOfYear = [];
            order.forEach(function(element){
                listOfYear.push(element.month);
                listOfValue.push(parseInt(element.value));
            });
            var chart = Highcharts.chart('container', {

                title: {
                    text: 'Orders by month'
                },

                subtitle: {
                    text: 'Tổng thu nhập theo tháng vào năm ' + (isNaN(urlyear) ? new Date().getFullYear() : urlyear )
                },

                xAxis: {
                    title: {
                        text: 'Tháng'
                    },
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
        function hoadon(){
            var order = $('#hoadon').data('order');
            var listOfValue = [];
            var listOfYear = [];
            order.forEach(function(element){
                listOfYear.push(element.month);
                listOfValue.push(parseInt(element.value));
            });
            var chart = Highcharts.chart('hoadon', {

                title: {
                    text: 'Orders by month'
                },

                subtitle: {
                    text: 'Tổng hóa đơn theo tháng vào năm ' + (isNaN(urlyear) ? new Date().getFullYear() : urlyear )
                },

                xAxis: {
                    title: {
                        text: 'Tháng'
                    },
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
        hoadon();

    </script>
@endsection

