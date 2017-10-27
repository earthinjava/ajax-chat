package com.duan.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SearchServlet
 */
public class ReceiveServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
	private List<String> msgs = new ArrayList<String>();

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");

		String msg = request.getParameter("msg");
		String msglength = request.getParameter("length");

		if (msg != null) {
			msgs.add(msg);
		}

		int length = msgs.size();

		if (length != 0) {
			msg = length + "," + msgs.get(length - 1);
		}
	
		if (length != 0) {
			if (Integer.parseInt(msglength) != length) {
				response.getWriter().write(msg);				
			}
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
