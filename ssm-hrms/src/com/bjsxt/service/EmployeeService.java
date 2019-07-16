package com.bjsxt.service;

import java.util.List;

import com.bjsxt.pojo.Employee;

public interface EmployeeService {
	/**
	 * 查询所有
	 * @return
	 */
	List<Employee> selAllWithDept();
	
	/**
	 * 删除员工
	 * @param empId
	 * @return
	 */
	int delEmpById(int empId);
	/**
	 * 根据id查询员工信息
	 * @param empId
	 * @return
	 */
	Employee selEmpById(int empId);
	/**
	 * 修改员工信息
	 * @param empId
	 * @param employee
	 * @return
	 */
	int updateEmpById(Integer empId, Employee employee);
	/**
	 * 查询员工姓名是否重复
	 * @param empName
	 * @return
	 */
	Employee selEmpByName(String empName);
	/**
	 * 新增员工
	 * @param employee
	 * @return
	 */
	int insaddEmp(Employee employee);
}
