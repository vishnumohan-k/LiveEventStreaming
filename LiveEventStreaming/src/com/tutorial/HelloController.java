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

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.tutorial.UserJDBCTemplate;

@Controller
@SessionAttributes( {"user"}) 
public class HelloController {
 
   
   @RequestMapping("/")
   public String Home(ModelMap model) {
      //model.addAttribute("message", "Hello Spring MVC Framework!");
	   return "visitorhome";
      
   }
   
   @RequestMapping("/home")
   public String VisitorHome(ModelMap model) {
      //model.addAttribute("message", "Hello Spring MVC Framework!");
	   return "visitorhome";
	  
   }
   @RequestMapping("/ajax")
   public String checkAjax(ModelMap model){
	   return "load";
   }
 
 
   @RequestMapping(value="/Dashboard")
public ModelAndView chatBox(ModelMap model){
	    ApplicationContext context = 
			      new ClassPathXmlApplicationContext("Beans.xml");
		UserJDBCTemplate studentJDBCTemplate = (UserJDBCTemplate)context.getBean("userJDBCTemplate");
	    List<User> listContact = studentJDBCTemplate.listUser();
	    ModelAndView mod=new ModelAndView();
		if(model.isEmpty())
		{
	 	     // return "redirect:/Login";
	 	      mod.setViewName("redirect:/Login");
			  return mod;
		}
		else
		{
		    mod.addObject("listContact", listContact);
			mod.setViewName("Dashboard");
			return mod;	
	  // return "chatbox";
		}
		}

   
	@RequestMapping(value="/Login",method=RequestMethod.GET)
	public ModelAndView getLoginForm()
	{
		ModelAndView model=new ModelAndView("LoginPage");
		model.addObject("msg","User Login");
		return model;
	}
	
	@RequestMapping(value="/SubmitLogin.html",method=RequestMethod.POST)
	
	public ModelAndView submittLoginForm(@RequestParam("userName")String name,@RequestParam("password")String password,ModelMap model,HttpServletRequest request)
	{
		 	  ApplicationContext context = 
	   	      new ClassPathXmlApplicationContext("Beans.xml");
	   	      UserJDBCTemplate studentJDBCTemplate = (UserJDBCTemplate)context.getBean("userJDBCTemplate");
	      
	   	      ModelAndView mod=new ModelAndView();
	   		   	 if((studentJDBCTemplate.isRegistered(name, password)))
	   		   	 {
					  System.out.print("hai passed");

	   	    	  studentJDBCTemplate.pushOnline(name);
	   	    	  List<User> listContact = studentJDBCTemplate.listUser();
	   	    	  model.addAttribute("user", name);
	   	    	  mod.addObject("listContact", listContact);
	   	    	  mod.setViewName("redirect:/Dashboard");
				  return mod;	
	   	    	  //return "Dashboard";
	   		   	 }
				  System.out.print("hai failed");

	   		  mod.setViewName("redirect:/Login");
			  return mod;
		
	}
	
	@RequestMapping("/Logout")
	public String Logout(ModelMap model , HttpSession session, SessionStatus status){
		//System.out.println(model.get("user"));
		ApplicationContext context = 
		   	      new ClassPathXmlApplicationContext("Beans.xml");
		   	      UserJDBCTemplate studentJDBCTemplate = (UserJDBCTemplate)context.getBean("userJDBCTemplate");
		studentJDBCTemplate.deleteOnline((String)model.get("user"));
        status.setComplete();
        session.removeAttribute("user");
        model.remove("user");
		return "redirect:/Login";
	}

	
	@RequestMapping(value="/LoginAfterRegsistration.html",method=RequestMethod.POST)
	
	public ModelAndView submitRegisterForm(@RequestParam("user_name")String name,@RequestParam("email")String email,@RequestParam("password")String password,@RequestParam("phno")Integer number,ModelMap modelmap,HttpServletRequest request)
	{
		User usr=new User();
		usr.setName(name);
		usr.setEmail(email);
		usr.setPassword(password);
		usr.setNumber(number);
		String n=usr.getName();
		String p=usr.getPassword();
		String e=usr.getEmail();
		Integer num=usr.getNumber();
	      ApplicationContext context = 
	      new ClassPathXmlApplicationContext("Beans.xml");
	      UserJDBCTemplate studentJDBCTemplate = (UserJDBCTemplate)context.getBean("userJDBCTemplate");
	      
	      if(!studentJDBCTemplate.usernameValid(name)){
		  		ModelAndView model=new ModelAndView("SubmitRegistration");
				model.addObject("msg","User Registration");
				model.addObject("valid","Username "+name+" exist please choose another");
				return model;
		      }
	      
	      studentJDBCTemplate.create(n,p,e,num);
	      modelmap.addAttribute("user", name);
	      studentJDBCTemplate.pushOnline(name);
		ModelAndView model=new ModelAndView();
		model.setViewName("redirect:/Dashboard");
		model.addObject("headermsg","ShowTime Web Application");
		model.addObject("usr",usr);
		return model;
	}
	
	
	@RequestMapping("/SubmitRegistration.html")
	public ModelAndView registration()
	{

		ModelAndView model=new ModelAndView("SubmitRegistration");
		model.addObject("valid"," ");
		model.addObject("msg","User Registration");
		return model;
	}
	
/*
 @RequestMapping(value="/ajax")
public ModelAndView chatBox(ModelMap model){

	    ModelAndView mod=new ModelAndView();
		if(model.isEmpty())
		{
	 	     // return "redirect:/Login";
	 	      mod.setViewName("redirect:/Login");
			  return mod;
		}
		else
		{
			mod.setViewName("load");
			return mod;	
	  // return "chatbox";
		}
		}

//
  @RequestMapping(value="/chatbox")
public ModelAndView chatBox(ModelMap model){
	    ApplicationContext context = 
			      new ClassPathXmlApplicationContext("Beans.xml");
		UserJDBCTemplate studentJDBCTemplate = (UserJDBCTemplate)context.getBean("userJDBCTemplate");
	    List<User> listContact = studentJDBCTemplate.listUser();
	    ModelAndView mod=new ModelAndView();
		if(model.isEmpty())
		{
	 	     // return "redirect:/Login";
	 	      mod.setViewName("redirect:/Login");
			  return mod;
		}
		else
		{
		    mod.addObject("listContact", listContact);
			mod.setViewName("chatbox");
			return mod;	
	  // return "chatbox";
		}
		}

 
 
 * */
	
}