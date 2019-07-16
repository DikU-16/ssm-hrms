package com.bjsxt.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.bjsxt.mapper.EmployeeMapper;
import com.bjsxt.pojo.Employee;
import com.bjsxt.service.EmployeeService;

@Service
public class EmployeeServiceImpl implements EmployeeService{
	@Resource
	private EmployeeMapper employeeMapper;
	
	@Override
	public List<Employee> selAllWithDept() {
		return employeeMapper.selAllWithDept();
	}

	@Override
	public int delEmpById(int empId) {
		return employeeMapper.delEmpById(empId);
	}

	@Override
	public Employee selEmpById(int empId) {
		return employeeMapper.selEmpById(empId);
	}

	@Override
	public int updateEmpById(Integer empId, Employee employee) {
		return employeeMapper.updateEmpById(empId,employee);
	}

	@Override
	public Employee selEmpByName(String empName) {
		return employeeMapper.selEmpName(empName);
	}

	@Override
	public int insaddEmp(Employee employee) {
		return employeeMapper.insaddEmp(employee);
	}

}
