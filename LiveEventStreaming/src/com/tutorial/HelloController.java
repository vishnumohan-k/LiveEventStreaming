package com.tutorial;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.ui.ModelMap;

import javax.jws.WebParam.Mode;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.sun.org.apache.xerces.internal.impl.xpath.regex.ParseException;
import com.tutorial.UserJDBCTemplate;

@Controller
@SessionAttributes( {"user"}) 
public class HelloController 
{
	@RequestMapping(value="Clear",method=RequestMethod.GET)
	   public String clear(ModelMap model,HttpServletRequest request, HttpServletResponse response) {
		ApplicationContext context = 
			      new ClassPathXmlApplicationContext("Beans.xml");
		UserJDBCTemplate studentJDBCTemplate = (UserJDBCTemplate)context.getBean("userJDBCTemplate");
		System.out.print(request.getParameter("id"));
		studentJDBCTemplate.clearSingle(request.getParameter("id"));
		   return "redirect:/Dash";
	      
	   }

	@RequestMapping("ClearNoti")
	   public String clearNoti(ModelMap model) {
		ApplicationContext context = 
			      new ClassPathXmlApplicationContext("Beans.xml");
		UserJDBCTemplate studentJDBCTemplate = (UserJDBCTemplate)context.getBean("userJDBCTemplate");
		studentJDBCTemplate.clear((String)model.get("user"));
		   return "redirect:/Dash";
	      
	   }
	@RequestMapping(value="/ChatRequest",method=RequestMethod.GET)
	   public ModelAndView ChatRequest(ModelMap model,HttpServletRequest request, HttpServletResponse response) {
		 ApplicationContext context = 
			      new ClassPathXmlApplicationContext("Beans.xml");
		UserJDBCTemplate studentJDBCTemplate = (UserJDBCTemplate)context.getBean("userJDBCTemplate");
		String caller1=(String)model.get("user");
	    String caller2=request.getParameter("name");
	    
	    java.util.Date dt = new java.util.Date();
		java.text.SimpleDateFormat sdf = 
	    new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String date = sdf.format(dt);
		studentJDBCTemplate.sendRequest(caller1, caller2, date);
	    ModelAndView mod=new ModelAndView();
	    List<User> listContact = studentJDBCTemplate.listUser((String)model.get("user"));
	    List<User> listOnline = studentJDBCTemplate.listOnline((String)model.get("user"));
	    List<User> listOffline = studentJDBCTemplate.listOffline((String)model.get("user"));
	    mod.addObject("listContact", listContact);
	    mod.addObject("listOnline", listOnline);
	    mod.addObject("listOffline", listOffline);
	    mod.setViewName("redirect:/Dash");
	    return mod;
	}
	
@RequestMapping(value="/UpdateProfile",method=RequestMethod.POST)
	
	public ModelAndView updateProfile(ModelMap model,@RequestParam("email")String email,@RequestParam("phno")Long number,@RequestParam("password")String password,ModelMap modelmap,HttpServletRequest request)
	{
	User usr=new User();
	usr.setEmail(email);
	usr.setPassword(password);
	usr.setNumber(number);
	String p=usr.getPassword();
	String e=usr.getEmail();
	Long num=usr.getNumber();
      ApplicationContext context = 
      new ClassPathXmlApplicationContext("Beans.xml");
      UserJDBCTemplate studentJDBCTemplate = (UserJDBCTemplate)context.getBean("userJDBCTemplate");
     /* 
      if(!studentJDBCTemplate.usernameValid(name)){
	  		ModelAndView mod=new ModelAndView("Settings");
			mod.addObject("msg","User Updation");
			System.out.print("sad");
			mod.addObject("valid","Username "+name+" exist please choose another");
			return mod;
	      }
	      */
      
      studentJDBCTemplate.update(p,e,num,(String)model.get("user"));
      ModelAndView mod=new ModelAndView();
      List<User> listContact = studentJDBCTemplate.listUser((String)model.get("user"));
	    List<User> listOnline = studentJDBCTemplate.listOnline((String)model.get("user"));
	    List<User> listOffline = studentJDBCTemplate.listOffline((String)model.get("user"));
	    mod.addObject("listContact", listContact);
	    mod.addObject("listOnline", listOnline);
	    mod.addObject("listOffline", listOffline);
      mod.setViewName("redirect:/Dash");
	return mod;
		
	}
	
