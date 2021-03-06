PGDMP         *                w            tram    11.4    11.4 -    q           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            r           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            s           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            t           1262    41891    tram    DATABASE     b   CREATE DATABASE tram WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C' LC_CTYPE = 'C';
    DROP DATABASE tram;
             postgres    false            �            1259    41910    admins    TABLE     �   CREATE TABLE public.admins (
    id integer NOT NULL,
    a_name character varying(50),
    username character varying(25),
    password character varying(100)
);
    DROP TABLE public.admins;
       public         postgres    false            �            1259    41908    admins_id_seq    SEQUENCE     �   CREATE SEQUENCE public.admins_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.admins_id_seq;
       public       postgres    false    201            u           0    0    admins_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.admins_id_seq OWNED BY public.admins.id;
            public       postgres    false    200            �            1259    41894 	   customers    TABLE     �   CREATE TABLE public.customers (
    id integer NOT NULL,
    c_name character varying(50),
    username character varying(25),
    password character varying(100)
);
    DROP TABLE public.customers;
       public         postgres    false            �            1259    41892    customers_id_seq    SEQUENCE     �   CREATE SEQUENCE public.customers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.customers_id_seq;
       public       postgres    false    197            v           0    0    customers_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.customers_id_seq OWNED BY public.customers.id;
            public       postgres    false    196            �            1259    41931    orders    TABLE     �   CREATE TABLE public.orders (
    id integer NOT NULL,
    p_id integer,
    c_id integer,
    date date DEFAULT CURRENT_DATE,
    info character varying(500)
);
    DROP TABLE public.orders;
       public         postgres    false            �            1259    41929    orders_id_seq    SEQUENCE     �   CREATE SEQUENCE public.orders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.orders_id_seq;
       public       postgres    false    205            w           0    0    orders_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.orders_id_seq OWNED BY public.orders.id;
            public       postgres    false    204            �            1259    41918    products    TABLE     �   CREATE TABLE public.products (
    id integer NOT NULL,
    p_name character varying(50),
    price integer,
    img character varying(100),
    s_id integer
);
    DROP TABLE public.products;
       public         postgres    false            �            1259    41916    products_id_seq    SEQUENCE     �   CREATE SEQUENCE public.products_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.products_id_seq;
       public       postgres    false    203            x           0    0    products_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.products_id_seq OWNED BY public.products.id;
            public       postgres    false    202            �            1259    41902    stores    TABLE     �   CREATE TABLE public.stores (
    id integer NOT NULL,
    s_name character varying(50),
    username character varying(25),
    password character varying(100)
);
    DROP TABLE public.stores;
       public         postgres    false            �            1259    41900    stores_id_seq    SEQUENCE     �   CREATE SEQUENCE public.stores_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.stores_id_seq;
       public       postgres    false    199            y           0    0    stores_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.stores_id_seq OWNED BY public.stores.id;
            public       postgres    false    198            �           2604    41913 	   admins id    DEFAULT     f   ALTER TABLE ONLY public.admins ALTER COLUMN id SET DEFAULT nextval('public.admins_id_seq'::regclass);
 8   ALTER TABLE public.admins ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    200    201    201            �           2604    41897    customers id    DEFAULT     l   ALTER TABLE ONLY public.customers ALTER COLUMN id SET DEFAULT nextval('public.customers_id_seq'::regclass);
 ;   ALTER TABLE public.customers ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    197    196    197            �           2604    41934 	   orders id    DEFAULT     f   ALTER TABLE ONLY public.orders ALTER COLUMN id SET DEFAULT nextval('public.orders_id_seq'::regclass);
 8   ALTER TABLE public.orders ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    204    205    205            �           2604    41921    products id    DEFAULT     j   ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);
 :   ALTER TABLE public.products ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    203    202    203            �           2604    41905 	   stores id    DEFAULT     f   ALTER TABLE ONLY public.stores ALTER COLUMN id SET DEFAULT nextval('public.stores_id_seq'::regclass);
 8   ALTER TABLE public.stores ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    199    198    199            j          0    41910    admins 
   TABLE DATA               @   COPY public.admins (id, a_name, username, password) FROM stdin;
    public       postgres    false    201   �.       f          0    41894 	   customers 
   TABLE DATA               C   COPY public.customers (id, c_name, username, password) FROM stdin;
    public       postgres    false    197   U/       n          0    41931    orders 
   TABLE DATA               <   COPY public.orders (id, p_id, c_id, date, info) FROM stdin;
    public       postgres    false    205   �/       l          0    41918    products 
   TABLE DATA               @   COPY public.products (id, p_name, price, img, s_id) FROM stdin;
    public       postgres    false    203   >0       h          0    41902    stores 
   TABLE DATA               @   COPY public.stores (id, s_name, username, password) FROM stdin;
    public       postgres    false    199   J5       z           0    0    admins_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.admins_id_seq', 1, true);
            public       postgres    false    200            {           0    0    customers_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.customers_id_seq', 3, true);
            public       postgres    false    196            |           0    0    orders_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.orders_id_seq', 17, true);
            public       postgres    false    204            }           0    0    products_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.products_id_seq', 175, true);
            public       postgres    false    202            ~           0    0    stores_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.stores_id_seq', 3, true);
            public       postgres    false    198            �           2606    41915    admins admins_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.admins
    ADD CONSTRAINT admins_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.admins DROP CONSTRAINT admins_pkey;
       public         postgres    false    201            �           2606    41953    admins admins_username_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.admins
    ADD CONSTRAINT admins_username_key UNIQUE (username);
 D   ALTER TABLE ONLY public.admins DROP CONSTRAINT admins_username_key;
       public         postgres    false    201            �           2606    41899    customers customers_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.customers DROP CONSTRAINT customers_pkey;
       public         postgres    false    197            �           2606    41949     customers customers_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.customers DROP CONSTRAINT customers_username_key;
       public         postgres    false    197            �           2606    41937    orders orders_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_pkey;
       public         postgres    false    205            �           2606    41923    products products_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.products DROP CONSTRAINT products_pkey;
       public         postgres    false    203            �           2606    41907    stores stores_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.stores
    ADD CONSTRAINT stores_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.stores DROP CONSTRAINT stores_pkey;
       public         postgres    false    199            �           2606    41951    stores stores_username_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.stores
    ADD CONSTRAINT stores_username_key UNIQUE (username);
 D   ALTER TABLE ONLY public.stores DROP CONSTRAINT stores_username_key;
       public         postgres    false    199            �           2606    41943    orders orders_c_id_fkey    FK CONSTRAINT     w   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_c_id_fkey FOREIGN KEY (c_id) REFERENCES public.customers(id);
 A   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_c_id_fkey;
       public       postgres    false    3034    205    197            �           2606    41938    orders orders_p_id_fkey    FK CONSTRAINT     v   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_p_id_fkey FOREIGN KEY (p_id) REFERENCES public.products(id);
 A   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_p_id_fkey;
       public       postgres    false    205    3046    203            �           2606    41924    products products_s_id_fkey    FK CONSTRAINT     x   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_s_id_fkey FOREIGN KEY (s_id) REFERENCES public.stores(id);
 E   ALTER TABLE ONLY public.products DROP CONSTRAINT products_s_id_fkey;
       public       postgres    false    203    199    3038            j   U   x�3�,)J�M�L�C0T��TT�-|���³#}J�CB���\�JÂ}��r#2+��C�2�C��#3�3�̍K�b���� ��      f   �   x�3�,)J�M�L�C0T��TT�-|���³#}J�CB���\�JÂ}��r#2+��C�2�C��#3�3�̍K��14����R�Q�^���\��U��WX�li^ibT���b������������� �5p      n   7   x�34�0�4�420��5��5��L,N".C3NS4��b.CsN\1z\\\ M�      l   �  x�mV�r�6<���?y�&���YQE�)_�\�X �����X�QRiWf����fG�H� ��TӗJ�����v�"��k��m=�{�j�xx�lNm�Ysz��u�	��)����1O�DY��)~uB�n֒�lw��|@w�Ni�m���-�h�Q����2��o'd��?�az����DeȲ�G�,NI?k|��f��t�툰�$8e���9�;����z'zoT/�jmJ���� �N��Y�Y3z����v�u��ȵ9}N��X?.�4V5�4- �q1j�|��-/�B������n3V�ItΎF�4'�!��@R��^$�Y	j6�u���{���ᴷ�P��r����{Pm�`O�A|��$U�-�G�ޡŉ�3J; �*��Ԭ&����:����Lw%�K.���$�A)j�`��A��h;tH�O���Dw\`�Z�̂��[�=�Y`9�����k���u8I>:e��d�k1w��h[I2;E���0��`"^������:�~�H�z<ZiTgG�r�/)�I�#�:L��mƤ���mO�x\�|�O2��޿�'eZ�G�1v����hm�։ò"��!�,��َ�Ĺ'�g�0�Uh
