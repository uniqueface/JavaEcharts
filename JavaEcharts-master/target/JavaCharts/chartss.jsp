<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/3/29
  Time: 20:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>AdminLTE 3 | Dashboard</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 引入 echarts.js -->
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/echarts.common.min.js"></script>
    <!-- 引入jquery.js -->
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
    <!-- Font Awesome -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/fontawesome-free/css/all.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <!-- Tempusdominus Bbootstrap 4 -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
    <!-- iCheck -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
    <!-- JQVMap -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/jqvmap/jqvmap.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/dist/css/adminlte.min.css">
    <!-- overlayScrollbars -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
    <!-- Daterange picker -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/daterangepicker/daterangepicker.css">
    <!-- summernote -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/summernote/summernote-bs4.css">
    <!-- Google Font: Source Sans Pro -->
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
</head>
<body class="hold-transition sidebar-mini layout-fixed">
<div class="wrapper">

    <!-- Navbar上框 -->
    <nav class="main-header navbar navbar-expand navbar-white navbar-light">
        <!-- Left navbar links -->
        <ul class="navbar-nav">
            <li class="nav-item">
                <a class="nav-link" data-widget="pushmenu" href="#"><i class="fas fa-bars"></i></a>
            </li>
            <li class="nav-item d-none d-sm-inline-block">
                <a href="#" class="nav-link">Home</a>
            </li>
            <li class="nav-item d-none d-sm-inline-block">
                <a href="#" class="nav-link">Contact</a>
            </li>
        </ul>

        <!-- SEARCH FORM -->


    </nav>
    <!-- /.navbar -->

    <!-- Main Sidebar Container左边的 -->
    <aside class="main-sidebar sidebar-dark-primary elevation-4">
        <!-- Brand Logo -->
        <a href="#" class="brand-link">
            <img src="dist/img/AdminLTELogo.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3"
                 style="opacity: .8">
            <span class="brand-text font-weight-light">招聘可视化</span>
        </a>

        <!-- Sidebar -->
        <div class="sidebar">
            <!-- Sidebar user panel (optional) -->
            <div class="user-panel mt-3 pb-3 mb-3 d-flex">
                <div class="image">
                    <img src="dist/img/user2-160x160.jpg" class="img-circle elevation-2" alt="User Image">
                </div>
                <div class="info">
                    <a href="#" class="d-block">陈政伟</a>
                </div>
            </div>

            <!-- Sidebar Menu -->
            <nav class="mt-2">
                <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
                    <!-- Add icons to the links using the .nav-icon class
                         with font-awesome or any other icon font library -->
                    <li class="nav-item has-treeview menu-open">
                        <a href="${pageContext.request.contextPath}/chaxun"  class="nav-link ">
                            <i class="nav-icon fas fa-tachometer-alt"></i>
                            <p>
                                职位搜索
                            </p>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="${pageContext.request.contextPath}/fenxi" class="nav-link">
                            <i class="nav-icon fas fa-th"></i>
                            <p>
                                图表分析
                                <span class="right badge badge-danger">New</span>
                            </p>
                        </a>
                    </li>
                    <li class="nav-item has-treeview">
                        <a href="${pageContext.request.contextPath}/charts" class="nav-link active">
                            <i class="nav-icon fas fa-chart-pie"></i>
                            <p>
                                图表
                            </p>
                        </a>

                    </li>
                    <li class="nav-item has-treeview">
                        <a href="${pageContext.request.contextPath}/from" class="nav-link">
                            <i class="nav-icon fas fa-edit"></i>
                            <p>
                                意见建议
                            </p>
                        </a>
                    </li>
                </ul>
            </nav>
            <!-- /.sidebar-menu -->
        </div>
        <!-- /.sidebar -->
    </aside>

    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1>全国图表展示</h1>
                    </div>
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="#">Home</a></li>
                            <li class="breadcrumb-item active">Text Editors</li>
                        </ol>
                    </div>
                </div>
            </div><!-- /.container-fluid -->
        </section>

        <!-- Main content -->
        <section class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-12">
                        <div class="card card-primary">
                                <!-- AREA CHART -->
                                <div class="card-header">
                                    <h3 class="card-title">软件工程师</h3>
                                </div>
                                <div class="card-body">
                                    <table>
                                        <tr>
                                            <td><div id="pie" style="width: 600px;height:450px;"></div></td>
                                            <td><img src="${pageContext.request.contextPath}/pic/rjgcs.png"  width="600" height="450" ></td>


                                        </tr>
                                    </table>

                                    <script type="text/javascript">

                                        var myChart = echarts.init(document.getElementById('pie'));

                                        var option = {
                                            tooltip: {
                                                trigger: 'axis',
                                                axisPointer: {            // 坐标轴指示器，坐标轴触发有效
                                                    type: 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
                                                }
                                            },
                                            legend: {
                                                data: ['0-1万', '1万-1.5万', '1.5万-2万', '2万-2.5万', '2.5万以上']
                                            },
                                            grid: {
                                                left: '3%',
                                                right: '4%',
                                                bottom: '3%',
                                                containLabel: true
                                            },
                                            xAxis: {
                                                type: 'value'
                                            },
                                            yAxis: {
                                                type: 'category',
                                                data: ['武汉', '杭州', '深圳', '上海', '北京']
                                            },
                                            series: [
                                                {
                                                    name: '0-1万',
                                                    type: 'bar',
                                                    stack: '总量',
                                                    label: {
                                                        show: true,
                                                        position: 'insideRight'
                                                    },
                                                    data: [998, 489, 487, 389, 452]
                                                },
                                                {
                                                    name: '1万-1.5万',
                                                    type: 'bar',
                                                    stack: '总量',
                                                    label: {
                                                        show: true,
                                                        position: 'insideRight'
                                                    },
                                                    data: [362, 381, 475, 414, 453]
                                                },
                                                {
                                                    name: '1.5万-2万',
                                                    type: 'bar',
                                                    stack: '总量',
                                                    label: {
                                                        show: true,
                                                        position: 'insideRight'
                                                    },
                                                    data: [59, 132, 205, 197, 216]
                                                },
                                                {
                                                    name: '2万-2.5万',
                                                    type: 'bar',
                                                    stack: '总量',
                                                    label: {
                                                        show: true,
                                                        position: 'insideRight'
                                                    },
                                                    data: [12, 41, 67, 112, 100]
                                                },
                                                {
                                                    name: '2.5万以上',
                                                    type: 'bar',
                                                    stack: '总量',
                                                    label: {
                                                        show: true,
                                                        position: 'insideRight'
                                                    },
                                                    data: [11, 28, 61, 67, 108]
                                                }
                                            ]
                                        };
                                        myChart.setOption(option);

                                    </script>

                                    <!-- /.card-body -->
                                </div>
                                <!-- /.card -->

                                <!-- DONUT CHART -->
                                <div class="card-header">
                                    <h3 class="card-title">销售</h3>
                                </div>


                                <div class="card-body">
                                <table>
                                    <tr>
                                        <td><div id="pia" style="width: 600px;height:450px;"></div></td>
                                        <td><img src="${pageContext.request.contextPath}/pic/xiaoshou.png"  width="600" height="450" ></td>


                                    </tr>
                                </table>

                                <script type="text/javascript">

                                    var myChart = echarts.init(document.getElementById('pia'));

                                    var option = {
                                        tooltip: {
                                            trigger: 'axis',
                                            axisPointer: {            // 坐标轴指示器，坐标轴触发有效
                                                type: 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
                                            }
                                        },
                                        legend: {
                                            data: ['0-1万', '1万-1.5万', '1.5万-2万', '2万-2.5万', '2.5万以上']
                                        },
                                        grid: {
                                            left: '3%',
                                            right: '4%',
                                            bottom: '3%',
                                            containLabel: true
                                        },
                                        xAxis: {
                                            type: 'value'
                                        },
                                        yAxis: {
                                            type: 'category',
                                            data: ['武汉',  '杭州','深圳', '上海', '北京']
                                        },
                                        series: [
                                            {
                                                name: '0-1万',
                                                type: 'bar',
                                                stack: '总量',
                                                label: {
                                                    show: true,
                                                    position: 'insideRight'
                                                },
                                                data: [10680, 8352, 11071, 6735, 6413]
                                            },
                                            {
                                                name: '1万-1.5万',
                                                type: 'bar',
                                                stack: '总量',
                                                label: {
                                                    show: true,
                                                    position: 'insideRight'
                                                },
                                                data: [3573, 3085,4595, 3770, 4018]
                                            },
                                            {
                                                name: '1.5万-2万',
                                                type: 'bar',
                                                stack: '总量',
                                                label: {
                                                    show: true,
                                                    position: 'insideRight'
                                                },
                                                data: [466, 591, 797, 854, 870]
                                            },
                                            {
                                                name: '2万-2.5万',
                                                type: 'bar',
                                                stack: '总量',
                                                label: {
                                                    show: true,
                                                    position: 'insideRight'
                                                },
                                                data: [93, 208, 187, 237, 318]
                                            },
                                            {
                                                name: '2.5万以上',
                                                type: 'bar',
                                                stack: '总量',
                                                label: {
                                                    show: true,
                                                    position: 'insideRight'
                                                },
                                                data: [86, 207, 202,214, 315]
                                            }
                                        ]
                                    };
                                    myChart.setOption(option);

                                </script>

                                <!-- /.card-body -->
                            </div>

                               <!-- PIE CHART -->

                                <div class="card-header">
                                <h3 class="card-title">会计</h3>
                            </div>


                                <div class="card-body">
                                <table>
                                    <tr>
                                        <td><div id="pib" style="width: 600px;height:450px;"></div></td>
                                        <td><img src="${pageContext.request.contextPath}/pic/kuaiji.png"  width="600" height="450" ></td>


                                    </tr>
                                </table>

                                <script type="text/javascript">

                                    var myChart = echarts.init(document.getElementById('pib'));

                                    var option = {
                                        tooltip: {
                                            trigger: 'axis',
                                            axisPointer: {            // 坐标轴指示器，坐标轴触发有效
                                                type: 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
                                            }
                                        },
                                        legend: {
                                            data: ['0-1万', '1万-1.5万', '1.5万-2万', '2万-2.5万', '2.5万以上']
                                        },
                                        grid: {
                                            left: '3%',
                                            right: '4%',
                                            bottom: '3%',
                                            containLabel: true
                                        },
                                        xAxis: {
                                            type: 'value'
                                        },
                                        yAxis: {
                                            type: 'category',
                                            data: ['武汉',  '杭州','深圳', '上海', '北京']
                                        },
                                        series: [
                                            {
                                                name: '0-1万',
                                                type: 'bar',
                                                stack: '总量',
                                                label: {
                                                    show: true,
                                                    position: 'insideRight'
                                                },
                                                data: [1202, 989, 1135,1065, 812]
                                            },
                                            {
                                                name: '1万-1.5万',
                                                type: 'bar',
                                                stack: '总量',
                                                label: {
                                                    show: true,
                                                    position: 'insideRight'
                                                },
                                                data: [14, 76,79, 115, 106]
                                            },
                                            {
                                                name: '1.5万-2万',
                                                type: 'bar',
                                                stack: '总量',
                                                label: {
                                                    show: true,
                                                    position: 'insideRight'
                                                },
                                                data: [6,6, 10, 19, 24]
                                            },
                                            {
                                                name: '2万-2.5万',
                                                type: 'bar',
                                                stack: '总量',
                                                label: {
                                                    show: true,
                                                    position: 'insideRight'
                                                },
                                                data: [1, 3, 1, 2, 9]
                                            },
                                            {
                                                name: '2.5万以上',
                                                type: 'bar',
                                                stack: '总量',
                                                label: {
                                                    show: true,
                                                    position: 'insideRight'
                                                },
                                                data: [2, 1, 2,2, 1]
                                            }
                                        ]
                                    };
                                    myChart.setOption(option);

                                </script>

                                <!-- /.card-body -->
                            </div>
                            <div class="card-header">
                                <h3 class="card-title">生物工程</h3>
                            </div>


                            <div class="card-body">
                                <table>
                                    <tr>
                                        <td><div id="pif" style="width: 600px;height:450px;"></div></td>
                                        <td><img src="${pageContext.request.contextPath}/pic/shengwu.png"  width="600" height="450" ></td>


                                    </tr>
                                </table>

                                <script type="text/javascript">

                                    var myChart = echarts.init(document.getElementById('pif'));

                                    var option = {
                                        tooltip: {
                                            trigger: 'axis',
                                            axisPointer: {            // 坐标轴指示器，坐标轴触发有效
                                                type: 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
                                            }
                                        },
                                        legend: {
                                            data: ['0-1万', '1万-1.5万', '1.5万-2万', '2万-2.5万', '2.5万以上']
                                        },
                                        grid: {
                                            left: '3%',
                                            right: '4%',
                                            bottom: '3%',
                                            containLabel: true
                                        },
                                        xAxis: {
                                            type: 'value'
                                        },
                                        yAxis: {
                                            type: 'category',
                                            data: ['武汉',  '杭州','深圳', '上海', '北京']
                                        },
                                        series: [
                                            {
                                                name: '0-1万',
                                                type: 'bar',
                                                stack: '总量',
                                                label: {
                                                    show: true,
                                                    position: 'insideRight'
                                                },
                                                data: [126, 116, 53,163,160]
                                            },
                                            {
                                                name: '1万-1.5万',
                                                type: 'bar',
                                                stack: '总量',
                                                label: {
                                                    show: true,
                                                    position: 'insideRight'
                                                },
                                                data: [32, 31,15, 101, 72]
                                            },
                                            {
                                                name: '1.5万-2万',
                                                type: 'bar',
                                                stack: '总量',
                                                label: {
                                                    show: true,
                                                    position: 'insideRight'
                                                },
                                                data: [0,13, 4, 27, 20]
                                            },
                                            {
                                                name: '2万-2.5万',
                                                type: 'bar',
                                                stack: '总量',
                                                label: {
                                                    show: true,
                                                    position: 'insideRight'
                                                },
                                                data: [0, 2, 2, 18, 12]
                                            },
                                            {
                                                name: '2.5万以上',
                                                type: 'bar',
                                                stack: '总量',
                                                label: {
                                                    show: true,
                                                    position: 'insideRight'
                                                },
                                                data: [1, 5, 4,16, 12]
                                            }
                                        ]
                                    };
                                    myChart.setOption(option);

                                </script>

                                <!-- /.card-body -->
                            </div>

                            <div class="card-header">
                                <h3 class="card-title">设计师</h3>
                            </div>


                            <div class="card-body">
                                <table>
                                    <tr>
                                        <td><div id="pis" style="width: 600px;height:450px;"></div></td>
                                        <td><img src="${pageContext.request.contextPath}/pic/sheji.png"  width="600" height="450" ></td>


                                    </tr>
                                </table>

                                <script type="text/javascript">

                                    var myChart = echarts.init(document.getElementById('pis'));

                                    var option = {
                                        tooltip: {
                                            trigger: 'axis',
                                            axisPointer: {            // 坐标轴指示器，坐标轴触发有效
                                                type: 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
                                            }
                                        },
                                        legend: {
                                            data: ['0-1万', '1万-1.5万', '1.5万-2万', '2万-2.5万', '2.5万以上']
                                        },
                                        grid: {
                                            left: '3%',
                                            right: '4%',
                                            bottom: '3%',
                                            containLabel: true
                                        },
                                        xAxis: {
                                            type: 'value'
                                        },
                                        yAxis: {
                                            type: 'category',
                                            data: ['武汉',  '杭州','深圳', '上海', '北京']
                                        },
                                        series: [
                                            {
                                                name: '0-1万',
                                                type: 'bar',
                                                stack: '总量',
                                                label: {
                                                    show: true,
                                                    position: 'insideRight'
                                                },
                                                data: [1744, 1980, 1568,1916,1040]
                                            },
                                            {
                                                name: '1万-1.5万',
                                                type: 'bar',
                                                stack: '总量',
                                                label: {
                                                    show: true,
                                                    position: 'insideRight'
                                                },
                                                data: [302,661,682, 1042, 533]
                                            },
                                            {
                                                name: '1.5万-2万',
                                                type: 'bar',
                                                stack: '总量',
                                                label: {
                                                    show: true,
                                                    position: 'insideRight'
                                                },
                                                data: [101,199, 135, 318, 182]
                                            },
                                            {
                                                name: '2万-2.5万',
                                                type: 'bar',
                                                stack: '总量',
                                                label: {
                                                    show: true,
                                                    position: 'insideRight'
                                                },
                                                data: [38, 71, 64, 119, 151]
                                            },
                                            {
                                                name: '2.5万以上',
                                                type: 'bar',
                                                stack: '总量',
                                                label: {
                                                    show: true,
                                                    position: 'insideRight'
                                                },
                                                data: [17, 87, 66,128, 190]
                                            }
                                        ]
                                    };
                                    myChart.setOption(option);

                                </script>

                                <!-- /.card-body -->
                            </div>




                            <!-- /.card-body -->

                                <!-- /.card -->

                                <!-- /.col (LEFT) -->
                                <!-- /.col (RIGHT) -->
                            </div>

                        </div></div></div>
                <!-- /.row -->
        </section>
        <!-- /.content -->
    </div>

    <footer class="main-footer">
        <strong>Copyright &copy; 2014-2019 <a href="http://adminlte.io">招聘可视化</a>.</strong>
        All rights reserved.
        <div class="float-right d-none d-sm-inline-block">
            <b>Version</b> 3.0.0
        </div>
    </footer>
    <!-- Control Sidebar -->
    <aside class="control-sidebar control-sidebar-dark">
        <!-- Control sidebar content goes here -->
    </aside>
    <!-- /.control-sidebar -->
</div>
<!-- jQuery -->
<script src="${pageContext.request.contextPath}/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="${pageContext.request.contextPath}/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="${pageContext.request.contextPath}/dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="${pageContext.request.contextPath}/dist/js/demo.js"></script>
<!-- Summernote -->
<script src="${pageContext.request.contextPath}/plugins/summernote/summernote-bs4.min.js"></script>
<script>
    $(function () {
        // Summernote
        $('.textarea').summernote()
    })


</script>
</body>
</html>
