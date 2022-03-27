package ptit.controller;


import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.PreparedStatement;
import java.sql.Statement;
//import java.util.ArrayList;
//import java.util.List;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletRequest;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import control.connection;
import control.SinhVien;
import control.LopTinChi;
import control.dangky;
import control.tkb;
@Controller
public class app {
	@RequestMapping("test")
	public String test() {
		return "test";
	}
	SinhVien SV = new SinhVien();
	Connection conn = null;
	String tentk = "";
	String mk="";
	public void GetConnetion() {
		connection MConn = null;
		try {
			MConn = new connection();
		}
		catch(Exception e) {
			System.out.println(e);
		}
		this.conn = MConn.conn;
	}
	//Dang nhap
	@RequestMapping("dang-nhap")
	public String login() {
		return "login";
	}
	//Trang chu
	@RequestMapping(value = "home")
	public String getLogin() {
		return "home";
	}
	
	@RequestMapping(value = "home",method=RequestMethod.POST)
	public String hello(HttpServletRequest request,ModelMap model,HttpServletResponse respone) throws SQLException, ClassNotFoundException {
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		this.conn = DriverManager.getConnection("jdbc:sqlserver://;databaseName=CTDLGT;"
	            + "username=sa;password=123;");
		String chk=null;
		String Tentk = request.getParameter("taikhoan");
		String maSV = "";
		String Matkhau = request.getParameter("matkhau");
		Statement st = this.conn.createStatement();
		String chkmk="";
		while(true) {
			ResultSet rs = st.executeQuery("SELECT * FROM TAIKHOANSV WHERE TENTK='"+Tentk+"'");
			try {
				while(rs.next()) {
					chk = rs.getString("TENTK");
					chkmk = rs.getString("MATKHAU").trim();
					maSV = rs.getString("MASV");
					
				}
			}
			catch(Exception e) {}
			if(chk==null) {
				model.addAttribute("message","Tài khoản hoặc mật khẩu không đúng!");
				return "login";
			}
			else {
				if(chkmk.trim().equals(Matkhau)) {
					rs = st.executeQuery("SELECT * FROM SINHVIEN WHERE MASV='"+maSV+"'");
					while(rs.next()) {
						this.SV.setMSSV(rs.getString("MASV"));
						this.SV.setHo(rs.getString("HO"));
						this.SV.setTen(rs.getString("TEN"));
						this.SV.setMalop(rs.getString("MALOP"));
						this.SV.setNgaySinh(rs.getString("NGAYSINH"));
						this.SV.setSDT(rs.getString("SDT"));
						this.SV.setEmail(rs.getString("EMAIL"));
						this.SV.setNghiHoc(rs.getBoolean("NGHIHOC"));
						this.SV.setGioitinh(rs.getString("GIOITINH"));
						this.SV.setQuequan(rs.getString("QUEQUAN"));
					}
					respone.addCookie(new Cookie("MSSV", this.SV.getMSSV().toUpperCase()));
					model.addAttribute("SinhVien",this.SV);
					return"home";
				}
				else {
					model.addAttribute("message","Tài khoản hoặc mật khẩu không đúng!");
					return "login";
				}
//				return "home";
//				break;
			}
		}
		
//		return "home";
	}
	//Dang ky mon hoc
	@RequestMapping("dang-ky-mon-hoc")
	public String dangky(HttpServletRequest request,ModelMap model) throws SQLException, ClassNotFoundException {
		List <LopTinChi>dsltc= new ArrayList<>();
		List <dangky>dsdk= new ArrayList<>();
		String s = request.getParameter("getInfor");int stc=0;
		model.addAttribute("Infor",s);
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		this.conn = DriverManager.getConnection("jdbc:sqlserver://;databaseName=CTDLGT;"
	            + "username=sa;password=123;");
		Statement st = conn.createStatement();
		ResultSet rs = st.executeQuery("exec exe_ltcInfor @manganh='IT'"); 
		while(rs.next()) {
			LopTinChi lt = new LopTinChi(rs.getString("TENNGANH"),rs.getInt("SVTOITHIEU"),rs.getString("MAMH"),LocalDate.parse(String.valueOf(rs.getDate("NGAYBATDAU"))),rs.getInt("CA"),
					rs.getString("THU"),rs.getString("MAPHONG"),rs.getString("TENMH"),rs.getInt("SOTTH"),rs.getInt("SOTC"),rs.getInt("NHOM"));
			dsltc.add(lt);
		}
	
			//Statement st1 = conn.createStatement();
		ResultSet rs1 = st.executeQuery("exe_studentDK @mssv='N19DCCN122'"); 
		while(rs1.next()) {
			dangky dk = new dangky(rs1.getString("TENMH"),rs1.getString("MAMH"),rs1.getInt("SOTC"),rs1.getInt("NHOM"));
			dsdk.add(dk);
		}
		for(dangky d : dsdk) {
			stc+=d.getSTC();
		}
		model.addAttribute("tongtien",stc*480000);
		model.addAttribute("stc",stc);
		model.addAttribute("dangky",dsdk);
		model.addAttribute("dsltc",dsltc);
		model.addAttribute("kthuc",dsltc.size());
		return "dangky-monhoc";
	}
	
