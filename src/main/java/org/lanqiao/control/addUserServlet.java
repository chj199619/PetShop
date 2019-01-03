package org.lanqiao.control;

import org.lanqiao.dao.impl.UserDaoImp;
import org.lanqiao.domain.User;
import org.lanqiao.service.impl.UserServiceImp;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet("/updateUser.do")
public class addUserServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        String userid=req.getParameter("userid");
        String username = req.getParameter("username");
        System.out.println("===="+username+"====1111");
        String password = req.getParameter("password");
        String email = req.getParameter("email");
        String tel = req.getParameter("tel");
        String address = req.getParameter("address");
        String regittime=req.getParameter("regittime");
        int id=Integer.parseInt(userid);
        UserServiceImp serviceImp=new UserServiceImp();
        try {
            User user=new User(id,username,password,email,address,tel,regittime);
            serviceImp.modifyEmp(user);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        UserServiceImp serviceImp1=new UserServiceImp();
        List<User> userList = serviceImp1.findAll();
        req.setAttribute("userList",userList);
        req.getRequestDispatcher("/userList.jsp").forward(req,resp);
    }


}

