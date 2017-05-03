package com.vnasi.mapper;

import com.vnasi.pojo.VnasiProductCategory;
import com.vnasi.pojo.VnasiProductCategoryExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface VnasiProductCategoryMapper {
    int countByExample(VnasiProductCategoryExample example);

    int deleteByExample(VnasiProductCategoryExample example);

    int deleteByPrimaryKey(Integer epcId);

    int insert(VnasiProductCategory record);

    int insertSelective(VnasiProductCategory record);

    List<VnasiProductCategory> selectByExample(VnasiProductCategoryExample example);

    VnasiProductCategory selectByPrimaryKey(Integer epcId);

    int updateByExampleSelective(@Param("record") VnasiProductCategory record, @Param("example") VnasiProductCategoryExample example);

    int updateByExample(@Param("record") VnasiProductCategory record, @Param("example") VnasiProductCategoryExample example);

    int updateByPrimaryKeySelective(VnasiProductCategory record);

    int updateByPrimaryKey(VnasiProductCategory record);
}