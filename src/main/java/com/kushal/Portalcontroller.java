package com.kushal;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;


import com.kushal.model.jobpost;
import com.kushal.service.*;
import com.kushal.repo.*;




@Controller
public class Portalcontroller {
	
	@Autowired
	public portalservice service;
	
	
	
	
   @GetMapping({"/","/Home"})
	public String home() {
	   System.out.println("Home page server started");
		return "Home";
	}
   
   @GetMapping("/addjob")
   public String addJob() {
	   return "addjob";
   }
   
   
   @PostMapping("/Handleform")
   public String handleAddJobForm(jobpost jobPost, Model model) {
       service.addJobPost(jobPost);
       model.addAttribute("jobPost", jobPost);
       return "success";
   }
   
   
   @GetMapping("/faq")
   public String faq() {
	   return "faq";
   }
   
   @GetMapping("/contact")
   public String contact() {
	   return "contact";
   }
   
  @GetMapping("/about") 
   public String about() {
	   return "about";
   }
  
  @GetMapping("/alljob")
	public String viewJobs(Model model) {

		List<jobpost> jobPosts = service.returnAllJobPosts();
		model.addAttribute("jobPosts", jobPosts);
		return "alljob";
	}
   
   

}


