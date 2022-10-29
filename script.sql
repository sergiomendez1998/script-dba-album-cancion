create table Artista
(
    id             int auto_increment
        primary key,
    nombre         varchar(255) not null,
    genero         varchar(255) not null,
    edad           int          not null,
    nacionalidad   varchar(255) null,
    creado_el      date         null,
    actualizado_el date         null
);

create table Album
(
    id             int auto_increment
        primary key,
    nombre         varchar(255) null,
    anio           int          not null,
    artista_id     int          null,
    creado_el      date         null,
    actualizado_el date         null,
    constraint Album_artista_fk
        foreign key (artista_id) references Artista (id)
            on update cascade on delete cascade
);

create table Genero
(
    id             int auto_increment
        primary key,
    nombre         varchar(255) not null,
    creado_el      date         null,
    actualizado_el date         null
);

create table Cancion
(
    id             int auto_increment
        primary key,
    nombre         varchar(255) null,
    genero_id      int          null,
    artista_id     int          null,
    album_id       int          null,
    creado_el      date         null,
    actualizado_el date         null,
    constraint Cancion_album_fk
        foreign key (album_id) references Album (id)
            on update cascade on delete cascade,
    constraint Cancion_artista_fk
        foreign key (artista_id) references Artista (id)
            on update cascade on delete cascade,
    constraint Cancion_genero_fk
        foreign key (genero_id) references Genero (id)
            on update cascade on delete cascade
);


