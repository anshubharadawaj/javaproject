package packs.dao;


import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import packs.model.User;

@Repository
public class UserDAOImpl implements UserDAO {
	
	@Autowired
	SessionFactory sfact;
	Session sess;
	Transaction tx;
	
	public void saveUser(User uobj) {
		sess=sfact.openSession();
		tx=sess.beginTransaction();
		sess.save(uobj);
		tx.commit();
		sess.close();
	}

	public List<User> getAllUser() {
		return (List<User>)this.sfact.getCurrentSession().createQuery("from User").list();
		
	}

	

	
}
