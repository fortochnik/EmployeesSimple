package web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import web.model.Employee;
import web.service.EmployeeService;

import javax.servlet.http.HttpServletRequest;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by mipan on 06.09.2015.
 */
@Controller
public class EmployeeController {

    @Autowired
    private EmployeeService employeeService;

    @RequestMapping(value = {"/", "search*"}, method = RequestMethod.GET)
    public String printWelcome(ModelMap model) {

        return "redirect:/list";
    }

    @RequestMapping(value = "/list*", method = RequestMethod.GET)
    public ModelAndView getList() {

        List employeeList = employeeService.listEmployee();

        ModelAndView mav = new ModelAndView("list");
        mav.addObject("employeeList", employeeList);
        mav.addObject("result", "full");
        return mav;
//        return new ModelAndView("list", "employeeList", employeeList);
    }

    @RequestMapping(value = "/search*", method = RequestMethod.POST)
    public ModelAndView searchEmployee(@RequestParam(value = "search_tag") String searchTag,
                                       @RequestParam(value = "search_text") String searchText ){
        ModelAndView mav = new ModelAndView("list");
        List employeeList = employeeService.searchEmployee(searchTag, searchText);
//        mav.addObject("result", "searchResult");
        mav.addObject("employeeList", employeeList);

        return mav;
    }


    @RequestMapping(value = "/add*", method = RequestMethod.GET)
    public String addEmployeeForm(Model model)
    {
        Employee employee = new Employee();
        model.addAttribute("user", employee);
        return "addEditUser";
    }
    @RequestMapping(value = "/add", method = RequestMethod.POST)
//    @ResponseBody
    public String addEmployee(Employee employee)
    {
        employeeService.addModifyEmployee(employee);
        return "redirect:/list";
    }
    @RequestMapping(value = "user/modify/{id}", method = RequestMethod.GET)
    public ModelAndView modifyEmployeeByIdForm (@PathVariable("id") Integer id, HttpServletRequest request)
    {
        Employee employee = employeeService.getEmployee(id);
        return new ModelAndView("addEditUser", "user", employee);

    }
    @RequestMapping(value = "user/modify/{id}", method = RequestMethod.POST)
    public String modifyEmployeeById (@PathVariable("id") Integer id, Employee employee){
//        employeeService.modifyEmployee(employee);
        employeeService.addModifyEmployee(employee);
        return "redirect:/list";
    }

    @RequestMapping(value = "user/delete/{id}", method = RequestMethod.GET)
    public ModelAndView deleteEmployeeForm (@PathVariable("id") Integer id){
        Employee employee = employeeService.getEmployee(id);
        return new ModelAndView("delete", "user", employee);
    }

    @RequestMapping(value = "user/delete/{id}", method = RequestMethod.POST)
    public String deleteEmployee (@PathVariable("id") Integer id){
        employeeService.removeEmployee(id);
        return "redirect:/list";
    }
}