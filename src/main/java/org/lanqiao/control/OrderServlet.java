package org.lanqiao.control;

import org.lanqiao.domain.Order;
import org.lanqiao.service.impl.OrderServiceImpl;
import org.lanqiao.service.OrderService;
import org.lanqiao.utils.PageModel;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/order.do")
public class OrderServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        OrderService service = new OrderServiceImpl();
//        List<Order> orderList = service.findAll();
//        req.setAttribute("orderList",orderList);
        String currentPage = req.getParameter("currentPage");
        int pageNum = Integer.parseInt(currentPage);
        PageModel pm = new PageModel(pageNum,service.getTotalPage(),5);
        List<Order> pageList = service.findPage(pm.getStartIndex(),pm.getPageSize());
        pm.setRecords(pageList);
        req.setAttribute("pageList",pm.getRecords());
        req.getRequestDispatcher("/orderList.jsp").forward(req,resp);
    }
}
