package com.koali.model;

/**
 * 填充数据格式
 */
public class Echarts {


    private String name;
    private double value;
    private double value1;


    public Echarts() {
    }

    public Echarts(String name,double value,double value1 ) {
        this.value = value;
        this.name = name;
        this.value1=value1;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }


    public double getValue() {
        return value;
    }

    public void setValue(double value) {
        this.value = value;
    }


    public double getValue1() {
        return value1;
    }

    public void setValue1(double value1) {
        this.value1 = value1;
    }
    @Override
    public String toString() {
        return "echarts{" +
                "name=" + name +
                ", value='" + value + '\'' +
                ", value1='" + value1 + '\'' +
                '}';
    }
}

