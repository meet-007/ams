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
@Table(name = "pic_gallery")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "PicGallery.findAll", query = "SELECT p FROM PicGallery p"),
    @NamedQuery(name = "PicGallery.findByIdpic", query = "SELECT p FROM PicGallery p WHERE p.idpic = :idpic"),
    @NamedQuery(name = "PicGallery.findByImage", query = "SELECT p FROM PicGallery p WHERE p.image = :image")})
public class PicGallery implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "idpic")
    private Integer idpic;
    @Basic(optional = false)
    @Column(name = "image")
    private String image;
    @JoinColumn(name = "event", referencedColumnName = "idalbum")
    @ManyToOne(optional = false)
    private Album event;
    @JoinColumn(name = "soc_id", referencedColumnName = "sid")
    @ManyToOne(optional = false)
    private Society socId;

    public PicGallery() {
    }

    public PicGallery(Integer idpic) {
        this.idpic = idpic;
    }

    public PicGallery(Integer idpic, String image) {
        this.idpic = idpic;
        this.image = image;
    }

    public Integer getIdpic() {
        return idpic;
    }

    public void setIdpic(Integer idpic) {
        this.idpic = idpic;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public Album getEvent() {
        return event;
    }

    public void setEvent(Album event) {
        this.event = event;
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
        hash += (idpic != null ? idpic.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof PicGallery)) {
            return false;
        }
        PicGallery other = (PicGallery) object;
        if ((this.idpic == null && other.idpic != null) || (this.idpic != null && !this.idpic.equals(other.idpic))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "reg.PicGallery[ idpic=" + idpic + " ]";
    }
    
}
