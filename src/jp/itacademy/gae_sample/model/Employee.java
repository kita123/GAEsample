package jp.itacademy.gae_sample.model;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import com.google.appengine.api.datastore.Key;
import com.sun.org.apache.xml.internal.resolver.helpers.PublicId;
import com.sun.tracing.dtrace.Attributes;

import org.slim3.datastore.Attribute;
import org.slim3.datastore.Datastore;
import org.slim3.datastore.Model;

@Model(schemaVersion = 1)
public class Employee implements Serializable {
    
    private int punishmentCount;
    
    
    public int getPunishmentCount() {
        return punishmentCount;
    }

    public void setPunishmentCount(int punishmentCount) {
        this.punishmentCount = punishmentCount;
    }



    private String name;
    
    private Date hireDate;
    private long deptId;
    private boolean training;
    private int salary;
    private List<Long> credentialIds;
    
    @Attribute(persistent=false)
    private Dept dept;
    
    

    public Dept getDept() {
        return dept;
    }

    public void setDept(Dept dept) {
        this.dept = dept;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Date getHireDate(){
        return hireDate;
    }
    
    public void setHireDate(Date hireDate){
        this.hireDate=hireDate;
    }
    
        
    public long getDeptId() {
        return deptId;
    }

    public boolean isTraining(){
        return training;
    }
    
    public void setTraining(boolean training){
        this.training=training;
    }
    
    
    
    public int getSalary() {
        return salary;
    }

    public void setSalary(int salary) {
        this.salary = salary;
    }

    public List<Long> getCredentialIds() {
        return credentialIds;
    }

    public void setCredentialIds(List<Long> credentialIds) {
        this.credentialIds = credentialIds;
    }

    public void setDeptId(long deptId) {
        this.deptId = deptId;
    }



    private static final long serialVersionUID = 1L;

    @Attribute(primaryKey = true)
    private Key key;

    @Attribute(version = true)
    private Long version;

    /**
     * Returns the key.
     *
     * @return the key
     */
    public Key getKey() {
        return key;
    }

    /**
     * Sets the key.
     *
     * @param key
     *            the key
     */
    public void setKey(Key key) {
        this.key = key;
    }

    /**
     * Returns the version.
     *
     * @return the version
     */
    public Long getVersion() {
        return version;
    }

    /**
     * Sets the version.
     *
     * @param version
     *            the version
     */
    public void setVersion(Long version) {
        this.version = version;
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((key == null) ? 0 : key.hashCode());
        return result;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        Employee other = (Employee) obj;
        if (key == null) {
            if (other.key != null) {
                return false;
            }
        } else if (!key.equals(other.key)) {
            return false;
        }
        return true;
    }
    
    public Key getDeptKey(){
        return Datastore.createKey(Dept.class,getDeptId());
    }
    
    public void setDeptKey(Key deptKey){
        this.deptId=deptKey.getId();
    }
    
  }

