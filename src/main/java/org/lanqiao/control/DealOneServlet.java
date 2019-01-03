package org.lanqiao.control;

import org.lanqiao.domain.Order;
import org.lanqiao.service.OrderService;
import org.lanqiao.service.impl.OrderServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/dealone.do")
public class DealOneServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String method = req.getParameter("method");
        if ("select".equals(method)){
            String name = req.getParameter("name");
            String total = req.getParameter("total");
            String id = req.getParameter("id");
            String condition = req.getParameter("condition");
            System.out.println(name + total+id+condition);
            req.setAttribute("name",name);
            req.setAttribute("total",total);
            req.setAttribute("condition",condition);
            req.setAttribute("id",id);
            OrderService order =new OrderServiceImpl();
            List<Order> orderList = order.findAll();
            req.setAttribute("orderList",orderList);
            req.getRequestDispatcher("/finalP.jsp").forward(req,resp);
        }

    }
}
