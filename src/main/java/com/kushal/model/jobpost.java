package com.kushal.model;

import java.util.List;

import org.springframework.stereotype.Component;

import lombok.Data;

@Data
@Component
public class jobpost {
    private int postid;
    private String postprofile;
    private String postdesc;
    private int reqExperience;
    private List<String> posttechstack;
    
    // No-argument constructor
    public jobpost() {
    }

    // Constructor with required fields
    public jobpost(int postid, String postprofile, String postdesc, int reqExperience, List<String> posttechstack) {
        this.postid = postid;
        this.postprofile = postprofile;
        this.postdesc = postdesc;
        this.reqExperience = reqExperience;
        this.posttechstack = posttechstack;
    }
    
    public String getPostprofile() {
        return postprofile;
    }
    public int getPostid() {
        return postid;
    }
    
   public String getPostdesc() {
	   return postdesc;
   }
   public int getReqExperience() {
	   return reqExperience;
   }
   public List<String> getPosttechstack() {
	    return posttechstack;
	}
   
   public void setPostprofile(String postprofile) {
       this.postprofile = postprofile;
   }

   public void setPostdesc(String postdesc) {
       this.postdesc = postdesc;
   }

   public void setReqExperience(int reqExperience) {
       this.reqExperience = reqExperience;
   }

   public void setPosttechstack(List<String> posttechstack) {
       this.posttechstack = posttechstack;
   }
}
