package controller;

import org.springframework.security.access.annotation.Secured;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class SimplestController {

    @RequestMapping(value = "/secured")
    public String listOne(ModelMap model) {
        model.addAttribute("firstVal", "print this text");
        return "main";
    }

    @Secured("ROLE_ADMIN")
    @RequestMapping(value = "/isItSecured")
    public String listTwo(ModelMap model) {
        model.addAttribute("firstVal", "print this text one more time");
        return "main";
    }

    @RequestMapping(value = "/public")
    public String listThree(ModelMap model) {
        model.addAttribute("firstVal", "print this text one more time");
        return "main";
    }
}
