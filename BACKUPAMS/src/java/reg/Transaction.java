/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package reg;

import java.io.Serializable;
import java.util.Collection;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author meet
 */
@Entity
@Table(name = "transaction")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Transaction.findAll", query = "SELECT t FROM Transaction t"),
    @NamedQuery(name = "Transaction.findByTpkId", query = "SELECT t FROM Transaction t WHERE t.tpkId = :tpkId"),
    @NamedQuery(name = "Transaction.findByTId", query = "SELECT t FROM Transaction t WHERE t.tId = :tId"),
    @NamedQuery(name = "Transaction.findByAmount", query = "SELECT t FROM Transaction t WHERE t.amount = :amount"),
    @NamedQuery(name = "Transaction.findByDate", query = "SELECT t FROM Transaction t WHERE t.date = :date")})
public class Transaction implements Serializable {
    
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "tpk_id")
    private Integer tpkId;
    @Basic(optional = false)
    @Column(name = "t_id")
    private String tId;
    @Basic(optional = false)
    @Column(name = "amount")
    private double amount;
    @Basic(optional = false)
    @Column(name = "date")
    private String date;

    public Transaction() {
    }

    public Transaction(Integer tpkId) {
        this.tpkId = tpkId;
    }

    public Transaction(Integer tpkId, String tId, double amount, String date) {
        this.tpkId = tpkId;
        this.tId = tId;
        this.amount = amount;
        this.date = date;
    }

    public Integer getTpkId() {
        return tpkId;
    }

    public void setTpkId(Integer tpkId) {
        this.tpkId = tpkId;
    }

    public String getTId() {
        return tId;
    }

    public void setTId(String tId) {
        this.tId = tId;
    }

    public double getAmount() {
        return amount;
    }

    public void setAmount(double amount) {
        this.amount = amount;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (tpkId != null ? tpkId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Transaction)) {
            return false;
        }
        Transaction other = (Transaction) object;
        if ((this.tpkId == null && other.tpkId != null) || (this.tpkId != null && !this.tpkId.equals(other.tpkId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "reg.Transaction[ tpkId=" + tpkId + " ]";
    }

   
    
}
