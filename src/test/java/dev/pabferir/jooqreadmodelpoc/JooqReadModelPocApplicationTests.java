package dev.pabferir.jooqreadmodelpoc;

import dev.pabferir.jooqreadmodelpoc.queryhandlers.*;
import dev.pabferir.jooqreadmodelpoc.views.AuthorView;
import dev.pabferir.jooqreadmodelpoc.views.BookView;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.context.annotation.Import;
import org.testcontainers.junit.jupiter.Testcontainers;

import java.util.List;
import java.util.Optional;
import java.util.UUID;

import static org.assertj.core.api.Assertions.assertThat;

@Import(TestJooqReadModelPocApplication.class)
@SpringBootTest(webEnvironment = SpringBootTest.WebEnvironment.RANDOM_PORT)
@Testcontainers
class JooqReadModelPocApplicationTests {
    @Autowired
    private BookViewQueryHandler bookViewQueryHandler;
    @Autowired
    private AuthorViewQueryHandler authorViewQueryHandler;

    @Test
    void bookViewQueryHandler_should_returnAllBookViews() {
        // Arrange
        GetAllBookViewsQuery query = new GetAllBookViewsQuery();

        // Act
        List<BookView> result = bookViewQueryHandler.handle(query);

        // Assert
        assertThat(result)
                .isNotEmpty()
                .hasSize(10);
    }

    @Test
    void bookViewQueryHandler_should_returnEmptyOptional_when_bookDoesNotExist() {
        // Arrange
        GetBookViewByIdQuery query = new GetBookViewByIdQuery(
                UUID.fromString("ea1560dc-40bf-41bd-810d-fbb887eeb12b"));

        // Act
        Optional<BookView> result = bookViewQueryHandler.handle(query);

        // Assert
        assertThat(result)
                .isEmpty();
    }

    @Test
    void bookViewQueryHandler_should_returnPresentOptional_when_bookDoesExist() {
        // Arrange
        GetBookViewByIdQuery query = new GetBookViewByIdQuery(
                UUID.fromString("9cdbee9d-f1f0-4285-abe0-64018c10e327"));

        // Act
        Optional<BookView> result = bookViewQueryHandler.handle(query);

        // Assert
        assertThat(result)
                .isPresent();
    }

    @Test
    void authorViewQueryHandler_should_returnAllAuthorViews() {
        // Arrange
        GetAllAuthorViewsQuery query = new GetAllAuthorViewsQuery();

        // Act
        List<AuthorView> result = authorViewQueryHandler.handle(query);

        // Assert
        assertThat(result)
                .isNotEmpty()
                .hasSize(13);
    }

    @Test
    void authorViewQueryHandler_should_returnEmptyOptional_when_authorDoesNotExist() {
        // Arrange
        GetAuthorViewByIdQuery query = new GetAuthorViewByIdQuery(
                UUID.fromString("ea1560dc-40bf-41bd-810d-fbb887eeb12b"));

        // Act
        Optional<AuthorView> result = authorViewQueryHandler.handle(query);

        // Assert
        assertThat(result)
                .isEmpty();
    }

    @Test
    void authorViewQueryHandler_should_returnPresentOptional_when_authorDoesExist() {
        // Arrange
        GetAuthorViewByIdQuery query = new GetAuthorViewByIdQuery(
                UUID.fromString("9d28fde0-868a-4d17-95a1-e1e9ed08f56a"));

        // Act
        Optional<AuthorView> result = authorViewQueryHandler.handle(query);

        // Assert
        assertThat(result)
                .isPresent();
    }

}
