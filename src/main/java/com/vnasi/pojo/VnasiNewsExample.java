package com.vnasi.pojo;

import java.util.ArrayList;
import java.util.List;

public class VnasiNewsExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public VnasiNewsExample() {
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

        public Criteria andEnIdIsNull() {
            addCriterion("en_id is null");
            return (Criteria) this;
        }

        public Criteria andEnIdIsNotNull() {
            addCriterion("en_id is not null");
            return (Criteria) this;
        }

        public Criteria andEnIdEqualTo(Integer value) {
            addCriterion("en_id =", value, "enId");
            return (Criteria) this;
        }

        public Criteria andEnIdNotEqualTo(Integer value) {
            addCriterion("en_id <>", value, "enId");
            return (Criteria) this;
        }

        public Criteria andEnIdGreaterThan(Integer value) {
            addCriterion("en_id >", value, "enId");
            return (Criteria) this;
        }

        public Criteria andEnIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("en_id >=", value, "enId");
            return (Criteria) this;
        }

        public Criteria andEnIdLessThan(Integer value) {
            addCriterion("en_id <", value, "enId");
            return (Criteria) this;
        }

        public Criteria andEnIdLessThanOrEqualTo(Integer value) {
            addCriterion("en_id <=", value, "enId");
            return (Criteria) this;
        }

        public Criteria andEnIdIn(List<Integer> values) {
            addCriterion("en_id in", values, "enId");
            return (Criteria) this;
        }

        public Criteria andEnIdNotIn(List<Integer> values) {
            addCriterion("en_id not in", values, "enId");
            return (Criteria) this;
        }

        public Criteria andEnIdBetween(Integer value1, Integer value2) {
            addCriterion("en_id between", value1, value2, "enId");
            return (Criteria) this;
        }

        public Criteria andEnIdNotBetween(Integer value1, Integer value2) {
            addCriterion("en_id not between", value1, value2, "enId");
            return (Criteria) this;
        }

        public Criteria andEnTitleIsNull() {
            addCriterion("en_title is null");
            return (Criteria) this;
        }

        public Criteria andEnTitleIsNotNull() {
            addCriterion("en_title is not null");
            return (Criteria) this;
        }

        public Criteria andEnTitleEqualTo(String value) {
            addCriterion("en_title =", value, "enTitle");
            return (Criteria) this;
        }

        public Criteria andEnTitleNotEqualTo(String value) {
            addCriterion("en_title <>", value, "enTitle");
            return (Criteria) this;
        }

        public Criteria andEnTitleGreaterThan(String value) {
            addCriterion("en_title >", value, "enTitle");
            return (Criteria) this;
        }

        public Criteria andEnTitleGreaterThanOrEqualTo(String value) {
            addCriterion("en_title >=", value, "enTitle");
            return (Criteria) this;
        }

        public Criteria andEnTitleLessThan(String value) {
            addCriterion("en_title <", value, "enTitle");
            return (Criteria) this;
        }

        public Criteria andEnTitleLessThanOrEqualTo(String value) {
            addCriterion("en_title <=", value, "enTitle");
            return (Criteria) this;
        }

        public Criteria andEnTitleLike(String value) {
            addCriterion("en_title like", value, "enTitle");
            return (Criteria) this;
        }

        public Criteria andEnTitleNotLike(String value) {
            addCriterion("en_title not like", value, "enTitle");
            return (Criteria) this;
        }

        public Criteria andEnTitleIn(List<String> values) {
            addCriterion("en_title in", values, "enTitle");
            return (Criteria) this;
        }

        public Criteria andEnTitleNotIn(List<String> values) {
            addCriterion("en_title not in", values, "enTitle");
            return (Criteria) this;
        }

        public Criteria andEnTitleBetween(String value1, String value2) {
            addCriterion("en_title between", value1, value2, "enTitle");
            return (Criteria) this;
        }

        public Criteria andEnTitleNotBetween(String value1, String value2) {
            addCriterion("en_title not between", value1, value2, "enTitle");
            return (Criteria) this;
        }

        public Criteria andEnContentIsNull() {
            addCriterion("en_content is null");
            return (Criteria) this;
        }

        public Criteria andEnContentIsNotNull() {
            addCriterion("en_content is not null");
            return (Criteria) this;
        }

        public Criteria andEnContentEqualTo(String value) {
            addCriterion("en_content =", value, "enContent");
            return (Criteria) this;
        }

        public Criteria andEnContentNotEqualTo(String value) {
            addCriterion("en_content <>", value, "enContent");
            return (Criteria) this;
        }

        public Criteria andEnContentGreaterThan(String value) {
            addCriterion("en_content >", value, "enContent");
            return (Criteria) this;
        }

        public Criteria andEnContentGreaterThanOrEqualTo(String value) {
            addCriterion("en_content >=", value, "enContent");
            return (Criteria) this;
        }

        public Criteria andEnContentLessThan(String value) {
            addCriterion("en_content <", value, "enContent");
            return (Criteria) this;
        }

        public Criteria andEnContentLessThanOrEqualTo(String value) {
            addCriterion("en_content <=", value, "enContent");
            return (Criteria) this;
        }

        public Criteria andEnContentLike(String value) {
            addCriterion("en_content like", value, "enContent");
            return (Criteria) this;
        }

        public Criteria andEnContentNotLike(String value) {
            addCriterion("en_content not like", value, "enContent");
            return (Criteria) this;
        }

        public Criteria andEnContentIn(List<String> values) {
            addCriterion("en_content in", values, "enContent");
            return (Criteria) this;
        }

        public Criteria andEnContentNotIn(List<String> values) {
            addCriterion("en_content not in", values, "enContent");
            return (Criteria) this;
        }

        public Criteria andEnContentBetween(String value1, String value2) {
            addCriterion("en_content between", value1, value2, "enContent");
            return (Criteria) this;
        }

        public Criteria andEnContentNotBetween(String value1, String value2) {
            addCriterion("en_content not between", value1, value2, "enContent");
            return (Criteria) this;
        }

        public Criteria andEnCreateTimeIsNull() {
            addCriterion("en_create_time is null");
            return (Criteria) this;
        }

        public Criteria andEnCreateTimeIsNotNull() {
            addCriterion("en_create_time is not null");
            return (Criteria) this;
        }

        public Criteria andEnCreateTimeEqualTo(String value) {
            addCriterion("en_create_time =", value, "enCreateTime");
            return (Criteria) this;
        }

        public Criteria andEnCreateTimeNotEqualTo(String value) {
            addCriterion("en_create_time <>", value, "enCreateTime");
            return (Criteria) this;
        }

        public Criteria andEnCreateTimeGreaterThan(String value) {
            addCriterion("en_create_time >", value, "enCreateTime");
            return (Criteria) this;
        }

        public Criteria andEnCreateTimeGreaterThanOrEqualTo(String value) {
            addCriterion("en_create_time >=", value, "enCreateTime");
            return (Criteria) this;
        }

        public Criteria andEnCreateTimeLessThan(String value) {
            addCriterion("en_create_time <", value, "enCreateTime");
            return (Criteria) this;
        }

        public Criteria andEnCreateTimeLessThanOrEqualTo(String value) {
            addCriterion("en_create_time <=", value, "enCreateTime");
            return (Criteria) this;
        }

        public Criteria andEnCreateTimeLike(String value) {
            addCriterion("en_create_time like", value, "enCreateTime");
            return (Criteria) this;
        }

        public Criteria andEnCreateTimeNotLike(String value) {
            addCriterion("en_create_time not like", value, "enCreateTime");
            return (Criteria) this;
        }

        public Criteria andEnCreateTimeIn(List<String> values) {
            addCriterion("en_create_time in", values, "enCreateTime");
            return (Criteria) this;
        }

        public Criteria andEnCreateTimeNotIn(List<String> values) {
            addCriterion("en_create_time not in", values, "enCreateTime");
            return (Criteria) this;
        }

        public Criteria andEnCreateTimeBetween(String value1, String value2) {
            addCriterion("en_create_time between", value1, value2, "enCreateTime");
            return (Criteria) this;
        }

        public Criteria andEnCreateTimeNotBetween(String value1, String value2) {
            addCriterion("en_create_time not between", value1, value2, "enCreateTime");
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