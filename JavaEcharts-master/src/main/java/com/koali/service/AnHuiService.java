package com.koali.service;

import com.koali.model.AnHui;
import com.koali.model.LeiBieDao;
import org.apache.ibatis.annotations.Param;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public interface AnHuiService {
    List<AnHui> getAll( String name);
    List<Map<String,Object>> getLeibie();
    List<Map<String,Object>> getGongZi();

    List<Map<String,Object>> getLeibieS();
    List<Map<String,Object>> getGongZiS();

    List<Map<String,Object>> getLeiShen();
    List<Map<String,Object>> getGongShen();

    List<Map<String,Object>> getLeiHang();
    List<Map<String,Object>> getGongHang();

    List<Map<String,Object>> getLeiWu();
    List<Map<String,Object>> getGongWu();

}
