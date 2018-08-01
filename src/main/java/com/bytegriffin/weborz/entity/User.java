package com.bytegriffin.weborz.entity;

import java.io.Serializable;
import java.util.Date;
import java.util.Set;

import javax.validation.constraints.NotEmpty;

import org.springframework.format.annotation.DateTimeFormat;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.extension.activerecord.Model;

@TableName(value = "sys_user")
public class User extends Model<User> implements java.io.Serializable {

	private static final long serialVersionUID = 2882794718762953397L;
	public static final String ACTIVE_STATUS = "1";// 正常
	public static final String LOCK_STATUS = "2";// 锁定

    @TableId(value = "id", type = IdType.AUTO)
	private String id;
    private String phone;
    private String name;
	@TableField(value = "login_name")
	@NotEmpty private String loginName;
	private String password;
	@NotEmpty private String sex;//null:保密  0:女  1:男
	private String email;
	private String birthday;
	private String avatar;

	@TableField(value = "id_number")
	private String idNumber;
	@TableField(value = "regist_time")
	private Date registTime;
	@TableField(value = "login_time")
	private Date loginTime;
	private String status;
	@TableField(value = "login_ip")
	private String loginIP;
	@TableField(value = "login_count")
	private int loginCount;
	@TableField(exist=false)
	private boolean checked;//多选框是否被选中
	@TableField(exist=false)
	private Set<String> groupNames;
	@TableField(exist=false)
	private Set<String> roleNames;
	@TableField(exist=false)
	private Set<String> permissions;//菜单url
	@TableField(exist=false)
	private String groupNamesStr;//groupNames字段的str版
	@TableField(exist=false)
	private String roleNamesStr;//roleNames字段的str版
	@TableField("create_by")
	private String createBy;
    @TableField("create_time")
    private Date createTime;
    @TableField("update_by")
	private String updateBy;
    @TableField("update_time")
    private Date updateTime;
    
	public String getSexStr(String sex){
		if(sex == null || sex.equals("")){
			return "保密";
		}else if(sex.equals("0")){
			return "女";
		}else if(sex.equals("1")){
			return "男";
		}
		return "保密";
	}

	public String getGroupNamesStr() {
		return groupNamesStr;
	}

	public void setGroupNamesStr(String groupNamesStr) {
		this.groupNamesStr = groupNamesStr;
	}

	public String getRoleNamesStr() {
		return roleNamesStr;
	}

	public void setRoleNamesStr(String roleNamesStr) {
		this.roleNamesStr = roleNamesStr;
	}

	public Set<String> getGroupNames() {
		return groupNames;
	}

	public void setGroupNames(Set<String> groupNames) {
		this.groupNames = groupNames;
	}

	public Set<String> getRoleNames() {
		return roleNames;
	}

	public void setRoleNames(Set<String> roleNames) {
		this.roleNames = roleNames;
	}

	public Set<String> getPermissions() {
		return permissions;
	}

	public void setPermissions(Set<String> permissions) {
		this.permissions = permissions;
	}

	public boolean getChecked() {
		return checked;
	}

	public void setChecked(boolean checked) {
		this.checked = checked;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getLoginIP() {
		return loginIP;
	}

	public void setLoginIP(String loginIP) {
		this.loginIP = loginIP;
	}

	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	public String getAvatar() {
		return avatar;
	}

	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}

	public String getIdNumber() {
		return idNumber;
	}

	public void setIdNumber(String idNumber) {
		this.idNumber = idNumber;
	}

	public Date getRegistTime() {
		return registTime;
	}

	public void setRegistTime(Date registTime) {
		this.registTime = registTime;
	}

	@DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	public Date getLoginTime() {
		return loginTime;
	}

	@DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	public void setLoginTime(Date loginTime) {
		this.loginTime = loginTime;
	}

	public int getLoginCount() {
		return loginCount;
	}

	public void setLoginCount(int loginCount) {
		this.loginCount = loginCount;
	}

	public String getLoginName() {
		return loginName;
	}

	public void setLoginName(String loginName) {
		this.loginName = loginName;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
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

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Override
	protected Serializable pkVal() {
		return this.id;
	}

	public String getCreateBy() {
		return createBy;
	}

	public void setCreateBy(String createBy) {
		this.createBy = createBy;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public String getUpdateBy() {
		return updateBy;
	}

	public void setUpdateBy(String updateBy) {
		this.updateBy = updateBy;
	}

	public Date getUpdateTime() {
		return updateTime;
	}

	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}
}
