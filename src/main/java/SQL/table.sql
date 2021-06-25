create table comments (
                          collection_id bigint not null,
                          user_id bigint not null,
                          id bigint not null,
                          comment varchar(255),
                          primary key (collection_id, user_id))
    engine=InnoDB
create table notes (
                       id bigint not null auto_increment,
                       note varchar(255) not null,
                       time_stamp varchar(255),
                       section_id bigint,
                       video_id bigint,
                       primary key (id))
    engine=InnoDB
create table notes_tags (
                            note_id bigint not null,
                            tag_id bigint not null)
    engine=InnoDB
create table sections (
                          id bigint not null auto_increment,
                          title varchar(255) not null,
                          collection_id bigint,
                          primary key (id))
    engine=InnoDB
create table tags (
                      id bigint not null
                          auto_increment,
                      tag varchar(255) not null,
                      primary key (id))
    engine=InnoDB
create table users (
                       id bigint not null auto_increment,
                       email varchar(255) not null,
                       first_name varchar(255) not null,
                       is_admin bit not null,
                       last_name varchar(255) not null,
                       password varchar(255) not null,
                       user_image varchar(255) not null,
                       username varchar(255) not null,
                       primary key (id))
    engine=InnoDB
create table videos (
                        id bigint not null auto_increment, video_url varchar(255) not null, section_id bigint, primary key (id)) engine=InnoDB


create table collections (
                             id bigint not null auto_increment,
                             description varchar(255) not null,
                             image varchar(255) not null,
                             is_private bit not null,
                             title varchar(255) not null,
                             user_id bigint,
                             primary key (id)) engine=InnoDB