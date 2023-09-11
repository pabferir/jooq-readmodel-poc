package dev.pabferir.jooqreadmodelpoc.mappers;

import dev.pabferir.jooqreadmodelpoc.views.AuthorView;
import org.jooq.Record4;
import org.jooq.RecordMapper;
import org.springframework.stereotype.Component;

import java.util.UUID;

@Component
public class AuthorViewMapper
        implements RecordMapper<Record4<UUID, String, String, Integer>, AuthorView> {
    @Override
    public AuthorView map(Record4<UUID, String, String, Integer> jooqRecord) {
        return new AuthorView(jooqRecord.component1(),
                              jooqRecord.component2() + " " + jooqRecord.component3(),
                              jooqRecord.component4());
    }
}
