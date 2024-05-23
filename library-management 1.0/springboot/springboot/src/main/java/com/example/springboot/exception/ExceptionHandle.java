package com.example.springboot.exception;

import cn.hutool.core.util.StrUtil;
import com.example.springboot.common.Result;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;

@Slf4j
@RestControllerAdvice
public class ExceptionHandle {
    //全局异常处理’
    @ExceptionHandler(value = ServiceException.class)
    public Result serviceExceptionError(Exception e) {
        log.error("业务异常",e);
      String code =  e.getMessage();
      if (StrUtil.isNotBlank(code)){
          return  Result.error(code, e.getLocalizedMessage());
      }
        return Result.error(e.getLocalizedMessage());
    }
    @ExceptionHandler(value = Exception.class)
    public Result exceptionError(Exception e) {
        log.error("系统错误",e);
        return Result.error("系统错误");
    }
}
