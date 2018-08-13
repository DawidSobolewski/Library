package pl.sobolewski.service;

import pl.sobolewski.model.Book;

import java.util.List;

public interface IBookService {
    void save(Book book);

    List<String> findAllCategories();

    List<Book> findAll();

    void delete(Long id);
}