	//Function 
	//Ham chuan bi truoc khi render dang-ky-mon-hoc
	public void requestDK(ModelMap model,HttpServletRequest req) throws ClassNotFoundException, SQLException {
		String nganh="IT"; 
		try {
			nganh = req.getParameter("main-form").trim();
		}
		catch(Exception e){}
		List <LopTinChi>dsltc= new ArrayList<>();
		List <dangky>dsdk= new ArrayList<>();
		ServletRequest request;
		int stc=0;
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		this.conn = DriverManager.getConnection("jdbc:sqlserver://;databaseName=CTDLGT;"
	            + "username=sa;password=123;");
		Statement st = conn.createStatement();
		ResultSet rs = st.executeQuery("exec exe_ltcInfor @manganh='"+nganh+"'"); 
		while(rs.next()) {
			LopTinChi lt = new LopTinChi(rs.getString("TENNGANH"),rs.getInt("SVTOITHIEU"),rs.getString("MAMH"),LocalDate.parse(String.valueOf(rs.getDate("NGAYBATDAU"))),rs.getInt("CA"),
					rs.getString("THU"),rs.getString("MAPHONG"),rs.getString("TENMH"),rs.getInt("SOTTH"),rs.getInt("SOTC"),rs.getInt("NHOM"));
			dsltc.add(lt);
		}
	
			//Statement st1 = conn.createStatement();
		ResultSet rs1 = st.executeQuery("exe_studentDK @mssv='N19DCCN122'"); 
		while(rs1.next()) {
			dangky dk = new dangky(rs1.getString("TENMH"),rs1.getString("MAMH"),rs1.getInt("SOTC"),rs1.getInt("NHOM"));
			dsdk.add(dk);
		}
		for(dangky d : dsdk) {
			stc+=d.getSTC();
		}
		model.addAttribute("tongtien",stc*480000);
		model.addAttribute("stc",stc);
		model.addAttribute("dangky",dsdk);
		model.addAttribute("dsltc",dsltc);
		model.addAttribute("kthuc",dsltc.size());
	}
	@RequestMapping("dang-ky-mon-hoc-filter")
	public String filterdangky(HttpServletRequest request,ModelMap model) throws ClassNotFoundException, SQLException {
		requestDK(model, request);
		return "dangky-monhoc";
	}
	@RequestMapping("dang-ky-mon-hoc-save")
	public String luudangky(HttpServletRequest request,ModelMap model,@CookieValue("MSSV") String mssv,HttpServletResponse res) throws SQLException, ClassNotFoundException, IOException {
		HashMap<String,String> mh = new HashMap<>();
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		this.conn = DriverManager.getConnection("jdbc:sqlserver://;databaseName=CTDLGT;"
	            + "username=sa;password=123;");
		Statement st = conn.createStatement();
		ResultSet rs = st.executeQuery("exec exe_studentDK @mssv='"+mssv+"'"); 
		while(rs.next()) {
			mh.put(rs.getString("MAMH").trim(), String.valueOf(rs.getInt("NHOM")).trim());
			rs.getString("TENMH");rs.getInt("SOTC");
		}
		rs.close();
		for(String m  : mh.keySet()) {
			int cnt=0;
			for(Cookie c :request.getCookies()) {
				if(c.getName().trim().equals("JSESSIONID")||c.getName().trim().equals("MSSV")) {
					cnt++;
					continue;
				}
				if(m.trim().equals(c.getName().trim()) && mh.get(m).trim().equals(c.getValue().trim())) {	
					cnt++;
				}
			}
			if(cnt==0) {
				//try {
					PreparedStatement ps = conn.prepareStatement("exec exe_deleteInfor ?,?,?");
					ps.setQueryTimeout(100);
					ps.setString(1, m);
					ps.setInt(2, Integer.valueOf(mh.get(m).trim()));
					ps.setString(3, mssv);				
					ps.execute();
				//}
				//ResultSet rs2 = st.executeQuery("exec exe_deleteInfor @mamh='"+m+"'"+",@nhom="+Integer.valueOf(mh.get(m).trim())+",@mssv='"+mssv+"'"); }
				//catch(Exception e) {}
			}
		}
		for(Cookie c :request.getCookies()) {
			if(c.getName().trim().equals("JSESSIONID")||c.getName().trim().equals("MSSV")) continue;
			int cnt=0;
			for(String m : mh.keySet()) {
				if(m.trim().equals(c.getName().trim()) && mh.get(m).equals(c.getValue().trim())) {	
					cnt++;
				}
			}
			if(cnt==0) {
				try {
					PreparedStatement ps = conn.prepareStatement("exec exe_insertInfor ?,?,?");
					ps.setQueryTimeout(100);
					ps.setString(1, c.getName().trim());
					ps.setInt(2, Integer.valueOf(c.getValue().trim()));
					ps.setString(3, mssv.trim());				
					ps.execute();
				//ResultSet rs1 = st.executeQuery("exec exe_insertInfor @mamh='"+c.getName().trim()+"'"+",@nhom="+Integer.valueOf(c.getValue().trim())+",@mssv='"+mssv+"'"); 
				}
				catch(Exception e) {}
			}
		}
		
		requestDK(model, request);
		//res.sendRedirect("http://localhost:8080/CTDLGT/dang-ky-mon-hoc.htm");
		return "dangky-monhoc";
	}
	@RequestMapping("dang-ky-mon-hoc-delete")
	public String xoadangky(HttpServletRequest request,ModelMap model,@CookieValue("MSSV") String mssv) throws SQLException, ClassNotFoundException {
		HashMap<String,String> mh = new HashMap<>();
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		this.conn = DriverManager.getConnection("jdbc:sqlserver://;databaseName=CTDLGT;"
	            + "username=sa;password=123;");
		Statement st = conn.createStatement();
		ResultSet rs = st.executeQuery("exec exe_studentDK @mssv='"+mssv+"'"); 
		while(rs.next()) {
			mh.put(rs.getString("MAMH").trim(), String.valueOf(rs.getInt("NHOM")).trim());
			rs.getString("TENMH");rs.getInt("SOTC");
		}
		rs.close();
		for(String m  : mh.keySet()) {
			int cnt=0;
			for(Cookie c :request.getCookies()) {
				if(c.getName().trim().equals("JSESSIONID")||c.getName().trim().equals("MSSV")) {
					continue;
				}
				if(m.trim().equals(c.getName().trim()) && mh.get(m).trim().equals(c.getValue().trim())) {	
					PreparedStatement ps = conn.prepareStatement("exec exe_deleteInfor ?,?,?");
					ps.setQueryTimeout(100);
					ps.setString(1, m);
					ps.setInt(2, Integer.valueOf(mh.get(m).trim()));
					ps.setString(3, mssv);				
					ps.execute();
				}
			}
		}
		requestDK(model, request);
		return "dangky-monhoc";
	}
	
