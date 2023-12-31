package classes;

import java.io.InputStream;
import java.sql.Blob;

import org.apache.tomcat.util.http.fileupload.ByteArrayOutputStream;

public class users {
	private String username;
	private int mbnumber;
	private String email;
	private String roll;
	private Blob image;
	
	public void user (String _username, int _mbnumber, String _email, String _user, Blob _image ) {
		this.username = _username;
		this.mbnumber = _mbnumber;
		this.email = _email;
		this.roll = _user;
		this.image = _image;
		System.out.println(roll);
	}
	
	public byte[] GetImage() {
			
			try {
		        // Assuming your BLOB column is named "image"
		        InputStream inputStream = image.getBinaryStream();
		        ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
		        byte[] buffer = new byte[4096];
		        int bytesRead = -1;
	
		        while ((bytesRead = inputStream.read(buffer)) != -1) {
		            outputStream.write(buffer, 0, bytesRead);
		        }
	
		        return outputStream.toByteArray();
		    } catch (Exception e) {
		        e.printStackTrace(); // Handle this exception properly in a real application
		        return null;
		    }
	}
	
	public String getUsername() {
		return username;
	}
	public String getEmail() {
		return email;
	}
	public String getRoll() {
		return roll;
	}
	public int getMbnumber() {
		return mbnumber;
	}
	
}
