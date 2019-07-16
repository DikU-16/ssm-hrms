package com.bjsxt.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.bjsxt.pojo.Employee;

public interface EmployeeMapper {
	List<Employee> selAllWithDept();
	
	@Delete("delete from tbl_emp where emp_id=#{empId}")
    int delEmpById(int empId);
	
	@Select("select e.emp_id empId, e.emp_name empName, e.emp_email empEmail ,gender,d.dept_id departmentId from tbl_emp e LEFT JOIN tbl_dept d on e.department_id=d.dept_id where emp_id=#{0}")
	Employee selEmpById(int empId);
	
	@Update("update tbl_emp set emp_email = #{employee.empEmail} ,gender = #{employee.gender},department_id = #{employee.departmentId} where emp_id=#{empId}")
	int updateEmpById(@Param("empId")Integer empId,@Param("employee")Employee employee);
	
	@Select("select e.emp_id empId, e.emp_name empName, e.emp_email empEmail ,gender,d.dept_id departmentId from tbl_emp e LEFT JOIN tbl_dept d on e.department_id=d.dept_id where emp_name=#{empName}")
	Employee selEmpName(String empName);
	
	@Insert("insert into tbl_emp values(default,#{employee.empName},#{employee.empEmail},#{employee.gender},#{employee.departmentId})")
	int insaddEmp(@Param("employee")Employee employee);
}
