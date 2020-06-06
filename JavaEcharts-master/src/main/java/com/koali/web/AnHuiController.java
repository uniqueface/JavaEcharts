package com.koali.web;


import com.koali.model.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class AnHuiController {
    @Autowired
    private com.koali.service.AnHuiService AnHuiService;





    @RequestMapping(value = "/chaxun", produces = "application/json;charset=utf-8")
    @ResponseBody
    public ModelAndView getAll(String name){
        System.out.println(name);
        List<AnHui> userList = AnHuiService.getAll(name);
        ModelAndView mv = new ModelAndView();
        mv.addObject("list", userList);
        mv.setViewName("chaXun");
        return mv;
        }

    @RequestMapping(value = "/getLeiBie")
    public String getPieCharts() {
        return "anhui";
    }

    @RequestMapping(value = "/fenxi")
    public String fenxi() {
        return "fenxi";
    }



    @RequestMapping(value = "/getGongzi")
    public String getGongZi() {
        return "gongzi";
    }

    @RequestMapping(value = "/zhuye")
    public String zhuye() {
        return "zhuye";
    }

    @RequestMapping(value = "/from")
    public String from() {
        return "from";
    }

    @RequestMapping(value = "/charts")
    public String charts() {
        return "chartss";
    }

    @RequestMapping(value = "/getDataAnHui")
    @ResponseBody
    public List<sorceResult>getData() {
        List<Map<String,Object>> list = AnHuiService.getLeibie();
        HashMap<String,Integer> map=new HashMap<String,Integer>();
        List<sorceResult> results = new ArrayList<sorceResult>();
        for (Map<String, Object> m :list){
            map.put(m.get("leibie").toString(),Integer.parseInt(m.get("counts").toString()));
            //Integer a =Integer.valueOf(String.valueOf(m.get("counts"))).intValue();
            //System.out.println(m.get("counts").toString());
            sorceResult result = new sorceResult(Integer.parseInt(m.get("counts").toString()),m.get("leibie").toString());
            results.add(result);
            }

        //System.out.println(map.get("销售主管"));

        return results;

    }


    @RequestMapping(value = "/getDataGongZi")
    @ResponseBody
    public List<Echarts>getDataGongZi() {
        List<Map<String,Object>> list = AnHuiService.getGongZi();
        HashMap<String,Integer> map1=new HashMap<String,Integer>();
        HashMap<String,Integer> map2=new HashMap<String,Integer>();
        List<Echarts> results = new ArrayList<Echarts>();
        for (Map<String, Object> m :list){
            Echarts result = new Echarts(m.get("leibie").toString(),Double.parseDouble(m.get("zuidi").toString()),Double.parseDouble(m.get("zuigao").toString()));
            results.add(result);
        }
        return results;

    }
    @RequestMapping(value = "/getDataShanghai")
    @ResponseBody
    public List<sorceResult>getDataS() {
        List<Map<String,Object>> list = AnHuiService.getLeibieS();
        HashMap<String,Integer> map=new HashMap<String,Integer>();
        List<sorceResult> results = new ArrayList<sorceResult>();
        for (Map<String, Object> m :list){
            map.put(m.get("leibie").toString(),Integer.parseInt(m.get("counts").toString()));
            sorceResult result = new sorceResult(Integer.parseInt(m.get("counts").toString()),m.get("leibie").toString());
            results.add(result);
        }
        return results;

    }

    @RequestMapping(value = "/getDataGongZiS")
    @ResponseBody
    public List<Echarts>getDataGongZiS() {
        List<Map<String,Object>> list = AnHuiService.getGongZiS();
        List<Echarts> results = new ArrayList<Echarts>();
        //ArrayList<Integer> ll=new ArrayList<Integer>();
        for (Map<String, Object> m :list){
            Echarts result = new Echarts(m.get("leibie").toString(),Double.parseDouble(m.get("zuidi").toString()),Double.parseDouble(m.get("zuigao").toString()));
            results.add(result);
        }
        return results;

    }

    @RequestMapping(value = "/getDataShen")
    @ResponseBody
    public List<sorceResult>getDataShen() {
        List<Map<String,Object>> list = AnHuiService.getLeiShen();
        HashMap<String,Integer> map=new HashMap<String,Integer>();
        List<sorceResult> results = new ArrayList<sorceResult>();
        for (Map<String, Object> m :list){
            map.put(m.get("leibie").toString(),Integer.parseInt(m.get("counts").toString()));
            sorceResult result = new sorceResult(Integer.parseInt(m.get("counts").toString()),m.get("leibie").toString());
            results.add(result);
        }
        return results;

    }

    @RequestMapping(value = "/getDataGongShen")
    @ResponseBody
    public List<Echarts>getDataGongShen() {
        List<Map<String,Object>> list = AnHuiService.getGongShen();
        List<Echarts> results = new ArrayList<Echarts>();
        //ArrayList<Integer> ll=new ArrayList<Integer>();
        for (Map<String, Object> m :list){
            Echarts result = new Echarts(m.get("leibie").toString(),Double.parseDouble(m.get("zuidi").toString()),Double.parseDouble(m.get("zuigao").toString()));
            results.add(result);
        }
        return results;

    }

    @RequestMapping(value = "/getDataHang")
    @ResponseBody
    public List<sorceResult>getDataHang() {
        List<Map<String,Object>> list = AnHuiService.getLeiHang();
        HashMap<String,Integer> map=new HashMap<String,Integer>();
        List<sorceResult> results = new ArrayList<sorceResult>();
        for (Map<String, Object> m :list){
            map.put(m.get("leibie").toString(),Integer.parseInt(m.get("counts").toString()));
            sorceResult result = new sorceResult(Integer.parseInt(m.get("counts").toString()),m.get("leibie").toString());
            results.add(result);
        }
        return results;

    }

    @RequestMapping(value = "/getDataGongHang")
    @ResponseBody
    public List<Echarts>getDataGongHang() {
        List<Map<String,Object>> list = AnHuiService.getGongHang();
        List<Echarts> results = new ArrayList<Echarts>();
        //ArrayList<Integer> ll=new ArrayList<Integer>();
        for (Map<String, Object> m :list){
            Echarts result = new Echarts(m.get("leibie").toString(),Double.parseDouble(m.get("zuidi").toString()),Double.parseDouble(m.get("zuigao").toString()));
            results.add(result);
        }
        return results;

    }

    @RequestMapping(value = "/getDataWu")
    @ResponseBody
    public List<sorceResult>getDataWu() {
        List<Map<String,Object>> list = AnHuiService.getLeiWu();
        HashMap<String,Integer> map=new HashMap<String,Integer>();
        List<sorceResult> results = new ArrayList<sorceResult>();
        for (Map<String, Object> m :list){
            map.put(m.get("leibie").toString(),Integer.parseInt(m.get("counts").toString()));
            sorceResult result = new sorceResult(Integer.parseInt(m.get("counts").toString()),m.get("leibie").toString());
            results.add(result);
        }
        return results;

    }

    @RequestMapping(value = "/getDataGongWu")
    @ResponseBody
    public List<Echarts>getDataGongWu() {
        List<Map<String,Object>> list = AnHuiService.getGongWu();
        List<Echarts> results = new ArrayList<Echarts>();
        //ArrayList<Integer> ll=new ArrayList<Integer>();
        for (Map<String, Object> m :list){
            Echarts result = new Echarts(m.get("leibie").toString(),Double.parseDouble(m.get("zuidi").toString()),Double.parseDouble(m.get("zuigao").toString()));
            results.add(result);
        }
        return results;

    }

}
