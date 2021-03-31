package com.matic.book;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class BookService {
    @Autowired
    private BookRepository bookRepository;

    public List<Book> listAll(){
        return (List<Book>) bookRepository.findAll();
    }

    public void save(Book book){
        bookRepository.save(book);
    }

    public Book get(long id){
        Optional<Book> result = bookRepository.findById(id);
        return result.get();
    }

    public void delete(long id){
        bookRepository.deleteById(id);
    }


}
