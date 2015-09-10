package web.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import web.dao.EmployeeDao;
import web.model.Employee;

import java.util.List;

/**
 * Created by mipan on 06.09.2015.
 */
@Service
public class EmployeeServiceImpl implements EmployeeService {

    @Autowired
    EmployeeDao employeeDao;

    @Override
    @Transactional
    public void addModifyEmployee(Employee employee) {
        employeeDao.addEmployee(employee);
    }

    @Override
    @Transactional
    public List<Employee> listEmployee() {
        return employeeDao.listEmployee();
    }

    @Override
    @Transactional
    public void removeEmployee(Integer id) {
        employeeDao.removeEmployee(id);
    }

    @Override
    @Transactional
    public Employee getEmployee(Integer id) {
        return employeeDao.getEmployee(id);
    }

    @Override
    @Transactional
    public List<Employee> searchEmployee(String searchTag, String searchText) {
        return employeeDao.searchEmployee(searchTag, searchText);
    }
}
