package com.bjsxt.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.bjsxt.mapper.DepartmentMapper;
import com.bjsxt.pojo.Department;
import com.bjsxt.service.DepartmentService;

@Service
public class DepartmentServiceImpl implements DepartmentService{
	@Resource
	private DepartmentMapper departmentMapper;

	@Override
	public List<Department> selAllDeptName() {
		return departmentMapper.selALlDeptName();
	}

	@Override
	public List<Department> selAll() {
		return departmentMapper.selAll();
	}

	@Override
	public int delEmpById(int delDeptId) {
		return departmentMapper.delDept(delDeptId);
	}

	@Override
	public int insaddDept(Department department) {
		return departmentMapper.insDept(department);
	}

	@Override
	public Department selDeptById(int deptId) {
		return departmentMapper.selDeptById(deptId);
	}

	@Override
	public int updateDeptById(Integer deptId, Department department) {
		// TODO Auto-generated method stub
		return departmentMapper.updateDept(deptId,department);
	}
	
	
}
