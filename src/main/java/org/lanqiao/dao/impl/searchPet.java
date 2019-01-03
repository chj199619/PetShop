package org.lanqiao.dao.impl;

import org.lanqiao.dao.searchPetInterface;
import org.lanqiao.domain.Pet;
import org.lanqiao.utils.Util;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Administrator on 2018/12/5.
 */
public class searchPet implements searchPetInterface {

    @Override
    public List<Pet> selectPet(String pettype) throws SQLException {
        Connection conn = Util.getConnection();
        String sql = "select * from Pets where pettype=?";
        PreparedStatement pstmt = conn.prepareStatement(sql);
        pstmt.setString(1,pettype);
        ResultSet rs = pstmt.executeQuery();
        List<Pet> list = new ArrayList<>();
        while (rs.next()) {
            Pet rowData = new Pet();
            rowData.setPetname(rs.getString("petname"));
            rowData.setPetprice(rs.getLong("petprice"));
            rowData.setImage(rs.getString("image"));
            rowData.setPetage(rs.getString("petnum"));
            list.add(rowData);
        }

        return list;
    }
    @Override
    public Pet sePetbyname(String petname) throws SQLException {
        Connection conn = Util.getConnection();
        String sql = "select * from Pets where petname=?";
        PreparedStatement pstmt = conn.prepareStatement(sql);
        pstmt.setString(1,petname);
        ResultSet rs = pstmt.executeQuery();
        Pet list = new Pet();
        while (rs.next()) {
            list.setPetname(rs.getString("petname"));
            list.setPetprice(rs.getLong("petprice"));
            list.setImage(rs.getString("image"));
            list.setPetage(rs.getString("petnum"));
        }

        return list;
    }
}
