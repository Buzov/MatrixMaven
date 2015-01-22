package util;

import org.hibernate.HibernateException;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class HibernateUtil {
    private static SessionFactory sessionFactory = null;
    
    static {
        try {
                //creates the session factory from hibernate.cfg.xml
                sessionFactory = new Configuration().configure().buildSessionFactory();
        } catch (HibernateException e) {
              e.printStackTrace();
        }
    }

    public static SessionFactory getSessionFactory() {
        return sessionFactory;
    }
}