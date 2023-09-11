package dev.pabferir.jooqreadmodelpoc.queryhandlers;

import dev.pabferir.jooqreadmodelpoc.mappers.AuthorViewMapper;
import dev.pabferir.jooqreadmodelpoc.views.AuthorView;
import org.jooq.DSLContext;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.Optional;

import static dev.pabferir.jooqreadmodelpoc.Tables.AUTHOR;
import static dev.pabferir.jooqreadmodelpoc.Tables.BOOK;
import static org.jooq.impl.DSL.count;

@Component
public final class AuthorViewQueryHandler {
    private final DSLContext dslContext;
    private final AuthorViewMapper authorViewMapper;

    public AuthorViewQueryHandler(DSLContext dslContext,
                                  AuthorViewMapper authorViewMapper) {
        this.dslContext = dslContext;
        this.authorViewMapper = authorViewMapper;
    }

    @SuppressWarnings("java:S1172")
    public List<AuthorView> handle(GetAllAuthorViewsQuery ignored) {
        return dslContext.select(AUTHOR.ID,
                                 AUTHOR.FIRST_NAME,
                                 AUTHOR.LAST_NAME,
                                 count(BOOK.ID))
                         .from(AUTHOR)
                         .leftOuterJoin(BOOK)
                         .on(AUTHOR.ID.eq(BOOK.AUTHOR_ID))
                         .groupBy(AUTHOR.ID)
                         .orderBy(AUTHOR.LAST_NAME.asc())
                         .fetch(authorViewMapper);
    }

    public Optional<AuthorView> handle(GetAuthorViewByIdQuery query) {
        AuthorView queryResult =
                dslContext.select(AUTHOR.ID,
                                  AUTHOR.FIRST_NAME,
                                  AUTHOR.LAST_NAME,
                                  count(BOOK.ID))
                          .from(AUTHOR)
                          .leftOuterJoin(BOOK)
                          .on(AUTHOR.ID.eq(BOOK.AUTHOR_ID))
                          .where(AUTHOR.ID.eq(query.authorId()))
                          .groupBy(AUTHOR.ID)
                          .orderBy(AUTHOR.LAST_NAME.asc())
                          .fetchOne(authorViewMapper);

        return queryResult == null
               ? Optional.empty()
               : Optional.of(queryResult);
    }
}
