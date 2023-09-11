package dev.pabferir.jooqreadmodelpoc.views;

import java.util.UUID;

public record AuthorView(UUID id,
                         String name,
                         Integer bookCount) {
}
