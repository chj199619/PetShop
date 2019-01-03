package org.lanqiao.control;

import com.alibaba.fastjson.JSON;
import org.lanqiao.domain.User;
import org.lanqiao.service.impl.UserServiceImp;
import org.lanqiao.service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;
@WebServlet("/user.do")
public class userServlet extends HttpServlet {
    UserService service=new UserServiceImp();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        req.setCharacterEncoding("UTF-8");
//        List<User> userList=service.findAll();
//        req.setAttribute("userList",userList);
//        req.getRequestDispatcher("/userList.jsp").forward(req,resp);
        String methon=req.getParameter("methon");
        switch (methon){
            case "userlist":
                userlist(req,resp);
                break;
            case "getUser":
                try {
                    getUser(req,resp);
                    break;
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            case "update":
                try {
                    update(req,resp);
                    break;
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            case "addupdateUser":
                try {
                    addupdateUser(req,resp);
                    break;
                } catch (SQLException e) {
                    e.printStackTrace();
                }

        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);
    }
    public void userlist(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        List<User> userList=service.findAll();
        req.setAttribute("userList",userList);
        req.getRequestDispatcher("/userList.jsp").forward(req,resp);
    }
    //实现修改的数据回显
    public void getUser(HttpServletRequest req, HttpServletResponse resp) throws SQLException, IOException {
            resp.setCharacterEncoding("UTF-8");
            resp.setContentType("text/json");
            PrintWriter out = resp.getWriter();
            String userid = req.getParameter("userid");
            int no = Integer.parseInt(userid);
            User user =service.findUserByNo(no);
//        System.out.println(user);
            String userStr= JSON.toJSONString(user);
            out.print(userStr);

    }
    public void update(HttpServletRequest req, HttpServletResponse resp) throws SQLException, IOException {
            String userid=req.getParameter("userid");
            int no=Integer.parseInt(userid);
            User user= service.findUserByNo(no);

    }
    public void addupdateUser(HttpServletRequest req, HttpServletResponse resp) throws SQLException, IOException, ServletException {
        String userid=req.getParameter("userid");
        String username=req. getParameter("username");
        String password=req.getParameter("password");
        String email=req.getParameter("email");
        String tel=req.getParameter("tel");
        System.out.println(email);
        String address=req.getParameter("address");
        String regitime=req.getParameter("regittime");
        int id=Integer.parseInt(userid);
        User user=new User(id,username,password,email,tel,address);
        service.modifyEmp(user);
//        req.getRequestDispatcher("userList.jsp").forward(req,resp);


    }

}
