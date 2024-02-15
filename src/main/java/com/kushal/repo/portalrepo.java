package com.kushal.repo;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.kushal.model.jobpost;

@Repository
public class portalrepo {

    List<jobpost> jobs = new ArrayList<>();

    public portalrepo() {

        // Java Developer Job Post
        List<String> javaTechStack = new ArrayList<>();
        javaTechStack.add("Core Java");
        javaTechStack.add("J2EE");
        javaTechStack.add("Spring Boot");
        javaTechStack.add("Hibernate");

        jobs.add(new jobpost(1, "Java Developer", "Must have good experience in core Java and advanced Java", 2,
                javaTechStack));

        // Frontend Developer Job Post
        List<String> frontendTechStack = new ArrayList<>();
        frontendTechStack.add("HTML");
        frontendTechStack.add("CSS");
        frontendTechStack.add("JavaScript");
        frontendTechStack.add("React");

        jobs.add(new jobpost(2, "Frontend Developer",
                "Experience in building responsive web applications using React", 3, frontendTechStack));

        // data scientist job post
        List<String> datascientist = new ArrayList<>();
        datascientist.add("Python");
        datascientist.add("Machine Learning");
        datascientist.add("Data Analysis");
        
        jobs.add(new jobpost(3, "Data Scientist", "Strong background in machine learning and data analysis", 4,datascientist));
    }

  
    public List<jobpost> returnAllJobPosts() {
        return jobs;
    }

    // method to save a job post object into arrayList
    public void addJobPost(jobpost job) {
        jobs.add(job);
    }
}