	@RequestMapping(value="Settings",method=RequestMethod.GET)
	   public ModelAndView Settings(ModelMap model,HttpServletRequest request, HttpServletResponse response) {
		
		 ApplicationContext context = 
			      new ClassPathXmlApplicationContext("Beans.xml");
		UserJDBCTemplate studentJDBCTemplate = (UserJDBCTemplate)context.getBean("userJDBCTemplate");
		 List<User> listOnline = studentJDBCTemplate.listOnline((String)model.get("user"));
		    List<User> listOffline = studentJDBCTemplate.listOffline((String)model.get("user"));
	    List<User> listContact = studentJDBCTemplate.listUser((String)model.get("user"));
	    String name=request.getParameter("name");
	    System.out.println(name);
	    List<User> editProfile = studentJDBCTemplate.editProfile(name);

	    ModelAndView mod=new ModelAndView();
	    if(model.isEmpty())
		{
	 	      mod.setViewName("redirect:/Login");
			  return mod;
		}
	    else
	    {
	    mod.addObject("name", name);
	    mod.addObject("listContact", listContact);
	    mod.addObject("editProfile", editProfile);
	    mod.addObject("listOnline", listOnline);
	    mod.addObject("listOffline", listOffline);
	    mod.setViewName("Settings");
	    return mod;
	    }
	      
	   }
	
   @RequestMapping("/")
   public String Home(ModelMap model) {
    
	   return "visitorhome";
      
   }
   
   @RequestMapping("/home")
   public String VisitorHome(ModelMap model) {
      //model.addAttribute("message", "Hello Spring MVC Framework!");
	   return "visitorhome";
	  
   }
   @RequestMapping(value="/ViewProfile",method=RequestMethod.GET)
   public ModelAndView ViewProfile(ModelMap model,HttpServletRequest request, HttpServletResponse response) {
	   ApplicationContext context = 
			      new ClassPathXmlApplicationContext("Beans.xml");
		UserJDBCTemplate studentJDBCTemplate = (UserJDBCTemplate)context.getBean("userJDBCTemplate");
		
	    List<User> listContact = studentJDBCTemplate.listUser((String)model.get("user"));
	    List<User> listOnline = studentJDBCTemplate.listOnline((String)model.get("user"));
	    List<User> listOffline = studentJDBCTemplate.listOffline((String)model.get("user"));
	    String name=request.getParameter("name");
	    List<User> listProfile = studentJDBCTemplate.viewProfile(name);
	    ModelAndView mod=new ModelAndView();
	    mod.addObject("listContact", listContact);
	    if(model.isEmpty())
		{

	 	      mod.setViewName("redirect:/Login");
			  return mod;
		}
	    else
	    {

	    mod.addObject("name", name);
	    mod.addObject("listContact", listContact);
	    mod.addObject("listProfile", listProfile);
	    mod.addObject("listOnline", listOnline);
	    mod.addObject("listOffline", listOffline);
	    mod.setViewName("ViewProfile");
	    return mod;
	    }
	  
   }

 
   @RequestMapping(value="/Dash")
   public ModelAndView chatBox(ModelMap model){
	    ApplicationContext context = 
			      new ClassPathXmlApplicationContext("Beans.xml");
		UserJDBCTemplate studentJDBCTemplate = (UserJDBCTemplate)context.getBean("userJDBCTemplate");
		
	    List<User> listContact = studentJDBCTemplate.listUser((String)model.get("user"));
	    List<User> listOnline = studentJDBCTemplate.listOnline((String)model.get("user"));
	    List<User> listOffline = studentJDBCTemplate.listOffline((String)model.get("user"));
	    ModelAndView mod=new ModelAndView();
	    
	    if(model.isEmpty())
		{
	 	     
	 	      mod.setViewName("redirect:/Login");
			  return mod;
		}
		else
		{
			String date=studentJDBCTemplate.returnDate((String)model.get("user"));
		    List<Histoty> noti=studentJDBCTemplate.notification((String)model.get("user"), date);
		    if(noti.isEmpty())	
				mod.addObject("valid","Currently there is no notifications for you!");
			mod.addObject("noti", noti);
			//mod.addObject("name", name);
		    mod.addObject("listContact", listContact);
		    mod.addObject("listOnline", listOnline);
		    mod.addObject("listOffline", listOffline);
		    mod.setViewName("Dash");
		    return mod;
		 }
	}

   
	@RequestMapping(value="/Login",method=RequestMethod.GET)
	public ModelAndView getLoginForm(ModelMap mod)
	{
		 ApplicationContext context = 
			      new ClassPathXmlApplicationContext("Beans.xml");
		UserJDBCTemplate studentJDBCTemplate = (UserJDBCTemplate)context.getBean("userJDBCTemplate");
		
	    List<User> listContact = studentJDBCTemplate.listUser((String)mod.get("user"));
	    List<User> listOnline = studentJDBCTemplate.listOnline((String)mod.get("user"));
	    List<User> listOffline = studentJDBCTemplate.listOffline((String)mod.get("user"));
		ModelAndView model=new ModelAndView("LoginPage");
		if(mod.isEmpty())
		{
	
		model.addObject("msg","User Login");
		return model;
		}
		else
		{
			String date=studentJDBCTemplate.returnDate((String)mod.get("user"));
		    List<Histoty> noti=studentJDBCTemplate.notification((String)mod.get("user"), date);
		    if(noti.isEmpty())	
				model.addObject("valid","Currently there is no notifications for you!");
			model.addObject("noti", noti);
			//mod.addObject("name", name);
		    model.addObject("listContact", listContact);
		    model.addObject("listOnline", listOnline);
		    model.addObject("listOffline", listOffline);
			
			model.setViewName("Dash");
			return model;	
		}
	}
	
