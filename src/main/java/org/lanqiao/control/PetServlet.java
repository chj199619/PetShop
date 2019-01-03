package org.lanqiao.control;

import org.lanqiao.dao.impl.searchPet;
import org.lanqiao.domain.Car;
import org.lanqiao.domain.Pet;
import org.lanqiao.service.CarServiceDao;
import org.lanqiao.service.impl.CarServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

/**
 * Created by Administrator on 2018/12/5.
 */
@WebServlet("/pet.do")
public class PetServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        int carnum=0;
        int carsum = 0;
        req.setCharacterEncoding("UTF-8");
        String method = req.getParameter("method");
        String pettype = req.getParameter("pettype");
        String pettype1 = req.getParameter("pettype1");
        String pettype2 = req.getParameter("pettype2");
        System.out.println(pettype+pettype1+pettype2);
        System.out.println(method);
        switch (method) {
            case "init":

                try {

                    CarServiceDao cardao = new CarServiceImpl();
                    List<Car> carList = cardao.getAll();
                    for(Car car:carList){
                        carnum = car.getNum();
                        carsum = carsum+carnum;
                    }

                    req.setAttribute("carNum",carsum);
                    List<Pet> catlist = seaPet(pettype);
                    for (int i = 0; i < catlist.size(); i++) {
                        req.setAttribute("petname" + i, catlist.get(i).getPetname());
                        req.setAttribute("petprice" + i, catlist.get(i).getPetprice());
                        req.setAttribute("image" + i, catlist.get(i).getImage());
                    }
                    req.setAttribute("catlistsize",catlist.size());

                    List<Pet> doglist = seaPet(pettype1);
                    for (int i = 0; i < doglist.size(); i++) {
                        req.setAttribute(pettype1+"petname" + i, doglist.get(i).getPetname());
                        req.setAttribute(pettype1+"petprice" + i, doglist.get(i).getPetprice());
                        req.setAttribute(pettype1+"image" + i, doglist.get(i).getImage());
                    }
                    req.setAttribute("doglistsize",doglist.size());

                    List<Pet> otherlist = seaPet(pettype2);
                    for (int i = 0; i < otherlist.size(); i++) {
                        req.setAttribute(pettype2+"petname" + i, otherlist.get(i).getPetname());
                        req.setAttribute(pettype2+"petprice" + i, otherlist.get(i).getPetprice());
                        req.setAttribute(pettype2+"image" + i, otherlist.get(i).getImage());
                    }
                    req.setAttribute("otherlistsize",otherlist.size());

                } catch (SQLException e) {
                    e.printStackTrace();
                }
                break;
            case "cat":
                String petname =  req.getParameter("petname");
                int num = 1;

                try {
                    CarServiceDao cardao = new CarServiceImpl();
                    List<Car> carList = cardao.getAll();
                    carnum = carList.size();
                    req.setAttribute("carNum",carnum);
                    Pet pet = seaPetbyname(petname);
                    req.setAttribute("petname", pet.getPetname());
                    req.setAttribute("petprice", pet.getPetprice());
                    req.setAttribute("petnum", pet.getPetage());
                    req.setAttribute("image", pet.getImage());
                    req.setAttribute("num", num);
                    req.setAttribute("totalPayServlet", pet.getPetprice());

                    req.getRequestDispatcher("/pro.jsp").forward(req, resp);
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                break;
            case "dog":
                break;
        }

//            List<Pet> dogList = searchpet.selectPet("dog");
//            System.out.println(dogList);
//            req.setAttribute("doglistsize",dogList.size());
//            req.setAttribute("dogList", dogList.toString());
//            List<Pet> list = new ArrayList<>();
//
//            for (int i = 0; i < dogList.size(); i++) {
//                list.add(i, dogList.get(i));
//                req.setAttribute("petname" + i, list.get(i).getPetname());
//                req.setAttribute("petprice" + i, list.get(i).getPetprice());
//                req.setAttribute("petnum" + i, list.get(i).getPetage());
//            }



//            JSon，未使用
//            ObjectMapper om = new ObjectMapper();
//            om.setSerializationInclusion(JsonInclude.Include.NON_NULL);
//            Writer wr = new StringWriter();
//            om.writeValue(wr, petList);
//            System.out.println(wr.toString());

//        catch (JsonGenerationException e) {
//            e.printStackTrace();
//        } catch (JsonMappingException e) {
//            e.printStackTrace();
//        } catch (IOException e) {
//            e.printStackTrace();
//        }

    }
    public List<Pet> seaPet(String pettype) throws SQLException {
        searchPet searchPet = new searchPet();
        List<Pet> petList = searchPet.selectPet(pettype);
        return petList;
    }
    public Pet seaPetbyname(String pettype) throws SQLException {
        searchPet searchPet = new searchPet();
        Pet petList = searchPet.sePetbyname(pettype);
        return petList;
    }
}

