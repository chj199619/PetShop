package org.lanqiao.service;

import org.lanqiao.domain.Cat;

import java.sql.SQLException;
import java.util.List;

public interface CatServiceDao {
    public List<Cat> catList() throws SQLException;
}
