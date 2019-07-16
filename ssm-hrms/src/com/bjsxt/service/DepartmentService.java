package com.bjsxt.service;

import java.util.List;

import com.bjsxt.pojo.Department;

public interface DepartmentService {
	/**
	 * 查询部门名称
	 * @return
	 */
	List<Department> selAllDeptName();
	/**
	 * 查询所有部门信息
	 * @return
	 */
	List<Department> selAll();
	/**
	 * 删除部门信息
	 * @param delDeptId
	 * @return
	 */
	int delEmpById(int delDeptId);
	/**
	 * 新增部门
	 * @param department
	 * @return
	 */
	int insaddDept(Department department);
	/**
	 * 根据部门id查询部门信息
	 * @param deptId
	 * @return
	 */
	Department selDeptById(int deptId);
	/**
	 * 更改部门信息
	 * @param deptId
	 * @param department
	 * @return
	 */
	int updateDeptById(Integer deptId, Department department);
}
