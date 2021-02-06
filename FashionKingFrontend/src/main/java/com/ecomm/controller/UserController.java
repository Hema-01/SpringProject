package com.ecomm.controller;

import java.util.Collection;

import javax.servlet.http.HttpSession;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UserController {
	@RequestMapping(value = "/login_success")
	public String successLoggedIn(HttpSession session) {
		String page = "";

		System.out.println("Login Success");
		SecurityContext sContext = SecurityContextHolder.getContext();
		Authentication authentication = sContext.getAuthentication();

		String username = authentication.getName();
		session.setAttribute("username", username);
		System.out.println("Username"+username);
		Collection<GrantedAuthority> roles = (Collection<GrantedAuthority>) authentication.getAuthorities();
		for (GrantedAuthority role : roles) 
		{
			session.setAttribute("role", role.getAuthority());
			if (role.getAuthority().equals("ROLE_ADMIN"))
				page = "AdminHome";
			else
				page = "UserHome";
		}

		return page;
	}
 
	
	
	@RequestMapping(value = "/logout_success")
	public String loggedout() {
		String page = "Logout";

		return page;

	}
}
