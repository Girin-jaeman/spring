package com.bit.prj04.model;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.bit.prj04.model.entity.EmpVo;

public interface EmpDao {
	//�������̽��� �޼ҵ� ��� empMapper�� ���̵� ��ġ�ؾ���.
	
	@Select("select * from emp01 order by sabun desc")
	List<EmpVo> selectAll() throws Exception;
	
	@Select("select * from emp01 where sabun=#{key}")
	EmpVo selectOne(int key) throws Exception;

	@Insert("insert into emp01 (name,nalja,pay,deptno) values (#{name},now(),#{pay},1)")
	void insertOne(EmpVo bean) throws Exception;
	
	@Update("update emp01 set name=${name},pay=#{pay} where sabun=#{sabun}")
	int updateOne(EmpVo bean) throws Exception;
	
	@Delete("delete from emp01 where sabun=#{value}")
	int deleteOne(int key) throws Exception;
	
}
//daoImpl�� ���̹�Ƽ������ �ñ�ڽ��ϴ�!