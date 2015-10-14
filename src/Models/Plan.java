package Models;

import javax.persistence.*;
import java.util.List;
import java.util.Set;


//@Audited
public class Plan {
    private Integer id;
//    private String type;
    private String title;
    private String place;
    private String beginDate;
    private String endDate;
    private String time;
    private String requestedItems;
    private String advisorComment;
    private String expertComment;
    private String bossComment;
    private String poster;
    private String studentMoney;
    private String sponsorMoney;
    private List personnel;
    private List expenses;
    private List enlisted;
    private List guests;
    private List judges;


    public Plan() {
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
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

    @OneToMany(orphanRemoval=true)
    public List getPersonnel() {
        return personnel;
    }

    public void setPersonnel(List personnel) {
        this.personnel = personnel;
    }

//    @OneToMany(fetch = FetchType.EAGER)
    public List getExpenses() {
        return expenses;
    }

    public void setExpenses(List expenses) {
        this.expenses = expenses;
    }

//    @OneToMany(fetch = FetchType.EAGER)
    public List getEnlisted() {
        return enlisted;
    }

    public void setEnlisted(List muster) {
        this.enlisted = muster;
    }

//    @OneToMany(fetch = FetchType.EAGER)
    public List getGuests() {
        return guests;
    }

    public void setGuests(List guests) {
        this.guests = guests;
    }

//    @OneToMany(fetch = FetchType.EAGER)
    public List getJudges() {
        return judges;
    }

    public void setJudges(List judges) {
        this.judges = judges;
    }

    private WorkflowState workflowState;

    @ManyToOne(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    public WorkflowState getWorkflowState() {
        return workflowState;
    }

    public void setWorkflowState(WorkflowState workFlowState) {
        this.workflowState = workFlowState;
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

    private Association association;

    @ManyToOne
    public Association getAssociation() {
        return association;
    }

    public void setAssociation(Association association) {
        this.association = association;
    }

    private Workflow workflow;

    @ManyToOne(fetch = FetchType.EAGER)
    public Workflow getWorkflow() {
        return workflow;
    }

    public void setWorkflow(Workflow workflow) {
        this.workflow = workflow;
    }

    private String registrationBeginDate;

    @Basic
    public String getRegistrationBeginDate() {
        return registrationBeginDate;
    }

    public void setRegistrationBeginDate(String registrationBeginDate) {
        this.registrationBeginDate = registrationBeginDate;
    }

    private String registrationEndDate;

    @Basic
    public String getRegistrationEndDate() {
        return registrationEndDate;
    }

    public void setRegistrationEndDate(String registrationEndDate) {
        this.registrationEndDate = registrationEndDate;
    }

    private String advertisementBeginDate;

    @Basic
    public String getAdvertisementBeginDate() {
        return advertisementBeginDate;
    }

    public void setAdvertisementBeginDate(String advertisementBeginDate) {
        this.advertisementBeginDate = advertisementBeginDate;
    }

    private String advertisementEndDate;

    @Basic
    public String getAdvertisementEndDate() {
        return advertisementEndDate;
    }

    public void setAdvertisementEndDate(String advertisementEndDate) {
        this.advertisementEndDate = advertisementEndDate;
    }

    private String seen;

    @Basic
    public String getSeen() {
        return seen;
    }

    public void setSeen(String seen) {
        this.seen = seen;
    }

    private List<PlanStateHistory> planStateHistories;

    @OneToMany
    public List<PlanStateHistory> getPlanStateHistories() {
        return planStateHistories;
    }

    public void setPlanStateHistories(List<PlanStateHistory> planStateHistories) {
        this.planStateHistories = planStateHistories;
    }

    private String attachment;

    @Basic
    public String getAttachment() {
        return attachment;
    }

    public void setAttachment(String attachment) {
        this.attachment = attachment;
    }

    private String registrationMin;

    @Basic
    public String getRegistrationMin() {
        return registrationMin;
    }

    public void setRegistrationMin(String registrationMin) {
        this.registrationMin = registrationMin;
    }

    private String registrationMax;

    @Basic
    public String getRegistrationMax() {
        return registrationMax;
    }

    public void setRegistrationMax(String registrationMax) {
        this.registrationMax = registrationMax;
    }

    private String supervisorFName;

    @Basic
    public String getSupervisorFName() {
        return supervisorFName;
    }

    public void setSupervisorFName(String supervisorFName) {
        this.supervisorFName = supervisorFName;
    }

    private String supervisorLName;

    @Basic
    public String getSupervisorLName() {
        return supervisorLName;
    }

    public void setSupervisorLName(String supervisorLName) {
        this.supervisorLName = supervisorLName;
    }

    private String supervisorPosition;

    @Basic
    public String getSupervisorPosition() {
        return supervisorPosition;
    }

    public void setSupervisorPosition(String supervisorPosition) {
        this.supervisorPosition = supervisorPosition;
    }

    private String supervisorPhone;

    @Basic
    public String getSupervisorPhone() {
        return supervisorPhone;
    }

    public void setSupervisorPhone(String supervisorPhone) {
        this.supervisorPhone = supervisorPhone;
    }

    private String otherIncome;

    @Basic
    public String getOtherIncome() {
        return otherIncome;
    }

    public void setOtherIncome(String otherIncome) {
        this.otherIncome = otherIncome;
    }

    private String expenseSum;

    @Basic
    public String getExpenseSum() {
        return expenseSum;
    }

    public void setExpenseSum(String expenseSum) {
        this.expenseSum = expenseSum;
    }

    private String incomeSum;

    @Basic
    public String getIncomeSum() {
        return incomeSum;
    }

    public void setIncomeSum(String incomeSum) {
        this.incomeSum = incomeSum;
    }

    private String moneySum;

    @Basic
    public String getMoneySum() {
        return moneySum;
    }

    public void setMoneySum(String moneySum) {
        this.moneySum = moneySum;
    }

    private String registrationFee;

    @Basic
    public String getRegistrationFee() {
        return registrationFee;
    }

    public void setRegistrationFee(String registrationFee) {
        this.registrationFee = registrationFee;
    }

    private String registrationPlace;

    @Basic
    public String getRegistrationPlace() {
        return registrationPlace;
    }

    public void setRegistrationPlace(String registrationPlace) {
        this.registrationPlace = registrationPlace;
    }
}
