package org.lanqiao.control;

import org.lanqiao.utils.VerifyCode;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.awt.image.BufferedImage;
import java.io.IOException;

@WebServlet("/imageCode.do")
public class CreateImageCode extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response)

        throws ServletException, IOException {
        VerifyCode vc = new VerifyCode();//我们使用这个对象来在内存中划出我们想要的验证码
        BufferedImage bi = vc.getImage();//获得验证码
        String rcode = vc.getText();//得到验证码的字符串表示
        rcode = rcode.toLowerCase();//应为我们输入的验证码都是不区分大小写的所以我们全部转化成小写的
        HttpSession s = request.getSession();//我们使用session来实现属性在多个servlet中的传递
        s.setAttribute("rcode",rcode);
        VerifyCode.output(bi, response.getOutputStream());//输出验证码到请求的位置，因为是图片所以我们输出的是字节流
    }
}
