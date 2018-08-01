package com.bytegriffin.weborz.error;

import org.springframework.boot.web.server.ErrorPage;
import org.springframework.boot.web.server.ErrorPageRegistrar;
import org.springframework.boot.web.server.ErrorPageRegistry;
import org.springframework.context.annotation.Bean;
import org.springframework.http.HttpStatus;


//@Component
public class ErrorConfigurar implements ErrorPageRegistrar {

    @Override
    public void registerErrorPages(ErrorPageRegistry registry) {
        ErrorPage[] errorPages = new ErrorPage[2];
        //errorPages[0]=new ErrorPage(HttpStatus.NOT_FOUND,"/error404");
        // errorPages[1]=new ErrorPage(HttpStatus.INTERNAL_SERVER_ERROR,"/error500");
        
    }
    
    
}