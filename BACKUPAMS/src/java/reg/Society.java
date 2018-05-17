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
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
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
@Table(name = "society")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Society.findAll", query = "SELECT s FROM Society s"),
    @NamedQuery(name = "Society.findBySid", query = "SELECT s FROM Society s WHERE s.sid = :sid"),
    @NamedQuery(name = "Society.findBySocName", query = "SELECT s FROM Society s WHERE s.socName = :socName"),
    @NamedQuery(name = "Society.findByState", query = "SELECT s FROM Society s WHERE s.state = :state"),
    @NamedQuery(name = "Society.findByCity", query = "SELECT s FROM Society s WHERE s.city = :city"),
    @NamedQuery(name = "Society.findByAddress", query = "SELECT s FROM Society s WHERE s.address = :address"),
    @NamedQuery(name = "Society.findByNoOfApt", query = "SELECT s FROM Society s WHERE s.noOfApt = :noOfApt"),
    @NamedQuery(name = "Society.findByContact", query = "SELECT s FROM Society s WHERE s.contact = :contact")})
public class Society implements Serializable {
    
   

  
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "sid")
    private Integer sid;
    @Basic(optional = false)
    @Column(name = "soc_name")
    private String socName;
    @Basic(optional = false)
    @Column(name = "state")
    private String state;
    @Basic(optional = false)
    @Column(name = "city")
    private String city;
    @Basic(optional = false)
    @Column(name = "address")
    private String address;
    @Basic(optional = false)
    @Column(name = "no_of_apt")
    private int noOfApt;
    @Basic(optional = false)
    @Column(name = "contact")
    private String contact;
    @JoinColumn(name = "lid", referencedColumnName = "lid")
    @ManyToOne(optional = false)
    private Login lid;
    public Society() {
    }

    public Society(Integer sid) {
        this.sid = sid;
    }

    public Society(Integer sid, String socName, String state, String city, String address, int noOfApt, String contact) {
        this.sid = sid;
        this.socName = socName;
        this.state = state;
        this.city = city;
        this.address = address;
        this.noOfApt = noOfApt;
        this.contact = contact;
    }

    public Integer getSid() {
        return sid;
    }

    public void setSid(Integer sid) {
        this.sid = sid;
    }

    public String getSocName() {
        return socName;
    }

    public void setSocName(String socName) {
        this.socName = socName;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public int getNoOfApt() {
        return noOfApt;
    }

    public void setNoOfApt(int noOfApt) {
        this.noOfApt = noOfApt;
    }

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }

    public Login getLid() {
        return lid;
    }

    public void setLid(Login lid) {
        this.lid = lid;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (sid != null ? sid.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Society)) {
            return false;
        }
        Society other = (Society) object;
        if ((this.sid == null && other.sid != null) || (this.sid != null && !this.sid.equals(other.sid))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "reg.Society[ sid=" + sid + " ]";
    }



    


    
}
