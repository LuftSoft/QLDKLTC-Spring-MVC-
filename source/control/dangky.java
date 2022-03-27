package control;

public class dangky {
	private String TENMH;
	private String	MAMH;
	private int STC;
	private int NHOM;
	
	public dangky() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public dangky(String tENMH, String mAMH, int sTC, int nHOM) {
		super();
		TENMH = tENMH;
		MAMH = mAMH;
		STC = sTC;
		NHOM = nHOM;
	}

	/**
	 * @return the tENMH
	 */
	public String getTENMH() {
		return TENMH;
	}
	/**
	 * @param tENMH the tENMH to set
	 */
	public void setTENMH(String tENMH) {
		TENMH = tENMH;
	}
	/**
	 * @return the mAMH
	 */
	public String getMAMH() {
		return MAMH;
	}
	/**
	 * @param mAMH the mAMH to set
	 */
	public void setMAMH(String mAMH) {
		MAMH = mAMH;
	}
	/**
	 * @return the sTC
	 */
	public int getSTC() {
		return STC;
	}
	/**
	 * @param sTC the sTC to set
	 */
	public void setSTC(int sTC) {
		STC = sTC;
	}
	/**
	 * @return the nHOM
	 */
	public int getNHOM() {
		return NHOM;
	}
	/**
	 * @param nHOM the nHOM to set
	 */
	public void setNHOM(int nHOM) {
		NHOM = nHOM;
	}
	
}
