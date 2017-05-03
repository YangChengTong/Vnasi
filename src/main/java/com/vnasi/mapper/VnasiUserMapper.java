package com.vnasi.mapper;

import com.vnasi.pojo.VnasiUser;
import com.vnasi.pojo.VnasiUserExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface VnasiUserMapper {
    int countByExample(VnasiUserExample example);

    int deleteByExample(VnasiUserExample example);

    int deleteByPrimaryKey(String userId);

    int insert(VnasiUser record);

    int insertSelective(VnasiUser record);

    List<VnasiUser> selectByExample(VnasiUserExample example);

    VnasiUser selectByPrimaryKey(String userId);

    int updateByExampleSelective(@Param("record") VnasiUser record, @Param("example") VnasiUserExample example);

    int updateByExample(@Param("record") VnasiUser record, @Param("example") VnasiUserExample example);

    int updateByPrimaryKeySelective(VnasiUser record);

    int updateByPrimaryKey(VnasiUser record);
}