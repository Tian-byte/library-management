package com.example.springboot.common;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.PathMatchConfigurer;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
@Configuration
public class WebConfig  implements WebMvcConfigurer {

    @Autowired
    JwtInterceptor jwtInterceptor;
    @Override
    public void configurePathMatch(PathMatchConfigurer configurer){
        //指定controller 统一接口
        configurer.addPathPrefix("/api",clazz -> clazz.isAnnotationPresent(RestController.class));
    }
    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        registry.addInterceptor(jwtInterceptor).addPathPatterns("/api/**").excludePathPatterns("/api/admin/login");
    }
}
