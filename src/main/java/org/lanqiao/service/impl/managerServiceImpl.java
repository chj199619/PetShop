package org.lanqiao.service.impl;

import org.lanqiao.dao.impl.ManagerDaoImp;
import org.lanqiao.dao.ManagerDao;
import org.lanqiao.domain.Manager;
import org.lanqiao.service.ManagerServiceDao;

import java.sql.SQLException;
import java.util.List;

public class managerServiceImpl implements ManagerServiceDao {
    @Override
    public List<Manager> findAll() throws SQLException {
        ManagerDao dao=new ManagerDaoImp();
        List<Manager>managerList=dao.getAll();
        return managerList;
    }
}
