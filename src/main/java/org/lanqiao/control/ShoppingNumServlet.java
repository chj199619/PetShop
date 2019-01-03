package org.lanqiao.control;

import org.lanqiao.dao.impl.searchPet;
import org.lanqiao.dao.searchPetInterface;
import org.lanqiao.domain.Pet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;


@WebServlet("/updateNum.do")
public class ShoppingNumServlet extends HttpServlet {
    searchPetInterface dao = new searchPet();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
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
            case "uu":
                uu(req,resp);
                break;
        }


    }
    public void addNum(HttpServletRequest req, HttpServletResponse resp) throws SQLException, ServletException, IOException {
        String sName =  req.getParameter("petname");
        Pet pet = dao.sePetbyname(sName);
        req.setAttribute("petname", pet.getPetname());
        req.setAttribute("petprice", pet.getPetprice());
        req.setAttribute("petnum", pet.getPetage());
        req.setAttribute("image", pet.getImage());


        double sPrice = Double.parseDouble(req.getParameter("sName"));
        String sNum = req.getParameter("sNum");
        System.out.println(sNum);
        int num = Integer.parseInt(sNum);
        num = num+1;
        double dor = num*sPrice;
        req.setAttribute("num",num);
        req.setAttribute("totalPayServlet",dor);
        req.getRequestDispatcher("/pro.jsp").forward(req,resp);

    }
    public void deNum(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException, SQLException {
        String sName =  req.getParameter("petname");
        Pet pet = dao.sePetbyname(sName);
        req.setAttribute("petname", pet.getPetname());
        req.setAttribute("petprice", pet.getPetprice());
        req.setAttribute("petnum", pet.getPetage());
        req.setAttribute("image", pet.getImage());
        double sPrice =Double.parseDouble(req.getParameter("sName")) ;
        String sNum = req.getParameter("sNum");

        System.out.println(sNum);
        int num = Integer.parseInt(sNum);
        double cp =sPrice;
        double dor = sPrice;
        if (num == 1){
            num = 1;
            dor = sPrice;
        }else {
            num=num-1;
            dor = num*cp;

        }
        req.setAttribute("num",num);
        req.setAttribute("totalPayServlet",dor);
        req.getRequestDispatcher("/pro.jsp").forward(req,resp);
    }
    public void uu(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String total = req.getParameter("sTotal");
        System.out.println(total);
/*        System.out.println(total);
        System.out.println(total);*/
//        String s =".0";
//        String[] numberArray = total.split("\\.0");
//        double tomoney=0;
//        double allMoney=0d;
//        for (int i =0;i<numberArray.length;i++){
//            tomoney=Double.parseDouble(numberArray[i]);
//            allMoney+=tomoney;
//        }
//        System.out.println(allMoney);
       req.setAttribute("money",total);
        req.getRequestDispatcher("/category.jsp").forward(req,resp);

    }
}
