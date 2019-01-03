package org.lanqiao.control;

import org.lanqiao.domain.Deal;
import org.lanqiao.service.DealServiceDao;
import org.lanqiao.service.impl.DealServiceImppl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.xml.crypto.Data;
import java.io.IOException;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

@WebServlet("/DD.do")
public class totalPayServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        Double total = Double.parseDouble(req.getParameter("total"));
        HttpSession session = req.getSession();
        Object username = session.getAttribute("username");
        System.out.println(username);
        if (null!=username){
            DealServiceDao service = new DealServiceImppl();
            Deal deal = new Deal();
            deal.setTotal(total);
            deal.setName(username.toString());
            Date date = new Date();
            SimpleDateFormat simpleDateFormat=new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
            simpleDateFormat.format(date);
            deal.setTime(date);
            deal.setConditions("未发货");
            try {
                service.add(deal);
                req.setAttribute("total",total);
                req.getRequestDispatcher("/lastpay.jsp").forward(req, resp);
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }else {
            req.getRequestDispatcher("/myaccount.jsp").forward(req, resp);
        }


    }


}
