package com.sgt.ExpenseTracker.service;
import com.sgt.ExpenseTracker.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AuthService {
    @Autowired
    AuthService authService;
    public void register(User user){
        //checkvalidity of email
        //check if email already exists
        //check if username already exists
        //hash password befire register
        //if all passed then call repository
    }
}
