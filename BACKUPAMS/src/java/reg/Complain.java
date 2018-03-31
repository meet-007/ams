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
@Table(name = "complain")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Complain.findAll", query = "SELECT c FROM Complain c"),
    @NamedQuery(name = "Complain.findByComplainId", query = "SELECT c FROM Complain c WHERE c.complainId = :complainId"),
    @NamedQuery(name = "Complain.findByDate", query = "SELECT c FROM Complain c WHERE c.date = :date"),
    @NamedQuery(name = "Complain.findByDescription", query = "SELECT c FROM Complain c WHERE c.description = :description"),
    @NamedQuery(name = "Complain.findByUpvote", query = "SELECT c FROM Complain c WHERE c.upvote = :upvote"),
    @NamedQuery(name = "Complain.findByDwnvote", query = "SELECT c FROM Complain c WHERE c.dwnvote = :dwnvote"),
    @NamedQuery(name = "Complain.findByStatus", query = "SELECT c FROM Complain c WHERE c.status = :status"),
    @NamedQuery(name = "Complain.findByActionTaken", query = "SELECT c FROM Complain c WHERE c.actionTaken = :actionTaken")})
public class Complain implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "complain_id")
    private Integer complainId;
    @Basic(optional = false)
    @Column(name = "date")
    private String date;
    @Basic(optional = false)
    @Column(name = "description")
    private String description;
    @Column(name = "upvote")
    private Integer upvote;
    @Column(name = "dwnvote")
    private Integer dwnvote;
    @Basic(optional = false)
    @Column(name = "status")
    private String status;
    @Column(name = "action_taken")
    private String actionTaken;
    @JoinColumn(name = "soc_id", referencedColumnName = "sid")
    @ManyToOne(optional = false)
    private Society socId;
    @JoinColumn(name = "lid", referencedColumnName = "lid")
    @ManyToOne(optional = false)
    private Login lid;

    public Complain() {
    }

    public Complain(Integer complainId) {
        this.complainId = complainId;
    }

    public Complain(Integer complainId, String date, String description, String status) {
        this.complainId = complainId;
        this.date = date;
        this.description = description;
        this.status = status;
    }

    public Integer getComplainId() {
        return complainId;
    }

    public void setComplainId(Integer complainId) {
        this.complainId = complainId;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Integer getUpvote() {
        return upvote;
    }

    public void setUpvote(Integer upvote) {
        this.upvote = upvote;
    }

    public Integer getDwnvote() {
        return dwnvote;
    }

    public void setDwnvote(Integer dwnvote) {
        this.dwnvote = dwnvote;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getActionTaken() {
        return actionTaken;
    }

    public void setActionTaken(String actionTaken) {
        this.actionTaken = actionTaken;
    }

    public Society getSocId() {
        return socId;
    }

    public void setSocId(Society socId) {
        this.socId = socId;
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
        hash += (complainId != null ? complainId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Complain)) {
            return false;
        }
        Complain other = (Complain) object;
        if ((this.complainId == null && other.complainId != null) || (this.complainId != null && !this.complainId.equals(other.complainId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "reg.Complain[ complainId=" + complainId + " ]";
    }
    
}
