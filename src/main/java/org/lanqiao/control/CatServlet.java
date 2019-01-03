package org.lanqiao.control;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.lanqiao.domain.Car;
import org.lanqiao.domain.Cat;
import org.lanqiao.service.CarServiceDao;
import org.lanqiao.service.CatServiceDao;
import org.lanqiao.service.impl.CarServiceImpl;
import org.lanqiao.service.impl.CatServiceImpl;
import org.lanqiao.utils.jdbcUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet("/cat.do")
public class CatServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        String method = req.getParameter("method");
        System.out.println(method);
/*       switch (method){
           case "getName":
                try {
                   getName(req, resp);
                } catch (SQLException e) {
                   e.printStackTrace();
               }
               break;
           case "aa":
               System.out.println("aaa");
               break;
                default:
                    System.out.println("hhhh");
        }*/
        if ("getName".equals(method)){
            try {
                getName(req, resp);
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }



    }
    public void getName(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException, SQLException {
        req.setCharacterEncoding("UTF-8");
        String cName = req.getParameter("cName");
        String cPrice = req.getParameter("cPrice");
        String Img = req.getParameter("cimg");
        Img = Img+"&fm=5";
        double price = Double.parseDouble(cPrice);
//        System.out.println(cName+"--"+cPrice);
        //1、查询数据库中是否已添加该品类
        QueryRunner qr = new QueryRunner(jdbcUtils.getDatasource());
        String sql = "select * from orders where petName=?";
        List<Car> carList = (List<Car>) qr.query(sql,new BeanListHandler<>(Car.class),cName);
        CarServiceDao service = new CarServiceImpl();


        double cmoney =0;
        int num =0;
        //查询petName有几条数据 如果是0则添加 不是0则修改数量
            if(carList.size() == 0 ){
                System.out.println("第一条"+cName+1);
//            //该品类没有加入过购物车
                cmoney=price;
           service.insertCar(new Car(cName,price,1,cmoney,Img));
            }else{
                Car car = service.findByName(cName);
                System.out.println("重复添加"+cName+car.getNum());
                //加入过购物车 修改该类数量
                num = car.getNum()+1;
                cmoney=num*price;
            service.updateNum(new Car(cName,num,cmoney));
            }

        CatServiceDao catservice = new CatServiceImpl();
        List<Cat> catList1 = catservice.catList();
            /*int totalmoney = 0;
            for (int i = 0; i < catList1.size(); i++) {
                totalmoney += catList1.get(i).getcPrice();
            }*/
        req.setAttribute("carlist",catList1);
        resp.sendRedirect("/index.jsp");

    }

}
