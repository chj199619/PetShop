package org.lanqiao.control;


import org.lanqiao.domain.Deal;
import org.lanqiao.service.DealServiceDao;
import org.lanqiao.service.impl.DealServiceImppl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet("/deal.do")
public class DealServlet extends HttpServlet {
    DealServiceDao service = new DealServiceImppl();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String method = (String) req.getParameter("method");
        System.out.println(method);
        switch (method){
            case "getList":
                try {
                    getAll(req,resp);
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                break;
            case "update":
                try {
                    update(req, resp);
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                break;
            case "delete":
                try {
                    delete(req,resp);
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                break;
            case "one":
                try {
                    findOne(req, resp);
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                break;
        }


    }

    public void getAll(HttpServletRequest req, HttpServletResponse resp) throws SQLException, ServletException, IOException {
        List<Deal> dealList = service.getAll();
        req.setAttribute("dealList",dealList);
        req.getRequestDispatcher("/deal.jsp").forward(req,resp);
    }
    public void update(HttpServletRequest req, HttpServletResponse resp) throws SQLException, ServletException, IOException {
        //获取表每行值
        String id =req.getParameter("id");
        String condition =req.getParameter("condition");
        System.out.println(id+condition);
        int Id=Integer.parseInt(id);
        if ("未发货".equals(condition)){
            service.updateDeal(new Deal(Id,"已发货"));
        }else {
            System.out.println("不能修改");
        }
        getAll(req, resp);

    }

    public void delete(HttpServletRequest req, HttpServletResponse resp) throws SQLException, ServletException, IOException {
        String id =req.getParameter("id");
        int Id=Integer.parseInt(id);
        service.remove(Id);
        getAll(req, resp);
    }
    public void findOne(HttpServletRequest req, HttpServletResponse resp) throws SQLException, ServletException, IOException {
        String name = req.getParameter("username");
        String name1 = req.getParameter("sss");
        System.out.println(name);
        System.out.println(name1);
        List<Deal>users = service.findLikeName(name);
        req.setAttribute("userList",users);
        req.getRequestDispatcher("/selectP1.jsp").forward(req,resp);
    }
}
