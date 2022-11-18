package com.company.exam.dao;

import java.sql.SQLException;
import java.util.List;

import com.company.exam.vo.SampleVO;

public interface SampleDAO {

	int create(SampleVO vo) throws SQLException;

	SampleVO readOne(SampleVO vo) throws SQLException;

	List<SampleVO> readList() throws SQLException;

	int update(SampleVO vo) throws SQLException;

	int delete(SampleVO vo) throws SQLException;

}