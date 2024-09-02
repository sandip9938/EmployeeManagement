package test;
import java.io.*;
@SuppressWarnings("serial")
public class EmployeeBean implements Serializable{
private String eid,ename,edesg;
private int ebsal;
private float ehra,eda,etsal;
public EmployeeBean() {}
public String getEid() {
	return eid;
}
public void setEid(String eid) {
	this.eid = eid;
}
public String getEname() {
	return ename;
}
public void setEname(String ename) {
	this.ename = ename;
}
public String getEdesg() {
	return edesg;
}
public void setEdesg(String edesg) {
	this.edesg = edesg;
}
public int getEbsal() {
	return ebsal;
}
public void setEbsal(int ebsal) {
	this.ebsal = ebsal;
}
public float getEhra() {
	return ehra;
}
public void setEhra(float ehra) {
	this.ehra = ehra;
}
public float getEda() {
	return eda;
}
public void setEda(float eda) {
	this.eda = eda;
}
public float getEtsal() {
	return etsal;
}
public void setEtsal(float etsal) {
	this.etsal = etsal;
}

}
