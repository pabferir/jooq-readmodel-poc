package dev.pabferir.jooqreadmodelpoc.queryhandlers;

import dev.pabferir.jooqreadmodelpoc.mappers.BookViewMapper;
import dev.pabferir.jooqreadmodelpoc.views.BookView;
import org.jooq.DSLContext;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.Optional;

import static dev.pabferir.jooqreadmodelpoc.Tables.*;
import static org.jooq.impl.DSL.arrayAgg;

@Component
public final class BookViewQueryHandler {
    private final DSLContext dslContext;
    private final BookViewMapper bookViewMapper;

    public BookViewQueryHandler(DSLContext dslContext,
                                BookViewMapper bookViewMapper) {
        this.dslContext = dslContext;
        this.bookViewMapper = bookViewMapper;
    }

    @SuppressWarnings("java:S1172")
    public List<BookView> handle(GetAllBookViewsQuery ignored) {
        return dslContext.select(BOOK.ID,
                                 BOOK.TITLE,
                                 AUTHOR.FIRST_NAME,
                                 AUTHOR.LAST_NAME,
                                 LANGUAGE.NAME,
                                 BOOK.FIRST_PUBLISHED_IN,
                                 arrayAgg(GENRE.NAME)
                                )
                         .from(BOOK)
                         .leftOuterJoin(AUTHOR)
                         .on(BOOK.AUTHOR_ID.eq(AUTHOR.ID))
                         .leftOuterJoin(LANGUAGE)
                         .on(BOOK.LANGUAGE_ID.eq(LANGUAGE.ID))
                         .leftOuterJoin(BOOK_GENRE)
                         .on(BOOK.ID.eq(BOOK_GENRE.BOOK_ID))
                         .leftOuterJoin(GENRE)
                         .on(BOOK_GENRE.GENRE_ID.eq(GENRE.ID))
                         .groupBy(AUTHOR.FIRST_NAME,
                                  AUTHOR.LAST_NAME,
                                  LANGUAGE.NAME,
                                  BOOK.FIRST_PUBLISHED_IN,
                                  BOOK.ID)
                         .orderBy(BOOK.FIRST_PUBLISHED_IN.asc())
                         .fetch(bookViewMapper);
    }

    public Optional<BookView> handle(GetBookViewByIdQuery query) {
        BookView queryResult = dslContext.select(BOOK.ID,
                                                 BOOK.TITLE,
                                                 AUTHOR.FIRST_NAME,
                                                 AUTHOR.LAST_NAME,
                                                 LANGUAGE.NAME,
                                                 BOOK.FIRST_PUBLISHED_IN,
                                                 arrayAgg(GENRE.NAME)
                                                )
                                         .from(BOOK)
                                         .leftOuterJoin(AUTHOR)
                                         .on(BOOK.AUTHOR_ID.eq(AUTHOR.ID))
                                         .leftOuterJoin(LANGUAGE)
                                         .on(BOOK.LANGUAGE_ID.eq(LANGUAGE.ID))
                                         .leftOuterJoin(BOOK_GENRE)
                                         .on(BOOK.ID.eq(BOOK_GENRE.BOOK_ID))
                                         .leftOuterJoin(GENRE)
                                         .on(BOOK_GENRE.GENRE_ID.eq(GENRE.ID))
                                         .where(BOOK.ID.eq(query.bookId()))
                                         .groupBy(AUTHOR.FIRST_NAME,
                                                  AUTHOR.LAST_NAME,
                                                  LANGUAGE.NAME,
                                                  BOOK.FIRST_PUBLISHED_IN,
                                                  BOOK.ID)
                                         .fetchOne(bookViewMapper);

        return queryResult == null
               ? Optional.empty()
               : Optional.of(queryResult);
    }
}
