package jp.itacademy.gae_sample.controller.ds.employee;

import jp.itacademy.gae_sample.model.Employee;

import org.slim3.controller.Controller;
import org.slim3.controller.Navigation;
import org.slim3.datastore.Datastore;

public class Create2Controller extends Controller {

    @Override
    public Navigation run() throws Exception {
        
        Employee employee=new Employee();
        employee.setKey(Datastore.createKey(Employee.class, 9999));
        employee.setName("ŽÐ’{Žl˜Y");
        
        return forward("create2.jsp");
    }
}
