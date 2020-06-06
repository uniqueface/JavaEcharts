package com.koali.model;

public class AnHui {
    private Integer id;
    private String jobname;
    private String company;
    private String city;
    private String leibie;
    private String address;
    private String salary;
    private String msg;
    private String date;
    private String jobmsg;
    private String link;
    private Integer zuidi;
    private Integer zuigao;




    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getJobname() {
        return jobname;
    }

    public void setJobname(String jobname) {
        this.jobname = jobname;
    }

    public String getCompany() {
        return company;
    }

    public void setCompany(String company) {
        this.company = company;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getLeibie() {
        return leibie;
    }

    public void setLeibie(String leibie) {
        this.leibie = leibie;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getSalary() {
        return salary;
    }

    public void setSalary(String salary) {
        this.salary = salary;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getJobmsg() {
        return jobmsg;
    }

    public void setJobmsg(String jobmsg) {
        this.jobmsg = jobmsg;
    }

    public String getLink() {
        return link;
    }

    public void setLink(String link) {
        this.link = link;
    }

    @Override
    public String toString(){
        return "AnHui{"+
                "id="+id+
                ",job_name="+jobname+
                ",company="+company+
                ",city="+city+
                ",leibie="+leibie+
                ",address="+address+
                ",salary="+salary+
                ",msg="+msg+
                ",date="+date+
                ",job_msg="+jobmsg+
                ",link="+link+ "}";
    }


    public Integer getZuidi() {
        return zuidi;
    }

    public void setZuidi(Integer zuidi) {
        this.zuidi = zuidi;
    }

    public Integer getZuigao() {
        return zuigao;
    }

    public void setZuigao(Integer zuigao) {
        this.zuigao = zuigao;
    }
}
