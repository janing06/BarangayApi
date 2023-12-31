PGDMP     6                    {            barangay_api_db    15.2    15.2     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    45294    barangay_api_db    DATABASE     �   CREATE DATABASE barangay_api_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE barangay_api_db;
                postgres    false                        2615    18647    tiger    SCHEMA        CREATE SCHEMA tiger;
    DROP SCHEMA tiger;
                postgres    false                        2615    18903 
   tiger_data    SCHEMA        CREATE SCHEMA tiger_data;
    DROP SCHEMA tiger_data;
                postgres    false                        2615    18329    topology    SCHEMA        CREATE SCHEMA topology;
    DROP SCHEMA topology;
                postgres    false            �           0    0    SCHEMA topology    COMMENT     9   COMMENT ON SCHEMA topology IS 'PostGIS Topology schema';
                   postgres    false    19                        3079    18492    address_standardizer 	   EXTENSION     H   CREATE EXTENSION IF NOT EXISTS address_standardizer WITH SCHEMA public;
 %   DROP EXTENSION address_standardizer;
                   false            �           0    0    EXTENSION address_standardizer    COMMENT     �   COMMENT ON EXTENSION address_standardizer IS 'Used to parse an address into constituent elements. Generally used to support geocoding address normalization step.';
                        false    6                        3079    18636    fuzzystrmatch 	   EXTENSION     A   CREATE EXTENSION IF NOT EXISTS fuzzystrmatch WITH SCHEMA public;
    DROP EXTENSION fuzzystrmatch;
                   false                        0    0    EXTENSION fuzzystrmatch    COMMENT     ]   COMMENT ON EXTENSION fuzzystrmatch IS 'determine similarities and distance between strings';
                        false    11                        3079    19047    h3 	   EXTENSION     6   CREATE EXTENSION IF NOT EXISTS h3 WITH SCHEMA public;
    DROP EXTENSION h3;
                   false                       0    0    EXTENSION h3    COMMENT     9   COMMENT ON EXTENSION h3 IS 'H3 bindings for PostgreSQL';
                        false    13                        3079    16399    postgis 	   EXTENSION     ;   CREATE EXTENSION IF NOT EXISTS postgis WITH SCHEMA public;
    DROP EXTENSION postgis;
                   false                       0    0    EXTENSION postgis    COMMENT     ^   COMMENT ON EXTENSION postgis IS 'PostGIS geometry and geography spatial types and functions';
                        false    2                        3079    19159 
   h3_postgis 	   EXTENSION     >   CREATE EXTENSION IF NOT EXISTS h3_postgis WITH SCHEMA public;
    DROP EXTENSION h3_postgis;
                   false    13    2                       0    0    EXTENSION h3_postgis    COMMENT     =   COMMENT ON EXTENSION h3_postgis IS 'H3 PostGIS integration';
                        false    14            
            3079    18630    ogr_fdw 	   EXTENSION     ;   CREATE EXTENSION IF NOT EXISTS ogr_fdw WITH SCHEMA public;
    DROP EXTENSION ogr_fdw;
                   false                       0    0    EXTENSION ogr_fdw    COMMENT     L   COMMENT ON EXTENSION ogr_fdw IS 'foreign-data wrapper for GIS data access';
                        false    10                        3079    18000 	   pgrouting 	   EXTENSION     =   CREATE EXTENSION IF NOT EXISTS pgrouting WITH SCHEMA public;
    DROP EXTENSION pgrouting;
                   false    2                       0    0    EXTENSION pgrouting    COMMENT     9   COMMENT ON EXTENSION pgrouting IS 'pgRouting Extension';
                        false    4                        3079    18524 
   pointcloud 	   EXTENSION     >   CREATE EXTENSION IF NOT EXISTS pointcloud WITH SCHEMA public;
    DROP EXTENSION pointcloud;
                   false                       0    0    EXTENSION pointcloud    COMMENT     G   COMMENT ON EXTENSION pointcloud IS 'data type for lidar point clouds';
                        false    8            	            3079    18619    pointcloud_postgis 	   EXTENSION     F   CREATE EXTENSION IF NOT EXISTS pointcloud_postgis WITH SCHEMA public;
 #   DROP EXTENSION pointcloud_postgis;
                   false    2    8                       0    0    EXTENSION pointcloud_postgis    COMMENT     n   COMMENT ON EXTENSION pointcloud_postgis IS 'integration for pointcloud LIDAR data and PostGIS geometry data';
                        false    9                        3079    17443    postgis_raster 	   EXTENSION     B   CREATE EXTENSION IF NOT EXISTS postgis_raster WITH SCHEMA public;
    DROP EXTENSION postgis_raster;
                   false    2                       0    0    EXTENSION postgis_raster    COMMENT     M   COMMENT ON EXTENSION postgis_raster IS 'PostGIS raster types and functions';
                        false    3                        3079    18499    postgis_sfcgal 	   EXTENSION     B   CREATE EXTENSION IF NOT EXISTS postgis_sfcgal WITH SCHEMA public;
    DROP EXTENSION postgis_sfcgal;
                   false    2            	           0    0    EXTENSION postgis_sfcgal    COMMENT     C   COMMENT ON EXTENSION postgis_sfcgal IS 'PostGIS SFCGAL functions';
                        false    7                        3079    18648    postgis_tiger_geocoder 	   EXTENSION     I   CREATE EXTENSION IF NOT EXISTS postgis_tiger_geocoder WITH SCHEMA tiger;
 '   DROP EXTENSION postgis_tiger_geocoder;
                   false    2    20    11            
           0    0     EXTENSION postgis_tiger_geocoder    COMMENT     ^   COMMENT ON EXTENSION postgis_tiger_geocoder IS 'PostGIS tiger geocoder and reverse geocoder';
                        false    12                        3079    18330    postgis_topology 	   EXTENSION     F   CREATE EXTENSION IF NOT EXISTS postgis_topology WITH SCHEMA topology;
 !   DROP EXTENSION postgis_topology;
                   false    2    19                       0    0    EXTENSION postgis_topology    COMMENT     Y   COMMENT ON EXTENSION postgis_topology IS 'PostGIS topology spatial types and functions';
                        false    5            E           1259    45442    api_barangay    TABLE     H  CREATE TABLE public.api_barangay (
    id bigint NOT NULL,
    barangay character varying(80) NOT NULL,
    code character varying(80) NOT NULL,
    municipal character varying(80) NOT NULL,
    longitude double precision NOT NULL,
    latitude double precision NOT NULL,
    geom public.geometry(MultiPolygon,4326) NOT NULL
);
     DROP TABLE public.api_barangay;
       public         heap    postgres    false    2    2    2    2    2    2    2    2            D           1259    45441    api_barangay_id_seq    SEQUENCE     �   ALTER TABLE public.api_barangay ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.api_barangay_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    325            8           1259    45318 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            7           1259    45317    auth_group_id_seq    SEQUENCE     �   ALTER TABLE public.auth_group ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    312            :           1259    45326    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            9           1259    45325    auth_group_permissions_id_seq    SEQUENCE     �   ALTER TABLE public.auth_group_permissions ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    314            6           1259    45312    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            5           1259    45311    auth_permission_id_seq    SEQUENCE     �   ALTER TABLE public.auth_permission ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    310            <           1259    45332 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         heap    postgres    false            >           1259    45340    auth_user_groups    TABLE     ~   CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    postgres    false            =           1259    45339    auth_user_groups_id_seq    SEQUENCE     �   ALTER TABLE public.auth_user_groups ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    318            ;           1259    45331    auth_user_id_seq    SEQUENCE     �   ALTER TABLE public.auth_user ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    316            @           1259    45346    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    postgres    false            ?           1259    45345 !   auth_user_user_permissions_id_seq    SEQUENCE     �   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    320            B           1259    45404    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         heap    postgres    false            A           1259    45403    django_admin_log_id_seq    SEQUENCE     �   ALTER TABLE public.django_admin_log ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    322            4           1259    45304    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            3           1259    45303    django_content_type_id_seq    SEQUENCE     �   ALTER TABLE public.django_content_type ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    308            2           1259    45296    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            1           1259    45295    django_migrations_id_seq    SEQUENCE     �   ALTER TABLE public.django_migrations ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    306            C           1259    45432    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            �          0    45442    api_barangay 
   TABLE DATA           `   COPY public.api_barangay (id, barangay, code, municipal, longitude, latitude, geom) FROM stdin;
    public          postgres    false    325   '�       �          0    45318 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    312   �       �          0    45326    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    314   <�       �          0    45312    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    310   Y�       �          0    45332 	   auth_user 
   TABLE DATA           �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          postgres    false    316   ��       �          0    45340    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    318   B�       �          0    45346    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    320   _�       �          0    45404    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    322   |�       �          0    45304    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    308   ��       �          0    45296    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    306   i�       �          0    45432    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    323   @�       �          0    18526    pointcloud_formats 
   TABLE DATA           @   COPY public.pointcloud_formats (pcid, srid, schema) FROM stdin;
    public          postgres    false    252   [�       �          0    16712    spatial_ref_sys 
   TABLE DATA           X   COPY public.spatial_ref_sys (srid, auth_name, auth_srid, srtext, proj4text) FROM stdin;
    public          postgres    false    231   x�       �          0    18654    geocode_settings 
   TABLE DATA           T   COPY tiger.geocode_settings (name, setting, unit, category, short_desc) FROM stdin;
    tiger          postgres    false    255   ��       �          0    18986    pagc_gaz 
   TABLE DATA           K   COPY tiger.pagc_gaz (id, seq, word, stdword, token, is_custom) FROM stdin;
    tiger          postgres    false    300   ��       �          0    18996    pagc_lex 
   TABLE DATA           K   COPY tiger.pagc_lex (id, seq, word, stdword, token, is_custom) FROM stdin;
    tiger          postgres    false    302   ��       �          0    19006 
   pagc_rules 
   TABLE DATA           8   COPY tiger.pagc_rules (id, rule, is_custom) FROM stdin;
    tiger          postgres    false    304   ��       �          0    18332    topology 
   TABLE DATA           G   COPY topology.topology (id, name, srid, "precision", hasz) FROM stdin;
    topology          postgres    false    246   	�       �          0    18344    layer 
   TABLE DATA           �   COPY topology.layer (topology_id, layer_id, schema_name, table_name, feature_column, feature_type, level, child_id) FROM stdin;
    topology          postgres    false    247   &�                  0    0    api_barangay_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.api_barangay_id_seq', 136, true);
          public          postgres    false    324                       0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    311                       0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    313                       0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 28, true);
          public          postgres    false    309                       0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          postgres    false    317                       0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);
          public          postgres    false    315                       0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          postgres    false    319                       0    0    django_admin_log_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 4, true);
          public          postgres    false    321                       0    0    django_content_type_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.django_content_type_id_seq', 7, true);
          public          postgres    false    307                       0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 20, true);
          public          postgres    false    305            @           2606    45452 ,   api_barangay api_barangay_code_e2d4cd0c_uniq 
   CONSTRAINT     g   ALTER TABLE ONLY public.api_barangay
    ADD CONSTRAINT api_barangay_code_e2d4cd0c_uniq UNIQUE (code);
 V   ALTER TABLE ONLY public.api_barangay DROP CONSTRAINT api_barangay_code_e2d4cd0c_uniq;
       public            postgres    false    325            C           2606    45448    api_barangay api_barangay_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.api_barangay
    ADD CONSTRAINT api_barangay_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.api_barangay DROP CONSTRAINT api_barangay_pkey;
       public            postgres    false    325                       2606    45430    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    312            !           2606    45361 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    314    314            $           2606    45330 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    314                       2606    45322    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    312                       2606    45352 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    310    310                       2606    45316 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    310            ,           2606    45344 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            postgres    false    318            /           2606    45376 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            postgres    false    318    318            &           2606    45336    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            postgres    false    316            2           2606    45350 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            postgres    false    320            5           2606    45390 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            postgres    false    320    320            )           2606    45425     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            postgres    false    316            8           2606    45411 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    322                       2606    45310 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    308    308                       2606    45308 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    308                       2606    45302 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    306            <           2606    45438 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    323            >           1259    45453    api_barangay_code_e2d4cd0c_like    INDEX     l   CREATE INDEX api_barangay_code_e2d4cd0c_like ON public.api_barangay USING btree (code varchar_pattern_ops);
 3   DROP INDEX public.api_barangay_code_e2d4cd0c_like;
       public            postgres    false    325            A           1259    45449    api_barangay_geom_71a102d6_id    INDEX     U   CREATE INDEX api_barangay_geom_71a102d6_id ON public.api_barangay USING gist (geom);
 1   DROP INDEX public.api_barangay_geom_71a102d6_id;
       public            postgres    false    325    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2                       1259    45431    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    312                       1259    45372 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    314            "           1259    45373 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    314                       1259    45358 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    310            *           1259    45388 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            postgres    false    318            -           1259    45387 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            postgres    false    318            0           1259    45402 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            postgres    false    320            3           1259    45401 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            postgres    false    320            '           1259    45426     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            postgres    false    316            6           1259    45422 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    322            9           1259    45423 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    322            :           1259    45440 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    323            =           1259    45439 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    323            E           2606    45367 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    310    5657    314            F           2606    45362 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    314    312    5662            D           2606    45353 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    310    308    5652            G           2606    45382 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          postgres    false    312    318    5662            H           2606    45377 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          postgres    false    318    5670    316            I           2606    45396 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          postgres    false    320    310    5657            J           2606    45391 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          postgres    false    5670    320    316            K           2606    45412 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    308    5652    322            L           2606    45417 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          postgres    false    316    5670    322            �      x���˒Gr&���)���e�#�qiN��mt9��)�0t�@���ڤ��g�;ߗ�Y��$�&	G�������_��������ݟ���)�8�]{x����흱��	w���/��0G<�������?�Ow<�����͑m2����as9�l�r6�#�8����Bn�v�j��K�}yߌ�2��e�ф~�T�Xǜ� ��j���8�@w���[�/z)��J]��9Z�sB�X[��!t��k�=��q�]���&����!ׄ�,+��g(��D�k}2���깾0m�6�o���j0��pߏ7�[�W�e�"~=��(���gL�z���4Mwk�������.
���9��s�7q
}f{8J��>,;�������m_˯Lz�i���B��E��J}E�w��w�|�����7���Bh�gB�K>�0�L����v���ę�6F/V�y��X��Gi�ux�Џ��%x}��6=^it�Sje��F�5��~5s	iL���T�B�ޕ�c��C����n��-���t��6}�o�k؀�����k�Is���������T��&�#�l��E��t���db��Tp�,%y�`�>q��~���%�ß'���HV�u�^�	�(�_���H��L�_=%���W�!	}�2��+V�����z��\LPCN��I��$�N��$�N�Nl5I8�<��V��E�/.���'��n�r����wo_C`>ˑ��� ��2A�*O[A�Z�!�2t�΍�'ԛ�a3�]�>b�������v���y� �����H�j�z�3A��c
}����t�UNA�8ε����>`m��i��������/����W��E]'�cx�Ɏ�OM�h��LVA+�b�՝�Is�`�6/��G�36�|$=9M�B���j�Ə�n�hK��trp�x(���/��B߳i�c��I��Ԕ�E�8�)��j����BxK���5���d�PG<�(���Ɔ��8�������g/��q��mn�(���� E�h�0ܰT���s
�U��iڹ��&d߆|_uv�����Xkp�������n��.z8���#{9�&L̒��k-��YF���y<���%t�'0�m���?��޵�G�̼ �q� t;B4��f���ou���;�~��:����\�� �.���QW6i)[}�:���|��2�%��6R����O�8�υ������S�o'��x��w��ߟ��x�,�Ö��=;�߭o͐a�7B0?�2u7O�Ɣcu��B?҂�.�� ?Y"t@m_{j�
w뻥�?�ܺ¡�CI��.�N�N�<&8�p�"�Ō�����'(�yA}��{��8��%��)A�!8&��o0��;P��[4�-��	��	{��)'{��	�NA�6p' g	,��6u��4�P�w2�O�(_4����[����������'\�ϹTN�1/"5�y:|�k]�ln���SM�LJ�|�7���\�����AJo�n�d���Õ�����a s������6�l�
ˡjjt_O!�vz�W55��� �{w�Bv�͜�9�އ[a w����n�����/�������'Lv_�2ŗ��&��1a�DHƬs�� :$)�E>u]p���҅v�`���a��(^�h���w�a9aGPQ���l���V7�Z�/`����ï���M8�����NMQ<0tJo���i��BO�U���B�M�K�"D7c�������-4�mbEپ_�v�v�n�,���s����}����� �|̵��%[l8��݌�������I �U{���Xd�*�������^�eo��q�\/{c����ܥ�LK𹚽�N^��w0WH�\=�Q�|�gocA?@0O)p��� t�30�g0�n���C���0o֬ŬA��_���jNc4���Q���$���^}�e����8z _	0$$�3VV��b<O��n��?$�u��$}H�d�h�����Xg!rb��S;���cof48kA�P;�� ��R ��S���ˋ� �_�/���]�o
=�h�`&�o�k3��?QT�egz�9F8t��|_�oQ�1���p���2��q�*��҇��ff�W���.f��d瘠ru�^[��z����	  ��`���o��f�/�����Ē��?��Ȥ�i(=~;K�S�;%l�1���I.� ���U3!j"D�,���%x %�C�Q����M�Ի�ߌ����_~����9���X(���|���d�"�.Xҙt��<<>;�;ǩ�� �j~���L�k�>��̖@�Y7x�Gx��3���"B:���p���5�5�l��`�(t�(
<pƓ>;��؅�E�
=�f�K�p �7�J�e��`!B��!A<��N��^[6 �C�w ����~����N�I/.�w��H���B�t`26y����(��}(	c��>_������ �����;0�rC�tX���sU	qǕz�>��ZD��r� ���ت0Y�x �
=TS"4ivݴ%�T���辔��cgz$[t!|��]�}h��Q���������N>n&��������A��2�WA�_�P���۝ѝ��A�Y�9�����Hl>^�[��S�1��]�g���ҳ�3��i��!�������5aG�J���:V��`���C�D��D �v���X�	��ϖ:Ƒ���sΑ�U���;�G���t�|]@����-a�]Xm�ۄ���Z���$��R�?��g�C��'�ǫ��-:�f�]�}���������Z�.�2�}�z���'BK�{:��	�����1;�c$J�wE��,t��W�^%<hlh��CHm�u�s��@�\���o&�&���Uc��z�Ap������Mpy�N���dN��m�c�L<���J6�9=��R�qک5��!��J��r�ڎrJ6뻙K����w??aQ��Es�/�9(�v���w������R``���8Z����-4U�Q�|���=���0%�c����G�S��������^�����hX$��]���!
���8�:�`t��0��0�D����老Q2��⺞�����S�f8z�j'�)����.&�o�	 '������{���s!�]|�%��9� ޝ6ީ���Z9�Q�RU���@����[��Zp��O���C�9���F��2js͵;&�c62/f��L 8cr;�Ȥ'��.c2p��= ��������!t�4�Q�i��a���]� VD��<�D������<���hR8��!/��p.���;8ɃȠ���8�a<%����d�k�j,����.g 9���V��d�>������\�������޾���E3�1 ���&Ϩ��;] Kz�0f����O�G�{ �26'��M��f�ݟ��������q���3&������_eB׿�
��g�ǈ=�K�%`��0�a	0v��q��fX@�^6;5gך��+N�:��Ny���ϥ@�5�X �8�[	����V��s5��c�(6�C���q<5�g�T"8!�<l�ӣf���O�Ы0C0K㉍z#P���	��`T>�64�[<�C�q ɥn����	��ȅ�����Wܮt������$T� drL��c[���o�(�)t��8�xB���F_�ѕ���P�m.O�VM<��Lx�J*;�넅�zg@�Z��L_*��O�u�p��s�r��H����bh	~�ҝ�i��gN�I��.`�_����<sS����+s��O�%8L�y�>;�B5g.zH�Ɓ_�B��L�O�Y��cAr/��6{k֮|Ů�_��=�0ת��ĉ#� �'���)8���}p����G�60Lŋ咜��ް���$���u���<�,t�l9��^�ҏ�r�>��"�����%��� *���\�ǘC�A���g\?d�F�8��[}:N�*�KU��3����F~��ݝ��vni�7{�R�j�t@e��У��݌,�	cK��J΀��Tp    2LO����� [�@�e�Wx�pތ�4ט�ȯ�2�H��-a��Z� ck�����	!��Ω�>��M�T��B�=3�A���m�k��Ssԓ�	'Gb�*+���ÿ���zg�C��̺��f��h'|k�_�����@,���LݙQ_ 7S��C�����Æ< �'�fx3����ǡ�%u�N��'�@ɭC?�Qg��I�i���Mo%��Py�7't`x�ЋNoE2�n�S�d2@Ͷꭅq�����V�6����Q[_��՝wYo]>�*�����#];_�[��b�6���pݺ��O����X��F��_x�zA��ٹi���-t����ƻ������ۧ��
�?gCְ��ō�wwo�.�A�	��6��bm�xH�Y�����S*����o����I�����O�x|���/��r	��Ŏ0". �EE:�𵕎U	�3�OX�������A����`2/��^�y��+t�2��K���0�98e]��C�ه�r�k���Ԓ�^X�4�iEx���.�߲�7��ڧ7�@�O7���(�޴�&�De�I��� �[ҕ�R[�d8 U� ��d
(� |��
g= d�⮄���/s�k����n��Bx���E��]�p��7[X+���Փc���o�0:X�;)��]h*u��Ϟ�=�nK�'������$l�Ğ٠�k�]"���; D���|T�8q�|)p�k�����N�?7w��<��UO8�0,���]hp.ظ��w؊cZ��� 9������'�p�������Y.O:�#M实4PH9�����<}��w�ws�,�����h��E�A�_����t����8�̌�>��g���"���WV᙭:	�i�eG��^��� x��.@I�*���j��uA�	>��65)&�f��%�����x�x�-|���!e�l \�z�OlU\,��������9`��4� T��3�����Tt3�B���d�˥lP�1��`�&����篇���8��xy3����/�&��w�c��=.�� yC��]�7�a�	ᖘ!��T�$t��Ӳ_a&��ᷩK�������,뗒�v\�	����K������^�F�`�L&�Cz֒�k8�p5�rB�����U�jt�3����7	�����}N����iGqS�;�ޜ����7o���޿}�����7x�}�,���[�|�/D�:ѿa�-�Āw1�]z����w1�]~����.�w��9w��?��Y�g^����ܿ��Og��}�m��c^4vU��p�N�:��`-.�ф�N�Y�ޑx�8y���d"���G{��XO�;�i9�`�����_ ?N�8#����!���ڎ��uG�L%�Ns�I��ȃ�@� �$���ۈ��Ԝ�Y
�����_7v�����h�Э�L��|��g:ƲQַ(����؈C*��q���yˮD}�
,�@W����C���?=��������B���c��&�	�� R�4�&��,-����3\B�s�$�{;l-N�f]�C��H� �%_��g��hu�C�B�_�@/M����L=*��K�Z�ԭ>����H�R���_�ú�Y��W�% �c4������SÝhd4�؂%�����x��8q�Q3#�<�Q�[�ͱ�������y"��ӭ��az��X>�8���j�����u���-s�)88�]
B=\J3iN6�-�\�>pl�
Jzy�p���Ep;4y*�+����'�(���AH�e^N�!�13��279 �5��+n�=]���d�lz@�͵x)����䨋΃<!�0��!�!t�����PR5��u��a�भ1)!��	
�2z��0���oIq��X]�u�U�'yҦ�q��Wr�wLŴ��+���c|޿U��)�Xr��y�o�?���߇�c٥UC����e��C�8Tp�49oAm�#�LN�ܯ�Y�����:"�K���UW;2�)��W_�cN�B�
I�|�\������_���o������W~�o��z���o���ǿ��'Ǧ<96�����һg=6�c�[6�hI���T���H�U�OK�q��hn܋S�[�8���8K�P������ws��?���c�*/���L�\a��T��Z՜WX�7�u�"����󕥆(
��&�Sh2�']�y��n��"�[�]H �͹-�B�[�H�'�pŕ�[�6VB-�C�p��/nL<����o.������̸g<�y�����%ŎA�v�쌇b��p����l%~_��h�4����C�n�S+S�S�&iR���ւ5�<�h�CQMJ��	;� �8�3Oq�qM"�p��m�(>������$&�&��o������Z�2P�Z� ��X���yT���+%��Lf'w���:ߖ"Z�fM�A(�n粭��<o���M� :��&����+����]V�Y� ߷ۿ�+w��������O�n�����v���!jQ��r�`�\5��e�r�yw�L�	�/��-����c�k]�WO���gnk���DV1{0���yZFȧtR���/M��C�_`(8����8�hS�δ0R�"����c�@q�+=���ۉ�`����%��W~�|_��	����q����w��]}������g���u���[��~*9`E�8���j�{*L��C���M���7���ށ���9;�b��7����ß�|�Ԍ�gN�y�������wK�9�;'��&����J��#\�h�ʅ�`>�p (�����Ö;l�ö�أ�R.'�0A�Y�y��;����c�������������9d��Α��&�hL�g~5�g���*`Aqr���u ��G�\��ZSki�b���B�8$���W�^)T�a��G�8f�
�k�e�n����6kJw�v8����tv@I�f;CHn���'�]tXll{��zop��3�΁-��¿��,�Y=������uA�_�qB�B��ɵm\�=�� }V��
@���;��v�wHx�n���s`v�΁�9`;��ҡ�� ���zP���B�t}=d<�RS�K�K���*0:�ɖk?Z����b._t	��x�yw�s�������W#��o_���'��|%��¤��m�z�� +��Xd�y3��0�x1�5+4���p�(Cr)'�&�u����8��h�!���W<�=\��&��挂�4R4v��Uݹށ��5�!Q�B��;U"������� � �Y���E�v����[�޽���tX�h���܉�!��V�E{w��]�y��E�w���l�����S8k��Y�|߅����.���v��c�y�;�u���� ��:���Z����H��D˰Ka;	��"�-l����w��˫7??Q��YD#h����t��H�"ېMOɚ �R5�-�$�_*E�P�Z�>�>�A��6�p��� ��y��tL���� ��,xN��+�5i40jņ����L�a%��Ddn��?>���<sf$#4����]V�L����LTF�i� x�ev��R�Y��g�������0�yx��՛'�z�6H+ϗ��^�D� �. ��2��2V�� ��pr��ҷ�3��Y�$sA�cf����ǡ,�*=��4<pY�����^�t�%�ᵉ�nT��"���˯�O��_�yza>�c�xâm�m��wcw�9��<�n��7_�������
`w��:�R�cv�ď�����Z��у��l�~��������˦�8�/l���}v�u��T ,^oތ�"`��#X�Y�ʐu����J��Dc����׊�&�]4��M߶�O`�7�>|���)j3�2��Ym����`��]{�]1�Ϊ�P��"hw��S�;5�S�;3�;C9�E��z`�K�o��5����/�c��4�������������t��/ �*ҁ<�p
��/��l�靴��5��5��5��5��[ލ�&كɱ��(��`NZ�ox�@V�    Ks��%(������р4[n���|/��a������ppl,��-��z%�\���,�aN}`i�+������Ѳ!M�H���w7?���������^�1/�������V/��a���KE����!�	�j��&��RB�9xFp߇6����-xj޳��g6�ߴ��Ҏ�����GV�@�z,J\3o�¡�k�p���(	�t���,��}���� jˊ9I/�L?���!t����r��P,������k���8���n}���O�,by!X���c뵋A/�w}5#�0`��������?$���Ŷ�<������$j�?7����3&g)/�׀ZCd�y�a:�T�B���VaE� cP6Y�V�� 7X��6�w��猒wONc����k���Ҏ�1b�$�n3q*��#�l������-������{��D��sIR|�қ���g v��Z���=g( �%�g��P�z�vǚ�x�e�K�:��>Z�hN���χR�����<P�ش�<�5�9��j���N��F�����VB:�v%r��<ӫ1(=�5��];�#�����~:�WN�;�{�hEw+0�^B�\�%��lD���>��shY��Y��Jnz	x�Ģ�P�n�Y/AR����F���$+�:z���E��,|���#������"`��Q��3z����Kl����q��mSt]����	�t�b��,���[���%��������s�{VI��CD"����d?=����- ��!��kv�|��g(�?�Bm��*��Cd�5v�\D%�l5�ϓ��ć��5�R���	�{V���:\��y��M� B�+��C����o�ܵ����|�tL��11��P�+��Xx���e�5CK���Z9�b�[	k�xY=w�..����`i��p)gB�C^�������1���U����+5T8�@��)C@���&[�<g�d�Xv(=A�yJ��]��4�Z�5Ǘ�6�����`[��T�Re2�n�a��h�j#.�mޥ�JŠ�ՠ�z4����ϣ|P�L'l|���q�Ҝ'��. ��Βf�Գ��pNu�r�Y�����:a�E�+�&u�������E�9w������cr�$ٜ��w�jg�vS��=��2�v�*����`�s�N�:S�ݮ�]]	C ��� �lR�+�%�c;��"��9&�g�������W����o?�9��Q�L/5x��H�Dg��%�);�ܿ�5�*tLs�p����P�� ��	ߪ97"�XD��b�_p�I�ky��&��bǅjK���T�����Տ4Xi�t�~J��h�d���C������H��ל�<+���J�8�:�6�A� H0�=��A�g�)��~Σ(�B�gg��ѠXe�J�HV�g��E0
�T�Vc9�G�E�E��%%��	Qn�v��E�m���I@���K�&'!�h��l�tC�u��]OJ��v��h���;��ϗ�5��z�f�@L� m��K ��Z�Z�j�\"+|��6v��1ޅ=�i�.�'dq��c�%���Ըy��<�����0��@O��^�W�Ȏ?7��O�Hy��_�a��b����_g�ݧ�X���(vv��*�-ǇH^�Ƀ����(8������������/�o>||���/������2�t��T�Ne����i�����=����8� ��_�.�����oA����b��׷O��	_p�˙��W˰;�;����N+��N��k��7ڛ��t���ư�}��$��B��^9�l�`��$A0����]��]-2CR|3Pm�M��- y�{�
�Q�I:�9��|�}ifI��C�t:{�UN3Sv:i��v:q�S7�w�	:�/O�T�(��1a����!�W��&
��"As� _
G�{0?�pא�#����`i�D���c ���5V��P����2�x0�}?6Û~Gh:f�손.����?�<_DZX�}j�$6c�X�6
�ݿ~xv���gZ��^��߶�؅ v!�]dB���?[;/�3���]0w�n�}x����zF���ێŻ-�ɨ���^�sޘ�t�5�6ʔ��{����_A/_:�r�^h�5�pNv:u����n���ͻ=Z�p����0�ۧ�����9vA�]�e��yv�n��@�������T�E������Q&�n/D�t���yT.����N��7y��Y���4��rh�M	�Uc�0	������5'h��]v6:ׂ���+H��锋�ͻӚ$gq�w�K*���G�����x���W��6�:�_zi��͞.��L��
��r�"Z���R?�5����兞]�Ʌ|���e`_f:{�0��.V�.���[$-��F�N;>%?K���P4A���wK�Hz��?�cK�}�I/t�4�hdˌ�]�6˧I�'!�q|#0d�:�M@VΟ+�6Ha&(_��<��+	�"�_{�~���s,�/zN�0�'�G^4�ME[�"/:�NZ�FP:�NxA=f>$V��t~��s=o{�VD�M�m����R������w_���g��4w��[�v�a6ӀB�4Wv��j<<�������T���Mf�63^t���P:G+ŃyeB��S'\!�w�&��q[��\��E4O���
���,�֊A�#�̚6����d�ډS�S;FVΞY�B�:l�%�j��s�	�����V���~8&�Ӟ��Ĝ�&�������;^M��fI��F0F��6��X����A���g�X~P�%lL�1$w��U��aY�I�Ws�q�~������O��"?�����=������2 Fq(2+tv��������`+)����+Up��8 ��x��S^ْ8J��O�N���	� �G�(6��1�)���:$�4�zv<
Ǻ3O;�1�G�n DJf��d�ǈ�Q�!��p"��Y�ώ�D���Û�;��AM�x�
�Z�p����hN`�at�F8R�[8���nv;����m$pw�w	w���TK)���,�T�m>���Ϗ4�T�=�G�nUy��ԛ�8Y_�y���(�����A�����#T��%6Ǯ�Y��2�]`]�%��*�x�ј����0�(l<����J������R��9��R�:�Ş��!&�Aq���o	����җ��,q��g0��v���;؉�ΊX���"V���r:�q�xz����f)���ӓ�G���U��ĳ�n�f .Xw̟���w�}΋=E���x5W(}��
A�bP�,V�Js�K�Y�#�Z�z�����ڹ���:���[�ZT�ol�t�[܇��F�ד�G����N��T�Ɓ��O/�X� 8��]-o�>|=u�je��R�Ԗ+[����'������
��_i � ���0�U����g���j�KH�u�>��+^ꑁ�������p������\�����.������0�.̿�&�]3�����x���/��Ly�~Hо|�n��f��g�LoW�h������I8�\ظ;F;�3�;�3�{p���bNv�f����ܕ����,���;=�=w�Fk�M��v��]*�.�b���I�ئ�lRIv�(�T�]B�.|�?�t�N��l����l����l�����NI�����7��|��?��m��<W��H��W/�,v�m�d�o�вgYl� xrgs�j3�D�
qU�X(Аp� ��6t�#����Γh,�N�BO��P�B/����ֆ� L��%)�dM�AIg�v�]�:(u��]�'ۻ��T?�R03��-��2�5|_�ͮ���s�����b�?7c�9~e��M����9�.s"�$o~���]{�������p&>aE�����5�,얺�� �9��)�q@�3Q�76����!t�;�N$`8�=@*[WU�kγ��p��4٬�����������3ӳK�����g��ߵ�حp���@	�m@��v�Cnɓ��g�@��d��Ʈ��"��KpY�.��-    y� 0�,b�lف6r7���ˀ��K�-�R
�9����bY&���r�E��^9,;��p���O��|�}�����)�~��+�b����d԰S[(t�N�ŷ12Wtd�<���+��=���3N�eGv����A��O�M:ω������I170^g���Z�YR�P��M�il
wE��<���~���r����?����';T��-���jQY�cK����B�T�3;��=9�%��h_��5
�⑯�95��jc�d����.�����B�T'kԁ���>c����z ����螑��{x/Gu�J	l��7aE���3����,4~�pU��!��T���&����`����-�g�̷z����~_߇����Q1�`4�|*88�LG��K���hW��/�>����6�e��7��l�t8�6�⤘䅠R����e��u�}�rΔ�@��H�BXŁ<���1��&��	3�+�Ug;����0PMAg}�W�_#{�}���#�̴��[.w�����������=�/�V�ڀ�v^9�`�6�^"]��%��S'<�����+O�� 3"	@��h(��'g[�|���,����;��nARK����xy�i`��<(Ε�������I8�^p��������������d��}>��:/�î�d'g;9]`V�o�y1�5����1C >pN�x����N*�'�a��:g,߇�C�J�ǡ��gTWPR��Y:�o��[1w��駟���9��h���P�qh��;A�	�NPw��;(�Y&v �\�g��'�Xӷ��NBv����e]bF���$s����~���-���n	Y˹��8��Ў6<�`��&�H�B�IƁ�U���y�Gb�i�	��my���*tK/!�$\��)�Nh<e���s�/�Ϝ���фΐ�w�	�T]^6[ۜ�w?�X�>��ڗO�].,i��I?�XR,˹��
�u8\�O�;�)���V�ݸ�,���4<wV����b��p.�D`�s���-�9��<l-٦��ٰ�S���-������;ɰ{�ה�]��n}��+!Ř92j�'<�ҋ��M��n}��>MO��%�=�ur�_��QHv������;�\��,9|�1�I���y�(-�ޜ �����o��$~Ul^:>��\ 2�1�N�lqٰ,Q&�t��{)9��6_Wbb���v���#Ř����ӵ4��	�����L���U�N^�����P�p�Gh1Kaps�&�b}V�9B�l�g����R�8�W��>�gM�n,��̽dqu6���tW_��yx��� ���k��F3�4[�!>8�Rw6ӱ�(-�-y k��	}��Sf�I&~M��Q����	���ӾO���?p[�����[4���y��$M���`�!'����������,��L������dy'%t0����Ťh\����htwώ�"�� �6#w�� �V�H<^�3���5�X�(��� � mBǎ4�K�� m����d�K�� 8�N���Xx+sH#;��w_���`��������{����m�D����5C�ё������h�/�9�����#�M�	}ř� tP/�Gu��� �F�O�p *���Y�E�h.��aW5B�}cg��?9E��G�Be]Ѵ�<|�: ��:5�,�1`%��%n�zZ��&�B��ȓ�N��b:P�~,vݴ����%�9��p�5�o���c9�r�od�Lt������F�c�kd�t�xu����-\��������V���r��~v�4
�K��(���b],q�ʑ�3�7��OߍוŘ�27�W��Ǐ~q.����^�gF%S8.ɘ6h�y�bl}*x���Q���`\���lA��B�4_`*��n�KX�ԋu�!���G,�òtYt�;�4�c��乕ӂ��O?�d
����žcKG<q�x�0>F�8Y�|\t�N5B@���.ȣm4��1pC���v�������5bC�h<�{���{pAKv]��'L�:�Q<Ӆv��+�%t�����?��5Hvu,/�XWdڷ�~ML���t��ӌ�����mf�t��r�?��Ol�A����W�`���3��ttѻ/iٕ��m_v���__O?�/u�8�����'D�5�1��|�7�Cz`N�7��G�p�p�Fteê���/��Am��?"�9KI;��|����V�z�xM=�T�'k�����5<�F5��$�ԂЏj�gˡ��3�ൖ��>YV�j�� �[n�?9����y�߆�Uu�؄S�T����U8ͪ�{<��'Q�l�׬:�8��Q��i�������� f�5�-�5X�xу��t�۬��lU����W��5����c�`�p�w[g��� ��Ʉ�&��!�;��'+���*lTM�)�˝���Cֽ�s�YӨd�#�&tߡ�X~�:�q:V���S��^��rKV.(��t@F�c�4���r�~�sa��y�k}���F�Y�qN�`��~�9��Tf�dC�G֝��^�&������V���ׇ����e��v��K���ތ;�]��.ivsvwv{vv�6v�:v�>v�Bv6�:7>wB��, �اwo?|z�tF�=�
Z��"���$�ew��2s
q����hl��N�"���]��.Ul76c'���F����������~z�,�$?�3�69/�U|%1mظ�S��Ip�BmW��� ���l#�`?��=�5�ϙ wv/,�������"w��'��>����Ǜ�{�4�迼*�@���
�ESvј]$�P��4�{��b����]㜫'm8�o�p$�}��TR�.7m2�}�x(�T�.�J?j�\J����z~��@��w�Y@� ݌�US��,`�|�������>p�ePH魶0��R\������n t�#A���aΤrmK]��ڽ�?u��p�-Ө�+�nu} _pB�m�8��IB���
[�H_�^���B���`�Y���bR������zp�����������koࡻZ�`A����s,�6���Z��I�~~Nۜ=�M��ԶxZ3b3���)�1 �Ll'������"��?y�C�g�`H�E_��T���#Vό�sl�a`X�СT�'�5��Ъit׵x��9rn����%�|��t VDs��r�]e�Q�;�)��:�~B�<���C%E�/��<�h���� {��Eg�88�W�q��6�O���
5A��Z?v>���v����:����+��|cr����#�U�>Y����z�Sͺ��J�t�h�6��sd�>æ� L��7�gݜ�	ߊ�BO��.W�?�~x�:�S�
�J��N���q�P����^}��P���+����|�iƨ`��/ �a���/�5����H������9���N�ݩz\����6�;JFx�Ƣ�%�xò��I!@�h�?�))��{������/��	q!tx7�R��w�Ni�Q��� ����yMs�ڦ]�t6�����e�35�v����u��aV+�M��J�z9}?��w��c�#�3�6׉�@=q��Э� 톞/�D�ُ]�	z)(q��pv�Ĩ���@w?t�
�d�ʉ��7V�C��
�}[��_��|pV{
�<xY��E���f`Ҕ��S~��㕡އ�Bw'�z�o�^�;����L8���w�@�9���eb��P�3�B56F��g��2iFD~��g���H��,�E��A���O�=1����&{�J�,(?�%��):s	������/�M���	�n/�nW�κLS���SV���P�z��J��<Г�J�w2*[���:���:B�-f�zj]ן�{B?��I������_��p�s�ħk�6.��	���>Sb��:?�׀U��d���3��Ö#&Z��e�[v��bbb�>;�k��c:#���Ac<L����]fs?}� QB�|���Z���(�ǜ��0��'-������`:��� b}@��~Կ}�ʖ�B�����0.��l��s    ���w�ߤ�����>�X/��`
q>�����҇���o�Mo��g;,���,&����	��R�s�GX_��u�3�R�_�폆�B�,3�t���Ο�a�İ��(Hhs]?S��Qu�����]���΀��3�����<�e��]v"���U#��4�t��H������x|X=�$�[J`���ǀ%�%8{}?'y@�U�o&&����� M���U*�?�����$2C������`��X�Si�~��X%'��"P����C)ͮ���O�O� K�4���-z�.���[`���8���m����c£s�=>��P֭С���#}�*�{$}h*�辇��<��Ԓ����/|0Є��O ���	tZ\D�}��-�6����Y������(�����X�C��q��ͅ��i�FT�mꅘ�?�Y�/��/��̼A�Č���;{�-����x�9�k8�̷�/�q�3����5�e���!������_mv���p J�����f���:
�I���t�����'v����'sH�H�w���T>�1���b��
�������@-����st=���2����	�֕�E_n�3�.����}����7L���o�r�=��2��Q�L8�l3���Sb��C�n��'�Ah�&�̂j��%_�N�6/���I�+֝,F�:Й-��:K#����� :�0���W���q�|x]������r� ����{9 n�I��r\����Z�%=vB=��]i��	 Ph�T�Wop}�K������w�q�:����B<JK�^&\.�}��4��OW��Eb�<�8�kw���O(䊮�7s�~�}�d�����0��þ��h������}I�O�*�ʁ�����YJ�#>�j�ʺ����m4��Q���6�����Q:��s������}����pCt�r���E�_�=����8���i�� ]�]z0�f,�^�,�n.�Yˌ�ġ����*���� ����{��(R�?��æD~������t(S���愷ضK�2����~��X��	�o
��_�e?,�L�z�l�=��~���������z��
��'�q3�q7�q7r;Mr3�rצw��A>�0�@�ak}��+ΐ:#�Zm��tn�j(�*�!J@q������U���J�s�����8��0�褳�sk	�P�3�1]r+\�Z:��Z�0 ���TϚxú&A�@�����N���NH9 �N3�z�0J����?T]N[�bGp��z�g�t�����`�п|?GW�C���x�s��дr1���_ω����oı;;];('τ�"�I�������[[,������{�B�����	����6&�ۆ�Y�+t��V��B�o�1��J�z��:���թ:�AǄpHmR������}mB���ipN�o�iy���`C��G��l��#�WK���t�vO:����ܦ��=�l����w�����������ax���;cx�����a�-^�[��x�Ё�]>{w���ș�%'�L�֎�T�@uC������
���Kj?���8����@�g���I��Zbxm��]ͿGf�E���>Y��Z\��`��z�ޙ�>���ڵ@ڵP���p �����ň_S�J�=���������0=q ���P����P�V��o�}���x/���=��Qu�t���U�E�@�!*x��i�_�详�C�������� ����:Dxqz�������gZ���o_?<�>1_���|�m��n��nl6�!6���mhp��Z��j��ZGl��f?ش/�]1y{c�p�-�(�,�s8���@t3okG.pҤ}��8O�ч>?}$�a�˲���6������tQ،�ߍ�ߎ7G��~}�4��pOvЕ�]iz�]_���Rhl�(J�nqЦ`XK��Yjds�rub�;P+:X�z�=b]�(��U��BG;"�!C���*����l7R%?�,�`�鹃��ܚ�������;8�}�Q�o���X#M�α�g,B�����:�v0F���	�I�N�w����?ܿ�_�?b�?�����؈|_��v��S�;������2*�p��|�CJ���d��ԃXg��m<ڭ�f�����������7�ш2|i;�k~�f�n��nJ5�:��8Ӧ�"�v�oC6�$�-�p���cO��#�O.�rAg��F�&��&���yI��t�Q;�p�$a{�2��N{�P0@��,O:P��
:�R�J#V'm�Kl�W��+(�/��f����}���Wo_���-ɼ�Wf�����8��$�vc&"G\r2,�a�\tC���M�;f혽۬�l��l�����g���z�Y�<�8��0��Zw�Hvݒ�t��Gk�I�;�[R\n�S�S�>����?�aI����n}���������>���S��b�(M^	u���Sw��5��5��5�ڵ=ڵMڵ]2~�ʰ�z]�&�d^�(���8��u+7ظՃ���&i�K��9P�����P}���5�hxaz}04�=�`z�� /eh���@TX�6��I1i�"{Q�Ŀ�4�J=Y!P���*D?v���
1
����a����!�ÉZH����'� .ͥ�Va��XI�y1�f0�Br�7��"N������_dw)���p�b��
w_��g+�S�NĔ����V���1�F��r�s��a�t����("f�y����v0�ӵc���Pb�[�s�֑ǾA�c�>���oA�W��1��GX]�,�>�CI�����װ������'�A�����A_	Q�����	�m;�(�D��j�����d�Y:�x;t��N�QQw7��F�0�9{�a/4�vz��Y3��Y�:&~�iI��®W���%�d|�ğ1hr;�x���Q�_�b1�6j³e���p�y�S`�+�k��R->L��ee��v��b�(쾂���5F/ө��li��&Ż[�L�P��d^�io�]����@^��?�����I��Ȟ��:�d�/���땵�!��A��a��}0�s��Q��0�?||b �W������un~��®aC@���I溺lX�jQ��Ҍ�'��ef��Z4���K^�{��㻿���ύ0�����������5:��]��A6�&vK���mdԸ
�T^k27+/�����5�5��\�)h��-�U��b�k5hci�N�êCQ��:��y���R�)�iGb�W���@=ݳ/��nUmv81�I:Ġ &W�:�� ������^����k����g��O�lO�W�V抎�?C�2S��Z_eqI U�X`���.����~���¥Fw��ξMKX�D[�1��s%	Z��N:� �Q���;V+���=X)t���"���gX�IAS��Y�-B�1�I,�-Y_��͌�	}�c�r}�up59�Z�[�`>A�W��X(�����~#?ʇ��\�-��o��w�?�s��%��j���<�^Z����/XH��q=�zN̵Y�_j�L�Q�bd�����j3F:y�?/�N<��ĥ6f�_��C��J��/��Lw���Yt4�1�jF)戙�����L�������2Wb��#�.�mP/��<-�ZBg�/���k0@`�
'�j78�r�;���ⶍ��l��5��}[�`!���＜����v^ڶ�.���qR�p��Tt0���F?AIZi��_��������?o�*�t���ԮW��#Z�Ih��L�B��:��>��������?�`���$�y��I�Z�
� ���*�g�9�F
�S`����1��q�H �(���_�N'z�-Y&�h!1�����m&�?9(a�(�8#U�~ۀ5��E@g�7�hm�pv�oLU�sVm�bsV.0��Y���8`�����.��}?��?Aw�1��}Y�h����aI�]���١����>x�uFf��o��^{!�#����
�O�3��X{!�?��1��ܤɎ�� �  !�"�Y8���6�ct�:4���ta�|(�8�	���X8͘c���/�k����C���Ws� ���rO�J=b�C'�@`-�z����(�<
 ��s������\a��*��@���H��kM����*����yl����] f5�m��:H��d��X���l�99u:���l^�*��m�"�;�'w�a���W���@��_�N�y��w�~u�{eV��rdB�޻�)����:�.�HһU[�������� >_w���.'K�$�Ȝ-�}�̪e=+��B���%���ռ�w"1¹\/vɽ����YFB���<��ZR�Q���e�©w�U���h�}2���2�18�V��B��n�Z��p�Y>*t�oKLq*��0�ľ`r�-��~x��
�f&����va�?Y��>}��S�L�}y4���F��o`����f�ay���ɽ%��K�狯#�4\�~�C�G�H� �����?G*�p������$����9L�*��]+ʸ2�r�;g�K~0�щ
㕽�
�3�6�3�X����Ç�_���?�}�y���C����>���Yꂓ˯���D���[�ih���0�]iع�����S�@�X#�.Si��<h�5䳥��a�jq��<�^f.�����Y�<W��n�o36�����o0���ܯU���$���n�t鷰Ռj�\�o#�!��啠�$�0b�N�W��'�w��xw�w���~��yK�%������_;~@�)�x�7� �j�;�*:j�p�g��jر��c���a�;�"E�;~��w3�υ�ߺ-�k#Z^:�=]���#Pv#Tvn�έY>�jz�:��Z�pe��[p���`�"fw���^��?�����~��5}����uc7n��w�1x�F��]Ց6�i������s���������uw{������������ |�      �      x������ � �      �      x������ � �      �   -  x�]�]n�0�����`j�W��kL��1�.�@7q��cb�7��$�%lԧ���9��K\�Q��{;�Q[ �z/T�"X���/�+������_�s����0����4����my������F�n����kR%·6w�cÛ�9H,� *����GUA���M���+�O��������0:=�y�c��׊e���� ��m�<�1H��:y���^(�!WX��g��j�x�V�;��Ll;1�ˌ�:!�ʄ6���6ĭ���㨭Xs�0���q1� [p� ,����i�f      �   �   x�e��
�@@���S�p'�̯�Eh�R4X����6%�� ��ٺ�lEmV�%�;���F~�P�"�� V�N�Gp�S�M����Ƭ�|��ў*��~��K���)�&J���D,),(x�y�c	��I�Q���������%��g|�0�_]\+�      �      x������ � �      �      x������ � �      �   j   x�]�1�0���{�j���#��� ��R��P�O���Il���w�C�%ft}ϋ����>;�kHE����-�X���C��X_m�zFK�O]i����K)7�!"�      �   c   x�M��
�0��>F�Z�3�lu��	��!ߢ���H���t� Z��A��NE,E���U��V0_�\OZ���V{�,�r�~^�%҇�5p�{ ���*�      �   �  x���͎� ���St_M���c�,���m\�G��/8I5N�|>�\�ɏю1�';W��ntљ�����߀� �� QR���Z�%~<Wp��gV�����JFe������w�g8�`�iu:�kӶ���Cf�o������{o:}����eq` 2K|K�^�l:���v%9*�(Y����=�0�yΖ�^�K�v��W��Q���
7�2����O)�Ϻ�U(잒�Վ��x�b@3Ha�{Fo昣w�fK�_� �b5P("��gq�Ļ�sh� �񔛕Oӻ�D�}�z��l���k�W��$f�$������K(�(��~E�P]���F��#Q0��)Ed����n"�SK��4Cg���zw��k)��>z���n�>�WHPT]O<��*xC�QP�b=�������	f��9�[���Y���Q�/E�:���at�      �     x���n�0  �g���/ZAZ� A�:D
S��:ʠr�����(������XpQ��T�^�*k�XRLʍ�ZGl{���+j:�*�kf����W�қ��P��w�����åj{GK�~�ݲMcS`����KƳ���"����E��]/k<���R��@J/4�ұtaUYf3z�ﾓ��?l�����G&#w�����6D�;;�q�����)�n�|�F�) ��� 0$��᱀
\�
���@CY��Db~*H�YJ��(c`�      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �     