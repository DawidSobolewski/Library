package pl.sobolewski.service;

import pl.sobolewski.model.Author;

import java.util.List;

public interface IAuthorService {
    List<Author> findAll();
}