	//XEM HOC PHI--------------------------------------------------------------
	@RequestMapping("xem-hoc-phi")
	public String xemhocphi(ModelMap model,HttpServletRequest request,@CookieValue("MSSV") String mssv) throws ClassNotFoundException, SQLException {
		List <dangky>dsdk= new ArrayList<>();int stc=0;
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		this.conn = DriverManager.getConnection("jdbc:sqlserver://;databaseName=CTDLGT;"
	            + "username=sa;password=123;");
		Statement st = conn.createStatement();
		ResultSet rs1 = st.executeQuery("exe_studentDK @mssv="+mssv); 
		while(rs1.next()) {
			dangky dk = new dangky(rs1.getString("TENMH"),rs1.getString("MAMH"),rs1.getInt("SOTC"),rs1.getInt("NHOM"));
			dsdk.add(dk);
		}
		for(dangky d : dsdk) {
			stc+=d.getSTC();
		}
		model.addAttribute("tongtien",stc*480000);
		model.addAttribute("stc",stc);
		model.addAttribute("dsdk",dsdk);
		return "xemhocphi";
	}
	@RequestMapping("xem-tkb")
	public String xemtkb(@CookieValue("MSSV") String mssv,ModelMap model) throws ClassNotFoundException, SQLException {
		List<tkb> tk = new ArrayList<>(); 
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		this.conn = DriverManager.getConnection("jdbc:sqlserver://;databaseName=CTDLGT;"
	            + "username=sa;password=123;");
		Statement st = conn.createStatement();
		ResultSet rs = st.executeQuery("exec exe_tkb @mssv='"+mssv+"'");
		while(rs.next()) {
			tkb t = new tkb(rs.getString("MAPHONG"),rs.getString("TENMH"),rs.getString("THU"),rs.getInt("SOTC"),rs.getInt("CA"));
			tk.add(t);
			//String mAPHONG, String tENMH, String tHU, int sTC, int cA
		}
		int sang=0,trua=0,chieu=0;
		for(tkb t:tk) {
			if(t.getTHU().trim().equals("MON") && t.getCA()==1) { model.addAttribute("MON1",t);sang++;}
			else if(t.getTHU().trim().equals("MON") && t.getCA()==2) { model.addAttribute("MON2",t);trua++;}
			else if(t.getTHU().trim().equals("TUE") && t.getCA()==1) {model.addAttribute("TUE1",t);sang++;}
			else if(t.getTHU().trim().equals("TUE") && t.getCA()==2) { model.addAttribute("TUE2",t);trua++;}
			else if(t.getTHU().trim().equals("WED") && t.getCA()==1) { model.addAttribute("WED1",t);sang++;}
			else if(t.getTHU().trim().equals("WED") && t.getCA()==2) {model.addAttribute("WED2",t);trua++;}
			else if(t.getTHU().trim().equals("THU") && t.getCA()==1) { model.addAttribute("THU1",t);sang++;}
			else if(t.getTHU().trim().equals("THU") && t.getCA()==2) { model.addAttribute("THU2",t);trua++;}
			else if(t.getTHU().trim().equals("FRI") && t.getCA()==1) { model.addAttribute("FRI1",t);sang++;}
			else if(t.getTHU().trim().equals("FRI") && t.getCA()==2) {model.addAttribute("FRI2",t);trua++;}
			else if(t.getTHU().trim().equals("SAT") && t.getCA()==1) {model.addAttribute("SAT1",t);sang++;}
			else if(t.getTHU().trim().equals("SAT") && t.getCA()==2) { model.addAttribute("SAT2",t);trua++;}
			else if(t.getTHU().trim().equals("MON") && t.getCA()==3) { model.addAttribute("MON3",t);chieu++;}
			else if(t.getTHU().trim().equals("TUE") && t.getCA()==3) { model.addAttribute("TUE3",t);chieu++;}
			else if(t.getTHU().trim().equals("WED") && t.getCA()==3) { model.addAttribute("WED3",t);chieu++;}
			else if(t.getTHU().trim().equals("THU") && t.getCA()==3) { model.addAttribute("THU3",t);chieu++;}
			else if(t.getTHU().trim().equals("FRI") && t.getCA()==3) { model.addAttribute("FRI3",t);chieu++;}
			else if(t.getTHU().trim().equals("SAT") && t.getCA()==3) { model.addAttribute("SAT3",t);chieu++;}
		}
		model.addAttribute("sang",sang);
		model.addAttribute("trua",trua);
		model.addAttribute("chieu",chieu);
		return "xemtkb";
	}
	@RequestMapping("dang-xuat")
	public void dangxuat(HttpServletResponse res)  {
		try {
			res.sendRedirect("http://localhost:8080/CTDLGT/dang-nhap.htm");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
//		return "login";
	}
	@RequestMapping(value="thay-doi-mat-khau",method=RequestMethod.GET)
	public String getChangePass() {		
		return "changepass";
		
	}
	@RequestMapping(value="thong-tin-ca-nhan",method=RequestMethod.GET)
	public String getInfor(ModelMap model,@CookieValue("MSSV") String mssv) {
		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		} catch (ClassNotFoundException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		try {
			this.conn = DriverManager.getConnection("jdbc:sqlserver://;databaseName=CTDLGT;"
			        + "username=sa;password=123;");
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		Statement st=null;
		try {
			st = this.conn.createStatement();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			ResultSet rs = st.executeQuery("EXEC exe_thongtin @masv="+mssv);
			while (rs.next()) {
				model.addAttribute("malop",rs.getString("MALOP"));
				model.addAttribute("tenlop",rs.getString("TENLOP"));
				model.addAttribute("ho",rs.getString("HO"));
				model.addAttribute("tennganh",rs.getString("TENNGANH"));
				model.addAttribute("masv",rs.getString("MASV"));
				model.addAttribute("nienkhoa",rs.getString("NIENKHOA"));
				model.addAttribute("ten",rs.getString("TEN"));
				model.addAttribute("gioitinh",rs.getString("GIOITINH"));
				model.addAttribute("quequan",rs.getString("QUEQUAN"));
				model.addAttribute("tenkhoa",rs.getString("TENKHOA"));
				return "xemthongtin";
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "xemthongtin";
	}
	@RequestMapping(value="thay-doi-mat-khau",method=RequestMethod.POST)
	public String postChangePass(ModelMap model,HttpServletRequest request) throws ClassNotFoundException, SQLException {
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		this.conn = DriverManager.getConnection("jdbc:sqlserver://;databaseName=CTDLGT;"
	            + "username=sa;password=123;");
		Statement st = this.conn.createStatement();
		String chk="";
		String mk="";
		String chkmk = request.getParameter("mk");
		String mkmoi = request.getParameter("mkmoi");
		while(true) {
			ResultSet rs = st.executeQuery("SELECT * FROM TAIKHOANSV WHERE MASV='"+this.SV.getMSSV()+"'");
			try {
				while(rs.next()) {
					chk = rs.getString("TENTK");
					mk=rs.getString("MATKHAU");
				}
			}
			catch(Exception e) {}
			if(!mk.trim().equals(chkmk.trim())) {
				model.addAttribute("message",mk);
				return "changepass";
			}
			else {
				try {
					PreparedStatement ps = conn.prepareStatement("UPDATE TAIKHOANSV SET MATKHAU=? WHERE TENTK=?");
					ps.setString(1, mkmoi);
					ps.setString(2, chk);
					ps.executeUpdate();
				}
				catch(Exception e) {}
				return "home";
			}
		}
		
		//return "changepass";
	}
//	@RequestMapping(value="thong-ca-nhan",method=RequestMethod.GET)
//	public String getInDB(ModelMap model) throws ClassNotFoundException, SQLException {
//		List <String>dsmhoc  = new ArrayList<>();
//		List <String>dsgv  = new ArrayList<>();
//		List <String>dsct  = new ArrayList<>();
//		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
//		this.conn = DriverManager.getConnection("jdbc:sqlserver://;databaseName=CTDLGT;"
//	            + "username=sa;password=123;");
//		Statement st = conn.createStatement();
//		ResultSet rs = st.executeQuery("select IDLICH from LICHHOC");
//		while(rs.next()) {
//			dsmhoc.add(String.valueOf(rs.getInt("IDLICH")));
//		}
//		ResultSet rs1 = st.executeQuery("select MAPHONG from PHONG");
//		while(rs1.next()) {
//			dsgv.add(rs1.getString("MAPHONG"));
//		}
//		int cnt=1;
//		Date x = Date.valueOf( LocalDate.parse("2021-12-27"));
//		for(String s:dsmhoc) {
//			for(String s1:dsgv) {
//				PreparedStatement ps = conn.prepareStatement("INSERT INTO CT_LICHHOC(MAPHONG,IDLICH,IDCT,NGAYBATDAU) VALUES(?,?,?,?)");
//				ps.setString(1,  s1);	
//				ps.setInt(2, Integer.valueOf(s));
//				ps.setInt(3, cnt);
//				ps.setDate(4, x);
//				ps.executeUpdate();
//				cnt++;
//			}	
//		}
//		for(int i=1;i<=2;i++) {
//			for(String s2:dsmhoc) {
//				PreparedStatement ps = conn.prepareStatement("INSERT INTO LOPTINCHI(MALTC,NIENKHOA,HOCKY,MAMH,NHOM,MAGV,MAKHOA,SVTOITHIEU,HUYLOP,CTLICHHOC) "
//						+ "VALUES (?,?,?,?,?,?,?,?,?,?)");
//				ps.setInt(1,  cnt);	
//				ps.setString(2, "2021-2022");
//				ps.setInt(3, 2);
//				ps.setString(4, s2);
//				ps.setInt(5, i);
//				ps.setString(6, dsgv.get(dsmhoc.indexOf(s2)+i));
//				ps.setString(7, "IT2");
//				ps.setInt(8, 70*i);
//				ps.setBoolean(9, false);;
//				ps.setInt(10, cnt);
//				ps.executeUpdate();
//				cnt++;
//			}
//		}
//		return "home";
//	}
}
