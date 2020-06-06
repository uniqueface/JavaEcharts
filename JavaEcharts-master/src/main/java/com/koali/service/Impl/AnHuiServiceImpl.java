package com.koali.service.Impl;

import com.koali.dao.AnHuiDao;
import com.koali.model.AnHui;
import com.koali.model.LeiBieDao;
import com.koali.service.AnHuiService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by Elric on 2017/7/6.
 */
@Service("AnHuiService")
public class AnHuiServiceImpl implements AnHuiService {
    @Autowired
    private AnHuiDao AnHuiDao;
    public List<AnHui> getAll(String name) {
        return AnHuiDao.getAll(name);
    }
    public List<Map<String,Object>> getLeibie(){return AnHuiDao.getLeibie();}
    public List<Map<String,Object>> getGongZi(){return AnHuiDao.getGongZi();}

    public List<Map<String,Object>> getLeibieS(){return AnHuiDao.getLeibieS();}
    public List<Map<String,Object>> getGongZiS(){return AnHuiDao.getGongZiS();}

    public List<Map<String,Object>> getLeiShen(){return AnHuiDao.getLeiShen();}
    public List<Map<String,Object>> getGongShen(){return AnHuiDao.getGongShen();}

    public List<Map<String,Object>> getLeiHang(){return AnHuiDao.getLeiHang();}
    public List<Map<String,Object>> getGongHang(){return AnHuiDao.getGongHang();}

    public List<Map<String,Object>> getLeiWu(){return AnHuiDao.getLeiWu();}
    public List<Map<String,Object>> getGongWu(){return AnHuiDao.getGongWu();}

}
