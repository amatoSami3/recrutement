package ma.polytechnique.IFT2004W.entites;

public class Chercher {
	
	
	//private String chan;
	private int nbr;
	private String m; 
	
	public Chercher()
	{
		
	}
	public Chercher(String s)
	{
		this.m=s; 
	}
	
	public String getM() {
		return m;
	}
	public void setM(String m) {
		this.m = m;
	}
	/*public String getChan() {
		return chan;
	}
	public void setChan(String chanie) {
		this.chan = chanie;
	}*/
	public int getNbr() {
		return nbr;
	}
	public void setNbr(int nbr) {
		this.nbr = nbr;
	}
	@Override
	public String toString() {
		return "Chercher [chan=" + m + "]";
	}
	

}
