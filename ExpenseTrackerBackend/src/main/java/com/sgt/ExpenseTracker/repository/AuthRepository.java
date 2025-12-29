package com.sgt.ExpenseTracker.repository;

import com.sgt.ExpenseTracker.service.AuthService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.PostMapping;


@Repository
public class AuthRepository {
    @Autowired
    AuthService authService;





}

