package com.company.exam.dao;

import java.sql.Connection;
import java.sql.SQLException;

public interface DAO {

	Connection getConnection() throws SQLException;

}