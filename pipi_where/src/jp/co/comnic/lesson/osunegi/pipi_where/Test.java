package jp.co.comnic.lesson.osunegi.pipi_where;

import jp.co.comnic.lesson.osunegi.pipi_where.model.Request;

public class Test {

    public static void main(String[] args) {
        System.out.println("Hello, Git!");
        System.out.println("Hello,Team");
        Request.callGet("http://13.114.185.17:5000/notify/6");
    }
}
