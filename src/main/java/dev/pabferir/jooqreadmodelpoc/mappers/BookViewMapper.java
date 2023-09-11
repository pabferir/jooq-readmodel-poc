package dev.pabferir.jooqreadmodelpoc.mappers;

import dev.pabferir.jooqreadmodelpoc.views.BookView;
import org.jooq.Record7;
import org.jooq.RecordMapper;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.UUID;

@Component
public class BookViewMapper
        implements RecordMapper<Record7<UUID, String, String, String, String, Integer, String[]>, BookView> {

    @Override
    public BookView map(Record7<UUID, String, String, String, String, Integer, String[]> jooqRecord) {
        return new BookView(jooqRecord.component1(),
                            jooqRecord.component2(),
                            jooqRecord.component3() + " " + jooqRecord.component4(),
                            jooqRecord.component5(),
                            jooqRecord.component6(),
                            List.of(jooqRecord.component7()));
    }
}
