PGDMP         ,            
    y            lynxdatabase    13.4    13.4     ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    40960    lynxdatabase    DATABASE     o   CREATE DATABASE lynxdatabase WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Indonesian_Indonesia.1252';
    DROP DATABASE lynxdatabase;
                postgres    false            ?            1259    57354 	   keranjang    TABLE     ?   CREATE TABLE public.keranjang (
    id integer NOT NULL,
    namapemesan character varying(100) NOT NULL,
    nama character varying(100) NOT NULL,
    jumlah integer NOT NULL,
    harga integer NOT NULL,
    totalharga integer NOT NULL
);
    DROP TABLE public.keranjang;
       public         heap    postgres    false            ?            1259    57352    keranjang_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.keranjang_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.keranjang_id_seq;
       public          postgres    false    205            ?           0    0    keranjang_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.keranjang_id_seq OWNED BY public.keranjang.id;
          public          postgres    false    204            ?            1259    49165    pesanan    TABLE     ?   CREATE TABLE public.pesanan (
    id integer NOT NULL,
    nama character varying(100) NOT NULL,
    harga integer NOT NULL,
    total integer NOT NULL,
    jumlah integer NOT NULL
);
    DROP TABLE public.pesanan;
       public         heap    postgres    false            ?            1259    49163    pesanan_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.pesanan_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.pesanan_id_seq;
       public          postgres    false    201            ?           0    0    pesanan_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.pesanan_id_seq OWNED BY public.pesanan.id;
          public          postgres    false    200            ?            1259    49184    produk    TABLE     ?   CREATE TABLE public.produk (
    id integer NOT NULL,
    nama character varying(100) NOT NULL,
    gambar text NOT NULL,
    harga integer NOT NULL,
    stok integer NOT NULL,
    deskripsi text NOT NULL
);
    DROP TABLE public.produk;
       public         heap    postgres    false            ?            1259    49182    produk_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.produk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.produk_id_seq;
       public          postgres    false    203            ?           0    0    produk_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.produk_id_seq OWNED BY public.produk.id;
          public          postgres    false    202            1           2604    57357    keranjang id    DEFAULT     l   ALTER TABLE ONLY public.keranjang ALTER COLUMN id SET DEFAULT nextval('public.keranjang_id_seq'::regclass);
 ;   ALTER TABLE public.keranjang ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    205    204    205            /           2604    49168 
   pesanan id    DEFAULT     h   ALTER TABLE ONLY public.pesanan ALTER COLUMN id SET DEFAULT nextval('public.pesanan_id_seq'::regclass);
 9   ALTER TABLE public.pesanan ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    200    201    201            0           2604    49187 	   produk id    DEFAULT     f   ALTER TABLE ONLY public.produk ALTER COLUMN id SET DEFAULT nextval('public.produk_id_seq'::regclass);
 8   ALTER TABLE public.produk ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    202    203    203            ?          0    57354 	   keranjang 
   TABLE DATA           U   COPY public.keranjang (id, namapemesan, nama, jumlah, harga, totalharga) FROM stdin;
    public          postgres    false    205          ?          0    49165    pesanan 
   TABLE DATA           A   COPY public.pesanan (id, nama, harga, total, jumlah) FROM stdin;
    public          postgres    false    201   Z       ?          0    49184    produk 
   TABLE DATA           J   COPY public.produk (id, nama, gambar, harga, stok, deskripsi) FROM stdin;
    public          postgres    false    203   w       ?           0    0    keranjang_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.keranjang_id_seq', 2, true);
          public          postgres    false    204            ?           0    0    pesanan_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.pesanan_id_seq', 1, false);
          public          postgres    false    200            ?           0    0    produk_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.produk_id_seq', 1, false);
          public          postgres    false    202            7           2606    57359    keranjang keranjang_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.keranjang
    ADD CONSTRAINT keranjang_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.keranjang DROP CONSTRAINT keranjang_pkey;
       public            postgres    false    205            3           2606    49170    pesanan pesanan_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.pesanan
    ADD CONSTRAINT pesanan_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.pesanan DROP CONSTRAINT pesanan_pkey;
       public            postgres    false    201            5           2606    49192    produk produk_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.produk
    ADD CONSTRAINT produk_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.produk DROP CONSTRAINT produk_pkey;
       public            postgres    false    203            ?   =   x?3?,?,?+????NUp?,Rp?/JN?4?45 N3#0?e??0(??(???UQ? ??%      ?      x?????? ? ?      ?   h  x?UR?n?0=?_1??[m#??H ?	?,p?&(rI#?-E
?P?r?G??%RH??F?:?k???T98????o,??j?e֙z???^?=٢68`??(S??[????????v??t?
???n?F<?dpG??I+?1???Q6??)w?uTY?	*???>???V)C?[?9^?j?}?fz8?;?7y?L?M?????;v?Uz?????(?\U(?????x"???a?H???)j??l?¶?W?ng???1?GV??T4?j[+??????6Őt??p?LN???x??Cm???????R$??j?ݙؕ&tF$Hv???#B? ??E???$??1?3?????}L????͔?-9??U?"??ȈЭ,??M0)??X_^?֗_.??o?????r?X?ޭ6p??????~^?Ӟ?S??^?W?Vu?;???N?;g{U
?2??R?=?!7?+?x????"?3?RQ??w???:,?(?!?y??P4?}'?N???rsQ;?u????j?,??/K?[X?z?F??1?????=iiUS??g?}??jˌ?Y???%{R?@epA?f~??9JmC	qc??xvD??G?|95JN26??M????^?     