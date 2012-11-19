package jp.itacademy.gae_sample.controller.subtract;

import org.slim3.controller.Controller;
import org.slim3.controller.Navigation;

public class CalcController extends Controller {

    @Override
    public Navigation run() throws Exception {
        int x=asInteger("x");
        int y=asInteger("y");
        int result=x-y;
        requestScope("kekka",result);
        return forward("calc.jsp");
    }
}
