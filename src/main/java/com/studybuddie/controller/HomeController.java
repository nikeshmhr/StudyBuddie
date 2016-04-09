package com.studybuddie.controller;

import com.studybuddie.data.UserCredential;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import static org.springframework.web.bind.annotation.RequestMethod.*;

/**
 *
 * @author Nikesh
 */
@Controller()
public class HomeController {
    
    @Autowired
    private UserCredential repo;
    
    @RequestMapping(value = "/", method = GET)
    public String showLoginPage(){        
        return "login";
    }
    
    @RequestMapping(value = "/register", method=GET)
    public String showRegisterForm(Model model){
        model.addAttribute(repo.getListOfFieldOfStudy());
        
        return "signup";
    }
    
}
