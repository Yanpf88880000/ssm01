package com.jxau.dao;

import com.jxau.model.Reserve;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ReserveDao {

    @Select("select * from reserve")
    List<Reserve> getAllReserve();

    @Select("select * from reserve where id=#{id}")
    Reserve getReserveById(int id);

    @Select("select * from reserve where teacherId=#{teacherId}")
    Reserve getReserveByTeacherId(int teacherId);


    @Delete("delete from reserve where id=#{id}")
    int deleteReserve(int id);


    @Update("update reserve set reserveStatus=#{reserveStatus} where id=#{id}")
    int updateReserve(Reserve reserve);


    @Select("select * from reserve limit #{currentPage},#{pageNum}")
    List<Reserve> getReserveByPage(@Param("currentPage") int currentPage, @Param("pageNum") int pageNum);


    @Select("select count(*) from reserve")
    int getTotalReserve();


    @Select("select * from reserve where reserveStatus=#{reserveStatus}")
    List<Reserve> getReserveByStatus(String reserveStatus);


}
