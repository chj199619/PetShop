package org.lanqiao.control;


import org.lanqiao.domain.User;
import org.lanqiao.service.UserService;
import org.lanqiao.service.impl.UserServiceImp;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet("/delete.do")
public class deleteServlet extends HttpServlet {
    UserService service=new UserServiceImp();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req,resp);
    }
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String userid=req.getParameter("userid");
//        int no=Integer.parseInt(userid);
        int no=Integer.valueOf(userid);
        try {
            service.removeUser(no);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        List<User> userList = service.findAll();
        req.setAttribute("userList",userList);
        req.getRequestDispatcher("/userList.jsp").forward(req,resp);

    }
}
