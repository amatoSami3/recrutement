package ma.polytechnique.IFT2004W.entites;

import static javax.persistence.GenerationType.IDENTITY;

import java.sql.Blob;
import java.sql.Date;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
@Table(name = "document" )
public class Document implements java.io.Serializable{
	private Integer idDocument;
	private String type;
 
	@Lob
	private byte[] doc;
	private Date dateMsj;
	private Candidat candidat;
 
	//private String extention;
	
	private String img2;
	//private String type;
	
	
	 
	
	public Document() {
		//super();

	}

	 

	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "idDocument", unique = true, nullable = false)
	public Integer getIdDocument() {
		return this.idDocument;
	}


	public void setIdDocument(Integer idDocument) {
		this.idDocument = idDocument;
	}
	
	@Column(name = "img2", precision = 6)
	public String getImg2() {
		return img2;
	}
	public void setImg2(String img2) {
		this.img2 = img2;
	}

	@Column(name = "type", precision = 6)
	public String getType() {
		return type;
	}


	public void setType(String nomDoc) {
		this.type = nomDoc;
	}
	 
	@Column(name = "doc", precision = 6)
	public byte[] getDoc() {
		return doc;
	}


	public void setDoc(byte[] doc) {
		this.doc = doc;
	}

	@Column(name = "dateMsj")
			//, precision = 6)
	public Date getDateMsj() {
		return dateMsj;
	}


	public void setDateMsj(Date dateMsj) {
		this.dateMsj = dateMsj;
	}
	
	 

	@JsonIgnore
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "user_id" )
	public Candidat getCandidat() {
		return this.candidat;
	}


	public void setCandidat(Candidat candidat) {
		this.candidat = candidat;
	}


	@Override
	public String toString() {
		
		return "Document [idDocument=" + idDocument + ", type=" + type + " , dateMsj=" + dateMsj
				+ "]";
	}
	
    private String getExtension(String fileName) {
    	 String extension = null;
	int i = fileName.lastIndexOf('.');
	if (i > 0) {
	    extension = fileName.substring(i+1);
	}
    return extension;
    }

     
	
    
}
