package com.vnasi.mapper;

import com.vnasi.pojo.VnasiComment;
import com.vnasi.pojo.VnasiCommentExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface VnasiCommentMapper {
    int countByExample(VnasiCommentExample example);

    int deleteByExample(VnasiCommentExample example);

    int deleteByPrimaryKey(Integer ecId);

    int insert(VnasiComment record);

    int insertSelective(VnasiComment record);

    List<VnasiComment> selectByExample(VnasiCommentExample example);

    VnasiComment selectByPrimaryKey(Integer ecId);

    int updateByExampleSelective(@Param("record") VnasiComment record, @Param("example") VnasiCommentExample example);

    int updateByExample(@Param("record") VnasiComment record, @Param("example") VnasiCommentExample example);

    int updateByPrimaryKeySelective(VnasiComment record);

    int updateByPrimaryKey(VnasiComment record);
}