	@RequestMapping(value="/SubmitLogin.html",method=RequestMethod.POST)
	
	public ModelAndView submittLoginForm(@RequestParam("userName")String name,@RequestParam("password")String password,ModelMap model,HttpServletRequest request)
	{
		 	  ApplicationContext context = 
	   	      new ClassPathXmlApplicationContext("Beans.xml");
	   	      UserJDBCTemplate studentJDBCTemplate = (UserJDBCTemplate)context.getBean("userJDBCTemplate");
	      
	   	      ModelAndView mod=new ModelAndView();
	   	      
	   		   	 if(studentJDBCTemplate.userValid(name,password))
	   		   	 {
	   		   		 System.out.print("Invalid");
			  		ModelAndView mod1=new ModelAndView("LoginPage");
					mod1.addObject("valid","**Incorrect Username and password");
					return mod1;
			      }
	   	      
	   		   	 if(!(studentJDBCTemplate.isRegistered(name, password)))
	   		   	 {
	   		   	 mod.setViewName("redirect:/Login");
				 return mod;
	   		   	 }
	   		   	 
	   		   	java.util.Date dt = new java.util.Date();

	   			java.text.SimpleDateFormat sdf = 
	   			     new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

	   			String date = sdf.format(dt);
	   		   	  studentJDBCTemplate.updateLoginTime(date,name);
	   	    	 studentJDBCTemplate.pushOnline(name);
	   	    	  List<User> listContact = studentJDBCTemplate.listUser(name);
	   	    	  model.addAttribute("user", name);
	   	    	  mod.addObject("listContact", listContact);
	   	    	  mod.setViewName("redirect:/Dash");
				  return mod;	
	   	    	  //return "Dashboard";
	   		   	 }
	   		   	 

	   		
		
	
	
	@RequestMapping("/Logout")
	public String Logout(ModelMap model , HttpSession session, SessionStatus status){
		//System.out.println(model.get("user"));
		ApplicationContext context = 
		   	      new ClassPathXmlApplicationContext("Beans.xml");
		   	      UserJDBCTemplate studentJDBCTemplate = (UserJDBCTemplate)context.getBean("userJDBCTemplate");
		   	      //Integer stat=0;
		studentJDBCTemplate.deleteOnline((String)model.get("user"));
        status.setComplete();
        session.removeAttribute("user");
        model.remove("user");
		return "redirect:/Login";
	}

	
	@RequestMapping(value="/LoginAfterRegsistration.html",method=RequestMethod.POST)
	
	public ModelAndView submitRegisterForm(@RequestParam("user_name")String name,@RequestParam("email")String email,@RequestParam("password")String password,@RequestParam("phno")Long number,ModelMap modelmap,HttpServletRequest request)
	{
		java.util.Date dt = new java.util.Date();

		java.text.SimpleDateFormat sdf = 
		     new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

		String currentTime = sdf.format(dt);
		User usr=new User();
		usr.setName(name);
		usr.setEmail(email);
		usr.setPassword(password);
		usr.setNumber(number);
		String n=usr.getName();
		String p=usr.getPassword();
		String e=usr.getEmail();
		Long num=usr.getNumber();
	      ApplicationContext context = 
	      new ClassPathXmlApplicationContext("Beans.xml");
	      UserJDBCTemplate studentJDBCTemplate = (UserJDBCTemplate)context.getBean("userJDBCTemplate");
	      
	      if(!studentJDBCTemplate.usernameValid(name)){
		  		ModelAndView model=new ModelAndView("SubmitRegistration");
				model.addObject("msg","User Registration");
				model.addObject("valid","**Username exist please choose another");
				return model;
		      }
	     // Integer status=1;
	      studentJDBCTemplate.create(n,p,e,num,currentTime);
	      modelmap.addAttribute("user", name);
	      studentJDBCTemplate.pushOnline(name);
		ModelAndView model=new ModelAndView();
		model.setViewName("redirect:/Dash");
		model.addObject("headermsg","ShowTime Web Application");
		model.addObject("usr",usr);
		return model;
	}
	
	
	@RequestMapping("/SubmitRegistration.html")
	public ModelAndView registration(ModelMap mod)
	{
		if(mod.isEmpty())
		{
		ModelAndView model=new ModelAndView("SubmitRegistration");
		model.addObject("valid"," ");
		model.addObject("msg","User Registration");
		return model;
		}
		else
		{
			ModelAndView model=new ModelAndView();
			model.setViewName("Dash");
			return model;	
		}
	}
	

	
}