�����Ӱ��@�:z0���+Ɯ�>�1'�@^�	sʔ��YIO�>AuF�h��0*�ݪɚd�/C�f5�Q��Q7�Q��3�`m�YK϶��5�z�Γ;��p5Y�T�n6}�����b� 4��Z\D0�!&Op�Н��+�+����1bJ���_*�#Hpk1� 7�AG��4���W�|��$��� �w��X�N"^m�^�����Fyv,c�6�x�	�m���;�17.T�</�R�\dh�ނ\��֚�",$ӂ$x��c�5!��`Q`Z�,�����V�d�#Ī�4T�&�;1���u�?D��5_5�ǒ�PrѬ�p��T�񙽴���J�0@�g���)KVr��������3�@���UBi�^���2�E_ːV�����í�JU�\�ܸ,4�|s�H��a��&�U(%tI&݋��V��ʖ��㒘@f\�Ӑ�{��=�����L�q6��4�,�2�<�Q�F���˰+�BѨ��i�&:���"�3�f�]�r�Yg��2P�G��G�l��Z�􄹱�2�Z�K���eg�Ʒe�� ��[y}��p��}�1��튁�������SC�b9�4��n�u��s
���Y~�ۘ����"n-IL����)w�zݒ_}�������'      h   k   x�3�,)J�M�L�C0T��TT�-|���³#}J�CB���\�JÂ}��r#2+��C�2�C��#3�3�̍K�����Y
���i�Y\�_�
%)2*F��� �PM�     