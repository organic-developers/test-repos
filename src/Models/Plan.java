package Models;

import javax.persistence.Basic;
import javax.persistence.ManyToOne;
import java.util.Date;
import java.util.Set;


public class Plan {
    private Integer id;
    private String type;
    private Integer associationNumber;
    private String title;
    private String place;
    private String beginDate;
    private String endDate;
    private String time;
    private String requestedItems;
    private String supervisorAgreement;
    private String advisorComment;
    private String expertComment;
    private String bossComment;
    private String poster;
    private String studentMoney;
    private String sponsorMoney;
    private Set personnel;
    private Set expenses;
    private Set enlisted;
    private Set guests;
    private Set judges;

    public Plan() {
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getAssociationNumber() {
        return associationNumber;
    }

    public void setAssociationNumber(Integer association) {
        this.associationNumber = association;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getEndDate() {
        return endDate;
    }

    public void setEndDate(String endDate) {
        this.endDate = endDate;
    }

    public String getPlace() {
        return place;
    }

    public void setPlace(String place) {
        this.place = place;
    }

    public String getBeginDate() {
        return beginDate;
    }

    public void setBeginDate(String beginDate) {
        this.beginDate = beginDate;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getRequestedItems() {
        return requestedItems;
    }

    public void setRequestedItems(String requestedItems) {
        this.requestedItems = requestedItems;
    }

    public String getSupervisorAgreement() {
        return supervisorAgreement;
    }

    public void setSupervisorAgreement(String supervisorAgreement) {
        this.supervisorAgreement = supervisorAgreement;
    }

    public String getAdvisorComment() {
        return advisorComment;
    }

    public void setAdvisorComment(String advisorComment) {
        this.advisorComment = advisorComment;
    }

    public String getExpertComment() {
        return expertComment;
    }

    public void setExpertComment(String expertComment) {
        this.expertComment = expertComment;
    }

    public String getBossComment() {
        return bossComment;
    }

    public void setBossComment(String bossComment) {
        this.bossComment = bossComment;
    }

    public String getPoster() {
        return poster;
    }

    public void setPoster(String poster) {
        this.poster = poster;
    }

    public String getStudentMoney() {
        return studentMoney;
    }

    public void setStudentMoney(String studentMoney) {
        this.studentMoney = studentMoney;
    }

    public String getSponsorMoney() {
        return sponsorMoney;
    }

    public void setSponsorMoney(String sponsorMoney) {
        this.sponsorMoney = sponsorMoney;
    }

    public Set getPersonnel() {
        return personnel;
    }

    public void setPersonnel(Set personnels) {
        this.personnel = personnels;
    }

    public Set getExpenses() {
        return expenses;
    }

    public void setExpenses(Set expenses) {
        this.expenses = expenses;
    }

    public Set getEnlisted() {
        return enlisted;
    }

    public void setEnlisted(Set muster) {
        this.enlisted = muster;
    }

    public Set getGuests() {
        return guests;
    }

    public void setGuests(Set guests) {
        this.guests = guests;
    }

    public Set getJudges() {
        return judges;
    }

    public void setJudges(Set judges) {
        this.judges = judges;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    private WorkflowState workflowState;

    @ManyToOne
    public WorkflowState getWorkflowState() {
        return workflowState;
    }

    public void setWorkflowState(WorkflowState workFlowState) {
        this.workflowState = workFlowState;
    }

    private Set<PlanStateHistory> planStateHistory;

    @javax.persistence.OneToMany
    public Set<PlanStateHistory> getPlanStateHistory() {
        return planStateHistory;
    }

    public void setPlanStateHistory(Set<PlanStateHistory> planStateHistory) {
        this.planStateHistory = planStateHistory;
    }

    private String guidelines;

    @Basic
    public String getGuidelines() {
        return guidelines;
    }

    public void setGuidelines(String guidelines) {
        this.guidelines = guidelines;
    }

    private String sidePrograms;

    @Basic
    public String getSidePrograms() {
        return sidePrograms;
    }

    public void setSidePrograms(String sidePrograms) {
        this.sidePrograms = sidePrograms;
    }
    private String resume;

    @Basic
    public String getResume() {
        return resume;
    }

    public void setResume(String resume) {
        this.resume = resume;
    }
}
