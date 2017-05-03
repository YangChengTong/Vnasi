package com.vnasi.mapper;

import com.vnasi.pojo.VnasiNews;
import com.vnasi.pojo.VnasiNewsExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface VnasiNewsMapper {
    int countByExample(VnasiNewsExample example);

    int deleteByExample(VnasiNewsExample example);

    int deleteByPrimaryKey(Integer enId);

    int insert(VnasiNews record);

    int insertSelective(VnasiNews record);

    List<VnasiNews> selectByExample(VnasiNewsExample example);

    VnasiNews selectByPrimaryKey(Integer enId);

    int updateByExampleSelective(@Param("record") VnasiNews record, @Param("example") VnasiNewsExample example);

    int updateByExample(@Param("record") VnasiNews record, @Param("example") VnasiNewsExample example);

    int updateByPrimaryKeySelective(VnasiNews record);

    int updateByPrimaryKey(VnasiNews record);
}