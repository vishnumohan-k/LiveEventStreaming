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
 
   @RequestMapping("/won")
   public String printHello(ModelMap model) {
      model.addAttribute("message", "Hello Spring MVC Framework!");

      return "hello";
   }
   
   @RequestMapping(value="/SubmitLogin.html")
   public String showdash(ModelMap model) {
		if(model.isEmpty())
	 	      return "redirect:/Login";
	   
	   return "index";
	   }
   @RequestMapping(value="/widgets.html")
   public String showwidget(ModelMap model) {
	if(model.isEmpty())
 	      return "redirect:/Login";
		return "widgets";
	      
	   }
   @RequestMapping(value="/charts.html")
   public String showchart(ModelMap model) {
		if(model.isEmpty())
	 	      return "redirect:/Login";
	      return "charts";
	   }
   @RequestMapping(value="/tables.html")
   public String showtable(ModelMap model) {
		if(model.isEmpty())
	 	      return "redirect:/Login";
	   
	      return "tables";
	   }
   @RequestMapping(value="/forms.html")
   public String showforms(ModelMap model) {
		if(model.isEmpty())
	 	      return "redirect:/Login";
	      return "forms";
	   }
   @RequestMapping(value="/panels.html")
   public String showpanels(ModelMap model) {
		if(model.isEmpty())
	 	      return "redirect:/Login";
	      return "panels";
	   }
   @RequestMapping(value="/icons.html")
   public String showicons(ModelMap model) {
		if(model.isEmpty())
	 	      return "redirect:/Login";
	      return "icons";
	   }
   
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
   
  /*@RequestMapping(value="/chatbox")
   public ModelAndView chatBox(ModelMap model,ModelAndView mod){
	    ApplicationContext context = 
			      new ClassPathXmlApplicationContext("Beans.xml");
		UserJDBCTemplate studentJDBCTemplate = (UserJDBCTemplate)context.getBean("userJDBCTemplate");
	    List<User> listContact = studentJDBCTemplate.listUser();
		if(model.isEmpty())
		{
				mod.setViewName("redirect:/Login");
				return mod;
		}
		else
		{
	    mod.addObject("listContact", listContact);
		mod.setViewName("chatbox");
		return mod;
		}
		}
   
   */
 
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

 
   
   @RequestMapping("/insert")
   public String JDBCinsertion(ModelMap model){

	      ApplicationContext context = 
	      new ClassPathXmlApplicationContext("Beans.xml");
	      UserJDBCTemplate studentJDBCTemplate = (UserJDBCTemplate)context.getBean("userJDBCTemplate");
	      studentJDBCTemplate.create("Sam","1234","sam@gmail.com",808991);
	      return "sucess";
   }
   
	@RequestMapping(value="/Login",method=RequestMethod.GET)
	public ModelAndView getLoginForm()
	{
		ModelAndView model=new ModelAndView("LoginPage");
		model.addObject("msg","User Login");
		return model;
	}
	
	@RequestMapping(value="/SubmitLogin.html",method=RequestMethod.POST)
	
	/*public ModelAndView submittLoginForm(@ModelAttribute("stud") User stud)
	{

		ModelAndView model=new ModelAndView("LoginSuccess");	
		model.addObject("headermsg","ShowTime Web Application");
		return model;
	}
	*/
	public ModelAndView submittLoginForm(@RequestParam("userName")String name,@RequestParam("password")String password,ModelMap model,HttpServletRequest request)
	{
	/*	User usr=new User();	
		usr.setName(name);
		usr.setPassword(password);
	     ApplicationContext context = 
	      new ClassPathXmlApplicationContext("Beans.xml");
	      UserJDBCTemplate studentJDBCTemplate = (UserJDBCTemplate)context.getBean("userJDBCTemplate");
	      User usr1 = studentJDBCTemplate.getUser(name,password);
		ModelAndView model=new ModelAndView("index");
		model.addObject("headermsg","ShowTime Web Application");
		model.addObject("usr1",usr);*/
		
	     		ApplicationContext context = 
	   	      new ClassPathXmlApplicationContext("Beans.xml");
	   	      UserJDBCTemplate studentJDBCTemplate = (UserJDBCTemplate)context.getBean("userJDBCTemplate");
	   	      
	   	      ModelAndView mod=new ModelAndView();
	   	      if(studentJDBCTemplate.isRegistered(name, password))
	   	      {
	   	    	  studentJDBCTemplate.pushOnline(name);
	   	    	  List<User> listContact = studentJDBCTemplate.listUser();
	   	    	  model.addAttribute("user", name);
	   	    	  mod.addObject("listContact", listContact);
	   	    	  mod.setViewName("Dashboard");
				  return mod;	
	   	    	  //return "Dashboard";
	   	    	  
	   	      }
	 	      mod.setViewName("redirect:/Login");
			  return mod;
	   	      //return "redirect:/Login";
		     
	}
	
	@RequestMapping("/Logout")
	public String Logout(ModelMap model , HttpSession session, SessionStatus status){
		//System.out.println(model.get("user"));
		ApplicationContext context = 
		   	      new ClassPathXmlApplicationContext("Beans.xml");
		   	      UserJDBCTemplate studentJDBCTemplate = (UserJDBCTemplate)context.getBean("userJDBCTemplate");
		   	      System.out.print("inside logout");
		studentJDBCTemplate.deleteOnline((String)model.get("user"));
        status.setComplete();
        session.removeAttribute("user");
        model.remove("user");
		return "redirect:/Login";
	}

	
	@RequestMapping(value="/LoginAfterRegsistration.html",method=RequestMethod.POST)
	
	/*public ModelAndView submittRegister(@ModelAttribute("usr") User usr)
	{

		ModelAndView model=new ModelAndView("RegistrationSuccess");	
		model.addObject("headermsg","ShowTime Web Application");
		return model;
	}*/
	
	
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
		ModelAndView model=new ModelAndView("indexnew");
		model.addObject("headermsg","ShowTime Web Application");
		model.addObject("usr",usr);
		return model;
	}
	
	
	@RequestMapping("/SubmitRegistration.html")
	public ModelAndView registration()
	{
		//ApplicationContext ctx=new ClassPathXmlApplicationContext("Beans.xml");
		//UserDAO dao=(UserDAO)ctx.getBean("edao");
		//int status=dao.saveUser(new Student("sdasd","Amit","asdasd"));
	//	System.out.println(status);*/
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