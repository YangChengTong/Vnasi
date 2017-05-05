package com.vnasi.controller;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.util.Random;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AuthCodeController {

	
	@RequestMapping("authCode")
	public void executes(HttpSession session,HttpServletResponse response) throws Exception {
		
		//宽高
		int width = 200;
		int height = 30;
		//绘制一张内存中图片
		BufferedImage bufferedImage  = new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB);
		//图片绘制背景颜色 --通过绘图对象
		Graphics graphics = bufferedImage.getGraphics();
		//绘制图前给定指定颜色
		graphics.setColor(getRandColor(200,250));
		graphics.fillRect(0, 0, width, height);
		//绘制边框
		graphics.setColor(Color.WHITE);
		graphics.drawRect(0, 0, width -1, height -1);
		//四个随机数
		Graphics2D graphics2d = (Graphics2D) graphics;
		//设置输出字体
		graphics2d.setFont(new Font("宋体",Font.BOLD,23));
		
		//输出的字符创
		String words = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890";
		//生成随机数
		Random random = new Random();
		
		//定义Stringbuffer
		StringBuffer buffer = new StringBuffer();
		//定义X坐标
		int x = 10;
		for(int i = 0;i < 4;i++){
			//随机颜色
			graphics2d.setColor(new Color(20+random.nextInt(110),20+random.nextInt(110),20+random.nextInt(110)));
			//旋转30度左右
			int jiaodu = random.nextInt(60)-30;
			//换算弧度
			double theta  = jiaodu * Math.PI / 180;
			//生成随机数字
			int index = random.nextInt(words.length());
			//获得字母数字
			char c = words.charAt(index);
			buffer.append(c);
			//将c输出到图片中
			graphics2d.rotate(theta,x,20);
			graphics2d.drawString(String.valueOf(c), x, 20);
			graphics2d.rotate(-theta,x,20);
			x += 30;
		}
		
		//将生成的字母存入Session中
		session.setAttribute("checkcode", buffer.toString());
		
		
		
		//绘制干扰线
		graphics.setColor(getRandColor(160,200));
		int x1;
		int x2;
		int y1;
		int y2;
		for(int i=0;i<30;i++){
			x1 = random.nextInt(width);
			x2 = random.nextInt(12);
			y1 = random.nextInt(height);
			y2 = random.nextInt(12);
			graphics.drawLine(x1, y1, x1 + x2, x2 + y2);
		}
		
		//将上面图片输出到浏览器里
		graphics.dispose();		//释放资源
		ImageIO.write(bufferedImage, "jpg", response.getOutputStream());
	}
	
	private Color getRandColor(int fc, int bc) {
		Random random = new Random();
		if(fc > 255){
			fc = 255;
		}
		if(bc > 255){
			bc =255;
		}
		int r = fc + random.nextInt(bc - fc);
		int g = fc + random.nextInt(bc - fc);
		int b = fc + random.nextInt(bc - fc);
		return new Color(r,g,b);
	}
}
