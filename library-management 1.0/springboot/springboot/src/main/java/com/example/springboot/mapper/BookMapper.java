package com.example.springboot.mapper;

import com.example.springboot.controller.request.BaseRequest;
import com.example.springboot.entity.Book;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface BookMapper {
  //  @Select("select *  from `library-management`.user ")
  List<Book> list();
  List<Book> listByCondition(BaseRequest baseRequest);
  void save(Book obj);
  Book getById(Integer id);
  void updateById(Book admin);
  void deleteById(Integer id);
  Book getByNo(String bookNo);
  void updateNumByNo(String bookNo);
}
