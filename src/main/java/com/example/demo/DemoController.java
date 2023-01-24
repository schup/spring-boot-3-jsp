package com.example.demo;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@Controller
public class DemoController {

    @GetMapping("/home")
    public String home(final HttpServletRequest request, final HttpServletResponse response, Model model) {
        request.setAttribute("originalUri", request.getRequestURI());
        return "home";
    }
    @GetMapping("/demo")
    public String demo(Model model) {
        return "demo";
    }

}
