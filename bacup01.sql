PGDMP     5                	    w            sanpham    12.0    12.0                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            	           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            
           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16393    sanpham    DATABASE     �   CREATE DATABASE sanpham WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
    DROP DATABASE sanpham;
                postgres    false            �            1259    16398    product_info    TABLE     �   CREATE TABLE public.product_info (
    id bigint NOT NULL,
    product_name text,
    product_price bigint NOT NULL,
    image text
);
     DROP TABLE public.product_info;
       public         heap    postgres    false            �            1259    16394    product_info_id_seq    SEQUENCE     |   CREATE SEQUENCE public.product_info_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.product_info_id_seq;
       public          postgres    false    204                       0    0    product_info_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.product_info_id_seq OWNED BY public.product_info.id;
          public          postgres    false    202            �            1259    16396    product_info_product_price_seq    SEQUENCE     �   CREATE SEQUENCE public.product_info_product_price_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.product_info_product_price_seq;
       public          postgres    false    204                       0    0    product_info_product_price_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.product_info_product_price_seq OWNED BY public.product_info.product_price;
          public          postgres    false    203            �
           2604    16401    product_info id    DEFAULT     r   ALTER TABLE ONLY public.product_info ALTER COLUMN id SET DEFAULT nextval('public.product_info_id_seq'::regclass);
 >   ALTER TABLE public.product_info ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    204    202    204            �
           2604    16402    product_info product_price    DEFAULT     �   ALTER TABLE ONLY public.product_info ALTER COLUMN product_price SET DEFAULT nextval('public.product_info_product_price_seq'::regclass);
 I   ALTER TABLE public.product_info ALTER COLUMN product_price DROP DEFAULT;
       public          postgres    false    204    203    204                      0    16398    product_info 
   TABLE DATA           N   COPY public.product_info (id, product_name, product_price, image) FROM stdin;
    public          postgres    false    204   �                  0    0    product_info_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.product_info_id_seq', 11, true);
          public          postgres    false    202                       0    0    product_info_product_price_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.product_info_product_price_seq', 1, false);
          public          postgres    false    203            �
           2606    16407    product_info product_info_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.product_info
    ADD CONSTRAINT product_info_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.product_info DROP CONSTRAINT product_info_pkey;
       public            postgres    false    204               �  x��S=��6��_��%EҲ$���6v�u���f���D���F�: m��rH �얛?�r��Eb	RF9��{��M,~��Z?�Z4&�4@���nr������JI�q�8�	�,M�U�
J��&b$\��h\����/VsB�s=:#��R��k6'r�n�CA����X��A��b��(y����F�����0��zrN'���م@��2�g@B���%��x]P[�j�=RQ����.�	���#j��i������?�m=ǭ�5^�&�
�F�YPpW���O}˘�X���h��H�G��?>�;�����M@�)��6�	��	W�#
%�S.�kt��ZDѲk�UhJrK�4p�������[;�w�M�'s�i*^�6��U����*i�2�pl�˫�7l���>1W/.c�_`�E�ʔNs6˓TE�4�	c22��u�W�j�\�`Jip}��~\h����:�'|�;%d��E��8R}��#����9�X\�-.n�כ�ի"n%���˷�7�n#�o�Wkc^[�l�>���$~3b�������O����}�xO{�[h5 ?�_��̑tޭMn�
�">%ގF	T��s�Q�,�Z!0�ʿ:�z�zw�ΛQhDI��?J�9��4��,>�}�[��㶧�o뿬C�^���(��;����rؼ�I���hzD�G���~�`�*��B�$��s�j��rL$��l�M�,�e$gI���,�L _�����t�i     