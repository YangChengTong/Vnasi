package com.vnasi.mapper;

import com.vnasi.pojo.VnasiOrderDetail;
import com.vnasi.pojo.VnasiOrderDetailExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface VnasiOrderDetailMapper {
    int countByExample(VnasiOrderDetailExample example);

    int deleteByExample(VnasiOrderDetailExample example);

    int deleteByPrimaryKey(Integer eodId);

    int insert(VnasiOrderDetail record);

    int insertSelective(VnasiOrderDetail record);

    List<VnasiOrderDetail> selectByExample(VnasiOrderDetailExample example);

    VnasiOrderDetail selectByPrimaryKey(Integer eodId);

    int updateByExampleSelective(@Param("record") VnasiOrderDetail record, @Param("example") VnasiOrderDetailExample example);

    int updateByExample(@Param("record") VnasiOrderDetail record, @Param("example") VnasiOrderDetailExample example);

    int updateByPrimaryKeySelective(VnasiOrderDetail record);

    int updateByPrimaryKey(VnasiOrderDetail record);
}