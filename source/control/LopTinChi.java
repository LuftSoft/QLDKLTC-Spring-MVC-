package control;

import java.time.LocalDate;

public class LopTinChi {
	private String TENNGANH;
	private int SVTOITHIEU;
	private String MAMH;
	private LocalDate NGAYBATDAU;
	private int CA;
	private String THU;
	private String PHONG;
	private String TENMH;
	private int SOTTH;
	private int SOTC;
	private int NHOM;
	private String MALOP;
	private LocalDate NGAYKETTHUC;
	public LopTinChi() {
		super();
		// TODO Auto-generated constructor stub
	}
	/**
	 * @return the nIENKHOA
	 */
	public LopTinChi(String tENNGANH, int sVTOITHIEU, String mAMH, LocalDate nGAYBATDAU, int cA, String tHU, String pHONG,
			String tENMH, int sOTTH, int sOTC, int nHOM) {
		super();
		TENNGANH = tENNGANH;
		SVTOITHIEU = sVTOITHIEU;
		MAMH = mAMH;
		NGAYBATDAU = nGAYBATDAU;
		CA = cA;
		THU = tHU;
		PHONG = pHONG;
		TENMH = tENMH;
		SOTTH = sOTTH;
		SOTC = sOTC;
		NHOM = nHOM;
		NGAYKETTHUC=NGAYBATDAU.plusDays(28*SOTC);
	}
	public LocalDate getNGAYKETTHUC() {
		return this.NGAYBATDAU.plusDays(28*SOTC);
	}
	public void setNGAYKETTHUC(LocalDate nGAYKETTHUC) {
		NGAYKETTHUC=nGAYKETTHUC;
	}
	/**
	 * @return the tENNGANH
	 */
	public String getTENNGANH() {
		return TENNGANH;
	}
	/**
	 * @param tENNGANH the tENNGANH to set
	 */
	public void setTENNGANH(String tENNGANH) {
		TENNGANH = tENNGANH;
	}
	/**
	 * @return the sVTOITHIEU
	 */
	public int getSVTOITHIEU() {
		return SVTOITHIEU;
	}
	/**
	 * @param sVTOITHIEU the sVTOITHIEU to set
	 */
	public void setSVTOITHIEU(int sVTOITHIEU) {
		SVTOITHIEU = sVTOITHIEU;
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
	 * @return the nGAYBATDAU
	 */
	public LocalDate getNGAYBATDAU() {
		return NGAYBATDAU;
	}
	/**
	 * @param nGAYBATDAU the nGAYBATDAU to set
	 */
	public void setNGAYBATDAU(LocalDate nGAYBATDAU) {
		NGAYBATDAU = nGAYBATDAU;
	}
	/**
	 * @return the cA
	 */
	public int getCA() {
		return CA;
	}
	/**
	 * @param cA the cA to set
	 */
	public void setCA(int cA) {
		CA = cA;
	}
	/**
	 * @return the tHU
	 */
	public String getTHU() {
		return THU;
	}
	/**
	 * @param tHU the tHU to set
	 */
	public void setTHU(String tHU) {
		THU = tHU;
	}
	/**
	 * @return the pHONG
	 */
	public String getPHONG() {
		return PHONG;
	}
	/**
	 * @param pHONG the pHONG to set
	 */
	public void setPHONG(String pHONG) {
		PHONG = pHONG;
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
	 * @return the sOTTH
	 */
	public int getSOTTH() {
		return SOTTH;
	}
	/**
	 * @param sOTTH the sOTTH to set
	 */
	public void setSOTTH(int sOTTH) {
		SOTTH = sOTTH;
	}
	/**
	 * @return the sOTC
	 */
	public int getSOTC() {
		return SOTC;
	}
	/**
	 * @param sOTC the sOTC to set
	 */
	public void setSOTC(int sOTC) {
		SOTC = sOTC;
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
	/**
	 * @return the mALOP
	 */
	public String getMALOP() {
		return MALOP;
	}
	/**
	 * @param mALOP the mALOP to set
	 */
	public void setMALOP(String mALOP) {
		MALOP = mALOP;
	}
	
	
}
