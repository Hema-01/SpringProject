package com.ecomm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller

public class GenralController {
@RequestMapping("/login")
public  String showLoginPage()
{
	System.out.println("i am in My controller - Login Page");
	return "Login";
	
}

@RequestMapping("/register")
public  String showRegisterPage()
{
	System.out.println("i am in My controller - Register Page");
	return "Register";
	
}



}
