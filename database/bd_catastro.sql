PGDMP     	    7            	    z            bd_catastro    14.5    14.5     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16394    bd_catastro    DATABASE     h   CREATE DATABASE bd_catastro WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Mexico.1252';
    DROP DATABASE bd_catastro;
                postgres    false            �            1259    16466    prueba    TABLE     �  CREATE TABLE public.prueba (
    nombrepredio character varying,
    avaluo character varying,
    departamento character varying,
    municipio character varying,
    tipodocumento character varying,
    numerodedocumento character varying,
    nombrespropietario character varying,
    apellidospropietario character varying,
    nit character varying,
    razon character varying,
    id integer NOT NULL,
    direccion character varying,
    telefono character varying,
    correoelectronico character varying,
    nombreconstruccion character varying,
    nombreterreno character varying,
    construccionnumeropisos character varying,
    construccionareatotal character varying,
    tipodeconstruccion character varying,
    construcciondireccion character varying,
    terrenoarea character varying,
    terrenovalorcomercial character varying,
    terrenofuentedeagua character varying,
    tipoterreno character varying
);
    DROP TABLE public.prueba;
       public         heap    postgres    false            �            1259    16465    prueba_id_seq    SEQUENCE     �   CREATE SEQUENCE public.prueba_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.prueba_id_seq;
       public          postgres    false    210            �           0    0    prueba_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.prueba_id_seq OWNED BY public.prueba.id;
          public          postgres    false    209            \           2604    16469 	   prueba id    DEFAULT     f   ALTER TABLE ONLY public.prueba ALTER COLUMN id SET DEFAULT nextval('public.prueba_id_seq'::regclass);
 8   ALTER TABLE public.prueba ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    209    210            �          0    16466    prueba 
   TABLE DATA           �  COPY public.prueba (nombrepredio, avaluo, departamento, municipio, tipodocumento, numerodedocumento, nombrespropietario, apellidospropietario, nit, razon, id, direccion, telefono, correoelectronico, nombreconstruccion, nombreterreno, construccionnumeropisos, construccionareatotal, tipodeconstruccion, construcciondireccion, terrenoarea, terrenovalorcomercial, terrenofuentedeagua, tipoterreno) FROM stdin;
    public          postgres    false    210   �       �           0    0    prueba_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.prueba_id_seq', 54, true);
          public          postgres    false    209            ^           2606    16473    prueba prueba_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.prueba
    ADD CONSTRAINT prueba_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.prueba DROP CONSTRAINT prueba_pkey;
       public            postgres    false    210            �      x������ � �     