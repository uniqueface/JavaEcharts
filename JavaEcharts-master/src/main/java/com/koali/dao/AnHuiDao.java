package com.koali.dao;

import com.koali.model.AnHui;
import com.koali.model.LeiBieDao;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Repository
public interface AnHuiDao {
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
//https://blog.csdn.net/qq_43524683/article/details/94901896 模糊查询