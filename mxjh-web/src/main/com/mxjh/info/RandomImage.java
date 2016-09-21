package com.mxjh.info;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.Random;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * 随机验证码生成 生成随机验证码
 * 
 * @author [Administrator]
 * @version [v1.0.0, 2014年6月19日]
 */
@WebServlet("/image/random.png")
public class RandomImage extends HttpServlet
{

    /**
     * 
     */
    private static final long serialVersionUID = -3235816079841410231L;
    // 验证图片的宽度
    private int width = 80;
    // 验证图片的高度
    private int height = 25;
    // 验证码字符个数
    private int codeCount = 4;
    private int x = 0;
    // 字体高度
    private int fontHeight;
    private int codeY;
    char[] codeSequence = { 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'J', 'K',
            'L', 'M', 'N', 'P', 'q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y',
            'Z', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9' };

    public void destroy()
    {
        super.destroy();
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
        this.doPost(request, response);
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
        // 定义图像buffer
        BufferedImage buffImg = new BufferedImage(width, height,
                BufferedImage.TYPE_INT_RGB);
        Graphics2D g = buffImg.createGraphics();
        // 创建一个随机数生成器类
        Random random = new Random();
        // 将图像填充为白色
        g.setColor(Color.WHITE);
        g.fillRect(0, 0, width, height);
        // 创建字体，字体的大小应该根据图片的高度来定
        Font font = new Font("Fixedsys", Font.PLAIN, fontHeight);

        // 设置字体
        g.setFont(font);

        // 画边框
        g.setColor(Color.BLACK);
        g.drawRect(0, 0, width - 1, height - 1);
        // 随机产生160条干扰线，使图像中的认证码不易被其他程序探测到
        g.setColor(Color.GRAY);
        for (int i = 0; i < 100; i++)
        {
            int x = random.nextInt(width);
            int y = random.nextInt(height);
            int x1 = random.nextInt(12);
            int y1 = random.nextInt(12);
            g.drawLine(x, y, x + x1, y + y1);

        }
        // randomCode用于保存随机产生的验证码，以便用户登录后进行验证
        StringBuffer randomCode = new StringBuffer();

        // 随机产生codeCount数字的验证码
        for (int i = 0; i < codeCount; i++)
        {
            // 得到随机产生的验证码数字
            String strRand = String.valueOf(codeSequence[random
                    .nextInt(codeSequence.length - 1)]);
            // 产生随机的颜色分量来构造颜色值，这样输出的每位数字的颜色值都将不同
            // red = random.nextInt(255);
            // green = random.nextInt(255);
            // blue = random.nextInt(255);
            // 用随机产生的颜色将验证码绘制到图像中
            g.setColor(new Color(0, 0, 0));
            g.drawString(strRand, i * x + 10, codeY);
            // 将产生的四个随机数组合在一起。
            randomCode.append(strRand);

        }

        // 将四位数字的验证码保存到session中
        HttpSession session = request.getSession();
        session.setAttribute("validateCode", randomCode.toString());

        // 禁止图像缓存
        response.setHeader("Paragma", "no-cache");
        response.setHeader("Cache-Control", "no-cache");
        response.setDateHeader("Expires", 0);

        response.setContentType("image/jpeg");
        // 将图像输出到servlet输出流中
        ServletOutputStream sos = response.getOutputStream();
        ImageIO.write(buffImg, "jpeg", sos);
        sos.close();
    }

    /**
     * 初始化验证图片属性
     */
    public void init() throws ServletException
    {
        // 从web.xml中获取初始信息
        // 宽度
        String strWidth = "140";
        // 高度
        String strHeight = "40";
        // 字符个数
        String strCodeCount = "4";
        // 将配置信息转换成数值
        try
        {
            if (strWidth != null && strWidth.length() != 0)
            {
                width = Integer.parseInt(strWidth);
            }
            if (strHeight != null && strHeight.length() != 0)
            {
                height = Integer.parseInt(strHeight);
            }
            if (strCodeCount != null & strCodeCount.length() != 0)
            {
                codeCount = Integer.parseInt(strCodeCount);
            }
        } catch (NumberFormatException e)
        {

        }
        x = width / (codeCount + 1);
        // x = (width-4)/codeCount;
        fontHeight = height - 6;
        codeY = height - 6;
    }

}
