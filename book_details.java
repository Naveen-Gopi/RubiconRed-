import javax.persistence.*;
@Entity
@Table(name="user_details")
public class user_details(
@book_id
private integer book_id,
private integer isbn,
private string title,
private string 
private string
private string

public integer getbook_id(){
	return book_id ;
}

public void setbook_id(integer _book_id  ){
	this.book_id = _book_id;
}

public integer getisbn(){
	return  isbn;
}

public void setisbn(integer _isbn){
	this.isbn = _isbn;
}

public string gettitle(){
	return  ;
}

public void settitle(string ){
	this. = ;
}

public string gettitle(){
	return title ;
}

public void settitle(string _title ){
	this.title= _title;
}

public string getauthor(){
	return author ;
}

public void setauthor(string _author){
	this.author = _author;
}

public string getbook_type(){
	return book_type ;
}

public void setbook_type(string _book_type){
	this.book_type = _book_type;
}

public string getdescription(string description){
	return description ;
}

public void setdescription(string _description){
	this.description = _description;
}

);