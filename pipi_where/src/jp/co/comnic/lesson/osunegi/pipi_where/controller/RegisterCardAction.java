package jp.co.comnic.lesson.osunegi.pipi_where.controller;

import java.io.IOException;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class RegisterCardAction implements Action{

	@Override
	public Dispatcher execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String[] check = request.getParameterValues("checkbox");
		
		
		
		return new Forwarder(request, response, "mypage");
	}

}
