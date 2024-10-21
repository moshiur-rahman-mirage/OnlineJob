package com.moshiur.jobportal.controller;

import com.moshiur.jobportal.dao.JobDAO;
import com.moshiur.jobportal.db.DBConnect;
import com.moshiur.jobportal.entity.Job;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet("/add_job")
public class AddJobServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try{
            String title=req.getParameter("title");
            String location=req.getParameter("location");
            String category=req.getParameter("category");
            String status=req.getParameter("status");
            String desc=req.getParameter("desc");

            Job j = new Job();
            j.setTitle(title);
            j.setLocation(location);
            j.setCategory(category);
            j.setStatus(status);
            j.setDescription(desc);

            JobDAO dao = new JobDAO(DBConnect.getConnection());
            boolean f = dao.addJobs(j);
            HttpSession session=req.getSession();
            if(f){
                session.setAttribute("insMsg","Job Posted Successfully!");
                resp.sendRedirect("add_job.jsp");
            }else {
                session.setAttribute("insMsg","Job Post Failed!");
                resp.sendRedirect("add_job.jsp");
            }

        }catch (Exception e){
            e.printStackTrace();
        }
    }
}
