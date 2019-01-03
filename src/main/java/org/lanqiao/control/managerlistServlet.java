package org.lanqiao.control;

import org.lanqiao.domain.Manager;
import org.lanqiao.service.ManagerServiceDao;
import org.lanqiao.service.impl.managerServiceImpl;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet("/managerlist.do")
public class managerlistServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      doPost(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        ManagerServiceDao serviceDao=new managerServiceImpl();
        try {
            List<Manager> managerList= serviceDao.findAll();
            req.setAttribute("managerList",managerList);
            req.getRequestDispatcher("/managerList.jsp").forward(req,resp);
        } catch (SQLException e) {
            e.printStackTrace();
        }


    }
}
