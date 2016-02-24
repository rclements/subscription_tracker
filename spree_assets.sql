--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

DROP INDEX public.index_assets_on_viewable_type_and_type;
DROP INDEX public.index_assets_on_viewable_id;
ALTER TABLE ONLY public.spree_assets DROP CONSTRAINT spree_assets_pkey;
ALTER TABLE public.spree_assets ALTER COLUMN id DROP DEFAULT;
DROP SEQUENCE public.spree_assets_id_seq;
DROP TABLE public.spree_assets;
SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: spree_assets; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE spree_assets (
    id integer NOT NULL,
    viewable_id integer,
    viewable_type character varying,
    attachment_width integer,
    attachment_height integer,
    attachment_file_size integer,
    "position" integer,
    attachment_content_type character varying,
    attachment_file_name character varying,
    type character varying(75),
    attachment_updated_at timestamp without time zone,
    alt text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


--
-- Name: spree_assets_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE spree_assets_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: spree_assets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE spree_assets_id_seq OWNED BY spree_assets.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY spree_assets ALTER COLUMN id SET DEFAULT nextval('spree_assets_id_seq'::regclass);


--
-- Data for Name: spree_assets; Type: TABLE DATA; Schema: public; Owner: -
--

COPY spree_assets (id, viewable_id, viewable_type, attachment_width, attachment_height, attachment_file_size, "position", attachment_content_type, attachment_file_name, type, attachment_updated_at, alt, created_at, updated_at) FROM stdin;
1	7	Spree::Variant	\N	\N	611469	1	image/png	En_Esto_Creemos_IMAGE1.png	Spree::Image	2016-01-29 20:35:17.568677	\N	2016-01-29 20:35:18.094731	2016-01-29 20:35:29.585474
2	10	Spree::Variant	\N	\N	310214	1	image/png	100_Youth_Group_Games_IMAGE1.png	Spree::Image	2016-01-29 20:35:30.403371	\N	2016-01-29 20:35:30.963828	2016-01-29 20:35:33.412376
4	12	Spree::Variant	\N	\N	101730	1	image/jpeg	12_Christmas_Sermons_IMAGE1.jpg	Spree::Image	2016-01-29 20:41:27.228647	\N	2016-01-29 20:41:27.524712	2016-01-29 20:41:31.817266
5	18	Spree::Variant	\N	\N	130575	1	image/png	15000_Water_Balloons_IMAGE1.png	Spree::Image	2016-01-29 20:41:35.986356	\N	2016-01-29 20:41:36.301749	2016-01-29 20:41:39.234206
6	20	Spree::Variant	\N	\N	57476	1	image/jpeg	30_OnRamps_to_246_IMAGE1.jpg	Spree::Image	2016-01-29 20:41:41.390365	\N	2016-01-29 20:41:41.669494	2016-01-29 20:41:42.843675
7	22	Spree::Variant	\N	\N	36781	1	image/jpeg	5_Easy_Steps_to_Church_Website_IMAGE1.jpg	Spree::Image	2016-01-29 20:41:44.57962	\N	2016-01-29 20:41:44.827777	2016-01-29 20:41:45.963509
8	24	Spree::Variant	\N	\N	405962	1	image/png	Biographical_Sketch_of_Henry_Clay_Morrison_IMAGE1.png	Spree::Image	2016-01-29 20:42:56.436354	\N	2016-01-29 20:42:56.84372	2016-01-29 20:42:59.559801
9	26	Spree::Variant	\N	\N	46977	1	image/jpeg	Book_of_Days_IMAGE1.jpg	Spree::Image	2016-01-29 20:42:59.703856	\N	2016-01-29 20:42:59.975961	2016-01-29 20:43:01.143857
10	28	Spree::Variant	\N	\N	60967	1	image/jpeg	Christian_Conception_of_Markets_IMAGE1.jpg	Spree::Image	2016-01-29 20:43:03.858728	\N	2016-01-29 20:43:04.128818	2016-01-29 20:43:05.35263
11	30	Spree::Variant	\N	\N	496716	1	image/png	Commentary_on_Pauls_Epistle_IMAGE1.png	Spree::Image	2016-01-29 20:44:54.694703	\N	2016-01-29 20:44:55.131926	2016-01-29 20:44:58.602023
12	32	Spree::Variant	\N	\N	174621	1	image/png	Christian_Perfection_IMAGE1.png	Spree::Image	2016-01-29 20:45:05.071001	\N	2016-01-29 20:45:05.369803	2016-01-29 20:45:07.566506
13	37	Spree::Variant	\N	\N	474799	1	image/png	Wesley_Bibliography_IMAGE1.png	Spree::Image	2016-01-29 20:46:38.629841	\N	2016-01-29 20:46:39.051413	2016-01-29 20:46:43.006172
14	39	Spree::Variant	\N	\N	264522	1	image/png	Workman_Not_Ashamed_IMAGE1.png	Spree::Image	2016-01-29 20:47:34.646934	\N	2016-01-29 20:47:35.047008	2016-01-29 20:47:37.187444
15	41	Spree::Variant	\N	\N	45034	1	image/jpeg	About_Abortion_IMAGE1.jpg	Spree::Image	2016-01-29 20:47:50.161529	\N	2016-01-29 20:47:50.447566	2016-01-29 20:47:52.991832
16	46	Spree::Variant	\N	\N	37296	1	image/jpeg	Acolytes_IMAGE1.jpg	Spree::Image	2016-01-29 20:47:53.310411	\N	2016-01-29 20:47:53.558037	2016-01-29 20:47:55.180287
17	49	Spree::Variant	\N	\N	80995	1	image/jpeg	All_Saints_Day_IMAGE1.jpg	Spree::Image	2016-01-29 20:47:57.849274	\N	2016-01-29 20:47:58.129588	2016-01-29 20:48:00.047417
18	51	Spree::Variant	\N	\N	15237	1	image/jpeg	Door_was_shut_IMAGE1.jpg	Spree::Image	2016-01-29 20:48:01.175041	\N	2016-01-29 20:48:01.413573	2016-01-29 20:48:02.439281
19	53	Spree::Variant	\N	\N	105585	1	image/jpeg	Appreciation_IMAGE1.jpg	Spree::Image	2016-01-29 20:48:34.63038	\N	2016-01-29 20:48:34.907164	2016-01-29 20:48:37.500792
20	55	Spree::Variant	\N	\N	66483	1	image/jpeg	Spiritual_Gifts_for_Today_IMAGE1.jpg	Spree::Image	2016-01-29 20:48:38.09136	\N	2016-01-29 20:48:38.334837	2016-01-29 20:48:40.098433
21	57	Spree::Variant	\N	\N	61834	1	image/jpeg	Arminianism_FAQ_IMAGE1.jpg	Spree::Image	2016-01-29 20:48:48.819622	\N	2016-01-29 20:48:49.07085	2016-01-29 20:48:52.89441
22	59	Spree::Variant	\N	\N	75366	1	image/jpeg	Arminianism_FAQ_Portuguese_IMAGE1.jpg	Spree::Image	2016-01-29 20:48:57.088762	\N	2016-01-29 20:48:57.344558	2016-01-29 20:48:58.839648
23	61	Spree::Variant	\N	\N	80289	1	image/jpeg	Awakening_Holiness_IMAGE1.jpg	Spree::Image	2016-01-29 20:49:01.051017	\N	2016-01-29 20:49:01.31763	2016-01-29 20:49:03.021175
24	63	Spree::Variant	\N	\N	217423	1	image/png	Baptism_Holy_Spirit_IMAGE1.png	Spree::Image	2016-01-29 20:49:08.779858	\N	2016-01-29 20:49:09.136333	2016-01-29 20:49:12.96569
25	65	Spree::Variant	\N	\N	8763	1	image/jpeg	Basic_UM_Beliefs_IMAGE1.jpg	Spree::Image	2016-01-29 20:49:13.177078	\N	2016-01-29 20:49:13.366312	2016-01-29 20:49:14.769302
26	68	Spree::Variant	\N	\N	53886	1	image/jpeg	Beyond_the_Deception_of_Depression_IMAGE1.jpg	Spree::Image	2016-01-29 20:49:24.919455	\N	2016-01-29 20:49:25.210983	2016-01-29 20:49:26.366506
27	73	Spree::Variant	\N	\N	70849	1	image/jpeg	Called_IMAGE1.jpg	Spree::Image	2016-01-29 20:50:05.221737	\N	2016-01-29 20:50:05.491681	2016-01-29 20:50:07.667043
28	78	Spree::Variant	\N	\N	77584	1	image/jpeg	Campus_Gods_IMAGE1.jpg	Spree::Image	2016-01-29 20:50:20.204419	\N	2016-01-29 20:50:20.474074	2016-01-29 20:50:22.036326
29	83	Spree::Variant	\N	\N	65973	1	image/jpeg	7MS_Trust_Bible_Translations_IMAGE1.jpg	Spree::Image	2016-01-29 20:50:22.560672	\N	2016-01-29 20:50:22.807349	2016-01-29 20:50:24.075651
30	85	Spree::Variant	\N	\N	78825	1	image/jpeg	Centurion_IMAGE1.jpg	Spree::Image	2016-01-29 20:50:28.231626	\N	2016-01-29 20:50:28.484603	2016-01-29 20:50:30.707785
31	87	Spree::Variant	\N	\N	61040	1	image/jpeg	7MS_Christian_Hospitality_IMAGE1.jpg	Spree::Image	2016-01-29 20:50:31.221056	\N	2016-01-29 20:50:31.469677	2016-01-29 20:50:32.92812
32	89	Spree::Variant	\N	\N	114422	1	image/jpeg	Christian_to_the_Core_IMAGE1.jpg	Spree::Image	2016-01-29 20:50:33.124904	\N	2016-01-29 20:50:33.380932	2016-01-29 20:50:34.885676
33	92	Spree::Variant	\N	\N	456488	1	image/png	Christian_to_the_Core_Devo_IMAGE1.jpg	Spree::Image	2016-01-29 20:50:35.082158	\N	2016-01-29 20:50:35.412008	2016-01-29 20:50:38.860822
34	95	Spree::Variant	\N	\N	68026	1	image/jpeg	7MS_Christans_Terrorism_2_IMAGE1.jpg	Spree::Image	2016-01-29 20:50:39.428731	\N	2016-01-29 20:50:39.683797	2016-01-29 20:50:40.988224
35	97	Spree::Variant	\N	\N	63694	1	image/jpeg	7MS_Christans_Terrorism_1_IMAGE1.jpg	Spree::Image	2016-01-29 20:50:41.450628	\N	2016-01-29 20:50:41.700785	2016-01-29 20:50:43.461253
36	99	Spree::Variant	\N	\N	62056	1	image/jpeg	7MS_Church_Faithfulness_IMAGE1.jpg	Spree::Image	2016-01-29 20:50:44.052692	\N	2016-01-29 20:50:44.305311	2016-01-29 20:50:45.765076
37	103	Spree::Variant	\N	\N	242645	1	image/png	Come_Holy_Spirit_IMAGE1.png	Spree::Image	2016-01-29 20:50:50.812107	\N	2016-01-29 20:50:51.218997	2016-01-29 20:50:54.67661
38	105	Spree::Variant	\N	\N	63417	1	image/jpeg	7MS_Contemporary_Worship_Music_IMAGE1.jpg	Spree::Image	2016-01-29 20:50:55.215761	\N	2016-01-29 20:50:55.472782	2016-01-29 20:50:56.793787
39	107	Spree::Variant	\N	\N	102383	1	image/jpeg	Credo_IMAGE1.jpg	Spree::Image	2016-01-29 20:50:57.014913	\N	2016-01-29 20:50:57.283185	2016-01-29 20:50:58.617944
40	110	Spree::Variant	\N	\N	44874	1	image/jpeg	CREED_IMAGE1.jpg	Spree::Image	2016-01-29 20:51:13.130009	\N	2016-01-29 20:51:13.381694	2016-01-29 20:51:14.477951
41	117	Spree::Variant	\N	\N	442188	1	image/png	Descent_IMAGE1.png	Spree::Image	2016-01-29 20:51:33.304859	\N	2016-01-29 20:51:33.685438	2016-01-29 20:51:38.09571
42	119	Spree::Variant	\N	\N	63098	1	image/jpeg	7MS_Discipleship_in_Mark_IMAGE1.jpg	Spree::Image	2016-01-29 20:51:38.623636	\N	2016-01-29 20:51:38.901017	2016-01-29 20:51:40.10096
43	121	Spree::Variant	\N	\N	78084	1	image/jpeg	Discovery_IMAGE1.jpg	Spree::Image	2016-01-29 20:51:40.340565	\N	2016-01-29 20:51:40.599905	2016-01-29 20:51:42.004145
44	124	Spree::Variant	\N	\N	103002	1	image/png	Echo_IMAGE1.png	Spree::Image	2016-01-29 20:51:44.567339	\N	2016-01-29 20:51:44.864581	2016-01-29 20:51:46.403153
45	127	Spree::Variant	\N	\N	84113	1	image/jpeg	Embrace_IMAGE1.jpg	Spree::Image	2016-01-29 20:51:50.275034	\N	2016-01-29 20:51:50.533985	2016-01-29 20:51:52.112809
46	129	Spree::Variant	\N	\N	40397	1	image/jpeg	Encounter_Jesus_IMAGE1.jpg	Spree::Image	2016-01-29 20:52:01.422696	\N	2016-01-29 20:52:01.701568	2016-01-29 20:52:02.788814
47	152	Spree::Variant	\N	\N	271406	1	image/png	Entire_Sanctification_IMAGE1.png	Spree::Image	2016-01-29 20:52:33.104119	\N	2016-01-29 20:52:33.459675	2016-01-29 20:52:37.789823
48	154	Spree::Variant	\N	\N	70903	1	image/jpeg	Epic_of_Eden_IMAGE1.jpg	Spree::Image	2016-01-29 20:53:43.336722	\N	2016-01-29 20:53:43.585154	2016-01-29 20:53:44.974552
49	161	Spree::Variant	\N	\N	47467	1	image/jpeg	Extravagant_Sowers_IMAGE1.jpg	Spree::Image	2016-01-29 20:53:46.543964	\N	2016-01-29 20:53:46.789377	2016-01-29 20:53:47.845601
50	163	Spree::Variant	\N	\N	22039	1	image/jpeg	Field_Guide_Daily_Prayer_IMAGE1.jpg	Spree::Image	2016-01-29 20:53:48.123514	\N	2016-01-29 20:53:48.455434	2016-01-29 20:53:49.436135
51	166	Spree::Variant	\N	\N	183817	1	image/png	Five_Great_Needs_IMAGE1.png	Spree::Image	2016-01-29 20:53:53.027557	\N	2016-01-29 20:53:53.357055	2016-01-29 20:53:54.884412
52	168	Spree::Variant	\N	\N	72815	1	image/jpeg	Forgetting_How_to_Blush_IMAGE1.jpg	Spree::Image	2016-01-29 20:53:55.133396	\N	2016-01-29 20:53:55.388415	2016-01-29 20:53:56.811706
53	171	Spree::Variant	\N	\N	458618	1	image/jpeg	Fresh_Expressions_IMAGE1.jpg	Spree::Image	2016-01-29 20:54:11.885827	\N	2016-01-29 20:54:12.339803	2016-01-29 20:54:14.552013
54	176	Spree::Variant	\N	\N	204559	1	image/jpeg	From_Almost_to_Altogether_IMAGE1.jpg	Spree::Image	2016-01-29 20:54:29.985655	\N	2016-01-29 20:54:30.511929	2016-01-29 20:54:33.208062
57	185	Spree::Variant	\N	\N	1083994	1	image/jpeg	Fulfilling_Great_Commission_IMAGE1.jpg	Spree::Image	2016-01-29 20:55:34.371113	\N	2016-01-29 20:55:36.004125	2016-01-29 20:55:39.642645
55	181	Spree::Variant	\N	\N	46001	1	image/jpeg	Institution_to_Movement_IMAGE1.jpg	Spree::Image	2016-01-29 20:54:40.436058	\N	2016-01-29 20:54:40.69209	2016-01-29 20:54:43.029792
56	183	Spree::Variant	\N	\N	254027	1	image/png	Pulpit_to_Perdition_IMAGE1.png	Spree::Image	2016-01-29 20:55:19.822858	\N	2016-01-29 20:55:20.174697	2016-01-29 20:55:26.225146
58	189	Spree::Variant	\N	\N	60512	1	image/jpeg	7MS_Genesis_Science_IMAGE1.jpg	Spree::Image	2016-01-29 20:55:40.493728	\N	2016-01-29 20:55:40.749378	2016-01-29 20:55:42.414301
59	191	Spree::Variant	\N	\N	43260	1	image/jpeg	Give_Me_That_book_IMAGE1.jpg	Spree::Image	2016-01-29 20:55:45.155801	\N	2016-01-29 20:55:45.404737	2016-01-29 20:55:47.095995
60	193	Spree::Variant	\N	\N	62780	1	image/jpeg	God_is_Friendship_IMAGE1.jpg	Spree::Image	2016-01-29 20:56:10.157867	\N	2016-01-29 20:56:10.525688	2016-01-29 20:56:12.887757
61	200	Spree::Variant	\N	\N	221965	1	image/png	Halls_Aflame_IMAGE1.png	Spree::Image	2016-01-29 20:56:49.88353	\N	2016-01-29 20:56:50.188693	2016-01-29 20:56:54.335567
62	202	Spree::Variant	\N	\N	119165	1	image/png	He_Healed_Them_IMAGE1.png	Spree::Image	2016-01-29 20:57:00.529287	\N	2016-01-29 20:57:00.82873	2016-01-29 20:57:06.402842
63	204	Spree::Variant	\N	\N	63827	1	image/jpeg	7MS_Homosexuality_Scripture_IMAGE1.jpg	Spree::Image	2016-01-29 20:57:06.973022	\N	2016-01-29 20:57:07.215988	2016-01-29 20:57:08.64186
64	206	Spree::Variant	\N	\N	34804	1	image/jpeg	Homosexuality_and_the_Church_IMAGE1.jpg	Spree::Image	2016-01-29 20:57:22.11486	\N	2016-01-29 20:57:22.408342	2016-01-29 20:57:23.451732
65	211	Spree::Variant	\N	\N	69350	1	image/jpeg	7MS_Wesleyan_Methodist_IMAGE1.jpg	Spree::Image	2016-01-29 20:57:23.887074	\N	2016-01-29 20:57:24.135664	2016-01-29 20:57:25.867587
66	213	Spree::Variant	\N	\N	38790	1	image/jpeg	I_Believe_IMAGE1.jpg	Spree::Image	2016-01-29 20:57:26.068584	\N	2016-01-29 20:57:26.31299	2016-01-29 20:57:27.728346
67	216	Spree::Variant	\N	\N	44514	1	image/jpeg	Timothy_Tennent_Islam_IMAGE1.jpg	Spree::Image	2016-01-29 20:57:27.943015	\N	2016-01-29 20:57:28.167699	2016-01-29 20:57:30.264394
68	220	Spree::Variant	\N	\N	313600	1	image/png	World_Better_or_Worse_IMAGE1.png	Spree::Image	2016-01-29 20:58:58.037258	\N	2016-01-29 20:58:58.38146	2016-01-29 20:59:03.051455
69	222	Spree::Variant	\N	\N	66136	1	image/jpeg	7MS_Jesus_Means_of_Grace_IMAGE1.jpg	Spree::Image	2016-01-29 20:59:03.572538	\N	2016-01-29 20:59:03.819353	2016-01-29 20:59:05.109967
70	224	Spree::Variant	\N	\N	32115	1	image/jpeg	JWC_Letter_to_Romans_IMAGE1.jpg	Spree::Image	2016-01-29 20:59:15.071325	\N	2016-01-29 20:59:15.323418	2016-01-29 20:59:16.395095
71	229	Spree::Variant	\N	\N	299332	1	image/png	John_Wesley_Heart_Warming_Religion_IMAGE1.png	Spree::Image	2016-01-29 20:59:26.274419	\N	2016-01-29 20:59:26.659561	2016-01-29 20:59:32.797444
72	231	Spree::Variant	\N	\N	60652	1	image/jpeg	7MS_Justification_by_Faith_IMAGE1.jpg	Spree::Image	2016-01-29 20:59:33.317394	\N	2016-01-29 20:59:33.570773	2016-01-29 20:59:34.749436
73	233	Spree::Variant	\N	\N	177892	1	image/png	JustificatIon_IMAGE1.png	Spree::Image	2016-01-29 20:59:39.067489	\N	2016-01-29 20:59:39.348652	2016-01-29 20:59:41.333234
74	235	Spree::Variant	\N	\N	299991	1	image/png	Keswick_IMAGE1.png	Spree::Image	2016-01-29 20:59:48.816314	\N	2016-01-29 20:59:49.146134	2016-01-29 20:59:54.778514
75	237	Spree::Variant	\N	\N	88876	1	image/jpeg	Leaving_Behind_Left_Behind_IMAGE1.jpg	Spree::Image	2016-01-29 20:59:58.749924	\N	2016-01-29 20:59:59.008002	2016-01-29 21:00:01.068241
76	242	Spree::Variant	\N	\N	60096	1	image/jpeg	Love_Listen_Laugh_IMAGE1.jpg	Spree::Image	2016-01-29 21:00:22.622166	\N	2016-01-29 21:00:22.857436	2016-01-29 21:00:26.009762
77	244	Spree::Variant	\N	\N	32458	1	image/jpeg	Making_Manifest_IMAGE1.jpg	Spree::Image	2016-01-29 21:00:47.491872	\N	2016-01-29 21:00:47.765165	2016-01-29 21:00:50.261103
78	249	Spree::Variant	\N	\N	1069769	1	image/jpeg	Marriage_Incubator_IMAGE1.jpg	Spree::Image	2016-01-29 21:00:50.569459	\N	2016-01-29 21:00:52.997251	2016-01-29 21:00:57.618283
79	254	Spree::Variant	\N	\N	44636	1	image/jpeg	Motherhood_as_a_Spiritual_Practice_IMAGE1.jpg	Spree::Image	2016-01-29 21:01:02.047873	\N	2016-01-29 21:01:02.391363	2016-01-29 21:01:03.877285
80	256	Spree::Variant	\N	\N	49543	1	image/jpeg	My_Pentecost_IMAGE1.jpg	Spree::Image	2016-01-29 21:01:05.696858	\N	2016-01-29 21:01:05.947597	2016-01-29 21:01:07.025255
81	259	Spree::Variant	\N	\N	29990	1	image/png	New_Room_Conference_IMAGE1.png	Spree::Image	2016-01-29 21:01:07.367504	\N	2016-01-29 21:01:07.635284	2016-01-29 21:01:08.686579
82	263	Spree::Variant	\N	\N	45839	1	image/jpeg	Noise_Hurry_Crowds_IMAGE1.jpg	Spree::Image	2016-01-29 21:01:49.836147	\N	2016-01-29 21:01:50.13342	2016-01-29 21:01:53.822376
83	268	Spree::Variant	\N	\N	43422	1	image/jpeg	Not_Yet_Christmas_IMAGE1.jpg	Spree::Image	2016-01-29 21:02:25.324795	\N	2016-01-29 21:02:25.610194	2016-01-29 21:02:28.238716
84	273	Spree::Variant	\N	\N	56318	1	image/jpeg	Invitation_IMAGE1.jpg	Spree::Image	2016-01-29 21:02:52.168552	\N	2016-01-29 21:02:52.469742	2016-01-29 21:02:56.10681
85	280	Spree::Variant	\N	\N	296884	1	image/png	Optimism_PreMillennialism_IMAGE1.png	Spree::Image	2016-01-29 21:05:08.524347	\N	2016-01-29 21:05:08.897353	2016-01-29 21:05:11.528438
86	289	Spree::Variant	\N	\N	51592	1	image/jpeg	Pastoral_Burnout_IMAGE1.jpg	Spree::Image	2016-01-29 21:05:38.59582	\N	2016-01-29 21:05:38.844466	2016-01-29 21:05:41.015351
87	291	Spree::Variant	\N	\N	19852	1	image/jpeg	Populist_Saints_IMAGE1.jpg	Spree::Image	2016-01-29 21:05:47.226569	\N	2016-01-29 21:05:47.451732	2016-01-29 21:05:49.780635
88	293	Spree::Variant	\N	\N	35527	1	image/jpeg	Practicing_Fatherhood_IMAGE1.jpg	Spree::Image	2016-01-29 21:05:58.594028	\N	2016-01-29 21:05:58.882832	2016-01-29 21:06:01.131665
89	295	Spree::Variant	\N	\N	97663	1	image/jpeg	Preaching_Wesleyan_Tradition_IMAGE1.jpg	Spree::Image	2016-01-29 21:06:50.383435	\N	2016-01-29 21:06:50.618127	2016-01-29 21:06:55.096519
90	297	Spree::Variant	\N	\N	36866	1	image/jpeg	Preparing_for_Ordination_IMAGE1.jpg	Spree::Image	2016-01-29 21:06:56.531593	\N	2016-01-29 21:06:56.764123	2016-01-29 21:06:57.95216
91	299	Spree::Variant	\N	\N	289489	1	image/png	Prophecies_Fulfilled_and_Fulfilling_IMAGE1.png	Spree::Image	2016-01-29 21:07:11.841339	\N	2016-01-29 21:07:12.206398	2016-01-29 21:07:20.258111
92	301	Spree::Variant	\N	\N	48920	1	image/jpeg	Putting_the_Plot_Back_in_Preaching_IMAGE1.jpg	Spree::Image	2016-01-29 21:07:23.844542	\N	2016-01-29 21:07:24.108846	2016-01-29 21:07:25.213925
93	303	Spree::Variant	\N	\N	58646	1	image/jpeg	Race_Gospel_IMAGE1.jpg	Spree::Image	2016-01-29 21:07:25.647764	\N	2016-01-29 21:07:25.903351	2016-01-29 21:07:27.068391
94	305	Spree::Variant	\N	\N	216371	1	image/png	Reclaiming_Youth_Ministry_IMAGE1.png	Spree::Image	2016-01-29 21:07:43.445512	\N	2016-01-29 21:07:43.822206	2016-01-29 21:07:47.504222
95	310	Spree::Variant	\N	\N	268901	1	image/png	Religious_Trends_of_Today_IMAGE1.png	Spree::Image	2016-01-29 21:08:17.638498	\N	2016-01-29 21:08:17.994799	2016-01-29 21:08:23.703573
96	312	Spree::Variant	\N	\N	192820	1	image/png	Remarkable_Conversations_IMAGE1.png	Spree::Image	2016-01-29 21:08:36.226232	\N	2016-01-29 21:08:36.595644	2016-01-29 21:08:40.248241
97	314	Spree::Variant	\N	\N	21558	1	image/jpeg	Resemble_IMAGE1.jpg	Spree::Image	2016-01-29 21:08:45.475428	\N	2016-01-29 21:08:45.710121	2016-01-29 21:08:47.187848
98	316	Spree::Variant	\N	\N	59171	1	image/jpeg	Resurrection_IMAGE1.jpg	Spree::Image	2016-01-29 21:08:47.413991	\N	2016-01-29 21:08:47.654831	2016-01-29 21:08:48.89649
99	319	Spree::Variant	\N	\N	396055	1	image/png	Rhythms_of_Restoration_IMAGE1.png	Spree::Image	2016-01-29 21:09:02.555825	\N	2016-01-29 21:09:03.001639	2016-01-29 21:09:05.797613
100	324	Spree::Variant	\N	\N	62178	1	image/jpeg	Rhythms_of_Restoration_Short_IMAGE1.jpg	Spree::Image	2016-01-29 21:09:11.959814	\N	2016-01-29 21:09:12.210351	2016-01-29 21:09:15.958817
101	331	Spree::Variant	\N	\N	46868	1	image/jpeg	Seeing_Black_and_White_in_a_Gray_World_IMAGE1.jpg	Spree::Image	2016-01-29 21:09:52.804342	\N	2016-01-29 21:09:53.078769	2016-01-29 21:09:55.77228
102	337	Spree::Variant	\N	\N	67451	1	image/jpeg	Seven_Keys_IMAGE1.jpg	Spree::Image	2016-01-29 21:10:33.22803	\N	2016-01-29 21:10:33.478476	2016-01-29 21:10:34.947479
103	339	Spree::Variant	\N	\N	64720	1	image/jpeg	7MS_Seven_Signs_Johns_Gospel_IMAGE1.jpg	Spree::Image	2016-01-29 21:10:35.728298	\N	2016-01-29 21:10:35.990634	2016-01-29 21:10:37.597459
104	341	Spree::Variant	\N	\N	43376	1	image/jpeg	Shaping_Their_Future_IMAGE1.jpg	Spree::Image	2016-01-29 21:10:58.327423	\N	2016-01-29 21:10:58.609952	2016-01-29 21:11:03.217441
105	346	Spree::Variant	\N	\N	77719	1	image/jpeg	Sing_IMAGE1.jpg	Spree::Image	2016-01-29 21:11:11.243248	\N	2016-01-29 21:11:11.506437	2016-01-29 21:11:15.532627
106	348	Spree::Variant	\N	\N	63602	1	image/jpeg	So_Youre_Moving_IMAGE1.jpg	Spree::Image	2016-01-29 21:11:17.723484	\N	2016-01-29 21:11:17.973367	2016-01-29 21:11:19.186651
133	440	Spree::Variant	\N	\N	802475	1	image/jpeg	OBDW_Gospel_of_John_IMAGE1.jpg	Spree::Image	2016-01-29 21:17:50.492308	\N	2016-01-29 21:17:51.099465	2016-01-29 21:17:54.891991
107	350	Spree::Variant	\N	\N	45441	1	image/jpeg	Sola_Sancta_Caritas_IMAGE1.jpg	Spree::Image	2016-01-29 21:11:27.097649	\N	2016-01-29 21:11:27.356395	2016-01-29 21:11:30.540969
108	352	Spree::Variant	\N	\N	254654	1	image/jpeg	Soundtrack_IMAGE1.jpg	Spree::Image	2016-01-29 21:11:49.508738	\N	2016-01-29 21:11:49.896974	2016-01-29 21:11:52.791947
134	447	Spree::Variant	\N	\N	937322	1	image/jpeg	OBBJ_Gospel_of_Mark_IMAGE1.jpg	Spree::Image	2016-01-29 21:19:44.363551	\N	2016-01-29 21:19:44.985218	2016-01-29 21:19:48.290599
109	357	Spree::Variant	\N	\N	319787	1	image/png	Sunshine_and_Victory_IMAGE1.png	Spree::Image	2016-01-29 21:12:01.544188	\N	2016-01-29 21:12:01.88949	2016-01-29 21:12:08.587777
110	359	Spree::Variant	\N	\N	45030	1	image/jpeg	Surviving_College_IMAGE1.jpg	Spree::Image	2016-01-29 21:12:09.874554	\N	2016-01-29 21:12:10.113123	2016-01-29 21:12:11.197262
135	452	Spree::Variant	\N	\N	279685	1	image/png	Greatest_Prayer_Ever_Prayed_IMAGE1.png	Spree::Image	2016-01-29 21:19:55.743612	\N	2016-01-29 21:19:56.143302	2016-01-29 21:20:02.2808
111	361	Spree::Variant	\N	\N	42936	1	image/jpeg	Surviving_Hunger_Games_IMAGE1.jpg	Spree::Image	2016-01-29 21:12:25.176736	\N	2016-01-29 21:12:25.421743	2016-01-29 21:12:27.679663
112	363	Spree::Variant	\N	\N	51376	1	image/jpeg	Ten_Brave_Christians_Notebook_IMAGE1.jpg	Spree::Image	2016-01-29 21:12:27.916255	\N	2016-01-29 21:12:28.186497	2016-01-29 21:12:29.848408
136	454	Spree::Variant	\N	\N	906090	1	image/jpeg	Intercessory_Life_IMAGE1.jpg	Spree::Image	2016-01-29 21:20:15.750973	\N	2016-01-29 21:20:16.334043	2016-01-29 21:20:22.407095
113	366	Spree::Variant	\N	\N	47934	1	image/jpeg	Ten_Brave_Christians_Primer_IMAGE1.jpg	Spree::Image	2016-01-29 21:12:30.084475	\N	2016-01-29 21:12:30.347773	2016-01-29 21:12:31.76158
114	369	Spree::Variant	\N	\N	65149	1	image/jpeg	Ten_Words_Two_Signs_One_Prayer_IMAGE1.jpg	Spree::Image	2016-01-29 21:13:06.392408	\N	2016-01-29 21:13:06.654263	2016-01-29 21:13:09.072878
137	466	Spree::Variant	\N	\N	34352	1	image/jpeg	Lords_Prayer_IMAGE1.jpg	Spree::Image	2016-01-29 21:20:22.93023	\N	2016-01-29 21:20:23.157618	2016-01-29 21:20:24.259932
115	374	Spree::Variant	\N	\N	58245	1	image/jpeg	7MS_Ezra_Nememiah_IMAGE1.jpg	Spree::Image	2016-01-29 21:13:09.600513	\N	2016-01-29 21:13:09.847195	2016-01-29 21:13:11.617836
116	376	Spree::Variant	\N	\N	295518	1	image/png	AHM_Bibliographic_IMAGE1.png	Spree::Image	2016-01-29 21:13:38.486036	\N	2016-01-29 21:13:38.818657	2016-01-29 21:13:43.293848
138	470	Spree::Variant	\N	\N	42602	1	image/jpeg	7MS_The_Lost_Gospels_IMAGE1.jpg	Spree::Image	2016-01-29 21:20:24.841525	\N	2016-01-29 21:20:25.109503	2016-01-29 21:20:26.526815
117	378	Spree::Variant	\N	\N	302487	1	image/png	APM_Bibliographic_IMAGE1.png	Spree::Image	2016-01-29 21:14:32.321922	\N	2016-01-29 21:14:32.65387	2016-01-29 21:14:38.963136
118	380	Spree::Variant	\N	\N	61509	1	image/jpeg	7MS_Ascension_of_Jesus_IMAGE1.jpg	Spree::Image	2016-01-29 21:14:39.384811	\N	2016-01-29 21:14:39.630396	2016-01-29 21:14:41.360598
139	472	Spree::Variant	\N	\N	445793	1	image/jpeg	The_Means_of_Grace_IMAGE1.jpg	Spree::Image	2016-01-29 21:20:46.961189	\N	2016-01-29 21:20:47.497428	2016-01-29 21:20:51.44914
119	382	Spree::Variant	\N	\N	819879	1	image/jpeg	OBDW_Book_of_Daniel_IMAGE1.jpg	Spree::Image	2016-01-29 21:15:04.338213	\N	2016-01-29 21:15:04.878241	2016-01-29 21:15:11.906116
120	389	Spree::Variant	\N	\N	44596	1	image/jpeg	The_Call_to_Holiness_IMAGE1.jpg	Spree::Image	2016-01-29 21:15:21.90816	\N	2016-01-29 21:15:22.179583	2016-01-29 21:15:23.240441
140	479	Spree::Variant	\N	\N	202449	1	image/png	Pearl_of_Greatest_Price_IMAGE1.png	Spree::Image	2016-01-29 21:21:12.154957	\N	2016-01-29 21:21:12.481408	2016-01-29 21:21:17.400175
121	394	Spree::Variant	\N	\N	25580	1	image/jpeg	Character_of_Methodist_IMAGE1.jpg	Spree::Image	2016-01-29 21:15:23.458183	\N	2016-01-29 21:15:23.6484	2016-01-29 21:15:24.660259
122	397	Spree::Variant	\N	\N	54916	1	image/jpeg	7MS_Christian_Afterlife_IMAGE1.jpg	Spree::Image	2016-01-29 21:15:25.118894	\N	2016-01-29 21:15:25.365736	2016-01-29 21:15:26.496094
141	481	Spree::Variant	\N	\N	261341	1	image/png	Power_that_Prevails_IMAGE1.png	Spree::Image	2016-01-29 21:22:11.000703	\N	2016-01-29 21:22:11.395057	2016-01-29 21:22:14.961204
123	399	Spree::Variant	\N	\N	59955	1	image/jpeg	7MS_Church_in_Exile.jpg	Spree::Image	2016-01-29 21:15:27.207147	\N	2016-01-29 21:15:27.45918	2016-01-29 21:15:29.113795
124	401	Spree::Variant	\N	\N	75719	1	image/jpeg	Class_Meeting_IMAGE1.jpg	Spree::Image	2016-01-29 21:15:45.427911	\N	2016-01-29 21:15:45.725858	2016-01-29 21:15:49.110998
142	483	Spree::Variant	\N	\N	77733	1	image/jpeg	Preaching_Works_of_Kalas_IMAGE1.jpg	Spree::Image	2016-01-29 21:22:15.142825	\N	2016-01-29 21:22:15.388218	2016-01-29 21:22:16.995183
125	410	Spree::Variant	\N	\N	8192	1	image/jpeg	Daily_Asbury_IMAGE1.jpg	Spree::Image	2016-01-29 21:15:59.543863	\N	2016-01-29 21:15:59.73291	2016-01-29 21:16:01.542942
126	418	Spree::Variant	\N	\N	59194	1	image/jpeg	7MS_Doctrine_of_Sin_IMAGE1.jpg	Spree::Image	2016-01-29 21:16:07.561055	\N	2016-01-29 21:16:07.804133	2016-01-29 21:16:09.131574
143	485	Spree::Variant	\N	\N	268002	1	image/png	Presence_of_God_IMAGE1.png	Spree::Image	2016-01-29 21:22:50.936481	\N	2016-01-29 21:22:51.353941	2016-01-29 21:22:57.795231
127	421	Spree::Variant	\N	\N	13434	1	image/jpeg	Framework_of_our_Faith_IMAGE1.jpg	Spree::Image	2016-01-29 21:16:09.458148	\N	2016-01-29 21:16:09.654377	2016-01-29 21:16:10.767109
128	424	Spree::Variant	\N	\N	92820	1	image/jpeg	Fulfillment_IMAGE1.jpg	Spree::Image	2016-01-29 21:16:34.17389	\N	2016-01-29 21:16:34.435919	2016-01-29 21:16:38.794098
144	487	Spree::Variant	\N	\N	57784	1	image/jpeg	7MS_Radical_Grace_IMAGE1.jpg	Spree::Image	2016-01-29 21:22:58.231795	\N	2016-01-29 21:22:58.48549	2016-01-29 21:22:59.76064
129	429	Spree::Variant	\N	\N	138099	1	image/png	Global_Church__IMAGE1.png	Spree::Image	2016-01-29 21:16:39.947364	\N	2016-01-29 21:16:40.221422	2016-01-29 21:16:42.142386
130	431	Spree::Variant	\N	\N	62627	1	image/jpeg	7MS_Good_Samaritan_IMAGE1.jpg	Spree::Image	2016-01-29 21:16:42.636117	\N	2016-01-29 21:16:42.887362	2016-01-29 21:16:44.182447
145	489	Spree::Variant	\N	\N	62652	1	image/jpeg	Radical_Wesley_IMAGE1.jpg	Spree::Image	2016-01-29 21:23:21.234845	\N	2016-01-29 21:23:21.507856	2016-01-29 21:23:23.516503
131	433	Spree::Variant	\N	\N	62513	1	image/jpeg	7MS_Gospel_and_Empire_IMAGE1.jpg	Spree::Image	2016-01-29 21:16:44.700576	\N	2016-01-29 21:16:44.964716	2016-01-29 21:16:46.171586
132	435	Spree::Variant	\N	\N	79926	1	image/jpeg	Gospel_of_Jesus_IMAGE1.jpg	Spree::Image	2016-01-29 21:17:02.029918	\N	2016-01-29 21:17:02.312257	2016-01-29 21:17:04.653774
146	494	Spree::Variant	\N	\N	65862	1	image/jpeg	7MS_Reliability_of_New_Testament_IMAGE1.jpg	Spree::Image	2016-01-29 21:23:24.148659	\N	2016-01-29 21:23:24.39829	2016-01-29 21:23:26.094275
147	496	Spree::Variant	\N	\N	62239	1	image/jpeg	7MS_Resurrection_Bodies_IMAGE1.jpg	Spree::Image	2016-01-29 21:23:26.753015	\N	2016-01-29 21:23:26.994703	2016-01-29 21:23:28.545375
148	498	Spree::Variant	\N	\N	74238	1	image/jpeg	Role_of_Teaching_IMAGE1.jpg	Spree::Image	2016-01-29 21:23:28.754463	\N	2016-01-29 21:23:28.997691	2016-01-29 21:23:30.872523
149	501	Spree::Variant	\N	\N	311437	1	image/png	Second_Coming_of_Christ_IMAGE1.png	Spree::Image	2016-01-29 21:27:03.498857	\N	2016-01-29 21:27:03.873028	2016-01-29 21:27:07.742783
150	503	Spree::Variant	\N	\N	307126	1	image/png	Signs_of_Maturity_IMAGE1.png	Spree::Image	2016-01-29 21:27:14.25402	\N	2016-01-29 21:27:14.643208	2016-01-29 21:27:22.039763
151	505	Spree::Variant	\N	\N	528790	1	image/png	The_Social_Entrepreneur_IMAGE1.png	Spree::Image	2016-01-29 21:27:50.063974	\N	2016-01-29 21:27:50.55786	2016-01-29 21:27:58.442887
152	512	Spree::Variant	\N	\N	62164	1	image/jpeg	7MS_Structure_of_the_Psalms_IMAGE1.jpg	Spree::Image	2016-01-29 21:27:58.965268	\N	2016-01-29 21:27:59.214967	2016-01-29 21:28:00.761582
153	514	Spree::Variant	\N	\N	42323	1	image/jpeg	Tongue_of_Fire_IMAGE1.jpg	Spree::Image	2016-01-29 21:28:16.295529	\N	2016-01-29 21:28:16.597725	2016-01-29 21:28:18.490678
154	519	Spree::Variant	\N	\N	67360	1	image/jpeg	Truth_Diary_IMAGE1.jpg	Spree::Image	2016-01-29 21:28:36.030696	\N	2016-01-29 21:28:36.270735	2016-01-29 21:28:38.189661
155	524	Spree::Variant	\N	\N	63562	1	image/jpeg	7MS_World_of_John_Wesley_IMAGE1.jpg	Spree::Image	2016-01-29 21:28:38.636408	\N	2016-01-29 21:28:38.883685	2016-01-29 21:28:40.456066
156	526	Spree::Variant	\N	\N	37395	1	image/jpeg	Learned_at_Seminary_2_IMAGE1.jpg	Spree::Image	2016-01-29 21:28:40.745539	\N	2016-01-29 21:28:41.001495	2016-01-29 21:28:42.166712
157	528	Spree::Variant	\N	\N	23474	1	image/jpeg	Learned_at_Seminary_1_IMAGE1.jpg	Spree::Image	2016-01-29 21:28:47.515379	\N	2016-01-29 21:28:47.745927	2016-01-29 21:28:49.741862
158	530	Spree::Variant	\N	\N	48031	1	image/jpeg	Sermon_on_the_Mount_IMAGE1.jpg	Spree::Image	2016-01-29 21:29:00.926564	\N	2016-01-29 21:29:01.217072	2016-01-29 21:29:02.232947
159	535	Spree::Variant	\N	\N	35256	1	image/jpeg	Thirty_Questions_IMAGE1.jpg	Spree::Image	2016-01-29 21:29:19.03731	\N	2016-01-29 21:29:19.301314	2016-01-29 21:29:21.023872
160	540	Spree::Variant	\N	\N	48926	1	image/jpeg	Creed_This_We_Believe_IMAGE1.jpg	Spree::Image	2016-01-29 21:29:21.210615	\N	2016-01-29 21:29:21.455608	2016-01-29 21:29:22.910554
161	543	Spree::Variant	\N	\N	47939	1	image/jpeg	This_We_Believe_IMAGE1.jpg	Spree::Image	2016-01-29 21:29:50.552494	\N	2016-01-29 21:29:50.810454	2016-01-29 21:29:52.409508
162	550	Spree::Variant	\N	\N	64636	1	image/jpeg	7MS_Tips_on_Teaching_Bible_IMAGE1.jpg	Spree::Image	2016-01-29 21:30:05.486332	\N	2016-01-29 21:30:05.747691	2016-01-29 21:30:07.198206
163	552	Spree::Variant	\N	\N	79184	1	image/jpeg	Shepherd_a_Movement_IMAGE1.jpg	Spree::Image	2016-01-29 21:30:09.238792	\N	2016-01-29 21:30:09.490854	2016-01-29 21:30:11.55536
164	554	Spree::Variant	\N	\N	215737	1	image/png	Translatability_of_the_Gospel_IMAGE1.png	Spree::Image	2016-01-29 21:30:18.007788	\N	2016-01-29 21:30:18.516759	2016-01-29 21:30:22.934097
165	556	Spree::Variant	\N	\N	101477	1	image/jpeg	We_Believe_Student_IMAGE1.jpg	Spree::Image	2016-01-29 21:30:23.092635	\N	2016-01-29 21:30:23.380855	2016-01-29 21:30:25.409007
166	558	Spree::Variant	\N	\N	73752	1	image/jpeg	We_Believe_Teacher_IMAGE1.jpg	Spree::Image	2016-01-29 21:30:25.668046	\N	2016-01-29 21:30:25.925909	2016-01-29 21:30:27.606805
167	560	Spree::Variant	\N	\N	53783	1	image/jpeg	Wesleyan_Covenant_IMAGE1.jpg	Spree::Image	2016-01-29 21:30:32.46503	\N	2016-01-29 21:30:32.732591	2016-01-29 21:30:34.50099
168	562	Spree::Variant	\N	\N	63232	1	image/jpeg	7MS_Wesleyan_Small_Groups_IMAGE1.jpg	Spree::Image	2016-01-29 21:30:35.207911	\N	2016-01-29 21:30:35.456966	2016-01-29 21:30:37.680997
169	566	Spree::Variant	\N	\N	61185	1	image/jpeg	7MS_Christian_Perfection_IMAGE1.jpg	Spree::Image	2016-01-29 21:30:38.398585	\N	2016-01-29 21:30:38.654798	2016-01-29 21:30:40.246287
170	568	Spree::Variant	\N	\N	66212	1	image/jpeg	7MS_Systematic_Theology_IMAGE1.jpg	Spree::Image	2016-01-29 21:30:40.777602	\N	2016-01-29 21:30:41.020038	2016-01-29 21:30:42.777676
171	570	Spree::Variant	\N	\N	222084	1	image/png	What_Ye_Think_of_Christ_IMAGE1.png	Spree::Image	2016-01-29 21:31:08.402337	\N	2016-01-29 21:31:08.797658	2016-01-29 21:31:11.911039
172	572	Spree::Variant	\N	\N	59463	1	image/jpeg	7MS_Why_Creeds_Matter_IMAGE1.jpg	Spree::Image	2016-01-29 21:31:12.507416	\N	2016-01-29 21:31:12.763362	2016-01-29 21:31:14.109788
173	576	Spree::Variant	\N	\N	321596	1	image/png	Visible_Kingdom_on_Earth_IMAGE1.png	Spree::Image	2016-01-29 21:31:35.443511	\N	2016-01-29 21:31:35.792047	2016-01-29 21:31:41.242304
174	578	Spree::Variant	\N	\N	59453	1	image/jpeg	7MS_Women_in_Ephesus_IMAGE1.jpg	Spree::Image	2016-01-29 21:31:41.747548	\N	2016-01-29 21:31:41.987518	2016-01-29 21:31:43.401904
175	580	Spree::Variant	\N	\N	57793	1	image/jpeg	World_Mission_Wesleyan_Spirit_IMAGE1.jpg	Spree::Image	2016-01-29 21:32:10.264365	\N	2016-01-29 21:32:10.545934	2016-01-29 21:32:14.126422
176	586	Spree::Variant	\N	\N	61829	1	image/jpeg	7MS_Worshipping_the_Trinity_IMAGE1.jpg	Spree::Image	2016-01-29 21:33:13.467992	\N	2016-01-29 21:33:13.710147	2016-01-29 21:33:15.390561
177	588	Spree::Variant	\N	\N	38956	1	image/jpeg	Your_Best_Move_IMAGE1.jpg	Spree::Image	2016-01-29 21:33:25.851066	\N	2016-01-29 21:33:26.116971	2016-01-29 21:33:27.315206
178	592	Spree::Variant	\N	\N	38956	1	image/jpeg	Your_Best_Move_IMAGE1.jpg	Spree::Image	2016-01-29 21:33:27.47329	\N	2016-01-29 21:33:27.737681	2016-01-29 21:33:28.90439
179	594	Spree::Variant	\N	\N	629567	1	image/png	Making-All-Things-New_IMAGE1.png	Spree::Image	2016-01-29 21:33:29.145077	\N	2016-01-29 21:33:30.408091	2016-01-29 21:33:32.661308
180	101	Spree::Variant	\N	\N	22095	1	image/jpeg	Church_Growth_Theology_IMAGE1.jpg	Spree::Image	2016-02-04 19:05:54.312441	\N	2016-02-04 19:05:54.581116	2016-02-04 19:05:57.209069
181	115	Spree::Variant	\N	\N	970649	1	image/png	Crossing_the_Dead_Line_IMAGE1.png	Spree::Image	2016-02-04 19:05:57.384485	\N	2016-02-04 19:05:57.923571	2016-02-04 19:06:03.437029
182	136	Spree::Variant	\N	\N	475131	1	image/png	Encounter_the_Father_IMAGE1.png	Spree::Image	2016-02-04 19:06:03.550969	\N	2016-02-04 19:06:04.072623	2016-02-04 19:06:06.587459
183	150	Spree::Variant	\N	\N	227920	1	image/jpeg	7MS_Engaging_Muslim_Neighbors_IMAGE1.jpg	Spree::Image	2016-02-04 19:06:06.645896	\N	2016-02-04 19:06:07.120566	2016-02-04 19:06:09.137681
184	198	Spree::Variant	\N	\N	219898	1	image/jpeg	7MS_Halloween_Christians_IMAGE.jpg	Spree::Image	2016-02-04 19:06:09.419543	\N	2016-02-04 19:06:09.89761	2016-02-04 19:06:11.537941
185	239	Spree::Variant	\N	\N	56986	1	image/jpeg	Love_Heals_IMAGE1.jpg	Spree::Image	2016-02-04 19:06:11.732405	\N	2016-02-04 19:06:11.981154	2016-02-04 19:06:13.719214
186	326	Spree::Variant	\N	\N	43591	1	image/jpeg	Sabbath_Keeping_IMAGE1.jpg	Spree::Image	2016-02-04 19:06:14.034721	\N	2016-02-04 19:06:14.272685	2016-02-04 19:06:15.296425
187	328	Spree::Variant	\N	\N	59355	1	image/jpeg	Seeds_IMAGE1.jpg	Spree::Image	2016-02-04 19:06:15.333428	\N	2016-02-04 19:06:15.579036	2016-02-04 19:06:17.078578
188	335	Spree::Variant	\N	\N	347112	1	image/png	Sermons_for_the_Times_IMAGE1.png	Spree::Image	2016-02-04 19:06:17.123791	\N	2016-02-04 19:06:17.609213	2016-02-04 19:06:19.957087
189	406	Spree::Variant	\N	\N	590455	1	image/png	Confessions_of_Backslider_IMAGE1.png	Spree::Image	2016-02-04 19:06:20.207653	\N	2016-02-04 19:06:20.758324	2016-02-04 19:06:23.331596
190	408	Spree::Variant	\N	\N	56464	1	image/jpeg	Creed_Experience_IMAGE1.jpg	Spree::Image	2016-02-04 19:06:23.369531	\N	2016-02-04 19:06:23.685474	2016-02-04 19:06:25.052085
191	413	Spree::Variant	\N	\N	192073	1	image/jpeg	Calvin_Coolidge_Francis_Asbury_IMAGE1.jpg	Spree::Image	2016-02-04 19:06:25.096901	\N	2016-02-04 19:06:25.540567	2016-02-04 19:06:27.221809
192	415	Spree::Variant	\N	\N	149527	1	image/jpeg	Devotional_Wesley_IMAGE1.jpg	Spree::Image	2016-02-04 19:06:27.26033	\N	2016-02-04 19:06:27.607762	2016-02-04 19:06:29.153582
193	548	Spree::Variant	\N	\N	639468	1	image/png	Thoughts_for_Thoughtful_IMAGE1.png	Spree::Image	2016-02-04 19:06:29.64456	\N	2016-02-04 19:06:30.192152	2016-02-04 19:06:33.625626
194	564	Spree::Variant	\N	\N	48334	1	image/jpeg	Wesleys_Hymns_Poetry_IMAGE1.jpg	Spree::Image	2016-02-04 19:06:33.731973	\N	2016-02-04 19:06:33.961889	2016-02-04 19:06:35.01047
195	574	Spree::Variant	\N	\N	212024	1	image/jpeg	7MS_Why_Greek_Matters_IMAGE1.jpg	Spree::Image	2016-02-04 19:06:35.085763	\N	2016-02-04 19:06:35.554431	2016-02-04 19:06:37.345619
196	584	Spree::Variant	\N	\N	792806	1	image/png	World_Tour_Evangelism_IMAGE1.png	Spree::Image	2016-02-04 19:06:37.414832	\N	2016-02-04 19:06:37.989916	2016-02-04 19:06:41.52033
\.


--
-- Name: spree_assets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('spree_assets_id_seq', 196, true);


--
-- Name: spree_assets_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY spree_assets
    ADD CONSTRAINT spree_assets_pkey PRIMARY KEY (id);


--
-- Name: index_assets_on_viewable_id; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX index_assets_on_viewable_id ON spree_assets USING btree (viewable_id);


--
-- Name: index_assets_on_viewable_type_and_type; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX index_assets_on_viewable_type_and_type ON spree_assets USING btree (viewable_type, type);


--
-- PostgreSQL database dump complete
--

