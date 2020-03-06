package com.jxau.model;
import java.io.Serializable;

/**
 * 与数据库private_tuto中teacher表字段一一对应
 * teacher(id,name,password,real_name,sex, age, tel, address, photo,subject(执教科目),grade(执教年级),identity(身份),education(学历),introduce(自我介绍))
 */
public class Teacher implements Serializable {
    private int id;
    private String name;
    private String password;
    private String realName;
    private String sex;
    private String age;
    private String tel;
    private String address;
    private String subject;//任教科目
    private String grade;//任教年级
    private String identity;//身份(2个，在校大学生或者是教师)
    private String education;//学历
    private String introduce;
    private String photo;
    private String teacherStatus;

    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }
    public void setPassword(String password) {
        this.password = password;
    }

    public String getRealName() {
        return realName;
    }
    public void setRealName(String realName) {
        this.realName = realName;
    }

    public String getTeacherStatus() {
        return teacherStatus;
    }
    public void setTeacherStatus(String teacherStatus) {
        this.teacherStatus = teacherStatus;
    }

    public String getSex() {
        return sex;
    }
    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getAge() {
        return age;
    }
    public void setAge(String age) {
        this.age = age;
    }

    public String getTel() {
        return tel;
    }
    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getAddress() {
        return address;
    }
    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhoto() {
        return photo;
    }
    public void setPhoto(String photo) {
        this.photo = photo;
    }

    public String getSubject() {
        return subject;
    }
    public void setSubject(String subject) {
        this.subject = subject;
    }

    public String getGrade() {
        return grade;
    }
    public void setGrade(String grade) {
        this.grade = grade;
    }

    public String getIdentity() {
        return identity;
    }
    public void setIdentity(String identity) {
        this.identity = identity;
    }

    public String getEducation() {
        return education;
    }
    public void setEducation(String education) {
        this.education = education;
    }

    public String getIntroduce() {
        return introduce;
    }
    public void setIntroduce(String introduce) {
        this.introduce = introduce;
    }

    @Override
    public String toString() {
        return "Teacher{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", password='" + password + '\'' +
                ", realName='" + realName + '\'' +
                ", sex='" + sex + '\'' +
                ", age='" + age + '\'' +
                ", tel='" + tel + '\'' +
                ", address='" + address + '\'' +
                ", subject='" + subject + '\'' +
                ", grade='" + grade + '\'' +
                ", identity='" + identity + '\'' +
                ", education='" + education + '\'' +
                ", introduce='" + introduce + '\'' +
                ", photo='" + photo + '\'' +
                ", teacherStatus='" + teacherStatus + '\'' +
                '}';
    }
}
