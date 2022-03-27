package control;

public class SinhVien {
	private String MSSV;
	private String Ho;
	private String Ten;
	private String Malop;
	private String NgaySinh;
	private String SDT;
	private String Email;
	private Boolean NghiHoc;
	private String Gioitinh;
	private String Quequan;
	/**
	 * @return the quequan
	 */
	public String getQuequan() {
		return Quequan;
	}
	/**
	 * @param quequan the quequan to set
	 */
	public void setQuequan(String quequan) {
		Quequan = quequan;
	}
	/**
	 * @return the gioitinh
	 */
	public String getGioitinh() {
		return Gioitinh;
	}
	/**
	 * @param gioitinh the gioitinh to set
	 */
	public void setGioitinh(String gioitinh) {
		Gioitinh = gioitinh;
	}
	public SinhVien() {}
	public SinhVien(String mSSV, String ho, String ten, String malop, String ngaySinh, String sDT, String email,
			Boolean nghiHoc) {
		super();
		MSSV = mSSV;
		Ho = ho;
		Ten = ten;
		Malop = malop;
		NgaySinh = ngaySinh;
		SDT = sDT;
		Email = email;
		NghiHoc = nghiHoc;
	}
	public String getMSSV() {
		return MSSV;
	}
	public void setMSSV(String mSSV) {
		MSSV = mSSV;
	}
	public String getHo() {
		return Ho;
	}
	public void setHo(String ho) {
		Ho = ho;
	}
	public String getTen() {
		return Ten;
	}
	public void setTen(String ten) {
		Ten = ten;
	}
	public String getMalop() {
		return Malop;
	}
	public void setMalop(String malop) {
		Malop = malop;
	}
	public String getNgaySinh() {
		return NgaySinh;
	}
	public void setNgaySinh(String ngaySinh) {
		NgaySinh = ngaySinh;
	}
	public String getSDT() {
		return SDT;
	}
	public void setSDT(String sDT) {
		SDT = sDT;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	public Boolean getNghiHoc() {
		return NghiHoc;
	}
	public void setNghiHoc(Boolean nghiHoc) {
		NghiHoc = nghiHoc;
	}
	
}
