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
@Table(name = "apartment")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Apartment.findAll", query = "SELECT a FROM Apartment a"),
    @NamedQuery(name = "Apartment.findByAptId", query = "SELECT a FROM Apartment a WHERE a.aptId = :aptId"),
    @NamedQuery(name = "Apartment.findByNumber", query = "SELECT a FROM Apartment a WHERE a.number = :number")})
public class Apartment implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "apt_id")
    private Integer aptId;
    @Basic(optional = false)
    @Column(name = "number")
    private String number;
    @JoinColumn(name = "occupier", referencedColumnName = "mem_id")
    @ManyToOne(optional = false)
    private SocietyMembers occupier;
    @JoinColumn(name = "owner", referencedColumnName = "mem_id")
    @ManyToOne(optional = false)
    private SocietyMembers owner;
    @JoinColumn(name = "sid", referencedColumnName = "sid")
    @ManyToOne(optional = false)
    private Society sid;

    public Apartment() {
    }

    public Apartment(Integer aptId) {
        this.aptId = aptId;
    }

    public Apartment(Integer aptId, String number) {
        this.aptId = aptId;
        this.number = number;
    }

    public Integer getAptId() {
        return aptId;
    }

    public void setAptId(Integer aptId) {
        this.aptId = aptId;
    }

    public String getNumber() {
        return number;
    }

    public void setNumber(String number) {
        this.number = number;
    }

    public SocietyMembers getOccupier() {
        return occupier;
    }

    public void setOccupier(SocietyMembers occupier) {
        this.occupier = occupier;
    }

    public SocietyMembers getOwner() {
        return owner;
    }

    public void setOwner(SocietyMembers owner) {
        this.owner = owner;
    }

    public Society getSid() {
        return sid;
    }

    public void setSid(Society sid) {
        this.sid = sid;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (aptId != null ? aptId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Apartment)) {
            return false;
        }
        Apartment other = (Apartment) object;
        if ((this.aptId == null && other.aptId != null) || (this.aptId != null && !this.aptId.equals(other.aptId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "reg.Apartment[ aptId=" + aptId + " ]";
    }
    
}
