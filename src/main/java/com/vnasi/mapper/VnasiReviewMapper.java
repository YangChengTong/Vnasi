package com.vnasi.mapper;

import com.vnasi.pojo.VnasiReview;
import com.vnasi.pojo.VnasiReviewExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface VnasiReviewMapper {
    int countByExample(VnasiReviewExample example);

    int deleteByExample(VnasiReviewExample example);

    int deleteByPrimaryKey(Integer rOid);

    int insert(VnasiReview record);

    int insertSelective(VnasiReview record);

    List<VnasiReview> selectByExample(VnasiReviewExample example);

    VnasiReview selectByPrimaryKey(Integer rOid);

    int updateByExampleSelective(@Param("record") VnasiReview record, @Param("example") VnasiReviewExample example);

    int updateByExample(@Param("record") VnasiReview record, @Param("example") VnasiReviewExample example);

    int updateByPrimaryKeySelective(VnasiReview record);

    int updateByPrimaryKey(VnasiReview record);
}