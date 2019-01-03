package org.lanqiao.control;


import org.lanqiao.dao.impl.UserDaoImp;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/register.do")
public class registerServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        String username = req.getParameter("username");
        System.out.println("===="+username+"====1111");
        String password = req.getParameter("password");
        String email = req.getParameter("email");
        String tel = req.getParameter("tel");
        String regittime = req.getParameter("regittime");
        String address = req.getParameter("address");
        if(username==null||password==null||email==null||tel==null||regittime==null||address==null){
            req.getRequestDispatcher("/register.jsp").forward(req, resp);
        }
        UserDaoImp userDaoImp = new UserDaoImp();
        try {
            userDaoImp.addUser(username,password,email,tel,regittime,address);

            if(!(username.equals("admin"))){
                String message="添加成功，请返回登录页面登录";
                req.setAttribute("message", message);
                req.getRequestDispatcher("/myaccount.jsp").forward(req, resp);
            }else {
                String message="账户名已存在";
                req.setAttribute("message", message);
                req.getRequestDispatcher("/register.jsp").forward(req, resp);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

}