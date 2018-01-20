package packs.dao;

import java.util.List;

import packs.model.User;

public interface UserDAO {

	public void saveUser(User uobj);
	public List<User> getAllUser();

}
