package com.restaurant.user.member.vo;

import java.sql.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class MemberVO {
	private int member_no;
	private String id;
	private String password;
	private String name;
	private int gender;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date birthday;
	private String email;
	private String phone;
	private int agreement1;
	private int agreement2;
	private int agreement3;
	private String condition;
	private String rank;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date member_date;
	private int marriage;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date weddingdate;
	private String job;
	private String address;
	private String memo;
	private int point;
	private String b_coupon_no;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date b_coupon_start;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date b_coupon_end;
	private String m_coupon_no;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date m_coupon_start;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date m_coupon_end;
	private String v_coupon_no;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date v_coupon_start;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date v_coupon_end;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date member_outdate;
	private int password_confirm;

	public int getMember_no() {
		return member_no;
	}

	public void setMember_no(int member_no) {
		this.member_no = member_no;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getGender() {
		return gender;
	}

	public void setGender(int gender) {
		this.gender = gender;
	}

	public Date getBirthday() {
		return birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public int getAgreement1() {
		return agreement1;
	}

	public void setAgreement1(int agreement1) {
		this.agreement1 = agreement1;
	}

	public int getAgreement2() {
		return agreement2;
	}

	public void setAgreement2(int agreement2) {
		this.agreement2 = agreement2;
	}

	public int getAgreement3() {
		return agreement3;
	}

	public void setAgreement3(int agreement3) {
		this.agreement3 = agreement3;
	}

	public String getCondition() {
		return condition;
	}

	public void setCondition(String condition) {
		this.condition = condition;
	}

	public String getRank() {
		return rank;
	}

	public void setRank(String rank) {
		this.rank = rank;
	}

	public Date getMember_date() {
		return member_date;
	}

	public void setMember_date(Date member_date) {
		this.member_date = member_date;
	}

	public int getMarriage() {
		return marriage;
	}

	public void setMarriage(int marriage) {
		this.marriage = marriage;
	}

	public Date getWeddingdate() {
		return weddingdate;
	}

	public void setWeddingdate(Date weddingdate) {
		this.weddingdate = weddingdate;
	}

	public String getJob() {
		return job;
	}

	public void setJob(String job) {
		this.job = job;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getMemo() {
		return memo;
	}

	public void setMemo(String memo) {
		this.memo = memo;
	}

	public int getPoint() {
		return point;
	}

	public void setPoint(int point) {
		this.point = point;
	}

	public String getB_coupon_no() {
		return b_coupon_no;
	}

	public void setB_coupon_no(String b_coupon_no) {
		this.b_coupon_no = b_coupon_no;
	}

	public Date getB_coupon_start() {
		return b_coupon_start;
	}

	public void setB_coupon_start(Date b_coupon_start) {
		this.b_coupon_start = b_coupon_start;
	}

	public Date getB_coupon_end() {
		return b_coupon_end;
	}

	public void setB_coupon_end(Date b_coupon_end) {
		this.b_coupon_end = b_coupon_end;
	}

	public String getM_coupon_no() {
		return m_coupon_no;
	}

	public void setM_coupon_no(String m_coupon_no) {
		this.m_coupon_no = m_coupon_no;
	}

	public Date getM_coupon_start() {
		return m_coupon_start;
	}

	public void setM_coupon_start(Date m_coupon_start) {
		this.m_coupon_start = m_coupon_start;
	}

	public Date getM_coupon_end() {
		return m_coupon_end;
	}

	public void setM_coupon_end(Date m_coupon_end) {
		this.m_coupon_end = m_coupon_end;
	}

	public String getV_coupon_no() {
		return v_coupon_no;
	}

	public void setV_coupon_no(String v_coupon_no) {
		this.v_coupon_no = v_coupon_no;
	}

	public Date getV_coupon_start() {
		return v_coupon_start;
	}

	public void setV_coupon_start(Date v_coupon_start) {
		this.v_coupon_start = v_coupon_start;
	}

	public Date getV_coupon_end() {
		return v_coupon_end;
	}

	public void setV_coupon_end(Date v_coupon_end) {
		this.v_coupon_end = v_coupon_end;
	}

	public Date getMember_outdate() {
		return member_outdate;
	}

	public void setMember_outdate(Date member_outdate) {
		this.member_outdate = member_outdate;
	}

	public int getPassword_confirm() {
		return password_confirm;
	}

	public void setPassword_confirm(int password_confirm) {
		this.password_confirm = password_confirm;
	}

	@Override
	public String toString() {
		return "MemberVO [member_no=" + member_no + ", id=" + id + ", password=" + password + ", name=" + name
				+ ", gender=" + gender + ", birthday=" + birthday + ", email=" + email + ", phone=" + phone
				+ ", agreement1=" + agreement1 + ", agreement2=" + agreement2 + ", agreement3=" + agreement3
				+ ", condition=" + condition + ", rank=" + rank + ", member_date=" + member_date + ", marriage="
				+ marriage + ", weddingdate=" + weddingdate + ", job=" + job + ", address=" + address + ", memo=" + memo
				+ ", point=" + point + ", b_coupon_no=" + b_coupon_no + ", b_coupon_start=" + b_coupon_start
				+ ", b_coupon_end=" + b_coupon_end + ", m_coupon_no=" + m_coupon_no + ", m_coupon_start="
				+ m_coupon_start + ", m_coupon_end=" + m_coupon_end + ", v_coupon_no=" + v_coupon_no
				+ ", v_coupon_start=" + v_coupon_start + ", v_coupon_end=" + v_coupon_end + ", member_outdate="
				+ member_outdate + ", password_confirm=" + password_confirm + "]";
	}

	
	
}
