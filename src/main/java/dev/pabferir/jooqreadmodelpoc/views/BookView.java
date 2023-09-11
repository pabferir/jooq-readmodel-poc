package dev.pabferir.jooqreadmodelpoc.views;

import java.util.List;
import java.util.UUID;

public record BookView(UUID id,
                       String title,
                       String author,
                       String originalLanguage,
                       Integer firstPublishedIn,
                       List<String> genres) {
}
