package org.lanqiao.control;

import org.lanqiao.dao.impl.ManagerDaoImp;
import org.lanqiao.domain.Manager;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/manager.do")
public class managerServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       doPost(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        String username = req.getParameter("username");
        req.getSession().setAttribute("username",username);
        System.out.println(username+"!!!!!!!!!!!!!!!!!!!");
        String password = req.getParameter("password");
        System.out.println(password+"!!!!!!!!!!!!!");
        HttpSession session=req.getSession();
        System.out.println("+++++"+session);
        ManagerDaoImp dao=new ManagerDaoImp();
        try {
           Manager manager = dao.selectManager(username);
            System.out.println("这是"+manager);
            if(manager==null){
                req.getRequestDispatcher("/login.jsp").forward(req, resp);
            }else if (manager!=null){
                if(!username.equals(manager.getManagername())){
                    req.getRequestDispatcher("/aa.jsp").forward(req, resp);
                } else if(username.equals(manager.getManagername())&&!password.equals(manager.getManagerpassword())){
                    String message="账户名或密码不一致，请重新登陆";
                    session.setAttribute("fail",message);
                    resp.sendRedirect(req.getContextPath()+"/aa.jsp");
                }else if (username.equals(manager.getManagername())&&password.equals(manager.getManagerpassword())){
                    String message="登录成功";
//                req.setAttribute("message", message);
//                req.getRequestDispatcher("/success.jsp").forward(req, resp);
                    session.setAttribute("success",message);
                    resp.sendRedirect(req.getContextPath()+"/system.jsp");
                }
            }


        }
        catch (SQLException e) {
            e.printStackTrace();
        }


    }
}
