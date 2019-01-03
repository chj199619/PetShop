package org.lanqiao.dao.impl;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.lanqiao.dao.CatDao;

import org.lanqiao.domain.Cat;
import org.lanqiao.utils.jdbcUtils;

import java.sql.SQLException;
import java.util.List;

public class CatImpl implements CatDao {
    @Override
    public List<Cat> catAll() throws SQLException {
        QueryRunner qr = new QueryRunner(jdbcUtils.getDatasource());
        String sql = "select * from cat";
        return qr.query(sql,new BeanListHandler<>(Cat.class));
    }
}
