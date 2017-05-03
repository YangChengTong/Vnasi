package com.vnasi.mapper;

import com.vnasi.pojo.VnasiOrder;
import com.vnasi.pojo.VnasiOrderExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface VnasiOrderMapper {
    int countByExample(VnasiOrderExample example);

    int deleteByExample(VnasiOrderExample example);

    int deleteByPrimaryKey(Integer eoId);

    int insert(VnasiOrder record);

    int insertSelective(VnasiOrder record);

    List<VnasiOrder> selectByExample(VnasiOrderExample example);

    VnasiOrder selectByPrimaryKey(Integer eoId);

    int updateByExampleSelective(@Param("record") VnasiOrder record, @Param("example") VnasiOrderExample example);

    int updateByExample(@Param("record") VnasiOrder record, @Param("example") VnasiOrderExample example);

    int updateByPrimaryKeySelective(VnasiOrder record);

    int updateByPrimaryKey(VnasiOrder record);
}