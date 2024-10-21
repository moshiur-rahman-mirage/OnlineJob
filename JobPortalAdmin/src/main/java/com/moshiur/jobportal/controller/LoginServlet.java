package com.moshiur.jobportal.controller;

import com.moshiur.jobportal.entity.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            String mail = req.getParameter("email");
            String pass=req.getParameter("password");
            User u = new User();
            HttpSession session=req.getSession();
            if (mail.equals("abc@xyz.com") && pass.equals("123")){
                session.setAttribute("userobj",u);
                u.setRole("admin");
                resp.sendRedirect("admin.jsp");
            }else{

            }

        }catch(Exception e){
            e.printStackTrace();
        }

    }
}
