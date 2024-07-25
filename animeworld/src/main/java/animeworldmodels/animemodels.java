package animeworldmodels;

public class animemodels {
		private int id;
		private String name;
		private String email;
		private String password;
		private String confirmpassword;
		public int getId() {
			return id;
		}
		public void setId(int id) {
			this.id = id;
		}
		public String getName() {
			return name;
		}
		public void setName(String name) {
			this.name = name;
		}
		public String getEmail() {
			return email;
		}
		public void setEmail(String email) {
			this.email = email;
		}
		public String getPassword() {
			return password;
		}
		public void setPassword(String password) {
			this.password = password;
		}
		public String getConfirmpassword() {
			return confirmpassword;
		}
		public void setConfirmpassword(String confirmpassword) {
			this.confirmpassword = confirmpassword;
		}
		public animemodels(int id, String name, String email, String password, String confirmpassword) {
			super();
			this.id = id;
			this.name = name;
			this.email = email;
			this.password = password;
			this.confirmpassword = confirmpassword;
		}
		public animemodels() {
			super();
			// TODO Auto-generated constructor stub
		}
		
		

	}

