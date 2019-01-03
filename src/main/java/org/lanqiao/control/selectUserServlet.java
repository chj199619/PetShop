package org.lanqiao.control;

import org.lanqiao.domain.User;
import org.lanqiao.service.impl.UserServiceImp;
import org.lanqiao.service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;
@WebServlet("/selectuser.do")
public class selectUserServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       doPost(req,resp);
    }
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        String username=req.getParameter("username");
        UserService userService = new UserServiceImp();
        System.out.println(username);
        List<User> userList = null;
        try {
            userList = userService.findUserByNo(username);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        req.setAttribute("userList",userList);
        System.out.println(userList.size());
        req.getRequestDispatcher("/selectUser.jsp").forward(req,resp);
    }
}
