package Models;

import java.util.Date;
import java.util.Set;

/**
 * Created by Saied on 8/9/2015.
 */
public class Plan {
    private int id;
    private String type;
    private String association;
    private String title;
    private String place;
    private Date beginDate;
    private Date endDate;
    private String time;
    private String requestedItems;
    private String supervisorAgreement;
    private String advisorComment;
    private String expertComment;
    private String bossComment;
    private String poster;
    private long studentMoney;
    private long sponsorMoney;
    private int editorID;
    private Date editedTimestamp;
    private Set personnel;
    private Set expenses;
    private Set enlisted;
    private Set guests;
    private Set judges;

    public Plan() {
    }
    public Plan(String association, String title, String place, Date beginDate, Date endDate, String time,
                String requestedItems, String supervisorAgreement, String advisorComment, String expertComment,
                String bossComment, String poster, long studentMoney, long sponsorMoney, int editorID, Date editedTimestamp) {
        this.association = association;
        this.title = title;
        this.place = place;
        this.beginDate = beginDate;
        this.endDate = endDate;
        this.time = time;
        this.requestedItems = requestedItems;
        this.supervisorAgreement = supervisorAgreement;
        this.advisorComment = advisorComment;
        this.expertComment = expertComment;
        this.bossComment = bossComment;
        this.poster = poster;
        this.studentMoney = studentMoney;
        this.sponsorMoney = sponsorMoney;
        this.editorID = editorID;
        this.editedTimestamp = editedTimestamp;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getAssociation() {
        return association;
    }

    public void setAssociation(String association) {
        this.association = association;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public Date getEndDate() {
        return endDate;
    }

    public void setEndDate(Date endDate) {
        this.endDate = endDate;
    }

    public String getPlace() {
        return place;
    }

    public void setPlace(String place) {
        this.place = place;
    }

    public Date getBeginDate() {
        return beginDate;
    }

    public void setBeginDate(Date beginDate) {
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

    public long getStudentMoney() {
        return studentMoney;
    }

    public void setStudentMoney(long studentMoney) {
        this.studentMoney = studentMoney;
    }

    public long getSponsorMoney() {
        return sponsorMoney;
    }

    public void setSponsorMoney(long sponsorMoney) {
        this.sponsorMoney = sponsorMoney;
    }

    public int getEditorID() {
        return editorID;
    }

    public void setEditorID(int editorID) {
        this.editorID = editorID;
    }

    public Date getEditedTimestamp() {
        return editedTimestamp;
    }

    public void setEditedTimestamp(Date editedTimestamp) {
        this.editedTimestamp = editedTimestamp;
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
}
