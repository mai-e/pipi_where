package jp.co.comnic.lesson.osunegi.pipi_where.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface Action {

	 public Dispatcher execute(HttpServletRequest request, 
	                              HttpServletResponse response)
	                                  throws ServletException, IOException;
}
