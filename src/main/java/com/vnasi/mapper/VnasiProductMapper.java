package com.vnasi.mapper;

import com.vnasi.pojo.VnasiProduct;
import com.vnasi.pojo.VnasiProductExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface VnasiProductMapper {
    int countByExample(VnasiProductExample example);

    int deleteByExample(VnasiProductExample example);

    int deleteByPrimaryKey(Integer epId);

    int insert(VnasiProduct record);

    int insertSelective(VnasiProduct record);

    List<VnasiProduct> selectByExample(VnasiProductExample example);

    VnasiProduct selectByPrimaryKey(Integer epId);

    int updateByExampleSelective(@Param("record") VnasiProduct record, @Param("example") VnasiProductExample example);

    int updateByExample(@Param("record") VnasiProduct record, @Param("example") VnasiProductExample example);

    int updateByPrimaryKeySelective(VnasiProduct record);

    int updateByPrimaryKey(VnasiProduct record);
}