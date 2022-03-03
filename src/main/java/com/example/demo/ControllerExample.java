package com.example.demo;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class ControllerExample {

	@RequestMapping(value = "/profile", method = RequestMethod.POST, consumes = "application/json")
	public @ResponseBody Map processAJAXRequest(@RequestBody User dto, HttpServletRequest request) {

		Map<String, Object> result = new HashMap<String, Object>();
		System.out.println("request comming successfully");
		System.out.println(dto.getFirstName());
		System.out.println(dto.getLastName());
		System.out.println(dto.getEmail());
		System.out.println(dto.getPassword());

		request.getSession().setAttribute("SessionUser", dto.getEmail());

		String sessionValue = (String) request.getSession().getAttribute("SessionUser");
		System.out.println(sessionValue);
		result.put("status", true);
		result.put("code", 200);
		result.put("data", dto);
		return result;
	}
}
