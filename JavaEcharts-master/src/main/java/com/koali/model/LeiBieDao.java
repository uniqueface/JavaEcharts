package com.koali.model;

public class LeiBieDao {
    private String leibie;
    private Integer count;

    public String getLeibie() {
        return leibie;
    }

    public void setLeibie(String leibie) {
        this.leibie = leibie;
    }

    public Integer getCount() {
        return count;
    }

    public void setCount(Integer count) {
        this.count = count;
    }
    @Override
    public String toString() {
        return "echarts{" +
                "leibie=" + leibie +
                ", count='" + count + '\'' +
                '}';
    }
}
