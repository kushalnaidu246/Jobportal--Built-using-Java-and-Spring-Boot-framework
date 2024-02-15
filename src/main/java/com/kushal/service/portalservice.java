package com.kushal.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kushal.model.jobpost;
import com.kushal.repo.portalrepo;

@Service
public class portalservice {
    @Autowired
    private portalrepo repo;

    public List<jobpost> returnAllJobPosts() {
        return repo.returnAllJobPosts();
    }

    public void addJobPost(jobpost jobPost) {
        repo.addJobPost(jobPost);
    }
}
