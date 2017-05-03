package com.vnasi.pojo;

import java.util.ArrayList;
import java.util.List;

public class VnasiReviewExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public VnasiReviewExample() {
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

        public Criteria andROidIsNull() {
            addCriterion("R_Oid is null");
            return (Criteria) this;
        }

        public Criteria andROidIsNotNull() {
            addCriterion("R_Oid is not null");
            return (Criteria) this;
        }

        public Criteria andROidEqualTo(Integer value) {
            addCriterion("R_Oid =", value, "rOid");
            return (Criteria) this;
        }

        public Criteria andROidNotEqualTo(Integer value) {
            addCriterion("R_Oid <>", value, "rOid");
            return (Criteria) this;
        }

        public Criteria andROidGreaterThan(Integer value) {
            addCriterion("R_Oid >", value, "rOid");
            return (Criteria) this;
        }

        public Criteria andROidGreaterThanOrEqualTo(Integer value) {
            addCriterion("R_Oid >=", value, "rOid");
            return (Criteria) this;
        }

        public Criteria andROidLessThan(Integer value) {
            addCriterion("R_Oid <", value, "rOid");
            return (Criteria) this;
        }

        public Criteria andROidLessThanOrEqualTo(Integer value) {
            addCriterion("R_Oid <=", value, "rOid");
            return (Criteria) this;
        }

        public Criteria andROidIn(List<Integer> values) {
            addCriterion("R_Oid in", values, "rOid");
            return (Criteria) this;
        }

        public Criteria andROidNotIn(List<Integer> values) {
            addCriterion("R_Oid not in", values, "rOid");
            return (Criteria) this;
        }

        public Criteria andROidBetween(Integer value1, Integer value2) {
            addCriterion("R_Oid between", value1, value2, "rOid");
            return (Criteria) this;
        }

        public Criteria andROidNotBetween(Integer value1, Integer value2) {
            addCriterion("R_Oid not between", value1, value2, "rOid");
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

        public Criteria andRReviewIsNull() {
            addCriterion("R_review is null");
            return (Criteria) this;
        }

        public Criteria andRReviewIsNotNull() {
            addCriterion("R_review is not null");
            return (Criteria) this;
        }

        public Criteria andRReviewEqualTo(Integer value) {
            addCriterion("R_review =", value, "rReview");
            return (Criteria) this;
        }

        public Criteria andRReviewNotEqualTo(Integer value) {
            addCriterion("R_review <>", value, "rReview");
            return (Criteria) this;
        }

        public Criteria andRReviewGreaterThan(Integer value) {
            addCriterion("R_review >", value, "rReview");
            return (Criteria) this;
        }

        public Criteria andRReviewGreaterThanOrEqualTo(Integer value) {
            addCriterion("R_review >=", value, "rReview");
            return (Criteria) this;
        }

        public Criteria andRReviewLessThan(Integer value) {
            addCriterion("R_review <", value, "rReview");
            return (Criteria) this;
        }

        public Criteria andRReviewLessThanOrEqualTo(Integer value) {
            addCriterion("R_review <=", value, "rReview");
            return (Criteria) this;
        }

        public Criteria andRReviewIn(List<Integer> values) {
            addCriterion("R_review in", values, "rReview");
            return (Criteria) this;
        }

        public Criteria andRReviewNotIn(List<Integer> values) {
            addCriterion("R_review not in", values, "rReview");
            return (Criteria) this;
        }

        public Criteria andRReviewBetween(Integer value1, Integer value2) {
            addCriterion("R_review between", value1, value2, "rReview");
            return (Criteria) this;
        }

        public Criteria andRReviewNotBetween(Integer value1, Integer value2) {
            addCriterion("R_review not between", value1, value2, "rReview");
            return (Criteria) this;
        }

        public Criteria andRContentIsNull() {
            addCriterion("R_Content is null");
            return (Criteria) this;
        }

        public Criteria andRContentIsNotNull() {
            addCriterion("R_Content is not null");
            return (Criteria) this;
        }

        public Criteria andRContentEqualTo(String value) {
            addCriterion("R_Content =", value, "rContent");
            return (Criteria) this;
        }

        public Criteria andRContentNotEqualTo(String value) {
            addCriterion("R_Content <>", value, "rContent");
            return (Criteria) this;
        }

        public Criteria andRContentGreaterThan(String value) {
            addCriterion("R_Content >", value, "rContent");
            return (Criteria) this;
        }

        public Criteria andRContentGreaterThanOrEqualTo(String value) {
            addCriterion("R_Content >=", value, "rContent");
            return (Criteria) this;
        }

        public Criteria andRContentLessThan(String value) {
            addCriterion("R_Content <", value, "rContent");
            return (Criteria) this;
        }

        public Criteria andRContentLessThanOrEqualTo(String value) {
            addCriterion("R_Content <=", value, "rContent");
            return (Criteria) this;
        }

        public Criteria andRContentLike(String value) {
            addCriterion("R_Content like", value, "rContent");
            return (Criteria) this;
        }

        public Criteria andRContentNotLike(String value) {
            addCriterion("R_Content not like", value, "rContent");
            return (Criteria) this;
        }

        public Criteria andRContentIn(List<String> values) {
            addCriterion("R_Content in", values, "rContent");
            return (Criteria) this;
        }

        public Criteria andRContentNotIn(List<String> values) {
            addCriterion("R_Content not in", values, "rContent");
            return (Criteria) this;
        }

        public Criteria andRContentBetween(String value1, String value2) {
            addCriterion("R_Content between", value1, value2, "rContent");
            return (Criteria) this;
        }

        public Criteria andRContentNotBetween(String value1, String value2) {
            addCriterion("R_Content not between", value1, value2, "rContent");
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