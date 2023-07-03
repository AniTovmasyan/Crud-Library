package am.nuaca.orm;

import am.nuaca.ConnectorDB;
import am.nuaca.orm.Book;

import java.sql.*;
import java.util.ArrayList;

public class BookDAO {
    private ArrayList<Book>bookList = new ArrayList<>();
    public void addBooks() throws SQLException {
        ConnectorDB connectorDB = new ConnectorDB();
        Connection con = connectorDB.connectDB();
        Statement stmt = con.createStatement();
        ResultSet rs10 = stmt.executeQuery("select * from books ");
        while (rs10.next()) {
            Book book = new Book();
            int bookid = rs10.getInt(1);
            String name = rs10.getString(2);
            String author = rs10.getString(3);
            String date = rs10.getString(4);
            book.setBookid(bookid);
            book.setName(name);
            book.setAuthor(author);
            book.setDate(date);
            bookList.add(book);
        }
    }
    public String printbooks(){
        String str =" ";
        for (int i = 0; i < bookList.size(); i++) {

            str +=bookList.get(i);
            str+= "<br>";
        }
        return  str;

    }

    public ArrayList<Book> getBookList() {
        return bookList;
    }
    public void insert(Book book) throws  SQLException {
        System.out.println(book);
        ConnectorDB connectorDB = new ConnectorDB();
        Connection con = connectorDB.connectDB();
        Statement stmt = con.createStatement();
        String name = book.getName();
        String author = book.getAuthor();
        String date = book.getDate();
        String query = "insert into books values (null,'"+name+"','"+author+"','"+date+"')";
        stmt.executeUpdate(query);
        System.out.println(query);
    }

    public void updateBook(int id, String name) throws SQLException{
        ConnectorDB connectorDB = new ConnectorDB();
        Connection con = connectorDB.connectDB();
        Statement stmt = con.createStatement();

        String query = "UPDATE books SET name = '" + name + "' WHERE bookid = " + id;
        System.out.println(query);
        stmt.executeUpdate(query);
    }

    public void deleteBook(int id) throws SQLException {
        ConnectorDB connectorDB = new ConnectorDB();
        Connection con = connectorDB.connectDB();
        Statement stmt = con.createStatement();

        String query = "delete from books where bookid =" + id;
        stmt.executeUpdate(query);
    }

    public Book searchBook(int id) throws SQLException {
        ConnectorDB connectorDB = new ConnectorDB();
        Connection con = connectorDB.connectDB();
        Statement stmt = con.createStatement();

        String query = "select *from books where bookid =" + id;
        ResultSet rs10 = stmt.executeQuery(query);
        rs10.next();
        Book book = new Book();
        int bookid = rs10.getInt(1);
        String name = rs10.getString(2);
        String author = rs10.getString(3);
        String date = rs10.getString(4);
        book.setBookid(bookid);
        book.setName(name);
        book.setAuthor(author);
        book.setDate(date);
        return book;
    }
}