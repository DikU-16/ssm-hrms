package com.bjsxt.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.bjsxt.pojo.Department;

public interface DepartmentMapper {
	@Select("select tbl_dept.dept_id deptId, tbl_dept.dept_name deptName from tbl_dept")
	List<Department> selALlDeptName();
	
	@Select("select tbl_dept.dept_id deptId,tbl_dept.dept_name deptName,tbl_dept.dept_leader deptLeader from tbl_dept")
	List<Department> selAll();

	@Delete("delete from tbl_dept where dept_id=#{0}")
	int delDept(int delDeptId);

	@Insert("insert into tbl_dept values(default,#{department.deptName},#{department.deptLeader})")
	int insDept(@Param("department")Department department);

	@Select("select tbl_dept.dept_id deptId,tbl_dept.dept_name deptName,tbl_dept.dept_leader deptLeader from tbl_dept where dept_id=#{0} ")
	Department selDeptById(int deptId);

	@Update("update tbl_dept set dept_name=#{department.deptName},dept_leader=#{department.deptLeader} where dept_id=#{deptId}")
	int updateDept(@Param("deptId")Integer deptId,@Param("department") Department department);
}
