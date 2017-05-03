package com.vnasi.pojo;

import java.util.ArrayList;
import java.util.List;

public class VnasiProductExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public VnasiProductExample() {
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

        public Criteria andEpIdIsNull() {
            addCriterion("ep_id is null");
            return (Criteria) this;
        }

        public Criteria andEpIdIsNotNull() {
            addCriterion("ep_id is not null");
            return (Criteria) this;
        }

        public Criteria andEpIdEqualTo(Integer value) {
            addCriterion("ep_id =", value, "epId");
            return (Criteria) this;
        }

        public Criteria andEpIdNotEqualTo(Integer value) {
            addCriterion("ep_id <>", value, "epId");
            return (Criteria) this;
        }

        public Criteria andEpIdGreaterThan(Integer value) {
            addCriterion("ep_id >", value, "epId");
            return (Criteria) this;
        }

        public Criteria andEpIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("ep_id >=", value, "epId");
            return (Criteria) this;
        }

        public Criteria andEpIdLessThan(Integer value) {
            addCriterion("ep_id <", value, "epId");
            return (Criteria) this;
        }

        public Criteria andEpIdLessThanOrEqualTo(Integer value) {
            addCriterion("ep_id <=", value, "epId");
            return (Criteria) this;
        }

        public Criteria andEpIdIn(List<Integer> values) {
            addCriterion("ep_id in", values, "epId");
            return (Criteria) this;
        }

        public Criteria andEpIdNotIn(List<Integer> values) {
            addCriterion("ep_id not in", values, "epId");
            return (Criteria) this;
        }

        public Criteria andEpIdBetween(Integer value1, Integer value2) {
            addCriterion("ep_id between", value1, value2, "epId");
            return (Criteria) this;
        }

        public Criteria andEpIdNotBetween(Integer value1, Integer value2) {
            addCriterion("ep_id not between", value1, value2, "epId");
            return (Criteria) this;
        }

        public Criteria andEpNameIsNull() {
            addCriterion("ep_name is null");
            return (Criteria) this;
        }

        public Criteria andEpNameIsNotNull() {
            addCriterion("ep_name is not null");
            return (Criteria) this;
        }

        public Criteria andEpNameEqualTo(String value) {
            addCriterion("ep_name =", value, "epName");
            return (Criteria) this;
        }

        public Criteria andEpNameNotEqualTo(String value) {
            addCriterion("ep_name <>", value, "epName");
            return (Criteria) this;
        }

        public Criteria andEpNameGreaterThan(String value) {
            addCriterion("ep_name >", value, "epName");
            return (Criteria) this;
        }

        public Criteria andEpNameGreaterThanOrEqualTo(String value) {
            addCriterion("ep_name >=", value, "epName");
            return (Criteria) this;
        }

        public Criteria andEpNameLessThan(String value) {
            addCriterion("ep_name <", value, "epName");
            return (Criteria) this;
        }

        public Criteria andEpNameLessThanOrEqualTo(String value) {
            addCriterion("ep_name <=", value, "epName");
            return (Criteria) this;
        }

        public Criteria andEpNameLike(String value) {
            addCriterion("ep_name like", value, "epName");
            return (Criteria) this;
        }

        public Criteria andEpNameNotLike(String value) {
            addCriterion("ep_name not like", value, "epName");
            return (Criteria) this;
        }

        public Criteria andEpNameIn(List<String> values) {
            addCriterion("ep_name in", values, "epName");
            return (Criteria) this;
        }

        public Criteria andEpNameNotIn(List<String> values) {
            addCriterion("ep_name not in", values, "epName");
            return (Criteria) this;
        }

        public Criteria andEpNameBetween(String value1, String value2) {
            addCriterion("ep_name between", value1, value2, "epName");
            return (Criteria) this;
        }

        public Criteria andEpNameNotBetween(String value1, String value2) {
            addCriterion("ep_name not between", value1, value2, "epName");
            return (Criteria) this;
        }

        public Criteria andEpDescriptionIsNull() {
            addCriterion("ep_description is null");
            return (Criteria) this;
        }

        public Criteria andEpDescriptionIsNotNull() {
            addCriterion("ep_description is not null");
            return (Criteria) this;
        }

        public Criteria andEpDescriptionEqualTo(String value) {
            addCriterion("ep_description =", value, "epDescription");
            return (Criteria) this;
        }

        public Criteria andEpDescriptionNotEqualTo(String value) {
            addCriterion("ep_description <>", value, "epDescription");
            return (Criteria) this;
        }

        public Criteria andEpDescriptionGreaterThan(String value) {
            addCriterion("ep_description >", value, "epDescription");
            return (Criteria) this;
        }

        public Criteria andEpDescriptionGreaterThanOrEqualTo(String value) {
            addCriterion("ep_description >=", value, "epDescription");
            return (Criteria) this;
        }

        public Criteria andEpDescriptionLessThan(String value) {
            addCriterion("ep_description <", value, "epDescription");
            return (Criteria) this;
        }

        public Criteria andEpDescriptionLessThanOrEqualTo(String value) {
            addCriterion("ep_description <=", value, "epDescription");
            return (Criteria) this;
        }

        public Criteria andEpDescriptionLike(String value) {
            addCriterion("ep_description like", value, "epDescription");
            return (Criteria) this;
        }

        public Criteria andEpDescriptionNotLike(String value) {
            addCriterion("ep_description not like", value, "epDescription");
            return (Criteria) this;
        }

        public Criteria andEpDescriptionIn(List<String> values) {
            addCriterion("ep_description in", values, "epDescription");
            return (Criteria) this;
        }

        public Criteria andEpDescriptionNotIn(List<String> values) {
            addCriterion("ep_description not in", values, "epDescription");
            return (Criteria) this;
        }

        public Criteria andEpDescriptionBetween(String value1, String value2) {
            addCriterion("ep_description between", value1, value2, "epDescription");
            return (Criteria) this;
        }

        public Criteria andEpDescriptionNotBetween(String value1, String value2) {
            addCriterion("ep_description not between", value1, value2, "epDescription");
            return (Criteria) this;
        }

        public Criteria andEpPriceIsNull() {
            addCriterion("ep_price is null");
            return (Criteria) this;
        }

        public Criteria andEpPriceIsNotNull() {
            addCriterion("ep_price is not null");
            return (Criteria) this;
        }

        public Criteria andEpPriceEqualTo(Double value) {
            addCriterion("ep_price =", value, "epPrice");
            return (Criteria) this;
        }

        public Criteria andEpPriceNotEqualTo(Double value) {
            addCriterion("ep_price <>", value, "epPrice");
            return (Criteria) this;
        }

        public Criteria andEpPriceGreaterThan(Double value) {
            addCriterion("ep_price >", value, "epPrice");
            return (Criteria) this;
        }

        public Criteria andEpPriceGreaterThanOrEqualTo(Double value) {
            addCriterion("ep_price >=", value, "epPrice");
            return (Criteria) this;
        }

        public Criteria andEpPriceLessThan(Double value) {
            addCriterion("ep_price <", value, "epPrice");
            return (Criteria) this;
        }

        public Criteria andEpPriceLessThanOrEqualTo(Double value) {
            addCriterion("ep_price <=", value, "epPrice");
            return (Criteria) this;
        }

        public Criteria andEpPriceIn(List<Double> values) {
            addCriterion("ep_price in", values, "epPrice");
            return (Criteria) this;
        }

        public Criteria andEpPriceNotIn(List<Double> values) {
            addCriterion("ep_price not in", values, "epPrice");
            return (Criteria) this;
        }

        public Criteria andEpPriceBetween(Double value1, Double value2) {
            addCriterion("ep_price between", value1, value2, "epPrice");
            return (Criteria) this;
        }

        public Criteria andEpPriceNotBetween(Double value1, Double value2) {
            addCriterion("ep_price not between", value1, value2, "epPrice");
            return (Criteria) this;
        }

        public Criteria andEpStockIsNull() {
            addCriterion("ep_stock is null");
            return (Criteria) this;
        }

        public Criteria andEpStockIsNotNull() {
            addCriterion("ep_stock is not null");
            return (Criteria) this;
        }

        public Criteria andEpStockEqualTo(Integer value) {
            addCriterion("ep_stock =", value, "epStock");
            return (Criteria) this;
        }

        public Criteria andEpStockNotEqualTo(Integer value) {
            addCriterion("ep_stock <>", value, "epStock");
            return (Criteria) this;
        }

        public Criteria andEpStockGreaterThan(Integer value) {
            addCriterion("ep_stock >", value, "epStock");
            return (Criteria) this;
        }

        public Criteria andEpStockGreaterThanOrEqualTo(Integer value) {
            addCriterion("ep_stock >=", value, "epStock");
            return (Criteria) this;
        }

        public Criteria andEpStockLessThan(Integer value) {
            addCriterion("ep_stock <", value, "epStock");
            return (Criteria) this;
        }

        public Criteria andEpStockLessThanOrEqualTo(Integer value) {
            addCriterion("ep_stock <=", value, "epStock");
            return (Criteria) this;
        }

        public Criteria andEpStockIn(List<Integer> values) {
            addCriterion("ep_stock in", values, "epStock");
            return (Criteria) this;
        }

        public Criteria andEpStockNotIn(List<Integer> values) {
            addCriterion("ep_stock not in", values, "epStock");
            return (Criteria) this;
        }

        public Criteria andEpStockBetween(Integer value1, Integer value2) {
            addCriterion("ep_stock between", value1, value2, "epStock");
            return (Criteria) this;
        }

        public Criteria andEpStockNotBetween(Integer value1, Integer value2) {
            addCriterion("ep_stock not between", value1, value2, "epStock");
            return (Criteria) this;
        }

        public Criteria andEpcIdIsNull() {
            addCriterion("epc_id is null");
            return (Criteria) this;
        }

        public Criteria andEpcIdIsNotNull() {
            addCriterion("epc_id is not null");
            return (Criteria) this;
        }

        public Criteria andEpcIdEqualTo(Integer value) {
            addCriterion("epc_id =", value, "epcId");
            return (Criteria) this;
        }

        public Criteria andEpcIdNotEqualTo(Integer value) {
            addCriterion("epc_id <>", value, "epcId");
            return (Criteria) this;
        }

        public Criteria andEpcIdGreaterThan(Integer value) {
            addCriterion("epc_id >", value, "epcId");
            return (Criteria) this;
        }

        public Criteria andEpcIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("epc_id >=", value, "epcId");
            return (Criteria) this;
        }

        public Criteria andEpcIdLessThan(Integer value) {
            addCriterion("epc_id <", value, "epcId");
            return (Criteria) this;
        }

        public Criteria andEpcIdLessThanOrEqualTo(Integer value) {
            addCriterion("epc_id <=", value, "epcId");
            return (Criteria) this;
        }

        public Criteria andEpcIdIn(List<Integer> values) {
            addCriterion("epc_id in", values, "epcId");
            return (Criteria) this;
        }

        public Criteria andEpcIdNotIn(List<Integer> values) {
            addCriterion("epc_id not in", values, "epcId");
            return (Criteria) this;
        }

        public Criteria andEpcIdBetween(Integer value1, Integer value2) {
            addCriterion("epc_id between", value1, value2, "epcId");
            return (Criteria) this;
        }

        public Criteria andEpcIdNotBetween(Integer value1, Integer value2) {
            addCriterion("epc_id not between", value1, value2, "epcId");
            return (Criteria) this;
        }

        public Criteria andEpcChildIdIsNull() {
            addCriterion("epc_child_id is null");
            return (Criteria) this;
        }

        public Criteria andEpcChildIdIsNotNull() {
            addCriterion("epc_child_id is not null");
            return (Criteria) this;
        }

        public Criteria andEpcChildIdEqualTo(Integer value) {
            addCriterion("epc_child_id =", value, "epcChildId");
            return (Criteria) this;
        }

        public Criteria andEpcChildIdNotEqualTo(Integer value) {
            addCriterion("epc_child_id <>", value, "epcChildId");
            return (Criteria) this;
        }

        public Criteria andEpcChildIdGreaterThan(Integer value) {
            addCriterion("epc_child_id >", value, "epcChildId");
            return (Criteria) this;
        }

        public Criteria andEpcChildIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("epc_child_id >=", value, "epcChildId");
            return (Criteria) this;
        }

        public Criteria andEpcChildIdLessThan(Integer value) {
            addCriterion("epc_child_id <", value, "epcChildId");
            return (Criteria) this;
        }

        public Criteria andEpcChildIdLessThanOrEqualTo(Integer value) {
            addCriterion("epc_child_id <=", value, "epcChildId");
            return (Criteria) this;
        }

        public Criteria andEpcChildIdIn(List<Integer> values) {
            addCriterion("epc_child_id in", values, "epcChildId");
            return (Criteria) this;
        }

        public Criteria andEpcChildIdNotIn(List<Integer> values) {
            addCriterion("epc_child_id not in", values, "epcChildId");
            return (Criteria) this;
        }

        public Criteria andEpcChildIdBetween(Integer value1, Integer value2) {
            addCriterion("epc_child_id between", value1, value2, "epcChildId");
            return (Criteria) this;
        }

        public Criteria andEpcChildIdNotBetween(Integer value1, Integer value2) {
            addCriterion("epc_child_id not between", value1, value2, "epcChildId");
            return (Criteria) this;
        }

        public Criteria andEpFileNameIsNull() {
            addCriterion("ep_file_name is null");
            return (Criteria) this;
        }

        public Criteria andEpFileNameIsNotNull() {
            addCriterion("ep_file_name is not null");
            return (Criteria) this;
        }

        public Criteria andEpFileNameEqualTo(String value) {
            addCriterion("ep_file_name =", value, "epFileName");
            return (Criteria) this;
        }

        public Criteria andEpFileNameNotEqualTo(String value) {
            addCriterion("ep_file_name <>", value, "epFileName");
            return (Criteria) this;
        }

        public Criteria andEpFileNameGreaterThan(String value) {
            addCriterion("ep_file_name >", value, "epFileName");
            return (Criteria) this;
        }

        public Criteria andEpFileNameGreaterThanOrEqualTo(String value) {
            addCriterion("ep_file_name >=", value, "epFileName");
            return (Criteria) this;
        }

        public Criteria andEpFileNameLessThan(String value) {
            addCriterion("ep_file_name <", value, "epFileName");
            return (Criteria) this;
        }

        public Criteria andEpFileNameLessThanOrEqualTo(String value) {
            addCriterion("ep_file_name <=", value, "epFileName");
            return (Criteria) this;
        }

        public Criteria andEpFileNameLike(String value) {
            addCriterion("ep_file_name like", value, "epFileName");
            return (Criteria) this;
        }

        public Criteria andEpFileNameNotLike(String value) {
            addCriterion("ep_file_name not like", value, "epFileName");
            return (Criteria) this;
        }

        public Criteria andEpFileNameIn(List<String> values) {
            addCriterion("ep_file_name in", values, "epFileName");
            return (Criteria) this;
        }

        public Criteria andEpFileNameNotIn(List<String> values) {
            addCriterion("ep_file_name not in", values, "epFileName");
            return (Criteria) this;
        }

        public Criteria andEpFileNameBetween(String value1, String value2) {
            addCriterion("ep_file_name between", value1, value2, "epFileName");
            return (Criteria) this;
        }

        public Criteria andEpFileNameNotBetween(String value1, String value2) {
            addCriterion("ep_file_name not between", value1, value2, "epFileName");
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