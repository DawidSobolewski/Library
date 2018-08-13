package pl.sobolewski.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.sobolewski.model.Author;

public interface AuthorRepository extends JpaRepository<Author, Long> {
}
