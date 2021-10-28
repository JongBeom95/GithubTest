package com.sexking.www.dao;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sexking.www.logic.Members;

@Repository
public class UserDAO {
	@Autowired
	public SqlSession sqlsession;
	// sqlSession은 디비의 쿼리=sql(ex/mapper 속의 명령어들)를 보낼 때 사용하는 클래스 
	// 내장함수들은 insert select delete update가 대표적 
	public Members getUserOne(String com, String col) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put(col, com);
		
		
		return sqlsession.selectOne("getUserOne",map );
		
	}
	
public int login(Members members) {
	int cnt =  sqlsession.selectOne("getUserOne",members);
	
	return cnt;
}

public int login2(Members members) {
	int cnt = sqlsession.selectOne("getUserOne",members);
	
	return cnt;
}

public int join(Members members) {
	
	
	return sqlsession.insert("join",members);
}
public int join2(Members members) {
	
	return sqlsession.insert("join",members);
}
}
