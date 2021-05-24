package dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import dao.UserSystemDAO;
import jdbc.ConnectionUtils;
import model.User;
import model.UserSystem;

public class UserSystemDAOImpl implements UserSystemDAO {

	@Override
	public void insert(UserSystem system) {
		try {

			Connection conn = ConnectionUtils.getConnection();
			String sql = "insert into it_systems(name, description, user_id) values (?, ?, ?)";
			PreparedStatement preparedStatement = conn.prepareStatement(sql);

			preparedStatement.setString(1, system.getName());
			preparedStatement.setString(2, system.getDescription());
			preparedStatement.setInt(3, system.getUser_id());
			preparedStatement.executeUpdate();

		} catch (Exception e) {
			System.out.println(e.getMessage());
			e.printStackTrace();
		}
	}

	@Override
	public void update(UserSystem system) {
		try {

			Connection conn = ConnectionUtils.getConnection();
			String sql = "update it_systems set name = ?, description = ? where id = ?";
			PreparedStatement preparedStatement = conn.prepareStatement(sql);

			preparedStatement.setString(1, system.getName());
			preparedStatement.setString(2, system.getDescription());
			preparedStatement.setInt(3, system.getId());
			preparedStatement.executeUpdate();

		} catch (Exception e) {
			System.out.println(e.getMessage());
			e.printStackTrace();
		}

	}

	@Override
	public void delete(int id) {
		try {

			Connection conn = ConnectionUtils.getConnection();
			String sql = "delete from it_systems where id = ?";
			PreparedStatement preparedStatement = conn.prepareStatement(sql);

			preparedStatement.setInt(1, id);
			preparedStatement.executeUpdate();

		} catch (Exception e) {
			System.out.println(e.getMessage());
			e.printStackTrace();
		}

	}

	@Override
	public List<UserSystem> get(int user_id) {
		try {

			Connection conn = ConnectionUtils.getConnection();
			String sql = "select * from it_systems where user_id = ?";
			PreparedStatement preparedStatement = conn.prepareStatement(sql);

			preparedStatement.setInt(1, user_id);
			ResultSet resultSet = preparedStatement.executeQuery();

			List<UserSystem> list = new ArrayList<UserSystem>();
			while (resultSet.next()) {
				int id = resultSet.getInt("id");
				String name = resultSet.getString("name");
				String description = resultSet.getString("description");
//				int user_id = resultSet.getInt("user_id");
				String created_time = resultSet.getString("created_time");
				String modified_time = resultSet.getString("modified_time");

				UserSystem system = new UserSystem(id, name, description, user_id, created_time, modified_time);
				list.add(system);
//				System.out.println(system);
			}
			return list;
		} catch (Exception e) {
			System.out.println(e.getMessage());
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public UserSystem getUserSystem(int id) {
		try {

			Connection conn = ConnectionUtils.getConnection();
			String sql = "select * from it_systems where id = ?";
			PreparedStatement preparedStatement = conn.prepareStatement(sql);

			preparedStatement.setInt(1, id);
			ResultSet resultSet = preparedStatement.executeQuery();

			if (resultSet.next()) {
//				int id = resultSet.getInt("id");
				String name = resultSet.getString("name");
				String description = resultSet.getString("description");
				int user_id = resultSet.getInt("user_id");
				String created_time = resultSet.getString("created_time");
				String modified_time = resultSet.getString("modified_time");

				UserSystem system = new UserSystem(id, name, description, user_id, created_time, modified_time);
				return system;
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
			e.printStackTrace();
		}
		return null;
	}
	
	

}
