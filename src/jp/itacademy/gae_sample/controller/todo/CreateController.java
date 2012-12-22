package jp.itacademy.gae_sample.controller.todo;

import java.util.Date;

import jp.itacademy.gae_sample.model.Todo;

import org.slim3.controller.Controller;
import org.slim3.controller.Navigation;
import org.slim3.controller.validator.Validators;
import org.slim3.datastore.Datastore;

public class CreateController extends Controller {

    @Override
    public Navigation run() throws Exception {
        
       Validators v=new Validators(request);
       v.add("description", v.required());
       
       if(!v.validate()){
           return forward("index");
       }
        String name =asString("description");
        
        Todo todo = new Todo();
        todo.setCreateDate(new Date());
        Datastore.put(todo);
        
        return forward("create.jsp");
    }
}
