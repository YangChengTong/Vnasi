package com.vnasi.pojo;

import java.util.ArrayList;
import java.util.List;

public class VnasiCommentExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public VnasiCommentExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andEcIdIsNull() {
            addCriterion("ec_id is null");
            return (Criteria) this;
        }

        public Criteria andEcIdIsNotNull() {
            addCriterion("ec_id is not null");
            return (Criteria) this;
        }

        public Criteria andEcIdEqualTo(Integer value) {
            addCriterion("ec_id =", value, "ecId");
            return (Criteria) this;
        }

        public Criteria andEcIdNotEqualTo(Integer value) {
            addCriterion("ec_id <>", value, "ecId");
            return (Criteria) this;
        }

        public Criteria andEcIdGreaterThan(Integer value) {
            addCriterion("ec_id >", value, "ecId");
            return (Criteria) this;
        }

        public Criteria andEcIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("ec_id >=", value, "ecId");
            return (Criteria) this;
        }

        public Criteria andEcIdLessThan(Integer value) {
            addCriterion("ec_id <", value, "ecId");
            return (Criteria) this;
        }

        public Criteria andEcIdLessThanOrEqualTo(Integer value) {
            addCriterion("ec_id <=", value, "ecId");
            return (Criteria) this;
        }

        public Criteria andEcIdIn(List<Integer> values) {
            addCriterion("ec_id in", values, "ecId");
            return (Criteria) this;
        }

        public Criteria andEcIdNotIn(List<Integer> values) {
            addCriterion("ec_id not in", values, "ecId");
            return (Criteria) this;
        }

        public Criteria andEcIdBetween(Integer value1, Integer value2) {
            addCriterion("ec_id between", value1, value2, "ecId");
            return (Criteria) this;
        }

        public Criteria andEcIdNotBetween(Integer value1, Integer value2) {
            addCriterion("ec_id not between", value1, value2, "ecId");
            return (Criteria) this;
        }

        public Criteria andEcContentIsNull() {
            addCriterion("ec_content is null");
            return (Criteria) this;
        }

        public Criteria andEcContentIsNotNull() {
            addCriterion("ec_content is not null");
            return (Criteria) this;
        }

        public Criteria andEcContentEqualTo(String value) {
            addCriterion("ec_content =", value, "ecContent");
            return (Criteria) this;
        }

        public Criteria andEcContentNotEqualTo(String value) {
            addCriterion("ec_content <>", value, "ecContent");
            return (Criteria) this;
        }

        public Criteria andEcContentGreaterThan(String value) {
            addCriterion("ec_content >", value, "ecContent");
            return (Criteria) this;
        }

        public Criteria andEcContentGreaterThanOrEqualTo(String value) {
            addCriterion("ec_content >=", value, "ecContent");
            return (Criteria) this;
        }

        public Criteria andEcContentLessThan(String value) {
            addCriterion("ec_content <", value, "ecContent");
            return (Criteria) this;
        }

        public Criteria andEcContentLessThanOrEqualTo(String value) {
            addCriterion("ec_content <=", value, "ecContent");
            return (Criteria) this;
        }

        public Criteria andEcContentLike(String value) {
            addCriterion("ec_content like", value, "ecContent");
            return (Criteria) this;
        }

        public Criteria andEcContentNotLike(String value) {
            addCriterion("ec_content not like", value, "ecContent");
            return (Criteria) this;
        }

        public Criteria andEcContentIn(List<String> values) {
            addCriterion("ec_content in", values, "ecContent");
            return (Criteria) this;
        }

        public Criteria andEcContentNotIn(List<String> values) {
            addCriterion("ec_content not in", values, "ecContent");
            return (Criteria) this;
        }

        public Criteria andEcContentBetween(String value1, String value2) {
            addCriterion("ec_content between", value1, value2, "ecContent");
            return (Criteria) this;
        }

        public Criteria andEcContentNotBetween(String value1, String value2) {
            addCriterion("ec_content not between", value1, value2, "ecContent");
            return (Criteria) this;
        }

        public Criteria andEcCreateTimeIsNull() {
            addCriterion("ec_create_time is null");
            return (Criteria) this;
        }

        public Criteria andEcCreateTimeIsNotNull() {
            addCriterion("ec_create_time is not null");
            return (Criteria) this;
        }

        public Criteria andEcCreateTimeEqualTo(String value) {
            addCriterion("ec_create_time =", value, "ecCreateTime");
            return (Criteria) this;
        }

        public Criteria andEcCreateTimeNotEqualTo(String value) {
            addCriterion("ec_create_time <>", value, "ecCreateTime");
            return (Criteria) this;
        }

        public Criteria andEcCreateTimeGreaterThan(String value) {
            addCriterion("ec_create_time >", value, "ecCreateTime");
            return (Criteria) this;
        }

        public Criteria andEcCreateTimeGreaterThanOrEqualTo(String value) {
            addCriterion("ec_create_time >=", value, "ecCreateTime");
            return (Criteria) this;
        }

        public Criteria andEcCreateTimeLessThan(String value) {
            addCriterion("ec_create_time <", value, "ecCreateTime");
            return (Criteria) this;
        }

        public Criteria andEcCreateTimeLessThanOrEqualTo(String value) {
            addCriterion("ec_create_time <=", value, "ecCreateTime");
            return (Criteria) this;
        }

        public Criteria andEcCreateTimeLike(String value) {
            addCriterion("ec_create_time like", value, "ecCreateTime");
            return (Criteria) this;
        }

        public Criteria andEcCreateTimeNotLike(String value) {
            addCriterion("ec_create_time not like", value, "ecCreateTime");
            return (Criteria) this;
        }

        public Criteria andEcCreateTimeIn(List<String> values) {
            addCriterion("ec_create_time in", values, "ecCreateTime");
            return (Criteria) this;
        }

        public Criteria andEcCreateTimeNotIn(List<String> values) {
            addCriterion("ec_create_time not in", values, "ecCreateTime");
            return (Criteria) this;
        }

        public Criteria andEcCreateTimeBetween(String value1, String value2) {
            addCriterion("ec_create_time between", value1, value2, "ecCreateTime");
            return (Criteria) this;
        }

        public Criteria andEcCreateTimeNotBetween(String value1, String value2) {
            addCriterion("ec_create_time not between", value1, value2, "ecCreateTime");
            return (Criteria) this;
        }

        public Criteria andEcReplyIsNull() {
            addCriterion("ec_reply is null");
            return (Criteria) this;
        }

        public Criteria andEcReplyIsNotNull() {
            addCriterion("ec_reply is not null");
            return (Criteria) this;
        }

        public Criteria andEcReplyEqualTo(String value) {
            addCriterion("ec_reply =", value, "ecReply");
            return (Criteria) this;
        }

        public Criteria andEcReplyNotEqualTo(String value) {
            addCriterion("ec_reply <>", value, "ecReply");
            return (Criteria) this;
        }

        public Criteria andEcReplyGreaterThan(String value) {
            addCriterion("ec_reply >", value, "ecReply");
            return (Criteria) this;
        }

        public Criteria andEcReplyGreaterThanOrEqualTo(String value) {
            addCriterion("ec_reply >=", value, "ecReply");
            return (Criteria) this;
        }

        public Criteria andEcReplyLessThan(String value) {
            addCriterion("ec_reply <", value, "ecReply");
            return (Criteria) this;
        }

        public Criteria andEcReplyLessThanOrEqualTo(String value) {
            addCriterion("ec_reply <=", value, "ecReply");
            return (Criteria) this;
        }

        public Criteria andEcReplyLike(String value) {
            addCriterion("ec_reply like", value, "ecReply");
            return (Criteria) this;
        }

        public Criteria andEcReplyNotLike(String value) {
            addCriterion("ec_reply not like", value, "ecReply");
            return (Criteria) this;
        }

        public Criteria andEcReplyIn(List<String> values) {
            addCriterion("ec_reply in", values, "ecReply");
            return (Criteria) this;
        }

        public Criteria andEcReplyNotIn(List<String> values) {
            addCriterion("ec_reply not in", values, "ecReply");
            return (Criteria) this;
        }

        public Criteria andEcReplyBetween(String value1, String value2) {
            addCriterion("ec_reply between", value1, value2, "ecReply");
            return (Criteria) this;
        }

        public Criteria andEcReplyNotBetween(String value1, String value2) {
            addCriterion("ec_reply not between", value1, value2, "ecReply");
            return (Criteria) this;
        }

        public Criteria andEcReplyTimeIsNull() {
            addCriterion("ec_reply_time is null");
            return (Criteria) this;
        }

        public Criteria andEcReplyTimeIsNotNull() {
            addCriterion("ec_reply_time is not null");
            return (Criteria) this;
        }

        public Criteria andEcReplyTimeEqualTo(String value) {
            addCriterion("ec_reply_time =", value, "ecReplyTime");
            return (Criteria) this;
        }

        public Criteria andEcReplyTimeNotEqualTo(String value) {
            addCriterion("ec_reply_time <>", value, "ecReplyTime");
            return (Criteria) this;
        }

        public Criteria andEcReplyTimeGreaterThan(String value) {
            addCriterion("ec_reply_time >", value, "ecReplyTime");
            return (Criteria) this;
        }

        public Criteria andEcReplyTimeGreaterThanOrEqualTo(String value) {
            addCriterion("ec_reply_time >=", value, "ecReplyTime");
            return (Criteria) this;
        }

        public Criteria andEcReplyTimeLessThan(String value) {
            addCriterion("ec_reply_time <", value, "ecReplyTime");
            return (Criteria) this;
        }

        public Criteria andEcReplyTimeLessThanOrEqualTo(String value) {
            addCriterion("ec_reply_time <=", value, "ecReplyTime");
            return (Criteria) this;
        }

        public Criteria andEcReplyTimeLike(String value) {
            addCriterion("ec_reply_time like", value, "ecReplyTime");
            return (Criteria) this;
        }

        public Criteria andEcReplyTimeNotLike(String value) {
            addCriterion("ec_reply_time not like", value, "ecReplyTime");
            return (Criteria) this;
        }

        public Criteria andEcReplyTimeIn(List<String> values) {
            addCriterion("ec_reply_time in", values, "ecReplyTime");
            return (Criteria) this;
        }

        public Criteria andEcReplyTimeNotIn(List<String> values) {
            addCriterion("ec_reply_time not in", values, "ecReplyTime");
            return (Criteria) this;
        }

        public Criteria andEcReplyTimeBetween(String value1, String value2) {
            addCriterion("ec_reply_time between", value1, value2, "ecReplyTime");
            return (Criteria) this;
        }

        public Criteria andEcReplyTimeNotBetween(String value1, String value2) {
            addCriterion("ec_reply_time not between", value1, value2, "ecReplyTime");
            return (Criteria) this;
        }

        public Criteria andEcNickNameIsNull() {
            addCriterion("ec_nick_name is null");
            return (Criteria) this;
        }

        public Criteria andEcNickNameIsNotNull() {
            addCriterion("ec_nick_name is not null");
            return (Criteria) this;
        }

        public Criteria andEcNickNameEqualTo(String value) {
            addCriterion("ec_nick_name =", value, "ecNickName");
            return (Criteria) this;
        }

        public Criteria andEcNickNameNotEqualTo(String value) {
            addCriterion("ec_nick_name <>", value, "ecNickName");
            return (Criteria) this;
        }

        public Criteria andEcNickNameGreaterThan(String value) {
            addCriterion("ec_nick_name >", value, "ecNickName");
            return (Criteria) this;
        }

        public Criteria andEcNickNameGreaterThanOrEqualTo(String value) {
            addCriterion("ec_nick_name >=", value, "ecNickName");
            return (Criteria) this;
        }

        public Criteria andEcNickNameLessThan(String value) {
            addCriterion("ec_nick_name <", value, "ecNickName");
            return (Criteria) this;
        }

        public Criteria andEcNickNameLessThanOrEqualTo(String value) {
            addCriterion("ec_nick_name <=", value, "ecNickName");
            return (Criteria) this;
        }

        public Criteria andEcNickNameLike(String value) {
            addCriterion("ec_nick_name like", value, "ecNickName");
            return (Criteria) this;
        }

        public Criteria andEcNickNameNotLike(String value) {
            addCriterion("ec_nick_name not like", value, "ecNickName");
            return (Criteria) this;
        }

        public Criteria andEcNickNameIn(List<String> values) {
            addCriterion("ec_nick_name in", values, "ecNickName");
            return (Criteria) this;
        }

        public Criteria andEcNickNameNotIn(List<String> values) {
            addCriterion("ec_nick_name not in", values, "ecNickName");
            return (Criteria) this;
        }

        public Criteria andEcNickNameBetween(String value1, String value2) {
            addCriterion("ec_nick_name between", value1, value2, "ecNickName");
            return (Criteria) this;
        }

        public Criteria andEcNickNameNotBetween(String value1, String value2) {
            addCriterion("ec_nick_name not between", value1, value2, "ecNickName");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}