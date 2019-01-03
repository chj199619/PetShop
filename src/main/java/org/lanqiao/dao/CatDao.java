package org.lanqiao.dao;

import org.lanqiao.domain.Cat;

import java.sql.SQLException;
import java.util.List;

public interface CatDao {
    public List<Cat> catAll() throws SQLException;
}
