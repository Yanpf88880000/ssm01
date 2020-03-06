package com.jxau.model;



public class Reserve {

    private int id;
    private String reserveStatus;
    private String reserveTime;
    private int teacherId;
    private int studentId;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getReserveStatus() {
        return reserveStatus;
    }

    public void setReserveStatus(String reserveStatus) {
        this.reserveStatus = reserveStatus;
    }

    public String getReserveTime() {
        return reserveTime;
    }

    public void setReserveTime(String reserveTime) {
        this.reserveTime = reserveTime;
    }

    public int getTeacherId() {
        return teacherId;
    }

    public void setTeacherId(int teacherId) {
        this.teacherId = teacherId;
    }

    public int getStudentId() {
        return studentId;
    }

    public void setStudentId(int studentId) {
        this.studentId = studentId;
    }

    @Override
    public String toString() {
        return "Reserve{" +
                "id=" + id +
                ", reserveStatus='" + reserveStatus + '\'' +
                ", reserveTime='" + reserveTime + '\'' +
                ", teacherId=" + teacherId +
                ", studentId=" + studentId +
                '}';
    }
}
