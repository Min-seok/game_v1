package kr.co.minseok;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import java.util.Map;

@Controller
public class HelloController {
	@RequestMapping(value = "/", method = RequestMethod.GET, produces = "text/plain;charset=UTF-8")
	public String printWelcome(ModelMap model) {
		model.addAttribute("message", "Hello world!");

		return "hello";
	}

    @RequestMapping(value = "/main", method = RequestMethod.GET, produces = "text/plain;charset=UTF-8")
    public String getPage(ModelMap model) {

        return "main";
    }

	@RequestMapping(value = "/test", method = RequestMethod.POST, produces = "text/plain;charset=UTF-8")
	public void getTEST(@RequestParam(value = "logBody", required = false) String aaa,
						@RequestParam(value = "logType", required = false) String serial,
						HttpServletRequest request,
						ModelMap model) {

		Map<String, String[]> req = request.getParameterMap();



		System.out.println("eee");
	}
}