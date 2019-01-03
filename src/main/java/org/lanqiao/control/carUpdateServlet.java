package org.lanqiao.control;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.lanqiao.domain.Car;
import org.lanqiao.service.CarServiceDao;
import org.lanqiao.service.impl.CarServiceImpl;
import org.lanqiao.utils.jdbcUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet("/update.do")
public class carUpdateServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String method = req.getParameter("method");
        System.out.println(method);
        switch (method){
            case "add":
                try {
                    addNum(req, resp);
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                break;
            case "de":
                try {
                    System.out.println("1111");
                    deNum(req, resp);

                } catch (SQLException e) {
                    e.printStackTrace();
                }
                break;
            case "dele":
                    dele(req, resp);
                    break;
//            case "uu":
//                uu(req,resp);
//                break;
        }


    }
    public void addNum(HttpServletRequest req, HttpServletResponse resp) throws SQLException, ServletException, IOException {
        String sName = req.getParameter("sName");
        String sNum = req.getParameter("sNum");
        System.out.println(sName);
        System.out.println(sNum);
        int num = Integer.parseInt(sNum);
        CarServiceDao service = new CarServiceImpl();
        Car car = service.findByName(sName);
        num = num+1;
        double dor = num*car.getPrice();
        service.updateNum(new Car(sName,num,dor));
        req.getRequestDispatcher("/sncp.jsp").forward(req,resp);

    }
    public void deNum(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException, SQLException {
        System.out.println("222");
        String sName = req.getParameter("sName");
        String sNum = req.getParameter("sNum");
        System.out.println(sName);
        System.out.println(sNum);
        int num = Integer.parseInt(sNum);
        String sql = "select * from orders where petName=?";
        QueryRunner qr = new QueryRunner(jdbcUtils.getDatasource());
        List<Car> carList = (List<Car>) qr.query(sql,new BeanListHandler<>(Car.class),sName);
        CarServiceDao service = new CarServiceImpl();
        Car car = service.findByName(sName);
        double cp =car.getPrice();
        double dor = 0;
        if (num == 1){
            service.deletePet(sName);
        }else {
            System.out.println(car);
            num=num-1;
            dor = num*cp;
            System.out.println(num);
            System.out.println(cp);
            System.out.println(dor);
            service.updateNum(new Car(sName,num,dor));
        }
        req.getRequestDispatcher("/sncp.jsp").forward(req,resp);
    }
//    public void uu(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        System.out.println("ssssss");
//        String total = req.getParameter("sTotal");
//        System.out.println(total);
///*        System.out.println(total);
//        System.out.println(total);*/
////        String s =".0";
////        String[] numberArray = total.split("\\.0");
////        double tomoney=0;
////        double allMoney=0d;
////        for (int i =0;i<numberArray.length;i++){
////            tomoney=Double.parseDouble(numberArray[i]);
////            allMoney+=tomoney;
////        }
////        System.out.println(allMoney);
//        req.setAttribute("money",total);
//        req.getRequestDispatcher("/category.jsp").forward(req,resp);
//
//    }
    public void dele(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        CarServiceDao service = new CarServiceImpl();
        String sName = req.getParameter("sName");
        String sNum = req.getParameter("sNum");
        System.out.println(sName);
        System.out.println(sNum);
        int num = Integer.parseInt(sNum);
        try {
            service.deletePet(sName);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        req.getRequestDispatcher("/sncp.jsp").forward(req,resp);
    }
}
