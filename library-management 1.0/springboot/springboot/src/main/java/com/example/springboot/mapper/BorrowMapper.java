package com.example.springboot.mapper;

import com.example.springboot.controller.request.BaseRequest;
import com.example.springboot.entity.Borrow;
import com.example.springboot.entity.Retur;
import com.example.springboot.mapper.po.BorrowReturCountPO;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface BorrowMapper {
  //  @Select("select *  from `library-management`.user ")
  List<Borrow> list();
  List<Borrow> listByCondition(BaseRequest baseRequest);
  List<Retur> listReturByCondition(BaseRequest baseRequest);

  void save(Borrow obj);
  void saveRetur(Retur obj);

  Borrow getById(Integer id);

  void updateById(Borrow admin);

  void deleteById(Integer id);

  void deleteReturById(Integer id);

  void updateStatus(@Param("status") String status, @Param("id") Integer id);

    List<BorrowReturCountPO> getCountByTimeRange(@Param("timeRange")String timeRange, @Param("type") int type);
}

