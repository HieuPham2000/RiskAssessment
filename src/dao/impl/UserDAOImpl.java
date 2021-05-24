package dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import dao.UserDAO;
import jdbc.ConnectionUtils;
import model.User;

public class UserDAOImpl implements UserDAO {

	@Override
	public void insert(User admin) {
		// TODO Auto-generated method stub

	}

	@Override
	public void update(User admin) {
		// TODO Auto-generated method stub

	}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub

	}

	@Override
	public User get(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public User get(String username) {
		
		try {
			
		Connection conn = ConnectionUtils.getConnection();
		String sql = "select * from users where username = ?";
		PreparedStatement preparedStatement = conn.prepareStatement(sql);
		
		preparedStatement.setString(1, username);
		ResultSet resultSet = preparedStatement.executeQuery();
	
		if(resultSet.next()) {
			int id = resultSet.getInt("id");
			String password = resultSet.getString("password");
			String email = resultSet.getString("email");
			String name = resultSet.getString("name");
			String position = resultSet.getString("position");
			String created_time = resultSet.getString("created_time");
			String modified_time = resultSet.getString("modified_time");
			
			User user = new User(id, email, username, password, name, position, created_time, modified_time);
			return user;
		}
		
		} catch (Exception e) {
			// TODO: handle exception
		}
		return null;
	}
	
	@Override
	public User get(String username, String password) {
		
		try {
			
		Connection conn = ConnectionUtils.getConnection();
		String sql = "select * from users where username = ? and password = ?";
		PreparedStatement preparedStatement = conn.prepareStatement(sql);
		
		preparedStatement.setString(1, username);
		preparedStatement.setString(2, password);
		ResultSet resultSet = preparedStatement.executeQuery();
	
		if(resultSet.next()) {
			int id = resultSet.getInt("id");
			String email = resultSet.getString("email");
			String name = resultSet.getString("name");
			String position = resultSet.getString("position");
			String created_time = resultSet.getString("created_time");
			String modified_time = resultSet.getString("modified_time");
			
			User user = new User(id, email, username, password, name, position, created_time, modified_time);
			return user;
		}
		
		} catch (Exception e) {
			// TODO: handle exception
		}
		return null;
	}
	

}
