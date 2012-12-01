package jp.itacademy.gae_sample.controller.ds.employee;

import org.slim3.tester.ControllerTestCase;
import org.junit.Test;
import static org.junit.Assert.*;
import static org.hamcrest.CoreMatchers.*;

public class CreatelControllerTest extends ControllerTestCase {

    @Test
    public void run() throws Exception {
        tester.start("/ds/employee/createl");
        CreatelController controller = tester.getController();
        assertThat(controller, is(notNullValue()));
        assertThat(tester.isRedirect(), is(false));
        assertThat(tester.getDestinationPath(), is("/ds/employee/createl.jsp"));
    }
}
