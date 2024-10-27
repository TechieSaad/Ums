package UMS;


import java.util.List;
import java.util.Scanner;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;



public class App {
	
	static EntityManagerFactory emf = Persistence.createEntityManagerFactory("dev");
	static EntityManager em = emf.createEntityManager();
	static Scanner sc = new Scanner(System.in);

	public static void main(String[] args) {

		while (true) {
			System.out.println("Select Option");
			System.out.println("1) Login");
			System.out.println("2) Create Account");
			System.out.println("3) Delete Account By Id");
			System.out.println("4) View All Accounts");
			System.out.println("5) Exit");
			switch (sc.nextInt()) {
			case 1:login();
			break;
			case 2:insertApp();
			break;
			case 3:deleteById();
			break;
			case 4:selectAllApp();
			break;
			case 5:System.exit(0);
			break;
			default:System.err.println("Invalid Choice");
			break;
			}
		}
	}

	

	static void insertApp() {
		System.out.println("Enter the name ");
		String name = sc.next();
		System.out.println("enter the email");
		String email = sc.next();
		System.out.println("enter the password");
		String password = sc.next();
		EntityTransaction et = em.getTransaction();
		Student s = new Student(0, name, email, password);
		et.begin();
		Student dbus = em.merge(s);
		et.commit();

		System.out.println(dbus);
		System.out.println("Succesfully Inserted");

	}

	static void selectAllApp() {
		Query q = em.createQuery("from  User");
		List<Student> ul = q.getResultList();
		for (Student st : ul) {
			System.out.println(st);
		}

	}

	static void login() {
		System.out.println("enter the email ID");
		String email = sc.next();
		System.out.println("Enter the Password");
		String password = sc.next();

		Query q = em.createQuery("select u from User u where email=?1 and password=?2");
		q.setParameter(1, email);
		q.setParameter(2, password);
		Student s = (Student) q.getSingleResult();
		System.out.println(s);

	}

	static void deleteById() {
		System.out.println("enter the id ");
		int id = sc.nextInt();
		Student stu = em.find(Student.class, id);
		if (stu != null) {
			EntityTransaction et = em.getTransaction();
			et.begin();
			em.remove(stu);
			et.commit();
			System.out.println("deleted Successfull");
		} else {
			System.err.println("Invalid ID ");
		}

	}
}
