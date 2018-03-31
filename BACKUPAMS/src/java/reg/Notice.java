/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package reg;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

/**
 *
 * @author Dell
 */
@Entity
@Table(name = "notice")
@NamedQueries({
    @NamedQuery(name = "Notice.findAll", query = "SELECT n FROM Notice n")})
public class Notice implements Serializable {

    private static final long serialVersionUID = 1L;
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "Noticeid")
    private int noticeid;
    @Column(name = "date")
    private String date;
    @Column(name = "description")
    private String description;
    @JoinColumn(name = "socid", referencedColumnName = "sid")
    @ManyToOne(optional = false)
    private Society socid;

    public Notice() {
    }

    public int getNoticeid() {
        return noticeid;
    }

    public void setNoticeid(int noticeid) {
        this.noticeid = noticeid;
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

    public Society getSocid() {
        return socid;
    }

    public void setSocid(Society socid) {
        this.socid = socid;
    }
    
    
   
   
    
}
