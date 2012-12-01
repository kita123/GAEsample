package jp.itacademy.gae_sample.controller.ds;

import org.slim3.tester.ControllerTestCase;
import org.junit.Test;
import static org.junit.Assert.*;
import static org.hamcrest.CoreMatchers.*;

public class CreatSampleControllerTest extends ControllerTestCase {

    @Test
    public void run() throws Exception {
        tester.start("/ds/creatSample");
        CreatSampleController controller = tester.getController();
        assertThat(controller, is(notNullValue()));
        assertThat(tester.isRedirect(), is(false));
        assertThat(tester.getDestinationPath(), is("/ds/creatSample.jsp"));
    }
}
