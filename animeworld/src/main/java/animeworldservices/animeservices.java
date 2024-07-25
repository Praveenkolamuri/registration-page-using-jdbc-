package animeworldservices;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import animeworldmodels.animemodels;
public class animeservices {
		private Connection conn;

		public animeservices(Connection conn) {
			super();
			this.conn = conn;
		}
		
		// Method for posting of data
		public boolean adding(animemodels sw) {
			boolean f = false;
			try {
				String sql = "insert into animeregistration(name, email, password, confirmpassword) values(?, ?, ?, ?)";
				PreparedStatement pmst = conn.prepareStatement(sql);
				pmst.setString(1, sw.getName());
				pmst.setString(2, sw.getEmail());
				pmst.setString(3, sw.getPassword());
				pmst.setString(4, sw.getConfirmpassword());
				
				 int i = pmst.executeUpdate();
				 if (i > 0) {
					  f = true;
				 }
			} catch (Exception e) {
				e.printStackTrace();
			}
			return f;
		}

		// Method for getting data
//		public List<animemodels> getall(){
//			List<animemodels> ll = new ArrayList<animemodels>();
//			animemodels s = null;
//			try {
//				String sql = "select * from animeregistration";
//				PreparedStatement pmst = conn.prepareStatement(sql);
//				ResultSet RS = pmst.executeQuery();
//				while (RS.next()) {
//					s = new animemodels();
//					s.setId(RS.getInt(1));
//					s.setName(RS.getString(2));
//					s.setEmail(RS.getString(3));
//					s.setPassword(RS.getString(4));
//					s.setConfirmpassword(RS.getString(5));
//					ll.add(s);		
//				}
//			} catch (Exception e) {
//				e.printStackTrace();
//			}
//			return ll;
//		}
		
		
		public List<animemodels> getall(){
			
			List<animemodels> ll = new ArrayList<animemodels>();
			
			animemodels m =null;
			
			try {
				
				String sql ="select * from animeregistration";
				
				PreparedStatement pmst = conn.prepareStatement(sql);
				
				ResultSet rs = pmst.executeQuery();
				
				while (rs.next()) {
					
					m = new animemodels();
					
					m.setId(rs.getInt(1));
					m.setName(rs.getString(2));
					m.setEmail(rs.getString(3));
					m.setPassword(rs.getString(4));
					m.setConfirmpassword(rs.getString(5));
					
					ll.add(m);
					
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
			return ll;
		}
		
		// Method for getting data from Id
		public animemodels getbyId(int Id) {
			animemodels s = null;
			try {
				String sql = "select * from animeregistration where id = ?";
				PreparedStatement pmst = conn.prepareStatement(sql);
				pmst.setInt(1, Id);
				ResultSet RS = pmst.executeQuery();
				while (RS.next()) {
					s = new animemodels();
					s.setId(RS.getInt(1));
					s.setName(RS.getString(2));
					s.setEmail(RS.getString(3));
					s.setPassword(RS.getString(4));
					s.setConfirmpassword(RS.getString(5));
					
				}
				
			} catch (Exception e) {
				e.printStackTrace();
			}
			return s;
			
		}
		
		// Method for deleting data through Id
		public boolean deletebyId(int Id) {
			boolean f = false;
			try {
				String sql = "delete from animeregistration where id = ?";
				PreparedStatement pmst = conn.prepareStatement(sql);
				pmst.setInt(1, Id);
				int i = pmst.executeUpdate();
				if (i > 0) {
					f = true;
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
			return f;
		}
		
		// Method for deleting data through Email
		public boolean deleteByEmail(String email) {
		    boolean f = false;
		    try {
		        String sql = "DELETE FROM animeregistration WHERE email = ?";
		        PreparedStatement pmst = conn.prepareStatement(sql);
		        pmst.setString(1, email);
		        int i = pmst.executeUpdate();
		        if (i > 0) {
		            f = true;
		        }
		    } catch (Exception e) {
		        e.printStackTrace();
		    }
		    return f;
		}

		// Method for update data through Id
		public boolean updateswiggy(animemodels sw) {
			boolean f = false;
			try {
				String sql = "update animeregistration set name = ?, email = ?, password = ?,confirmpassword = ? where id = ?";
				PreparedStatement pmst = conn.prepareStatement(sql);
				pmst.setString(1, sw.getName());
				pmst.setString(2, sw.getEmail());
				pmst.setString(3, sw.getPassword());
				pmst.setString(4, sw.getConfirmpassword());
				pmst.setInt(5, sw.getId());
				int i = pmst.executeUpdate();
				if (i > 0) {
					f = true;
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
			return f;
		}
		
	}

