<%--
  Created by IntelliJ IDEA.
  User: Elric
  Date: 2017/7/8
  Time: 21:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <script src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/echarts.common.min.js"></script>
</head>
<body>
<div id="pie" style="width: 1300px;height: 1600px;"></div>
<div id="pic" style="width: 1600px;height: 1200px;"></div>
<script>
    //初始化echarts
    var pieCharts = echarts.init(document.getElementById("pie"));
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
    //初始化echarts
    var picCharts = echarts.init(document.getElementById("pic"));
    //设置属性
    picCharts.setOption({
        title: {
            text: '学生成绩',
            subtext: '成绩比',
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
</body>
</html>
