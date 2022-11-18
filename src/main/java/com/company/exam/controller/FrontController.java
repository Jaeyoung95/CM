package com.company.exam.controller;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class FrontController extends HttpServlet {
	public HashMap<String, Controller> map;
	
	@Override
	public void init(ServletConfig config) throws ServletException {
		map=new HashMap();
		
		map.put("/select.do", new SelectController());
	}
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println(req.getRequestURI());
		int n=req.getRequestURI().lastIndexOf("/");
		String url=req.getRequestURI().substring(n);
		System.out.println(url);
		map.get(url).execute(req, resp);
		
	}

}
