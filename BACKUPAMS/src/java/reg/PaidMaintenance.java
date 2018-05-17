/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package reg;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author meet
 */
@Entity
@Table(name = "paid maintenance")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "PaidMaintenance.findAll", query = "SELECT p FROM PaidMaintenance p"),
    @NamedQuery(name = "PaidMaintenance.findByPmId", query = "SELECT p FROM PaidMaintenance p WHERE p.pmId = :pmId"),
    @NamedQuery(name = "PaidMaintenance.findByMemberName", query = "SELECT p FROM PaidMaintenance p WHERE p.memberName = :memberName"),
    @NamedQuery(name = "PaidMaintenance.findByTId", query = "SELECT p FROM PaidMaintenance p WHERE p.tId = :tId"),
    @NamedQuery(name = "PaidMaintenance.findBySocId", query = "SELECT p FROM PaidMaintenance p WHERE p.socId = :socId"),
    @NamedQuery(name = "PaidMaintenance.findByMemId", query = "SELECT p FROM PaidMaintenance p WHERE p.memId = :memId")})
public class PaidMaintenance implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "pm_id")
    private Integer pmId;
    @Basic(optional = false)
    @Column(name = "member name")
    private String memberName;
    @Basic(optional = false)
    @Column(name = "t_id")
    private int tId;
    @Basic(optional = false)
    @Column(name = "soc_id")
    private int socId;
    @Column(name = "mem_id")
    private Integer memId;

    public PaidMaintenance() {
    }

    public PaidMaintenance(Integer pmId) {
        this.pmId = pmId;
    }

    public PaidMaintenance(Integer pmId, String memberName, int tId, int socId) {
        this.pmId = pmId;
        this.memberName = memberName;
        this.tId = tId;
        this.socId = socId;
    }

    public Integer getPmId() {
        return pmId;
    }

    public void setPmId(Integer pmId) {
        this.pmId = pmId;
    }

    public String getMemberName() {
        return memberName;
    }

    public void setMemberName(String memberName) {
        this.memberName = memberName;
    }

    public int getTId() {
        return tId;
    }

    public void setTId(int tId) {
        this.tId = tId;
    }

    public int getSocId() {
        return socId;
    }

    public void setSocId(int socId) {
        this.socId = socId;
    }

    public Integer getMemId() {
        return memId;
    }

    public void setMemId(Integer memId) {
        this.memId = memId;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (pmId != null ? pmId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof PaidMaintenance)) {
            return false;
        }
        PaidMaintenance other = (PaidMaintenance) object;
        if ((this.pmId == null && other.pmId != null) || (this.pmId != null && !this.pmId.equals(other.pmId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "reg.PaidMaintenance[ pmId=" + pmId + " ]";
    }
    
}
