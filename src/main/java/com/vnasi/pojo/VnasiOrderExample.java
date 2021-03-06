package com.vnasi.pojo;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class VnasiOrderExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public VnasiOrderExample() {
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

        public Criteria andEoIdIsNull() {
            addCriterion("eo_id is null");
            return (Criteria) this;
        }

        public Criteria andEoIdIsNotNull() {
            addCriterion("eo_id is not null");
            return (Criteria) this;
        }

        public Criteria andEoIdEqualTo(Integer value) {
            addCriterion("eo_id =", value, "eoId");
            return (Criteria) this;
        }

        public Criteria andEoIdNotEqualTo(Integer value) {
            addCriterion("eo_id <>", value, "eoId");
            return (Criteria) this;
        }

        public Criteria andEoIdGreaterThan(Integer value) {
            addCriterion("eo_id >", value, "eoId");
            return (Criteria) this;
        }

        public Criteria andEoIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("eo_id >=", value, "eoId");
            return (Criteria) this;
        }

        public Criteria andEoIdLessThan(Integer value) {
            addCriterion("eo_id <", value, "eoId");
            return (Criteria) this;
        }

        public Criteria andEoIdLessThanOrEqualTo(Integer value) {
            addCriterion("eo_id <=", value, "eoId");
            return (Criteria) this;
        }

        public Criteria andEoIdIn(List<Integer> values) {
            addCriterion("eo_id in", values, "eoId");
            return (Criteria) this;
        }

        public Criteria andEoIdNotIn(List<Integer> values) {
            addCriterion("eo_id not in", values, "eoId");
            return (Criteria) this;
        }

        public Criteria andEoIdBetween(Integer value1, Integer value2) {
            addCriterion("eo_id between", value1, value2, "eoId");
            return (Criteria) this;
        }

        public Criteria andEoIdNotBetween(Integer value1, Integer value2) {
            addCriterion("eo_id not between", value1, value2, "eoId");
            return (Criteria) this;
        }

        public Criteria andEoUserIdIsNull() {
            addCriterion("eo_user_id is null");
            return (Criteria) this;
        }

        public Criteria andEoUserIdIsNotNull() {
            addCriterion("eo_user_id is not null");
            return (Criteria) this;
        }

        public Criteria andEoUserIdEqualTo(String value) {
            addCriterion("eo_user_id =", value, "eoUserId");
            return (Criteria) this;
        }

        public Criteria andEoUserIdNotEqualTo(String value) {
            addCriterion("eo_user_id <>", value, "eoUserId");
            return (Criteria) this;
        }

        public Criteria andEoUserIdGreaterThan(String value) {
            addCriterion("eo_user_id >", value, "eoUserId");
            return (Criteria) this;
        }

        public Criteria andEoUserIdGreaterThanOrEqualTo(String value) {
            addCriterion("eo_user_id >=", value, "eoUserId");
            return (Criteria) this;
        }

        public Criteria andEoUserIdLessThan(String value) {
            addCriterion("eo_user_id <", value, "eoUserId");
            return (Criteria) this;
        }

        public Criteria andEoUserIdLessThanOrEqualTo(String value) {
            addCriterion("eo_user_id <=", value, "eoUserId");
            return (Criteria) this;
        }

        public Criteria andEoUserIdLike(String value) {
            addCriterion("eo_user_id like", value, "eoUserId");
            return (Criteria) this;
        }

        public Criteria andEoUserIdNotLike(String value) {
            addCriterion("eo_user_id not like", value, "eoUserId");
            return (Criteria) this;
        }

        public Criteria andEoUserIdIn(List<String> values) {
            addCriterion("eo_user_id in", values, "eoUserId");
            return (Criteria) this;
        }

        public Criteria andEoUserIdNotIn(List<String> values) {
            addCriterion("eo_user_id not in", values, "eoUserId");
            return (Criteria) this;
        }

        public Criteria andEoUserIdBetween(String value1, String value2) {
            addCriterion("eo_user_id between", value1, value2, "eoUserId");
            return (Criteria) this;
        }

        public Criteria andEoUserIdNotBetween(String value1, String value2) {
            addCriterion("eo_user_id not between", value1, value2, "eoUserId");
            return (Criteria) this;
        }

        public Criteria andEoUserNameIsNull() {
            addCriterion("eo_user_name is null");
            return (Criteria) this;
        }

        public Criteria andEoUserNameIsNotNull() {
            addCriterion("eo_user_name is not null");
            return (Criteria) this;
        }

        public Criteria andEoUserNameEqualTo(String value) {
            addCriterion("eo_user_name =", value, "eoUserName");
            return (Criteria) this;
        }

        public Criteria andEoUserNameNotEqualTo(String value) {
            addCriterion("eo_user_name <>", value, "eoUserName");
            return (Criteria) this;
        }

        public Criteria andEoUserNameGreaterThan(String value) {
            addCriterion("eo_user_name >", value, "eoUserName");
            return (Criteria) this;
        }

        public Criteria andEoUserNameGreaterThanOrEqualTo(String value) {
            addCriterion("eo_user_name >=", value, "eoUserName");
            return (Criteria) this;
        }

        public Criteria andEoUserNameLessThan(String value) {
            addCriterion("eo_user_name <", value, "eoUserName");
            return (Criteria) this;
        }

        public Criteria andEoUserNameLessThanOrEqualTo(String value) {
            addCriterion("eo_user_name <=", value, "eoUserName");
            return (Criteria) this;
        }

        public Criteria andEoUserNameLike(String value) {
            addCriterion("eo_user_name like", value, "eoUserName");
            return (Criteria) this;
        }

        public Criteria andEoUserNameNotLike(String value) {
            addCriterion("eo_user_name not like", value, "eoUserName");
            return (Criteria) this;
        }

        public Criteria andEoUserNameIn(List<String> values) {
            addCriterion("eo_user_name in", values, "eoUserName");
            return (Criteria) this;
        }

        public Criteria andEoUserNameNotIn(List<String> values) {
            addCriterion("eo_user_name not in", values, "eoUserName");
            return (Criteria) this;
        }

        public Criteria andEoUserNameBetween(String value1, String value2) {
            addCriterion("eo_user_name between", value1, value2, "eoUserName");
            return (Criteria) this;
        }

        public Criteria andEoUserNameNotBetween(String value1, String value2) {
            addCriterion("eo_user_name not between", value1, value2, "eoUserName");
            return (Criteria) this;
        }

        public Criteria andEoUserAddressIsNull() {
            addCriterion("eo_user_address is null");
            return (Criteria) this;
        }

        public Criteria andEoUserAddressIsNotNull() {
            addCriterion("eo_user_address is not null");
            return (Criteria) this;
        }

        public Criteria andEoUserAddressEqualTo(String value) {
            addCriterion("eo_user_address =", value, "eoUserAddress");
            return (Criteria) this;
        }

        public Criteria andEoUserAddressNotEqualTo(String value) {
            addCriterion("eo_user_address <>", value, "eoUserAddress");
            return (Criteria) this;
        }

        public Criteria andEoUserAddressGreaterThan(String value) {
            addCriterion("eo_user_address >", value, "eoUserAddress");
            return (Criteria) this;
        }

        public Criteria andEoUserAddressGreaterThanOrEqualTo(String value) {
            addCriterion("eo_user_address >=", value, "eoUserAddress");
            return (Criteria) this;
        }

        public Criteria andEoUserAddressLessThan(String value) {
            addCriterion("eo_user_address <", value, "eoUserAddress");
            return (Criteria) this;
        }

        public Criteria andEoUserAddressLessThanOrEqualTo(String value) {
            addCriterion("eo_user_address <=", value, "eoUserAddress");
            return (Criteria) this;
        }

        public Criteria andEoUserAddressLike(String value) {
            addCriterion("eo_user_address like", value, "eoUserAddress");
            return (Criteria) this;
        }

        public Criteria andEoUserAddressNotLike(String value) {
            addCriterion("eo_user_address not like", value, "eoUserAddress");
            return (Criteria) this;
        }

        public Criteria andEoUserAddressIn(List<String> values) {
            addCriterion("eo_user_address in", values, "eoUserAddress");
            return (Criteria) this;
        }

        public Criteria andEoUserAddressNotIn(List<String> values) {
            addCriterion("eo_user_address not in", values, "eoUserAddress");
            return (Criteria) this;
        }

        public Criteria andEoUserAddressBetween(String value1, String value2) {
            addCriterion("eo_user_address between", value1, value2, "eoUserAddress");
            return (Criteria) this;
        }

        public Criteria andEoUserAddressNotBetween(String value1, String value2) {
            addCriterion("eo_user_address not between", value1, value2, "eoUserAddress");
            return (Criteria) this;
        }

        public Criteria andEoCreateTimeIsNull() {
            addCriterion("eo_create_time is null");
            return (Criteria) this;
        }

        public Criteria andEoCreateTimeIsNotNull() {
            addCriterion("eo_create_time is not null");
            return (Criteria) this;
        }

        public Criteria andEoCreateTimeEqualTo(Date value) {
            addCriterion("eo_create_time =", value, "eoCreateTime");
            return (Criteria) this;
        }

        public Criteria andEoCreateTimeNotEqualTo(Date value) {
            addCriterion("eo_create_time <>", value, "eoCreateTime");
            return (Criteria) this;
        }

        public Criteria andEoCreateTimeGreaterThan(Date value) {
            addCriterion("eo_create_time >", value, "eoCreateTime");
            return (Criteria) this;
        }

        public Criteria andEoCreateTimeGreaterThanOrEqualTo(Date value) {
            addCriterion("eo_create_time >=", value, "eoCreateTime");
            return (Criteria) this;
        }

        public Criteria andEoCreateTimeLessThan(Date value) {
            addCriterion("eo_create_time <", value, "eoCreateTime");
            return (Criteria) this;
        }

        public Criteria andEoCreateTimeLessThanOrEqualTo(Date value) {
            addCriterion("eo_create_time <=", value, "eoCreateTime");
            return (Criteria) this;
        }

        public Criteria andEoCreateTimeIn(List<Date> values) {
            addCriterion("eo_create_time in", values, "eoCreateTime");
            return (Criteria) this;
        }

        public Criteria andEoCreateTimeNotIn(List<Date> values) {
            addCriterion("eo_create_time not in", values, "eoCreateTime");
            return (Criteria) this;
        }

        public Criteria andEoCreateTimeBetween(Date value1, Date value2) {
            addCriterion("eo_create_time between", value1, value2, "eoCreateTime");
            return (Criteria) this;
        }

        public Criteria andEoCreateTimeNotBetween(Date value1, Date value2) {
            addCriterion("eo_create_time not between", value1, value2, "eoCreateTime");
            return (Criteria) this;
        }

        public Criteria andEoCostIsNull() {
            addCriterion("eo_cost is null");
            return (Criteria) this;
        }

        public Criteria andEoCostIsNotNull() {
            addCriterion("eo_cost is not null");
            return (Criteria) this;
        }

        public Criteria andEoCostEqualTo(Double value) {
            addCriterion("eo_cost =", value, "eoCost");
            return (Criteria) this;
        }

        public Criteria andEoCostNotEqualTo(Double value) {
            addCriterion("eo_cost <>", value, "eoCost");
            return (Criteria) this;
        }

        public Criteria andEoCostGreaterThan(Double value) {
            addCriterion("eo_cost >", value, "eoCost");
            return (Criteria) this;
        }

        public Criteria andEoCostGreaterThanOrEqualTo(Double value) {
            addCriterion("eo_cost >=", value, "eoCost");
            return (Criteria) this;
        }

        public Criteria andEoCostLessThan(Double value) {
            addCriterion("eo_cost <", value, "eoCost");
            return (Criteria) this;
        }

        public Criteria andEoCostLessThanOrEqualTo(Double value) {
            addCriterion("eo_cost <=", value, "eoCost");
            return (Criteria) this;
        }

        public Criteria andEoCostIn(List<Double> values) {
            addCriterion("eo_cost in", values, "eoCost");
            return (Criteria) this;
        }

        public Criteria andEoCostNotIn(List<Double> values) {
            addCriterion("eo_cost not in", values, "eoCost");
            return (Criteria) this;
        }

        public Criteria andEoCostBetween(Double value1, Double value2) {
            addCriterion("eo_cost between", value1, value2, "eoCost");
            return (Criteria) this;
        }

        public Criteria andEoCostNotBetween(Double value1, Double value2) {
            addCriterion("eo_cost not between", value1, value2, "eoCost");
            return (Criteria) this;
        }

        public Criteria andEoStatusIsNull() {
            addCriterion("eo_status is null");
            return (Criteria) this;
        }

        public Criteria andEoStatusIsNotNull() {
            addCriterion("eo_status is not null");
            return (Criteria) this;
        }

        public Criteria andEoStatusEqualTo(Integer value) {
            addCriterion("eo_status =", value, "eoStatus");
            return (Criteria) this;
        }

        public Criteria andEoStatusNotEqualTo(Integer value) {
            addCriterion("eo_status <>", value, "eoStatus");
            return (Criteria) this;
        }

        public Criteria andEoStatusGreaterThan(Integer value) {
            addCriterion("eo_status >", value, "eoStatus");
            return (Criteria) this;
        }

        public Criteria andEoStatusGreaterThanOrEqualTo(Integer value) {
            addCriterion("eo_status >=", value, "eoStatus");
            return (Criteria) this;
        }

        public Criteria andEoStatusLessThan(Integer value) {
            addCriterion("eo_status <", value, "eoStatus");
            return (Criteria) this;
        }

        public Criteria andEoStatusLessThanOrEqualTo(Integer value) {
            addCriterion("eo_status <=", value, "eoStatus");
            return (Criteria) this;
        }

        public Criteria andEoStatusIn(List<Integer> values) {
            addCriterion("eo_status in", values, "eoStatus");
            return (Criteria) this;
        }

        public Criteria andEoStatusNotIn(List<Integer> values) {
            addCriterion("eo_status not in", values, "eoStatus");
            return (Criteria) this;
        }

        public Criteria andEoStatusBetween(Integer value1, Integer value2) {
            addCriterion("eo_status between", value1, value2, "eoStatus");
            return (Criteria) this;
        }

        public Criteria andEoStatusNotBetween(Integer value1, Integer value2) {
            addCriterion("eo_status not between", value1, value2, "eoStatus");
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