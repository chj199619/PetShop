package org.lanqiao.dao;

import org.lanqiao.domain.Pet;

import java.sql.SQLException;
import java.util.List;

public interface searchPetInterface {
    public List<Pet> selectPet(String pettype) throws SQLException;
    public Pet sePetbyname(String petname) throws SQLException;
}

