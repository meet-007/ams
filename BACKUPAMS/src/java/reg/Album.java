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
@Table(name = "album")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Album.findAll", query = "SELECT a FROM Album a"),
    @NamedQuery(name = "Album.findByIdalbum", query = "SELECT a FROM Album a WHERE a.idalbum = :idalbum"),
    @NamedQuery(name = "Album.findByEventname", query = "SELECT a FROM Album a WHERE a.eventname = :eventname")})
public class Album implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "idalbum")
    private Integer idalbum;
    @Basic(optional = false)
    @Column(name = "eventname")
    private String eventname;


    public Album() {
    }

    public Album(Integer idalbum) {
        this.idalbum = idalbum;
    }

    public Album(Integer idalbum, String eventname) {
        this.idalbum = idalbum;
        this.eventname = eventname;
    }

    public Integer getIdalbum() {
        return idalbum;
    }

    public void setIdalbum(Integer idalbum) {
        this.idalbum = idalbum;
    }

    public String getEventname() {
        return eventname;
    }

    public void setEventname(String eventname) {
        this.eventname = eventname;
    }

  
   

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idalbum != null ? idalbum.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Album)) {
            return false;
        }
        Album other = (Album) object;
        if ((this.idalbum == null && other.idalbum != null) || (this.idalbum != null && !this.idalbum.equals(other.idalbum))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "reg.Album[ idalbum=" + idalbum + " ]";
    }
    
}
