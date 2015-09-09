package web.service;

import web.model.Employee;

import java.util.List;

/**
 * Created by mipan on 06.09.2015.
 */
public interface EmployeeService {

    public void addModifyEmployee(Employee employee);

    public List<Employee> listEmployee();

    public void removeEmployee(Integer id);

    public Employee getEmployee(Integer id);

    public void modifyEmployee(Employee employee);

    public List<Employee> searchEmployee(String searchTag, String searchText);
}

