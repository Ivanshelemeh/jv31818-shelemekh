package org.itstep.msk.app.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class MainController {

    @GetMapping("/")
    public String getIndex(){
        return "index";
    }
    @GetMapping("/denypage")
    public String deny (){
        return "denypage";
    }


}
