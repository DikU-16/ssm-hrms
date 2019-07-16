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

import com.bjsxt.pojo.Employee;
import com.bjsxt.pojo.JsonMsg;
import com.bjsxt.service.EmployeeService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
public class EmployeeController {
	@Resource
	private EmployeeService employeeServiceImpl;
	/**
	 * 分页显示员工信息
	 * @param pn
	 * @param model
	 * @return
	 */
	@RequestMapping("/emps")
	public String getEmps(@RequestParam(value="pn",defaultValue="1")Integer pn,Model model) {
		PageHelper.startPage(pn,5);//传入页码和每页显示的大小
		List<Employee> employees = employeeServiceImpl.selAllWithDept();
		PageInfo<Employee> page=new PageInfo<>(employees,5);//连续显示几页
		model.addAttribute("pageInfo",page);
		return "/employeePage.jsp";
	}
	/**
	 * 删除员工信息
	 * 单个删除二合一
	 * 批量删除 1-2-3
	 * 单个删除 1
	 * @param empId
	 * @throws IOException
	 */
	@RequestMapping("/deleteEmp/{empId}")
	@ResponseBody
	public JsonMsg deleteEmp(@PathVariable("empId") String empId){
		if(empId.contains("-")) {
			String[] str_ids = empId.split("-");
			for (String id : str_ids) {
				Integer empIds=Integer.parseInt(id);
				employeeServiceImpl.delEmpById(empIds);
			}
		}else {
			Integer empIds=Integer.parseInt(empId);
			employeeServiceImpl.delEmpById(empIds);
		}
        return JsonMsg.success();
	}
	/**
     * 根据id查询员工信息
     * @param empId
     * @return
     */
    @RequestMapping("/getEmpById/{empId}")
    @ResponseBody
    public JsonMsg getEmpById(@PathVariable("empId") Integer empId){
        Employee employee = employeeServiceImpl.selEmpById(empId);
        if (employee != null){
            return JsonMsg.success().addInfo("employee", employee);
        }else {
            return JsonMsg.fail();
        }
    }
    
    /**
     * 更改员工信息
     * @param empId
     * @param employee
     * @return
     */
    @RequestMapping("/updateEmp/{empId}")
    @ResponseBody
    public JsonMsg updateEmp(@PathVariable("empId") Integer empId,Employee employee){
        int res = employeeServiceImpl.updateEmpById(empId, employee);
        if (res != 1){
            return JsonMsg.fail().addInfo("emp_update_error", "更改异常");
        }
        return JsonMsg.success();
    }
    
    /**
     * 查询输入的员工姓名是否重复
     * @param empName
     * @return
     */
    @RequestMapping("/checkEmpExists")
    @ResponseBody
    public JsonMsg checkEmpExists(@RequestParam("empName") String empName){
        //对输入的姓名与邮箱格式进行验证
        String regName = "(^[a-zA-Z0-9_-]{3,16}$)|(^[\\u2E80-\\u9FFF]{2,5})";
        if(!empName.matches(regName)){
            return JsonMsg.fail().addInfo("name_reg_error", "输入姓名为2-5位中文或6-16位英文和数字组合");
        }
        Employee employee = employeeServiceImpl.selEmpByName(empName);
        if (employee != null){
            return JsonMsg.fail().addInfo("name_reg_error", "用户名重复");
        }else {
            return JsonMsg.success();
        }
    }
    
    /**
     * 新增员工
     * @param employee 新增的员工信息
     * @return
     */
    @RequestMapping("/addEmp")
    @ResponseBody
    public JsonMsg addEmp(Employee employee){
        int res = employeeServiceImpl.insaddEmp(employee);
        if (res == 1){
            return JsonMsg.success();
        }else {
            return JsonMsg.fail();
        }
    }
	
}
