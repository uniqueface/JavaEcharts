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
                        <a href="${pageContext.request.contextPath}/fenxi" class="nav-link active">
                            <i class="nav-icon fas fa-th"></i>
                            <p>
                                图表分析
                                <span class="right badge badge-danger">New</span>
                            </p>
                        </a>
                    </li>
                    <li class="nav-item has-treeview">
                        <a href="${pageContext.request.contextPath}/charts" class="nav-link">
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
                        <h1>图表分析</h1>
                    </div>
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="#">Home</a></li>
                            <li class="breadcrumb-item active">图表分析</li>
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
                            <div class="card-header">
                                <div class="card-title">
                                </div>
                            </div>
                            <div class="card-body">
                                <div>
                                    <div class="btn-group w-100 mb-2">
                                        <a  class="btn btn-info " href="${pageContext.request.contextPath}/fenxi.jsp" data-filter="1" > 北京 </a>
                                        <a class="btn btn-info active" href="${pageContext.request.contextPath}/shanghai.jsp" data-filter="2"> 上海 </a>
                                        <a class="btn btn-info" href="${pageContext.request.contextPath}/shenzhen.jsp" data-filter="3"> 深圳</a>
                                        <a class="btn btn-info" href="${pageContext.request.contextPath}/hangzhou.jsp" data-filter="4"> 杭州 </a>
                                        <a class="btn btn-info" href="${pageContext.request.contextPath}/wuhan.jsp" data-filter="5"> 武汉 </a>
                                    </div>
                                    <div class="mb-2">
                                        <div class="float-right">
                                        </div>
                                    </div>
                                </div>
                                <div>
                                    <div class="filter-container p-0 row">
                                        <div class="filtr-item col-sm-2" data-category="2"  data-sort="white sample">
                                            <div class="card-body">
                                                <div id="pieee" style="width: 900px;height:500px;"></div>
                                                <script type="text/javascript">

                                                    var picCharts = echarts.init(document.getElementById('pieee'));
                                                    picCharts.setOption({
                                                        title: {
                                                            text: '岗位类别',
                                                            subtext: '数据占比',
                                                            x: 'center'
                                                        },
                                                        tooltip: {
                                                            trigger: 'item',
                                                            formatter: "{a} <br/>{b} : {c} ({d}%)"
                                                        },
                                                        legend: {
                                                            orient: 'vertical',
                                                            x: 'left',
                                                            data: []
                                                        },
                                                        toolbox: {
                                                            show: true,
                                                            feature: {
                                                                mark: {show: true},
                                                                dataView: {show: true, readOnly: false},
                                                                magicType: {
                                                                    show: true,
                                                                    type: ['pie', 'funnel'],
                                                                    option: {
                                                                        funnel: {
                                                                            x: '25%',
                                                                            width: '50%',
                                                                            funnelAlign: 'left',
                                                                            max: 1548
                                                                        }
                                                                    }
                                                                },
                                                                restore: {show: true},
                                                                saveAsImage: {show: true}
                                                            }
                                                        },
                                                        calculable: true,
                                                        series: [
                                                            {
                                                                name: '岗位类别',
                                                                type: 'pie',
                                                                radius: '90%',
                                                                center: ['50%', '60%'],
                                                                data: []
                                                            }
                                                        ]
                                                    });
                                                    //显示一段动画
                                                    picCharts.showLoading();
                                                    //异步请求数据
                                                    $.ajax({
                                                        type: "post",
                                                        async: true,
                                                        url: '${pageContext.request.contextPath}/getDataAnHui',
                                                        data: [],
                                                        dataType: "json",
                                                        success: function (result) {
                                                            picCharts.hideLoading();//隐藏加载动画
                                                            picCharts.setOption({
                                                                title: {
                                                                    text: '岗位类别',
                                                                    subtext: '数据占比',
                                                                    x: 'center'
                                                                },
                                                                tooltip: {
                                                                    trigger: 'item',
                                                                    formatter: "{a} <br/>{b} : {c} ({d}%)"
                                                                },
                                                                legend: {
                                                                    orient: 'vertical',
                                                                    x: 'left',
                                                                    data: []
                                                                },
                                                                toolbox: {
                                                                    show: true,
                                                                    feature: {
                                                                        mark: {show: true},
                                                                        dataView: {show: true, readOnly: false},
                                                                        magicType: {
                                                                            show: true,
                                                                            type: ['pie', 'funnel'],
                                                                            option: {
                                                                                funnel: {
                                                                                    x: '25%',
                                                                                    width: '50%',
                                                                                    funnelAlign: 'left',
                                                                                    max: 1548
                                                                                }
                                                                            }
                                                                        },
                                                                        restore: {show: true},
                                                                        saveAsImage: {show: true}
                                                                    }
                                                                },
                                                                calculable: true,
                                                                series: [
                                                                    {
                                                                        name: '岗位',
                                                                        type: 'pie',
                                                                        radius: '55%',
                                                                        center: ['50%', '60%'],
                                                                        data: result
                                                                    }
                                                                ]
                                                            });
                                                        }
                                                    })


                                                </script>
                                            </div>
                                            <div class="card-body">
                                                <div id="piee" style="width: 900px;height:500px;"></div>

                                                <script type="text/javascript">

                                                    var pieCharts = echarts.init(document.getElementById("piee"));
                                                    //设置属性
                                                    pieCharts.setOption({
                                                        title: {
                                                            text: '不同岗位平均工资',
                                                            subtext: '数据前程无忧'
                                                        },
                                                        tooltip: {
                                                            trigger: 'axis',
                                                            axisPointer: {
                                                                type: 'shadow'
                                                            }
                                                        },
                                                        legend: {
                                                            data: ['最低', '最高']
                                                        },
                                                        grid: {
                                                            left: '3%',
                                                            right: '4%',
                                                            bottom: '8%',
                                                            containLabel: true
                                                        },
                                                        xAxis: {
                                                            type: 'value',
                                                            boundaryGap: [0, 0.01]
                                                        },
                                                        yAxis: {
                                                            type: 'category',
                                                            data: []
                                                        },
                                                        series: [
                                                            {
                                                                name: '最低',
                                                                type: 'bar',
                                                                data: []
                                                            },
                                                            {
                                                                name: '最高',
                                                                type: 'bar',
                                                                data: []
                                                            }
                                                        ]
                                                    });
                                                    //显示一段动画
                                                    pieCharts.showLoading();
                                                    //异步请求数据
                                                    var names = [];    //类别数组（实际用来盛放X轴坐标值）
                                                    var nums = [];    //销量数组（实际用来盛放Y坐标值）
                                                    var numss = [];

                                                    $.ajax({
                                                        type: "post",
                                                        async: true,            //异步请求（同步请求将会锁住浏览器，用户其他操作必须等待请求完成才可以执行）
                                                        url: "${pageContext.request.contextPath}/getDataGongZi",    //请求发送到TestServlet处
                                                        dataType: "json",        //返回数据形式为json
                                                        success: function (result) {
                                                            //请求成功时执行该函数内容，result即为服务器返回的json对象
                                                            if (result) {
                                                                for (var i = 0; i < result.length; i++) {
                                                                    names.push(result[i].name);    //挨个取出类别并填入类别数组

                                                                }
                                                                for (var i = 0; i < result.length; i++) {
                                                                    nums.push(result[i].value);    //挨个取出销量并填入销量数组

                                                                }
                                                                for (var i = 0; i < result.length; i++) {
                                                                    numss.push(result[i].value1);    //挨个取出销量并填入销量数组
                                                                }

                                                                pieCharts.hideLoading();    //隐藏加载动画
                                                                pieCharts.setOption({
                                                                    yAxis: {
                                                                        data: names
                                                                    },
                                                                    series: [
                                                                        {
                                                                            name: '最低',
                                                                            data: nums
                                                                        },
                                                                        {
                                                                            name: '最高',
                                                                            data: numss
                                                                        }
                                                                    ]
                                                                });

                                                            }

                                                        },
                                                        error: function (errorMsg) {
                                                            //请求失败时执行该函数
                                                            alert("图表请求数据失败!");
                                                            pieCharts.hideLoading();
                                                        }
                                                    })

                                                </script>
                                            </div>
                                            <div class="card-body">
                                                <div id="pid" style="width: 900px;height:500px;"></div>

                                                <script type="text/javascript">
                                                    var builderJson = {
                                                        "all": 20000,
                                                        "charts": {
                                                            "无需经验": 9435,
                                                            "1年经验":8251,
                                                            "2年经验": 9498,
                                                            "3-4年经验": 12100,
                                                            "5-7年经验": 16254
                                                        },
                                                        "components": {
                                                            "初中": 7093,
                                                            "中专": 6966,
                                                            "高中": 7753,
                                                            "大专": 9564,
                                                            "应届/在校生": 8023,
                                                            "本科": 13224,
                                                            "硕士": 16305
                                                        },
                                                        "ie": 9743
                                                    };

                                                    var downloadJson = {
                                                        "无需经验": 5942,
                                                        "1年经验":17871,
                                                        "2年经验": 15080,
                                                        "3-4年经验": 17395,
                                                        "5-7年经验": 8116
                                                    };

                                                    var themeJson = {
                                                        "大专": 36153,
                                                        "初中": 840,
                                                        "中专": 4300,
                                                        "高中": 4144,
                                                        "应届/在校生": 8644,
                                                        "硕士": 1572,
                                                        "本科": 27168
                                                    };
                                                    var pieChartss = echarts.init(document.getElementById("pid"));


                                                    var canvas = document.createElement('canvas');
                                                    var ctx = canvas.getContext('2d');
                                                    canvas.width = canvas.height = 100;
                                                    ctx.textAlign = 'center';
                                                    ctx.textBaseline = 'middle';
                                                    ctx.globalAlpha = 0.08;
                                                    ctx.font = '20px Microsoft Yahei';
                                                    ctx.translate(50, 50);
                                                    ctx.rotate(-Math.PI / 4);



                                                    //设置属性
                                                    pieChartss.setOption({
                                                        backgroundColor: {
                                                            type: 'pattern',
                                                            image: canvas,
                                                            repeat: 'repeat'
                                                        },
                                                        tooltip: {},
                                                        title: [{
                                                            text: '根据工作年龄/学历的平均工资',
                                                            left: '25%',
                                                            textAlign: 'center'
                                                        }, {
                                                            text: '根据经验的需求岗位占比',
                                                            subtext: '总计 ' + Object.keys(downloadJson).reduce(function (all, key) {
                                                                return all + downloadJson[key];
                                                            }, 0),
                                                            left: '75%',
                                                            textAlign: 'center'
                                                        }, {
                                                            text: '根据学历的需求岗位占比',
                                                            subtext: '总计 ' + Object.keys(themeJson).reduce(function (all, key) {
                                                                return all + themeJson[key];
                                                            }, 0),
                                                            left: '75%',
                                                            top: '50%',
                                                            textAlign: 'center'
                                                        }],
                                                        grid: [{
                                                            top: 50,
                                                            width: '50%',
                                                            bottom: '45%',
                                                            left: 10,
                                                            containLabel: true
                                                        }, {
                                                            top: '55%',
                                                            width: '50%',
                                                            bottom: 0,
                                                            left: 10,
                                                            containLabel: true
                                                        }],
                                                        xAxis: [{
                                                            type: 'value',
                                                            max: builderJson.all,
                                                            splitLine: {
                                                                show: false
                                                            }
                                                        }, {
                                                            type: 'value',
                                                            max: builderJson.all,
                                                            gridIndex: 1,
                                                            splitLine: {
                                                                show: false
                                                            }
                                                        }],
                                                        yAxis: [{
                                                            type: 'category',
                                                            data: Object.keys(builderJson.charts),
                                                            axisLabel: {
                                                                interval: 0,
                                                                rotate: 30
                                                            },
                                                            splitLine: {
                                                                show: false
                                                            }
                                                        }, {
                                                            gridIndex: 1,
                                                            type: 'category',
                                                            data: Object.keys(builderJson.components),
                                                            axisLabel: {
                                                                interval: 0,
                                                                rotate: 30
                                                            },
                                                            splitLine: {
                                                                show: false
                                                            }
                                                        }],
                                                        series: [{
                                                            type: 'bar',
                                                            stack: 'chart',
                                                            z: 3,
                                                            label: {
                                                                normal: {
                                                                    position: 'right',
                                                                    show: true
                                                                }
                                                            },
                                                            data: Object.keys(builderJson.charts).map(function (key) {
                                                                return builderJson.charts[key];
                                                            })
                                                        }, {
                                                            type: 'bar',
                                                            stack: 'chart',
                                                            silent: true,
                                                            itemStyle: {
                                                                normal: {
                                                                    color: '#eee'
                                                                }
                                                            },
                                                            data: Object.keys(builderJson.charts).map(function (key) {
                                                                return builderJson.all - builderJson.charts[key];
                                                            })
                                                        }, {
                                                            type: 'bar',
                                                            stack: 'component',
                                                            xAxisIndex: 1,
                                                            yAxisIndex: 1,
                                                            z: 3,
                                                            label: {
                                                                normal: {
                                                                    position: 'right',
                                                                    show: true
                                                                }
                                                            },
                                                            data: Object.keys(builderJson.components).map(function (key) {
                                                                return builderJson.components[key];
                                                            })
                                                        }, {
                                                            type: 'bar',
                                                            stack: 'component',
                                                            silent: true,
                                                            xAxisIndex: 1,
                                                            yAxisIndex: 1,
                                                            itemStyle: {
                                                                normal: {
                                                                    color: '#eee'
                                                                }
                                                            },
                                                            data: Object.keys(builderJson.components).map(function (key) {
                                                                return builderJson.all - builderJson.components[key];
                                                            })
                                                        }, {
                                                            type: 'pie',
                                                            radius: [0, '30%'],
                                                            center: ['75%', '25%'],
                                                            data: Object.keys(downloadJson).map(function (key) {
                                                                return {
                                                                    name: key,
                                                                    value: downloadJson[key]
                                                                }
                                                            })
                                                        }, {
                                                            type: 'pie',
                                                            radius: [0, '30%'],
                                                            center: ['75%', '75%'],
                                                            data: Object.keys(themeJson).map(function (key) {
                                                                return {
                                                                    name: key,
                                                                    value: themeJson[key]
                                                                };
                                                            })
                                                        }]
                                                    })
                                                    //显示一段动画
                                                    //异步请求数据

                                                </script>
                                            </div>

                                            <!-- /.card-body -->
                                        </div>
                                    </div>
                                </div>

                            </div>

                        </div>
                    </div>
                </div>
            </div><!-- /.container-fluid -->
        </section>
        <!-- /.content -->
    </div>





    <footer class="main-footer">
        <strong>Copyright &copy; 2019-2020 <a href="http://adminlte.io">招聘可视化</a>.</strong>
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
<!-- jQuery UI -->
<script src="${pageContext.request.contextPath}/plugins/jquery-ui/jquery-ui.min.js"></script>
<!-- Ekko Lightbox -->
<script src="${pageContext.request.contextPath}/plugins/ekko-lightbox/ekko-lightbox.min.js"></script>

<!-- Filterizr-->
<script src="${pageContext.request.contextPath}/plugins/filterizr/jquery.filterizr.min.js"></script>
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
    $(function () {
        $(document).on('click', '[data-toggle="lightbox"]', function(event) {
            event.preventDefault();
            $(this).ekkoLightbox({
                alwaysShowClose: true
            });
        });

        $('.filter-container').filterizr({gutterPixels: 3});
        $('.btn[data-filter]').on('click', function() {
            $('.btn[data-filter]').removeClass('active');
            $(this).addClass('active');
        });
    })


</script>
</body>
</html>
