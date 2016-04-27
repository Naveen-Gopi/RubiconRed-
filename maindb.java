
import javax.persistence.EntityManager; 
import javax.persistence.EntityManagerFactory; 
import javax.persistence.Persistence; 


import org.apache.log4j.BasicConfigurator; 
import org.apache.log4j.Level; 
import org.apache.log4j.spi.RootLogger; 

import java.util.List; 


 
public class TestDb { 


     static{                // Static initializer 


         BasicConfigurator.configure(); 


         RootLogger.getRootLogger().setLevel(Level.WARN); 


     } 


   


     public static void main(String[] args) throws Exception { 


   


         EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("com.bookinfo.model"); 


         EntityManager entityManager = entityManagerFactory.createEntityManager(); 
		 
		 book_details book_details=new book_details();
		 
		 
   try { 


             entityManager.getTransaction().begin(); 


             entityManager.persist(book_details); 


            entityManager.getTransaction().commit(); 


         } catch (RuntimeException e) { 


              e.printStackTrace(); 


              entityManager.getTransaction().rollback(); 


   } 
   
   
         try { 


             book_details book3 = entityManager.find(book_details.class, 3); 


             System.out.println("Book Details  Id: " + book3.getbook_id() + " ISBN: " + book3.getisbn() + "Title: "+ book3.gettitle() + "author:"+book3.getauthor()+"book_type:"+book3.getbook_type()); 


             book_details book5 = entityManager.find(book_details.class, 5); 


             System.out.println("Book details name: " + book5.getbook_id() + " ISBN: " + book5.getisbn() + "Title: "+ book5.gettitle() + "author:"+book5.getauthor()+"book_type:"+book5.getbook_type()); 


         } catch (RuntimeException e) { 


             e.printStackTrace(); 


              entityManager.getTransaction().rollback(); 


         } finally { 


              entityManager.close(); 


         } 


     } 


 } 




  
