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
@Table(name = "society_members")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "SocietyMembers.findAll", query = "SELECT s FROM SocietyMembers s"),
    @NamedQuery(name = "SocietyMembers.findByMemId", query = "SELECT s FROM SocietyMembers s WHERE s.memId = :memId"),
    @NamedQuery(name = "SocietyMembers.findByFname", query = "SELECT s FROM SocietyMembers s WHERE s.fname = :fname"),
    @NamedQuery(name = "SocietyMembers.findByLname", query = "SELECT s FROM SocietyMembers s WHERE s.lname = :lname"),
    @NamedQuery(name = "SocietyMembers.findByEmail", query = "SELECT s FROM SocietyMembers s WHERE s.email = :email"),
    @NamedQuery(name = "SocietyMembers.findByMobile", query = "SELECT s FROM SocietyMembers s WHERE s.mobile = :mobile"),
    @NamedQuery(name = "SocietyMembers.findByIdProof", query = "SELECT s FROM SocietyMembers s WHERE s.idProof = :idProof"),
    @NamedQuery(name = "SocietyMembers.findByImage", query = "SELECT s FROM SocietyMembers s WHERE s.image = :image"),
    @NamedQuery(name = "SocietyMembers.findByMemberType", query = "SELECT s FROM SocietyMembers s WHERE s.memberType = :memberType")})
public class SocietyMembers implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "mem_id")
    private Integer memId;
    @Basic(optional = false)
    @Column(name = "fname")
    private String fname;
    @Basic(optional = false)
    @Column(name = "lname")
    private String lname;
    @Basic(optional = false)
    @Column(name = "email")
    private String email;
    @Basic(optional = false)
    @Column(name = "mobile")
    private String mobile;
    @Column(name = "id_proof")
    private String idProof;
    @Column(name = "image")
    private String image;
    @Basic(optional = false)
    @Column(name = "member_type")
    private String memberType;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "occupier")
    private Collection<Apartment> apartmentCollection;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "owner")
    private Collection<Apartment> apartmentCollection1;
    @JoinColumn(name = "lid", referencedColumnName = "lid")
    @ManyToOne(optional = false)
    private Login lid;
    @JoinColumn(name = "soc_id", referencedColumnName = "sid")
    @ManyToOne(optional = false)
    private Society socId;

    public SocietyMembers() {
    }

    public SocietyMembers(Integer memId) {
        this.memId = memId;
    }

    public SocietyMembers(Integer memId, String fname, String lname, String email, String mobile, String memberType) {
        this.memId = memId;
        this.fname = fname;
        this.lname = lname;
        this.email = email;
        this.mobile = mobile;
        this.memberType = memberType;
    }

    public Integer getMemId() {
        return memId;
    }

    public void setMemId(Integer memId) {
        this.memId = memId;
    }

    public String getFname() {
        return fname;
    }

    public void setFname(String fname) {
        this.fname = fname;
    }

    public String getLname() {
        return lname;
    }

    public void setLname(String lname) {
        this.lname = lname;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getIdProof() {
        return idProof;
    }

    public void setIdProof(String idProof) {
        this.idProof = idProof;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getMemberType() {
        return memberType;
    }

    public void setMemberType(String memberType) {
        this.memberType = memberType;
    }

    

   

    public Login getLid() {
        return lid;
    }

    public void setLid(Login lid) {
        this.lid = lid;
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
        hash += (memId != null ? memId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof SocietyMembers)) {
            return false;
        }
        SocietyMembers other = (SocietyMembers) object;
        if ((this.memId == null && other.memId != null) || (this.memId != null && !this.memId.equals(other.memId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "reg.SocietyMembers[ memId=" + memId + " ]";
    }
    
}
