package org.lanqiao.service.impl;


import org.lanqiao.dao.CatDao;
import org.lanqiao.dao.impl.CatImpl;

import org.lanqiao.domain.Cat;
import org.lanqiao.service.CatServiceDao;

import java.sql.SQLException;
import java.util.List;

public class CatServiceImpl implements CatServiceDao {
    @Override
    public List<Cat> catList() throws SQLException {
        CatDao dao = new CatImpl();
        return dao.catAll();
    }
}
