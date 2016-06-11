package org.lq.ssm.entity;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class Student {
    /**
     * 学生实体类
     */
	private Integer id;//标识
	private Staff staff;//员工对象
	private Classes classes;//班级编号//------------待定----------------------
	private String name;//学生名称
	private String sex;//性别
	private int age;//年龄
	private String phone;//手机号
	private String qq;//QQ号
	private String email;//邮箱
	private String parentname;//家长姓名
	private String parentphone;//家长电话
	private String idcard;//身份证号
	private String address;//家庭住址
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date birthday;//出生日期
	private String school;//所在院校
	private String province;//省份
	private String city;//所在城市
	private String ispay="否";//是否交费
	private String marke="0";//标识
	private String number;//账号
	private String password;//密码
	private String desc;//描述
	private Dictionory dictionory;
	
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	
	public Staff getStaff() {
		return staff;
	}
	public void setStaff(Staff staff) {
		this.staff = staff;
	}
	
	public Classes getClasses() {
		return classes;
	}
	public void setClasses(Classes classes) {
		this.classes = classes;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getQq() {
		return qq;
	}
	public void setQq(String qq) {
		this.qq = qq;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getParentname() {
		return parentname;
	}
	public void setParentname(String parentname) {
		this.parentname = parentname;
	}
	public String getParentphone() {
		return parentphone;
	}
	public void setParentphone(String parentphone) {
		this.parentphone = parentphone;
	}
	public String getIdcard() {
		return idcard;
	}
	public void setIdcard(String idcard) {
		this.idcard = idcard;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public Date getBirthday() {
		return birthday;
	}
	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}
	public String getSchool() {
		return school;
	}
	public void setSchool(String school) {
		this.school = school;
	}
	public String getProvince() {
		return province;
	}
	public void setProvince(String province) {
		this.province = province;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getIspay() {
		return ispay;
	}
	public void setIspay(String ispay) {
		this.ispay = ispay;
	}
	
	public String getMarke() {
		return marke;
	}
	public void setMarke(String marke) {
		this.marke = marke;
	}
	public String getNumber() {
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getDesc() {
		return desc;
	}
	public void setDesc(String desc) {
		this.desc = desc;
	}
	public Dictionory getDictionory() {
		return dictionory;
	}
	public void setDictionory(Dictionory dictionory) {
		this.dictionory = dictionory;
	}

	
	
	
}
