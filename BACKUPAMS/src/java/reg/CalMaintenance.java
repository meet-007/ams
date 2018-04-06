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
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author meet
 */
@Entity
@Table(name = "cal_maintenance")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "CalMaintenance.findAll", query = "SELECT c FROM CalMaintenance c"),
    @NamedQuery(name = "CalMaintenance.findByMId", query = "SELECT c FROM CalMaintenance c WHERE c.mId = :mId"),
    @NamedQuery(name = "CalMaintenance.findByDescription", query = "SELECT c FROM CalMaintenance c WHERE c.description = :description"),
    @NamedQuery(name = "CalMaintenance.findByDate", query = "SELECT c FROM CalMaintenance c WHERE c.date = :date"),
    @NamedQuery(name = "CalMaintenance.findByAmount", query = "SELECT c FROM CalMaintenance c WHERE c.amount = :amount")})
public class CalMaintenance implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "m_id")
    private Integer mId;
    @Basic(optional = false)
    @Column(name = "description")
    private String description;
    @Basic(optional = false)
    @Column(name = "date")
    private String date;
    @Basic(optional = false)
    @Column(name = "amount")
    private double amount;
    @JoinColumn(name = "soc_id", referencedColumnName = "sid")
    @ManyToOne(optional = false)
    private Society socId;

    public CalMaintenance() {
    }

    public CalMaintenance(Integer mId) {
        this.mId = mId;
    }

    public CalMaintenance(Integer mId, String description, String date, double amount) {
        this.mId = mId;
        this.description = description;
        this.date = date;
        this.amount = amount;
    }

    public Integer getMId() {
        return mId;
    }

    public void setMId(Integer mId) {
        this.mId = mId;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public double getAmount() {
        return amount;
    }

    public void setAmount(double amount) {
        this.amount = amount;
    }

    public Society getSocId() {
        return socId;
    }

    public void setSocId(Society socId) {
        this.socId = socId;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (mId != null ? mId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof CalMaintenance)) {
            return false;
        }
        CalMaintenance other = (CalMaintenance) object;
        if ((this.mId == null && other.mId != null) || (this.mId != null && !this.mId.equals(other.mId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "reg.CalMaintenance[ mId=" + mId + " ]";
    }
    
}
