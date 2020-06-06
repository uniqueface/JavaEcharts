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
<div id="pie" style="width: 1600px;height: 1200px;"></div>
<script>
    //初始化echarts
    var picCharts = echarts.init(document.getElementById("pie"));
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
