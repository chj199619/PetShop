package org.lanqiao.control;


import org.lanqiao.dao.impl.UserDaoImp;
import org.lanqiao.domain.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/login.do")
public class loginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        String username = req.getParameter("username");
        System.out.println(username);
//        req.getSession().setAttribute("username",username);
        String password = req.getParameter("password");
        System.out.println(password);
        HttpSession session=req.getSession();
        session.setAttribute("username",username);
//        req.getRequestDispatcher("/index.jsp").forward(req,resp);
       String rcode = req.getParameter("rcode");
        String s = (String)req.getSession().getAttribute("rcode");
        UserDaoImp dao=new UserDaoImp();
        String msg = "";
        try {
            User user = dao.selectUser(username);
            System.out.println("这是用户名"+user);
            if(user==null){
                msg = "用户名为空";
                req.setAttribute("msg",msg);
                req.getRequestDispatcher("/myaccount.jsp").forward(req, resp);
            }

            if(user==null){
                msg = "用户名为空";
                req.setAttribute("msg",msg);
                req.getRequestDispatcher("/myaccount.jsp").forward(req, resp);
            }else if (user!=null){
                if(!username.equals(user.getUsername())){
                    msg = "用户名错误，请重新输入";
                    req.setAttribute("msg",msg);
                    req.getRequestDispatcher("/myaccount.jsp").forward(req, resp);
                } else if(username.equals(user.getUsername())&&!password.equals(user.getPassword())){
//                    String message="账户名或密码不一致，请重新登陆";
//                    session.setAttribute("fail",message);
//                    resp.sendRedirect(req.getContextPath()+"/myaccount.jsp");
                    msg = "账户名或密码不一致，请重新登陆";
                    req.setAttribute("msg",msg);
                    req.getRequestDispatcher("/myaccount.jsp").forward(req, resp);
                }else if (username.equals(user.getUsername())&&password.equals(user.getPassword())){
                    if(s.equals(rcode.toLowerCase())) {
                        HttpSession session1 = req.getSession();
                        session1.setAttribute("username",username);
                        req.getSession().setAttribute("username",username);
                        resp.sendRedirect(req.getContextPath()+"/index.jsp");

                    } else {
//                        req.setAttribute("error", "验证码错误");
                        msg = "验证码错误";
                        req.setAttribute("msg",msg);
                        req.getRequestDispatcher(resp.encodeURL("/myaccount.jsp")).forward(req, resp);
                    }
                }
            }


        }
        catch (SQLException e) {
            e.printStackTrace();
        }


    }
}
