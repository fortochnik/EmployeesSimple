package web.dao;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import web.model.Employee;

import java.util.List;

//import org.springframework.web.accept.ContentNegotiationManager;

/**
 * Created by mipan on 04.09.2015.
 */
@Repository("EmployeeDao")
//@Controller
public class EmployeeDaoImpl implements EmployeeDao {

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public void addEmployee(Employee employee) {

//        sessionFactory.getCurrentSession().save(employee);
        sessionFactory.getCurrentSession().saveOrUpdate(employee);
    }

    @Override
    public List<Employee> listEmployee() {

        return sessionFactory.getCurrentSession().createQuery("from web.model.Employee").list();
    }

    @Override
    public void removeEmployee(Integer id) {
        sessionFactory.getCurrentSession().delete(getEmployee(id));
    }

    @Override
    public Employee getEmployee(Integer id) {
        return (Employee) sessionFactory.getCurrentSession().get(Employee.class, id);
    }



    @Override
    public List<Employee> searchEmployee(String searchTag, String searchText) {
        return sessionFactory.getCurrentSession().createQuery("from web.model.Employee e where e." + searchTag + " = '" + searchText + "'").list();
    }


}
