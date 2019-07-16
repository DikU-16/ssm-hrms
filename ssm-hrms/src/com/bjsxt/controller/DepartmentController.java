package com.bjsxt.controller;

import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bjsxt.pojo.Department;
import com.bjsxt.pojo.JsonMsg;
import com.bjsxt.service.DepartmentService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
public class DepartmentController {
	@Resource
	private DepartmentService departmentServiceImpl;
	/**
     * 查询所有部门名称
     * @return
     */
    @RequestMapping("/getDeptName")
    @ResponseBody
    public JsonMsg getDeptName(){
        List<Department> departmentList = departmentServiceImpl.selAllDeptName();
        if (departmentList != null){
            return JsonMsg.success().addInfo("departmentList", departmentList);
        }
        return JsonMsg.fail();
    }
    
    /**
	 * 分页显示部门信息
	 * @param pn
	 * @param model
	 * @return
	 */
	@RequestMapping("/depts")
	public String getDepts(@RequestParam(value="pn",defaultValue="1")Integer pn,Model model) {
		PageHelper.startPage(pn,5);//传入页码和每页显示的大小
		List<Department> departs = departmentServiceImpl.selAll();
		PageInfo<Department> page=new PageInfo<>(departs,5);//连续显示几页
		model.addAttribute("pagedeptInfo",page);
		return "/departmentPage.jsp";
	}
	
	/**
	 * 删除部门信息
	 * @param empId
	 * @throws IOException
	 */
	@RequestMapping("/delDept/{delDeptId}")
	@ResponseBody
	public JsonMsg deleteDept(@PathVariable Integer delDeptId){
		int res = 0;
        if (delDeptId > 0){
            res = departmentServiceImpl.delEmpById(delDeptId);
        }
        if (res != 1){
            return JsonMsg.fail().addInfo("emp_del_error", "员工删除异常");
        }
        return JsonMsg.success();
	}
	
	/**
     * 新增部门
     * @param department
     * @return
     */
    @RequestMapping("/addDept")
    @ResponseBody
    public JsonMsg addDept(Department department){
        int res = departmentServiceImpl.insaddDept(department);
        if (res != 1){
            return JsonMsg.fail().addInfo("add_dept_error", "添加异常！");
        }
        return JsonMsg.success();
    }
    
    /**
     * 根据部门id查询部门信息
     * @param deptId
     * @return
     */
    @RequestMapping("/getDeptById/{deptId}")
    @ResponseBody
    public JsonMsg getDeptById(@PathVariable("deptId") Integer deptId){
        Department department = null;
        if (deptId > 0){
            department = departmentServiceImpl.selDeptById(deptId);
        }
        if (department != null){
            return JsonMsg.success().addInfo("department", department);
        }
        return JsonMsg.fail().addInfo("get_dept_error", "无部门信息");
    }
    
    /**
     * 部门更改
     * @param deptId
     * @param department
     * @return
     */
    @RequestMapping("/updateDept/{deptId}")
    @ResponseBody
    public JsonMsg updateDeptById(@PathVariable("deptId") Integer deptId, Department department){

        int res = 0;
        if (deptId > 0){
            res = departmentServiceImpl.updateDeptById(deptId, department);
        }
        if (res != 1){
            return JsonMsg.fail().addInfo("update_dept_error", "部门更新失败");
        }
        return JsonMsg.success();
    }
}
