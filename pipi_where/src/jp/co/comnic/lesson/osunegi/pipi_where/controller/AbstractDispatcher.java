package jp.co.comnic.lesson.osunegi.pipi_where.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public abstract class AbstractDispatcher implements Dispatcher {

    protected HttpServletRequest request;
    protected HttpServletResponse response;
    protected String path;
        
    public AbstractDispatcher(HttpServletRequest request, HttpServletResponse response, String path) {
        this.request = request;
        this.response = response;
        this.path = path;
    }
}