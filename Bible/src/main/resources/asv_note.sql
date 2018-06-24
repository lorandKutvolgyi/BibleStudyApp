--
-- PostgreSQL database dump
--

-- Dumped from database version 9.3.23
-- Dumped by pg_dump version 9.3.23
-- Started on 2018-06-24 19:49:10 CEST

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 190 (class 1259 OID 94205)
-- Name: asv_note; Type: TABLE; Schema: study_app; Owner: postgres; Tablespace: 
--

CREATE TABLE study_app.asv_note (
    id integer NOT NULL,
    book character varying(100) NOT NULL,
    chapter integer NOT NULL,
    verse integer NOT NULL,
    note character varying(4000) NOT NULL
);


ALTER TABLE study_app.asv_note OWNER TO postgres;

--
-- TOC entry 189 (class 1259 OID 94203)
-- Name: asv_note_id_seq; Type: SEQUENCE; Schema: study_app; Owner: postgres
--

CREATE SEQUENCE study_app.asv_note_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE study_app.asv_note_id_seq OWNER TO postgres;

--
-- TOC entry 2076 (class 0 OID 0)
-- Dependencies: 189
-- Name: asv_note_id_seq; Type: SEQUENCE OWNED BY; Schema: study_app; Owner: postgres
--

ALTER SEQUENCE study_app.asv_note_id_seq OWNED BY study_app.asv_note.id;


--
-- TOC entry 1959 (class 2604 OID 94208)
-- Name: id; Type: DEFAULT; Schema: study_app; Owner: postgres
--

ALTER TABLE ONLY study_app.asv_note ALTER COLUMN id SET DEFAULT nextval('study_app.asv_note_id_seq'::regclass);


--
-- TOC entry 2070 (class 0 OID 94205)
-- Dependencies: 190
-- Data for Name: asv_note; Type: TABLE DATA; Schema: study_app; Owner: postgres
--

COPY study_app.asv_note (id, book, chapter, verse, note) FROM stdin;
1	Gen	1	2	1) Or 
2	Gen	1	2	<i>was brooding upon</i>
3	Gen	1	6	1) Heb 
4	Gen	1	6	<i>expanse</i>
5	Gen	1	20	1) Heb 
6	Gen	1	20	<i>on the face of the expanse of the heavens</i>
7	Gen	1	28	1) Or 
8	Gen	1	28	<i>creepeth</i>
9	Gen	1	30	1) Heb 
10	Gen	1	30	<i>a living soul</i>
11	Gen	2	12	1) Or 
12	Gen	2	12	<i>beryl</i>
13	Gen	2	14	1) That is 
14	Gen	2	14	<i>Tigris</i>
15	Gen	2	14	 2) Or 
16	Gen	2	14	<i>towards the east of</i>
17	Gen	2	18	1) Or 
18	Gen	2	18	<i>answering to</i>
19	Gen	2	20	1) Or 
20	Gen	2	20	<i>Adam</i>
21	Gen	2	22	1) Heb 
22	Gen	2	22	<i>builded he into</i>
23	Gen	2	23	1) Heb 
24	Gen	2	23	<i>Isshah</i>
25	Gen	2	23	 2) Heb 
26	Gen	2	23	<i>Ish</i>
27	Gen	3	1	1) Or 
28	Gen	3	1	<i>all the trees</i>
29	Gen	3	5	1) Or 
30	Gen	3	5	<i>gods</i>
31	Gen	3	6	1) Or 
32	Gen	3	6	<i>desirable to look upon</i>
33	Gen	3	7	1) Or 
34	Gen	3	7	<i>girdles</i>
35	Gen	3	8	1) Or 
36	Gen	3	8	<i>sound</i>
37	Gen	3	8	 2) Heb 
38	Gen	3	8	<i>wind</i>
39	Gen	3	14	1) Or 
40	Gen	3	14	<i>from among</i>
41	Gen	3	15	1) Or 
42	Gen	3	15	<i>lie in wait for</i>
43	Gen	3	17	1) Or 
44	Gen	3	17	<i>sorrow</i>
45	Gen	3	20	1) Heb 
46	Gen	3	20	<i>Havvah</i>
47	Gen	3	20	 , that is 
48	Gen	3	20	<i>Living</i>
49	Gen	3	20	 , or 
50	Gen	3	20	<i>Life</i>
51	Gen	4	1	1) Heb 
52	Gen	4	1	<i>kanah</i>
53	Gen	4	1	 , to get
54	Gen	4	8	1) Heb 
55	Gen	4	8	<i>said unto</i>
56	Gen	4	13	1) Or 
57	Gen	4	13	<i>Mine iniquity</i>
58	Gen	4	13	 2) Or 
59	Gen	4	13	<i>than can be forgiven</i>
60	Gen	4	16	1) That is 
61	Gen	4	16	<i>Wandering</i>
62	Gen	4	16	 2) Or 
63	Gen	4	16	<i>in front of</i>
64	Gen	4	22	1) Or 
65	Gen	4	22	<i>an instructor of every artificer</i>
66	Gen	4	22	 2) Or 
67	Gen	4	22	<i>copper</i>
68	Gen	4	22	 (and so elsewhere)
69	Gen	4	23	1) Or 
70	Gen	4	23	<i>I will slay</i>
71	Gen	4	23	 2) Or 
72	Gen	4	23	<i>to my wounding, And a young man to my hurt</i>
73	Gen	4	25	1) Heb 
74	Gen	4	25	<i>Sheth</i>
75	Gen	4	25	 2) Heb 
76	Gen	4	25	<i>shath</i>
77	Gen	5	2	1) Or 
78	Gen	5	2	<i>Man</i>
79	Gen	5	29	1) Heb 
80	Gen	5	29	<i>nahem</i>
81	Gen	5	29	 , to comfort 2) Heb 
82	Gen	5	29	<i>from</i>
83	Gen	6	3	1) Or 
84	Gen	6	3	<i>rule in</i>
85	Gen	6	3	 ; According to Sept, Vulg, and Syr 
86	Gen	6	3	<i>abide in</i>
87	Gen	6	3	 2) Or 
88	Gen	6	3	<i>in their going astray they are flesh</i>
89	Gen	6	3	 3) Or 
90	Gen	6	3	<i>therefore</i>
91	Gen	6	4	1) Or 
92	Gen	6	4	<i>giants</i>
93	Gen	6	7	1) Heb 
94	Gen	6	7	<i>blot out</i>
95	Gen	6	9	1) Or 
96	Gen	6	9	<i>blameless</i>
97	Gen	6	14	1) Heb 
98	Gen	6	14	<i>nests</i>
99	Gen	6	16	1) Or 
100	Gen	6	16	<i>roof</i>
101	Gen	6	16	 2) Or 
102	Gen	6	16	<i>from above</i>
103	Gen	7	4	1) Heb 
104	Gen	7	4	<i>blot out</i>
105	Gen	7	14	1) Heb 
106	Gen	7	14	<i>wing</i>
107	Gen	7	21	1) Or 
108	Gen	7	21	<i>swarming thing that swarmeth</i>
109	Gen	7	23	1) Or 
110	Gen	7	23	<i>and he destroyed every living thing</i>
111	Gen	7	23	 2) Heb 
112	Gen	7	23	<i>blotted out</i>
113	Gen	8	11	1) Or 
114	Gen	8	11	<i>a fresh olive-leaf</i>
115	Gen	8	21	1) Or 
116	Gen	8	21	<i>sake; for the</i>
117	Gen	9	2	1) Or 
118	Gen	9	2	<i>creepeth</i>
119	Gen	9	13	1) Or 
120	Gen	9	13	<i>I have set</i>
121	Gen	9	24	1) Or 
122	Gen	9	24	<i>younger</i>
123	Gen	9	26	1) Or 
124	Gen	9	26	<i>their</i>
125	Gen	9	27	1) Or 
126	Gen	9	27	<i>he shall</i>
127	Gen	10	5	1) Or 
128	Gen	10	5	<i>coastlands</i>
129	Gen	10	11	1) Or 
130	Gen	10	11	<i>went forth Asshur</i>
131	Gen	10	14	1) Heb 
132	Gen	10	14	<i>Pelishtim</i>
133	Gen	10	21	1) Or 
134	Gen	10	21	<i>the brother of Japheth the elder</i>
135	Gen	10	25	1) That is 
136	Gen	10	25	<i>Division</i>
137	Gen	10	28	1) In 1 Ch 1:22 
138	Gen	10	28	<i>Ebal</i>
139	Gen	10	30	1) Or 
140	Gen	10	30	<i>hill country</i>
141	Gen	11	1	1) Heb 
142	Gen	11	1	<i>lip</i>
143	Gen	11	1	 2) Heb 
144	Gen	11	1	<i>words</i>
145	Gen	11	2	1) Or 
146	Gen	11	2	<i>in the east</i>
147	Gen	11	3	1) That is 
148	Gen	11	3	<i>bitumen</i>
149	Gen	11	9	1) Heb 
150	Gen	11	9	<i>balal</i>
151	Gen	11	9	 , to confound
152	Gen	12	6	1) Or 
153	Gen	12	6	<i>terebinth</i>
154	Gen	12	9	1) Heb 
155	Gen	12	9	<i>Negeb</i>
156	Gen	12	9	 , the southern tract of Judah
157	Gen	13	10	1) Or 
158	Gen	13	10	<i>Circle</i>
159	Gen	13	18	1) Or 
160	Gen	13	18	<i>terebinths</i>
161	Gen	14	1	1) Or 
162	Gen	14	1	<i>nations</i>
163	Gen	14	3	1) Or 
164	Gen	14	3	<i>joined themselves together against</i>
165	Gen	14	5	1) Or 
166	Gen	14	5	<i>the plain of Kiriathaim</i>
167	Gen	14	7	1) Heb 
168	Gen	14	7	<i>field</i>
169	Gen	14	10	1) That is 
170	Gen	14	10	<i>bitumen pits</i>
171	Gen	14	13	Or 
172	Gen	14	13	<i>terebinths</i>
173	Gen	14	15	1) Or 
174	Gen	14	15	<i>north</i>
175	Gen	14	18	1) Heb 
176	Gen	14	18	<i>El Elyon</i>
177	Gen	14	19	1) Heb 
178	Gen	14	19	<i>El Elyon</i>
179	Gen	14	19	 2) Or 
180	Gen	14	19	<i>maker</i>
181	Gen	14	20	1) Heb 
182	Gen	14	20	<i>El Elyon</i>
183	Gen	14	24	1) Or, let there be 
184	Gen	14	24	<i>nothing for me; only that etc</i>
185	Gen	15	1	1) Or 
186	Gen	15	1	<i>thy reward shall be exceeding great</i>
187	Gen	15	2	1) Or 
188	Gen	15	2	<i>go hence</i>
189	Gen	16	2	1) Heb 
190	Gen	16	2	<i>be builded by her</i>
191	Gen	16	11	1) That is 
192	Gen	16	11	<i>God heareth</i>
193	Gen	16	12	1) Or 
194	Gen	16	12	<i>to the east of</i>
195	Gen	16	13	1) Or 
196	Gen	16	13	<i>Thou God seest me</i>
197	Gen	16	13	 2) Heb 
198	Gen	16	13	<i>El roi</i>
199	Gen	16	13	 , that is 
200	Gen	16	13	<i>God of seeing</i>
201	Gen	16	14	1) That is 
202	Gen	16	14	<i>The well of the living one who seeth me</i>
203	Gen	17	1	1) Heb 
204	Gen	17	1	<i>El Shaddai</i>
205	Gen	17	5	1) That is 
206	Gen	17	5	<i>exalted father</i>
207	Gen	17	5	 2) That is 
208	Gen	17	5	<i>father of a multitude</i>
209	Gen	17	15	1) That is 
210	Gen	17	15	<i>Princess</i>
211	Gen	17	19	1) From the Hebrew word meaning 
212	Gen	17	19	<i>to laugh</i>
213	Gen	18	1	1) Or 
214	Gen	18	1	<i>terebinths</i>
215	Gen	18	3	1) Or 
216	Gen	18	3	<i>O Lord</i>
217	Gen	18	5	1) Or 
218	Gen	18	5	<i>for therefore</i>
219	Gen	18	10	1) Heb 
220	Gen	18	10	<i>liveth</i>
221	Gen	18	10	 , or 
222	Gen	18	10	<i>reviveth</i>
223	Gen	18	14	1) Or 
224	Gen	18	14	<i>wonderful</i>
225	Gen	18	20	1) Or 
226	Gen	18	20	<i>Verily</i>
227	Gen	19	8	1) Or 
228	Gen	19	8	<i>for therefore</i>
229	Gen	19	14	1) Or 
230	Gen	19	14	<i>were to marry</i>
231	Gen	19	15	1) Or 
232	Gen	19	15	<i>punishment</i>
233	Gen	19	18	1) Or 
234	Gen	19	18	<i>O Lord</i>
235	Gen	19	19	1) Or 
236	Gen	19	19	<i>the evil</i>
237	Gen	19	22	1) That is 
238	Gen	19	22	<i>Little</i>
239	Gen	19	22	 ; See Ge 19:20; 14:8
240	Gen	20	16	1) Or 
241	Gen	20	16	<i>he</i>
242	Gen	20	16	 2) Or 
243	Gen	20	16	<i>before all</i>
244	Gen	20	16	 men
245	Gen	21	6	1) Or 
246	Gen	21	6	<i>prepared laughter for me</i>
247	Gen	21	9	1) Or 
248	Gen	21	9	<i>playing</i>
249	Gen	21	14	1) Or 
250	Gen	21	14	<i>skin</i>
251	Gen	21	23	1) Or 
252	Gen	21	23	<i>my offspring, nor with my posterity</i>
253	Gen	22	8	1) Heb 
254	Gen	22	8	<i>see for himself</i>
255	Gen	22	14	1) That is 
256	Gen	22	14	<i>Jehovah will see</i>
257	Gen	22	14	 , or 
258	Gen	22	14	<i>provide</i>
259	Gen	22	14	 2) Or 
260	Gen	22	14	<i>he shall be seen</i>
261	Gen	22	18	1) Or 
262	Gen	22	18	<i>bless themselves</i>
263	Gen	24	10	1) Or 
264	Gen	24	10	<i>for all the goods of his master were in his hand</i>
265	Gen	24	10	 2) Heb 
266	Gen	24	10	<i>Aram-naharaim</i>
267	Gen	24	10	 , that is 
268	Gen	24	10	<i>Aram of the two rivers</i>
269	Gen	24	22	1) Heb 
270	Gen	24	22	<i>a beka</i>
271	Gen	24	22	 ; See Ex 38:26
272	Gen	25	18	1) Or 
273	Gen	25	18	<i>settled</i>
274	Gen	25	18	 ; Heb 
275	Gen	25	18	<i>fell</i>
276	Gen	25	20	1) Heb 
277	Gen	25	20	<i>Aramean</i>
278	Gen	25	22	1) Or 
279	Gen	25	22	<i>wherefore am I thus?</i>
280	Gen	25	25	1) Or 
281	Gen	25	25	<i>ruddy</i>
282	Gen	25	26	1) That is 
283	Gen	25	26	<i>One that takes by the heel</i>
284	Gen	25	26	 or 
285	Gen	25	26	<i>supplants</i>
286	Gen	25	27	1) Or 
287	Gen	25	27	<i>harmless</i>
288	Gen	25	27	 ; Heb 
289	Gen	25	27	<i>perfect</i>
290	Gen	25	30	1) Heb 
291	Gen	25	30	<i>the red</i>
292	Gen	25	30	 pottage, 
293	Gen	25	30	<i>this red</i>
294	Gen	25	30	 pottage 2) That is 
295	Gen	25	30	<i>Red</i>
296	Gen	25	31	1) Heb 
297	Gen	25	31	<i>to-day</i>
298	Gen	26	4	1) Or 
299	Gen	26	4	<i>bless themselves</i>
300	Gen	26	19	1) Heb 
301	Gen	26	19	<i>living</i>
302	Gen	26	20	1) That is 
303	Gen	26	20	<i>Contention</i>
304	Gen	26	21	1) That is 
305	Gen	26	21	<i>Enmity</i>
306	Gen	26	22	1) That is 
307	Gen	26	22	<i>Broad places</i>
308	Gen	26	22	 , or 
309	Gen	26	22	<i>Room</i>
310	Gen	26	35	1) Heb 
311	Gen	26	35	<i>bitterness of spirit</i>
312	Gen	27	12	1) Or 
313	Gen	27	12	<i>mocker</i>
314	Gen	27	39	1) Or 
315	Gen	27	39	<i>away from</i>
316	Gen	28	3	1) Heb 
317	Gen	28	3	<i>El Shaddai</i>
318	Gen	28	5	1) Heb 
319	Gen	28	5	<i>Aramean</i>
320	Gen	28	11	1) Heb 
321	Gen	28	11	<i>the place</i>
322	Gen	28	13	1) Or 
323	Gen	28	13	<i>beside him</i>
324	Gen	28	14	1) Heb 
325	Gen	28	14	<i>break forth</i>
326	Gen	28	19	1) That is 
327	Gen	28	19	<i>The house of God</i>
328	Gen	28	21	1) Or 
329	Gen	28	21	<i>then shall Jehovah be my God, and this stone etc</i>
330	Gen	29	1	1) Heb 
331	Gen	29	1	<i>lifted up his feet</i>
332	Gen	29	32	1) That is 
333	Gen	29	32	<i>See, a son</i>
334	Gen	29	33	1) Heb 
335	Gen	29	33	<i>shama</i>
336	Gen	29	33	 2) Heb 
337	Gen	29	33	<i>Shimeon</i>
338	Gen	29	34	1) From the root 
339	Gen	29	34	<i>lavah</i>
340	Gen	29	35	1) From the Heb 
341	Gen	29	35	<i>hodah</i>
342	Gen	29	35	 2) Heb 
343	Gen	29	35	<i>Jehudah</i>
344	Gen	30	3	1) Heb 
345	Gen	30	3	<i>be builded by her</i>
346	Gen	30	6	1) Heb 
347	Gen	30	6	<i>dan</i>
348	Gen	30	6	 , he judged
349	Gen	30	8	1) Heb 
350	Gen	30	8	<i>wrestlings of God</i>
351	Gen	30	8	 2) Heb 
352	Gen	30	8	<i>niphtal</i>
353	Gen	30	8	 , he wrestled
354	Gen	30	11	1) Heb 
355	Gen	30	11	<i>With fortune!</i>
356	Gen	30	11	 Another reading is 
357	Gen	30	11	<i>Fortune is come</i>
358	Gen	30	11	 2) That is 
359	Gen	30	11	<i>Fortune</i>
360	Gen	30	13	1) Heb 
361	Gen	30	13	<i>With my happiness!</i>
362	Gen	30	13	 2) That is 
363	Gen	30	13	<i>Happy</i>
364	Gen	30	14	1) Or 
365	Gen	30	14	<i>love apples</i>
366	Gen	30	18	1) Heb 
367	Gen	30	18	<i>sachar</i>
368	Gen	30	20	1) Heb 
369	Gen	30	20	<i>zabal</i>
370	Gen	30	20	 , he dwelt
371	Gen	30	24	1) Heb 
372	Gen	30	24	<i>joseph</i>
373	Gen	30	30	1) Heb 
374	Gen	30	30	<i>broken forth</i>
375	Gen	30	30	 2) Heb 
376	Gen	30	30	<i>at my foot</i>
377	Gen	30	37	1) Or 
378	Gen	30	37	<i>storax-tree</i>
379	Gen	31	1	1) Or 
380	Gen	31	1	<i>wealth</i>
381	Gen	31	15	1) Or 
382	Gen	31	15	<i>the price paid for us</i>
383	Gen	31	20	1) Heb 
384	Gen	31	20	<i>stole the heart of Laban the Aramean</i>
385	Gen	31	21	1) That is the Euphrates
386	Gen	31	27	1) Heb 
387	Gen	31	27	<i>didst steal me</i>
388	Gen	31	47	1) That is 
389	Gen	31	47	<i>The heap of witness</i>
390	Gen	31	47	 , in Aramaic 2) That is 
391	Gen	31	47	<i>The heap of witness</i>
392	Gen	31	47	 , in Hebrew
393	Gen	31	49	1) That is 
394	Gen	31	49	<i>The watch tower</i>
395	Gen	31	49	 2) Heb 
396	Gen	31	49	<i>hidden</i>
397	Gen	31	53	1) Or 
398	Gen	31	53	<i>gods</i>
399	Gen	32	2	1) That is 
400	Gen	32	2	<i>Two hosts</i>
401	Gen	32	2	 , or 
402	Gen	32	2	<i>Companies</i>
403	Gen	32	10	1) Heb 
404	Gen	32	10	<i>I am less than all etc</i>
405	Gen	32	28	1) That is 
406	Gen	32	28	<i>He who striveth with God</i>
407	Gen	32	28	 , or 
408	Gen	32	28	<i>God striveth</i>
409	Gen	32	28	 2) Or 
410	Gen	32	28	<i>had power with</i>
411	Gen	32	30	1) That is 
412	Gen	32	30	<i>The face of God</i>
413	Gen	33	10	1) Or 
414	Gen	33	10	<i>for therefore have I seen</i>
415	Gen	33	11	1) Heb 
416	Gen	33	11	<i>blessing</i>
417	Gen	33	11	 2) Heb 
418	Gen	33	11	<i>all</i>
419	Gen	33	17	1) That is 
420	Gen	33	17	<i>Booths</i>
421	Gen	33	18	1) Or 
422	Gen	33	18	<i>to Shalem, a city</i>
423	Gen	33	19	1) Heb 
424	Gen	33	19	<i>kesitah</i>
425	Gen	33	20	1) That is 
426	Gen	33	20	<i>God, the God of Israel</i>
427	Gen	34	3	1) Heb 
428	Gen	34	3	<i>to the heart of the damsel</i>
429	Gen	34	25	1) Or 
430	Gen	34	25	<i>boldly</i>
431	Gen	35	4	1) Or 
432	Gen	35	4	<i>terebinth</i>
433	Gen	35	7	1) That is 
434	Gen	35	7	<i>The God of Beth-el</i>
435	Gen	35	8	1) That is 
436	Gen	35	8	<i>The oak of weeping</i>
437	Gen	35	11	1) Heb 
438	Gen	35	11	<i>El Shaddai</i>
439	Gen	35	18	1) That is 
440	Gen	35	18	<i>The son of my sorrow</i>
441	Gen	35	18	 2) That is 
442	Gen	35	18	<i>The son of the right hand</i>
443	Gen	36	9	1) Heb 
444	Gen	36	9	<i>Edom</i>
445	Gen	36	11	1) In 1 Ch 1:36 
446	Gen	36	11	<i>Zephi</i>
447	Gen	36	22	1) In 1 Ch 1:39 
448	Gen	36	22	<i>Homan</i>
449	Gen	36	23	1) In 1 Ch 1:40 
450	Gen	36	23	<i>Alian</i>
451	Gen	36	23	 2) In 1 Ch 1:40 
452	Gen	36	23	<i>Shephi</i>
453	Gen	36	26	1) Heb 
454	Gen	36	26	<i>Dishan</i>
455	Gen	36	26	 2) In 1 Ch 1:41 
456	Gen	36	26	<i>Hamran</i>
457	Gen	36	27	1) In 1 Ch 1:42 
458	Gen	36	27	<i>Jaakan</i>
459	Gen	36	39	1) In 1 Ch 1:50 
460	Gen	36	39	<i>Hadad</i>
461	Gen	36	39	 2) In 1 Ch 1:50 
462	Gen	36	39	<i>Pai</i>
463	Gen	36	40	1) In 1 Ch 1:51 
464	Gen	36	40	<i>Aliah</i>
465	Gen	36	43	1) Heb 
466	Gen	36	43	<i>Edom</i>
467	Gen	37	3	1) Or 
468	Gen	37	3	<i>a long garment with sleeves</i>
469	Gen	37	19	1) Heb 
470	Gen	37	19	<i>master of dreams</i>
471	Gen	37	25	1) Or 
472	Gen	37	25	<i>gum tragacanth</i>
473	Gen	37	25	 ; Or 
474	Gen	37	25	<i>storax</i>
475	Gen	37	25	 2) Or 
476	Gen	37	25	<i>mastic</i>
477	Gen	37	25	 3) Or 
478	Gen	37	25	<i>ladanum</i>
479	Gen	37	36	1) Heb 
480	Gen	37	36	<i>Medanites</i>
481	Gen	37	36	 2) Heb 
482	Gen	37	36	<i>chief of the executioners</i>
483	Gen	38	21	1) Heb 
484	Gen	38	21	<i>kedeshah</i>
485	Gen	38	21	 , that is, a woman dedicated to impure heathen worship; See De 23:17; Hos 4:14
486	Gen	38	29	1) Or 
487	Gen	38	29	<i>How hast thou made a breach! a breach be upon thee!</i>
488	Gen	38	29	 2) That is 
489	Gen	38	29	<i>A breach</i>
490	Gen	39	6	1) Or 
491	Gen	39	6	<i>with him he knew not</i>
492	Gen	39	8	1) Or 
493	Gen	39	8	<i>knoweth not with me what is etc</i>
494	Gen	41	1	1) Heb 
495	Gen	41	1	<i>Yeor</i>
496	Gen	41	1	 , that is, the Nile
497	Gen	41	5	1) Heb 
498	Gen	41	5	<i>fat</i>
499	Gen	41	8	1) Or 
500	Gen	41	8	<i>sacred scribes</i>
501	Gen	41	9	1) Or 
502	Gen	41	9	<i>will make mention of</i>
503	Gen	41	13	1) Or 
504	Gen	41	13	<i>I was restored…and he was hanged</i>
505	Gen	41	40	1) Or 
506	Gen	41	40	<i>order themselves</i>
507	Gen	41	40	 ; Or 
508	Gen	41	40	<i>do homage</i>
509	Gen	41	42	1) Or 
510	Gen	41	42	<i>cotton</i>
511	Gen	41	43	1) 
512	Gen	41	43	<i>Abrech</i>
513	Gen	41	43	 , probably an Egyptian word, similar in sound to the Hebrew word meaning 
514	Gen	41	43	<i>to kneel</i>
515	Gen	41	51	1) That is 
516	Gen	41	51	<i>Making to forget</i>
517	Gen	41	52	1) From a Hebrew word signifying 
518	Gen	41	52	<i>to be fruitful</i>
519	Gen	42	36	1) Or 
520	Gen	42	36	<i>upon</i>
521	Gen	43	9	1) Heb 
522	Gen	43	9	<i>I shall have sinned against thee for ever</i>
523	Gen	43	11	1) That is 
524	Gen	43	11	<i>pistachio nuts</i>
525	Gen	43	14	1) Heb 
526	Gen	43	14	<i>El Shaddai</i>
527	Gen	43	18	1) Heb 
528	Gen	43	18	<i>roll himself upon us</i>
529	Gen	43	34	1) Or 
530	Gen	43	34	<i>messes were taken</i>
531	Gen	43	34	 2) Heb 
532	Gen	43	34	<i>drank largely</i>
533	Gen	44	29	1) Heb 
534	Gen	44	29	<i>evil</i>
535	Gen	44	30	1) Or 
536	Gen	44	30	<i>his soul is knit with the lad’s soul</i>
537	Gen	44	30	 ; See 1 Sa 18:1
538	Gen	45	2	1) Heb 
539	Gen	45	2	<i>gave forth his voice in weeping</i>
540	Gen	45	7	1) Or 
541	Gen	45	7	<i>to be a great company that escape</i>
542	Gen	46	10	1) In Nu 26:12; 1 Ch 4:24 
543	Gen	46	10	<i>Nemuel</i>
544	Gen	46	10	 2) In 1 Ch 4:24 
545	Gen	46	10	<i>Jarib</i>
546	Gen	46	10	 3) In Nu 26:13; 1 Ch 4:24 
547	Gen	46	10	<i>Zerah</i>
548	Gen	46	11	1) In 1 Ch 6:16 
549	Gen	46	11	<i>Gershom</i>
550	Gen	46	13	1) In 1 Ch 7:1 
551	Gen	46	13	<i>Puvah, Jashub</i>
552	Gen	46	13	 ; See Nu 26:23, 24
553	Gen	46	16	1) In Nu 26:15 
554	Gen	46	16	<i>Zephon</i>
555	Gen	46	16	 2) In Nu 26:16 
556	Gen	46	16	<i>Ozni</i>
557	Gen	46	16	 3) In Nu 26:17 
558	Gen	46	16	<i>Arod</i>
559	Gen	46	21	1) In Nu 26:38 
560	Gen	46	21	<i>Ahiram</i>
561	Gen	46	21	 2) In Nu 26:39 
562	Gen	46	21	<i>Shephupham</i>
563	Gen	46	21	 ; In 1 Ch 7:12 
564	Gen	46	21	<i>Shuppim</i>
565	Gen	46	21	 3) In Nu 26:39 
566	Gen	46	21	<i>Hupham</i>
567	Gen	46	23	1) In Nu 26:42 
568	Gen	46	23	<i>Shuham</i>
569	Gen	46	24	1) In 1 Ch 7:13 
570	Gen	46	24	<i>Jahziel</i>
571	Gen	46	24	 2) In 1 Ch 7:13 
572	Gen	46	24	<i>Shallum</i>
573	Gen	46	26	1) Or 
574	Gen	46	26	<i>souls belonging to Jacob that came</i>
575	Gen	47	6	1) Or 
576	Gen	47	6	<i>men of activity</i>
577	Gen	47	9	1) Or 
578	Gen	47	9	<i>sojournings</i>
579	Gen	47	12	1) Or 
580	Gen	47	12	<i>according to</i>
581	Gen	47	12	 the number of 
582	Gen	47	12	<i>their little ones</i>
583	Gen	47	17	1) Heb 
584	Gen	47	17	<i>cattle of the flocks, and for the cattle of the herds</i>
585	Gen	47	17	 2) Heb 
586	Gen	47	17	<i>led them as a shepherd</i>
587	Gen	47	21	1) According to Sept and Vulg 
588	Gen	47	21	<i>he made bondmen of them, from etc</i>
589	Gen	47	21	 2) Or 
590	Gen	47	21	<i>according to their cities</i>
591	Gen	48	3	1) Heb 
592	Gen	48	3	<i>El Shaddai</i>
593	Gen	48	6	1) Or 
594	Gen	48	6	<i>has begotten</i>
595	Gen	48	7	1) Or 
596	Gen	48	7	<i>to my sorrow</i>
597	Gen	48	14	1) Or 
598	Gen	48	14	<i>crossing his hands</i>
599	Gen	48	19	1) Heb 
600	Gen	48	19	<i>fulness</i>
601	Gen	48	20	1) Or 
602	Gen	48	20	<i>By</i>
603	Gen	48	22	1) Or 
604	Gen	48	22	<i>mountain slope</i>
605	Gen	48	22	 ; Heb 
606	Gen	48	22	<i>shechem</i>
607	Gen	48	22	 , shoulder
608	Gen	49	3	1) Or 
609	Gen	49	3	<i>first-fruits</i>
610	Gen	49	4	1) Or 
611	Gen	49	4	<i>have not thou</i>
612	Gen	49	5	1) Or 
613	Gen	49	5	<i>compacts</i>
614	Gen	49	6	1) Or 
615	Gen	49	6	<i>secret</i>
616	Gen	49	6	 2) Or 
617	Gen	49	6	<i>men</i>
618	Gen	49	6	 3) Or 
619	Gen	49	6	<i>oxen</i>
620	Gen	49	10	1) Or 
621	Gen	49	10	<i>a lawgiver</i>
622	Gen	49	10	 2) Or 
623	Gen	49	10	<i>Till he come to Shiloh, having the obedience of the peoples</i>
624	Gen	49	10	 ; Or according to Syr 
625	Gen	49	10	<i>Till he come whose it is etc</i>
626	Gen	49	13	1) Heb 
627	Gen	49	13	<i>beach</i>
628	Gen	49	13	 2) Or 
629	Gen	49	13	<i>by</i>
630	Gen	49	15	1) Or 
631	Gen	49	15	<i>rest</i>
632	Gen	49	17	1) Or 
633	Gen	49	17	<i>horned snake</i>
634	Gen	49	19	1) Heb 
635	Gen	49	19	<i>Gedud</i>
636	Gen	49	19	 , a marauding band 2) Heb 
637	Gen	49	19	<i>Gad</i>
638	Gen	49	19	 , to press
639	Gen	49	22	1) Heb 
640	Gen	49	22	<i>the son of a fruitful tree</i>
641	Gen	49	22	 2) Heb 
642	Gen	49	22	<i>daughters</i>
643	Gen	49	24	1) Or 
644	Gen	49	24	<i>active</i>
645	Gen	49	24	 2) Or 
646	Gen	49	24	<i>From thence,</i>
647	Gen	49	24	 from 
648	Gen	49	24	<i>the shepherd</i>
649	Gen	49	24	 ; Or as otherwise read 
650	Gen	49	24	<i>By the name of the shepherd</i>
651	Gen	49	26	1) Or 
652	Gen	49	26	<i>that is prince among</i>
653	Gen	50	5	1) Or 
654	Gen	50	5	<i>bought</i>
655	Gen	50	11	1) Heb 
656	Gen	50	11	<i>ebel</i>
657	Gen	50	21	1) Heb 
658	Gen	50	21	<i>to their heart</i>
659	Exod	1	9	1) Or 
660	Exod	1	9	<i>too many and too mighty for us</i>
661	Exod	1	12	1) Or 
662	Exod	1	12	<i>abhorred</i>
663	Exod	2	3	1) That is 
664	Exod	2	3	<i>papyrus</i>
665	Exod	2	3	 2) That is 
666	Exod	2	3	<i>bitumen</i>
667	Exod	2	10	1) Heb 
668	Exod	2	10	<i>Mosheh</i>
669	Exod	2	10	 2) Heb 
670	Exod	2	10	<i>mashah</i>
671	Exod	2	10	 , to draw out
672	Exod	2	22	1) Heb 
673	Exod	2	22	<i>ger</i>
674	Exod	3	14	1) Or 
675	Exod	3	14	<i>I AM, BECAUSE I AM</i>
676	Exod	3	14	 ; Or 
677	Exod	3	14	<i>I AM WHO AM</i>
678	Exod	3	14	 ; Or 
679	Exod	3	14	<i>I WILL BE THAT I WILL BE</i>
680	Exod	3	14	 2) Heb 
681	Exod	3	14	<i>Ehyeh</i>
682	Exod	3	14	 ; From the same root as 
683	Exod	3	14	<i>Jehovah</i>
684	Exod	4	3	1) Heb 
685	Exod	4	3	<i>nahash</i>
686	Exod	4	10	1) Heb 
687	Exod	4	10	<i>a man of words</i>
688	Exod	4	18	1) Heb 
689	Exod	4	18	<i>Jether</i>
690	Exod	4	21	1) Heb 
691	Exod	4	21	<i>make strong</i>
692	Exod	4	25	1) Heb 
693	Exod	4	25	<i>made it touch</i>
694	Exod	4	26	1) Or 
695	Exod	4	26	<i>A bridegroom of blood in regard of the circumcision</i>
696	Exod	5	14	1) Heb 
697	Exod	5	14	<i>saying</i>
698	Exod	5	19	1) Or 
699	Exod	5	19	<i>were set on mischief, when they said</i>
700	Exod	6	3	1) Heb 
701	Exod	6	3	<i>El Shaddai</i>
702	Exod	6	3	 2) Or 
703	Exod	6	3	<i>as to</i>
704	Exod	6	3	 3) Or 
705	Exod	6	3	<i>made known</i>
706	Exod	6	8	1) Heb 
707	Exod	6	8	<i>lifted up my hand</i>
708	Exod	6	9	1) Or 
709	Exod	6	9	<i>impatience</i>
710	Exod	6	9	 ; Heb 
711	Exod	6	9	<i>shortness of spirit</i>
712	Exod	7	9	1) Heb 
713	Exod	7	9	<i>tannin</i>
714	Exod	7	9	 , any large reptile; and so in verses 10, 12
715	Exod	7	11	1) Or 
716	Exod	7	11	<i>secret arts</i>
717	Exod	7	13	1) Heb 
718	Exod	7	13	<i>was strong</i>
719	Exod	7	14	1) Heb 
720	Exod	7	14	<i>heavy</i>
721	Exod	7	19	1) Or 
722	Exod	7	19	<i>canals</i>
723	Exod	7	22	1) Heb 
724	Exod	7	22	<i>was strong</i>
725	Exod	7	23	1) Heb 
726	Exod	7	23	<i>set his heart even to this</i>
727	Exod	8	5	1) Or 
728	Exod	8	5	<i>canals</i>
729	Exod	8	12	1) Or 
730	Exod	8	12	<i>as he had appointed unto Pharaoh</i>
731	Exod	8	15	1) Heb 
732	Exod	8	15	<i>made heavy</i>
733	Exod	8	16	1) Or 
734	Exod	8	16	<i>sand files</i>
735	Exod	8	16	 ; Or 
736	Exod	8	16	<i>fleas</i>
737	Exod	8	19	1) Heb 
738	Exod	8	19	<i>was strong</i>
739	Exod	8	23	1) Or 
740	Exod	8	23	<i>set</i>
741	Exod	8	23	 a sign of 
742	Exod	8	23	<i>deliverance</i>
743	Exod	8	23	 ; Heb 
744	Exod	8	23	<i>set redemption</i>
745	Exod	8	24	1) Or 
746	Exod	8	24	<i>destroyed</i>
747	Exod	8	32	1) Heb 
748	Exod	8	32	<i>made heavy</i>
749	Exod	9	7	1) Heb 
750	Exod	9	7	<i>heavy</i>
751	Exod	9	8	1) Or 
752	Exod	9	8	<i>soot</i>
753	Exod	9	12	1) Heb 
754	Exod	9	12	<i>made strong</i>
755	Exod	9	24	1) Or 
756	Exod	9	24	<i>flashing continually amidst</i>
757	Exod	9	28	1) Heb 
758	Exod	9	28	<i>voices</i>
759	Exod	9	28	 (or 
760	Exod	9	28	<i>thunderings</i>
761	Exod	9	28	 ) 
762	Exod	9	28	<i>of God</i>
763	Exod	9	34	1) Heb 
764	Exod	9	34	<i>made heavy</i>
765	Exod	9	35	1) Heb 
766	Exod	9	35	<i>was strong</i>
767	Exod	10	1	1) Heb 
768	Exod	10	1	<i>made heavy</i>
769	Exod	10	2	1) Or 
770	Exod	10	2	<i>how I have mocked the Egyptians</i>
771	Exod	10	10	1) Or 
772	Exod	10	10	<i>what ye purpose</i>
773	Exod	10	10	 ; Heb 
774	Exod	10	10	<i>before your face</i>
775	Exod	10	20	1) Heb 
776	Exod	10	20	<i>made strong</i>
777	Exod	10	21	1) Or 
778	Exod	10	21	<i>so that men shall grope in darkness</i>
779	Exod	10	27	1) Heb 
780	Exod	10	27	<i>made strong</i>
781	Exod	11	1	1) Or 
782	Exod	11	1	<i>when he shall let you go altogether, he shall utterly thrust you out hence</i>
783	Exod	11	7	1) Heb 
784	Exod	11	7	<i>whet</i>
785	Exod	11	10	1) Heb 
786	Exod	11	10	<i>made strong</i>
787	Exod	12	3	1) Or 
788	Exod	12	3	<i>kid</i>
789	Exod	12	6	1) Heb 
790	Exod	12	6	<i>between the two evenings</i>
791	Exod	12	13	1) Or 
792	Exod	12	13	<i>for a destroyer</i>
793	Exod	12	21	1) Or 
794	Exod	12	21	<i>Go forth</i>
795	Exod	12	21	 2) Or 
796	Exod	12	21	<i>kids</i>
797	Exod	12	27	1) Or 
798	Exod	12	27	<i>for that he passed</i>
799	Exod	12	42	1) Or 
800	Exod	12	42	<i>a night of watching unto Jehovah</i>
801	Exod	12	42	 2) Or 
802	Exod	12	42	<i>this same night is a night of watching unto Jehovah for all etc</i>
803	Exod	12	47	1) Heb 
804	Exod	12	47	<i>do it</i>
805	Exod	13	3	1) Heb 
806	Exod	13	3	<i>bondmen</i>
807	Exod	13	12	1) Heb 
808	Exod	13	12	<i>cause to pass over</i>
809	Exod	13	13	1) Or 
810	Exod	13	13	<i>kid</i>
811	Exod	13	14	1) Heb 
812	Exod	13	14	<i>bondmen</i>
813	Exod	13	15	1) Or 
814	Exod	13	15	<i>hardened himself against letting us go</i>
815	Exod	13	22	1) Or 
816	Exod	13	22	<i>he took not away the pillar of cloud by day, or the etc</i>
817	Exod	14	4	1) Heb 
818	Exod	14	4	<i>make strong</i>
819	Exod	14	6	1) Or 
820	Exod	14	6	<i>chariots</i>
821	Exod	14	8	1) Heb 
822	Exod	14	8	<i>made strong</i>
823	Exod	14	13	1) Or 
824	Exod	14	13	<i>for whereas ye have seen the Egyptians to-day</i>
825	Exod	14	17	1) Heb 
826	Exod	14	17	<i>make strong</i>
827	Exod	14	25	1) According to Sept and Syr 
828	Exod	14	25	<i>bound</i>
829	Exod	14	25	 2) Or 
830	Exod	14	25	<i>and made them to drive</i>
831	Exod	14	27	1) Or 
832	Exod	14	27	<i>wonted flow</i>
833	Exod	14	27	 2) Heb 
834	Exod	14	27	<i>shook off</i>
835	Exod	14	31	1) Heb 
836	Exod	14	31	<i>hand</i>
837	Exod	15	1	1) Or 
838	Exod	15	1	<i>is highly exalted</i>
839	Exod	15	2	1) Heb 
840	Exod	15	2	<i>Jah</i>
841	Exod	15	15	1) Heb 
842	Exod	15	15	<i>rams</i>
843	Exod	15	16	1) Heb 
844	Exod	15	16	<i>gotten</i>
845	Exod	15	21	1) Or 
846	Exod	15	21	<i>is highly exalted</i>
847	Exod	15	23	1) That is 
848	Exod	15	23	<i>Bitterness</i>
849	Exod	16	12	1) Heb 
850	Exod	16	12	<i>Between the two evenings</i>
851	Exod	16	14	1) Or 
852	Exod	16	14	<i>flake</i>
853	Exod	16	15	1) Or 
854	Exod	16	15	<i>It is manna</i>
855	Exod	16	15	 ; Heb 
856	Exod	16	15	<i>man hu</i>
857	Exod	16	31	1) Heb 
858	Exod	16	31	<i>Man</i>
859	Exod	17	1	1) Or 
860	Exod	17	1	<i>stages</i>
861	Exod	17	7	1) That is 
862	Exod	17	7	<i>Tempting</i>
863	Exod	17	7	 , or 
864	Exod	17	7	<i>Proving</i>
865	Exod	17	7	 2) That is 
866	Exod	17	7	<i>Chiding</i>
867	Exod	17	7	 , or 
868	Exod	17	7	<i>Strife</i>
869	Exod	17	13	1) Heb 
870	Exod	17	13	<i>prostrated</i>
871	Exod	17	14	1) Or 
872	Exod	17	14	<i>the book</i>
873	Exod	17	14	 2) Or 
874	Exod	17	14	<i>for</i>
875	Exod	17	15	1) That is 
876	Exod	17	15	<i>Jehovah is my banner</i>
877	Exod	17	16	1) Or 
878	Exod	17	16	<i>Because there is a hand against the throne of Jehovah</i>
879	Exod	17	16	 ; Heb 
880	Exod	17	16	<i>A hand</i>
881	Exod	17	16	 is lifted up 
882	Exod	17	16	<i>upon the throne of Jah</i>
883	Exod	18	3	1) Heb 
884	Exod	18	3	<i>ger</i>
885	Exod	18	4	1) Heb 
886	Exod	18	4	<i>El</i>
887	Exod	18	4	 , God and 
888	Exod	18	4	<i>ezer</i>
889	Exod	18	4	 , help
890	Exod	19	5	1) Or 
891	Exod	19	5	<i>above</i>
892	Exod	19	13	1) Or 
893	Exod	19	13	<i>it</i>
894	Exod	19	13	 2) Or 
895	Exod	19	13	<i>ram’s horn</i>
896	Exod	20	2	1) Heb 
897	Exod	20	2	<i>bondmen</i>
898	Exod	20	3	1) Or 
899	Exod	20	3	<i>besides me</i>
900	Exod	20	6	1) Or 
1148	Exod	35	13	1) Or 
901	Exod	20	6	<i>a thousand generations</i>
902	Exod	20	7	1) Or 
903	Exod	20	7	<i>for vanity</i>
904	Exod	20	7	 (or 
905	Exod	20	7	<i>falsehood</i>
906	Exod	20	7	 )
907	Exod	20	18	1) Or 
908	Exod	20	18	<i>were moved</i>
909	Exod	20	24	1) Or 
910	Exod	20	24	<i>cause my name to be remembered</i>
911	Exod	21	2	1) Or 
912	Exod	21	2	<i>bondman</i>
913	Exod	21	6	1) Or 
914	Exod	21	6	<i>the judges</i>
915	Exod	21	7	1) Or 
916	Exod	21	7	<i>bondwoman</i>
917	Exod	21	8	1) Another reading is 
918	Exod	21	8	<i>so that he hath not espoused her</i>
919	Exod	21	10	1) Heb 
920	Exod	21	10	<i>flesh</i>
921	Exod	21	17	1) Or 
922	Exod	21	17	<i>revileth</i>
923	Exod	21	19	1) Heb 
924	Exod	21	19	<i>his sitting</i>
925	Exod	21	19	 or 
926	Exod	21	19	<i>ceasing</i>
927	Exod	21	20	1) Or 
928	Exod	21	20	<i>his bondman, or his bondwoman</i>
929	Exod	22	2	1) Heb 
930	Exod	22	2	<i>blood</i>
931	Exod	22	9	1) Or 
932	Exod	22	9	<i>the judges</i>
933	Exod	22	14	1) Heb 
934	Exod	22	14	<i>ask</i>
935	Exod	22	15	1) Or 
936	Exod	22	15	<i>it is reckoned in</i>
937	Exod	22	15	 (Heb 
938	Exod	22	15	<i>cometh into</i>
939	Exod	22	15	 ) 
940	Exod	22	15	<i>its hire</i>
941	Exod	22	20	1) Heb 
942	Exod	22	20	<i>devoted</i>
943	Exod	22	28	1) Or 
944	Exod	22	28	<i>the judges</i>
945	Exod	22	29	1) Heb 
946	Exod	22	29	<i>thy fulness and thy tear</i>
947	Exod	23	2	1) Or 
948	Exod	23	2	<i>bear witness</i>
949	Exod	23	5	1) Or 
950	Exod	23	5	<i>and wouldest forbear to release</i>
951	Exod	23	5	  it 
952	Exod	23	5	<i>for him, thou shalt surely release</i>
953	Exod	23	5	 it 
954	Exod	23	5	<i>with him</i>
955	Exod	23	8	1) Or 
956	Exod	23	8	<i>cause</i>
957	Exod	23	11	1) Or 
958	Exod	23	11	<i>release it and let it lie fallow</i>
959	Exod	23	11	 ; See De 15:2
960	Exod	23	12	1) Or 
961	Exod	23	12	<i>keep sabbath</i>
962	Exod	23	21	1) Or 
963	Exod	23	21	<i>be not rebellious against him</i>
964	Exod	23	24	1) Or 
965	Exod	23	24	<i>obelisks</i>
966	Exod	23	31	1) That is the Euphrates
967	Exod	24	8	1) Or 
968	Exod	24	8	<i>upon all these conditions</i>
969	Exod	24	10	1) Or 
970	Exod	24	10	<i>work of bright sapphire</i>
971	Exod	25	2	1) Or 
972	Exod	25	2	<i>heave-offering</i>
973	Exod	25	3	1) Or 
974	Exod	25	3	<i>heave-offering</i>
975	Exod	25	4	1) Or 
976	Exod	25	4	<i>cotton</i>
977	Exod	25	5	1) Or 
978	Exod	25	5	<i>porpoise-skins</i>
979	Exod	25	7	1) Or 
980	Exod	25	7	<i>beryl</i>
981	Exod	25	9	1) Heb 
982	Exod	25	9	<i>dwelling</i>
983	Exod	25	11	1) Or 
984	Exod	25	11	<i>rim</i>
985	Exod	25	11	 ; Or 
986	Exod	25	11	<i>moulding</i>
987	Exod	25	12	1) Heb 
988	Exod	25	12	<i>rib</i>
989	Exod	25	17	1) Or 
990	Exod	25	17	<i>covering</i>
991	Exod	25	18	1) Or 
992	Exod	25	18	<i>turned</i>
993	Exod	25	19	1) Heb 
994	Exod	25	19	<i>out of the mercy-seat</i>
995	Exod	25	30	1) Or 
996	Exod	25	30	<i>Presence-bread</i>
997	Exod	25	31	1) Or 
998	Exod	25	31	<i>turned</i>
999	Exod	25	31	 2) Heb 
1000	Exod	25	31	<i>thigh</i>
1001	Exod	25	31	 3) Heb 
1002	Exod	25	31	<i>out of the same</i>
1003	Exod	25	35	1) Heb 
1004	Exod	25	35	<i>out of the same</i>
1005	Exod	25	36	1) Heb 
1006	Exod	25	36	<i>out of the same</i>
1007	Exod	25	36	 2) Or 
1008	Exod	25	36	<i>turned</i>
1009	Exod	25	37	1) Or 
1010	Exod	25	37	<i>set up</i>
1011	Exod	26	4	1) Or 
1012	Exod	26	4	<i>that is outmost in the</i>
1013	Exod	26	4	 first 
1014	Exod	26	4	<i>set</i>
1015	Exod	26	4	 2) Or 
1016	Exod	26	4	<i>set</i>
1017	Exod	26	5	1) Or 
1018	Exod	26	5	<i>set</i>
1019	Exod	26	10	1) Or, first 
1020	Exod	26	10	<i>set</i>
1021	Exod	26	10	 2) Or 
1022	Exod	26	10	<i>set</i>
1023	Exod	26	14	1) Or 
1024	Exod	26	14	<i>porpoise-skins</i>
1025	Exod	26	17	1) Or 
1026	Exod	26	17	<i>mortised</i>
1027	Exod	26	24	1) Or 
1028	Exod	26	24	<i>the first</i>
1029	Exod	27	4	1) Heb 
1030	Exod	27	4	<i>ends</i>
1031	Exod	27	7	1) Heb 
1032	Exod	27	7	<i>ribs</i>
1033	Exod	27	20	1) Or 
1034	Exod	27	20	<i>to set up a lamp continually</i>
1035	Exod	27	21	1) Or 
1036	Exod	27	21	<i>from</i>
1037	Exod	28	4	1) Or 
1038	Exod	28	4	<i>turban</i>
1039	Exod	28	9	1) 
1040	Exod	28	9	<i>beryl</i>
1041	Exod	28	17	1) Or 
1042	Exod	28	17	<i>ruby</i>
1043	Exod	28	17	 2) Or 
1044	Exod	28	17	<i>emerald</i>
1045	Exod	28	18	1) Or 
1046	Exod	28	18	<i>carbuncle</i>
1047	Exod	28	18	 2) Or 
1048	Exod	28	18	<i>sardonyx</i>
1049	Exod	28	19	1) Or 
1050	Exod	28	19	<i>amber</i>
1051	Exod	28	20	1) Or 
1052	Exod	28	20	<i>chalcedony</i>
1053	Exod	28	20	 2) Or 
1054	Exod	28	20	<i>beryl</i>
1055	Exod	28	30	1) That is 
1056	Exod	28	30	<i>the Lights and the Perfections</i>
1057	Exod	28	32	1) Or 
1058	Exod	28	32	<i>there shall be a hole in the top of it</i>
1059	Exod	28	37	1) Or 
1060	Exod	28	37	<i>turban</i>
1061	Exod	28	39	1) Or 
1062	Exod	28	39	<i>silk</i>
1063	Exod	28	39	 2) Or 
1064	Exod	28	39	<i>turban</i>
1065	Exod	28	41	1) Heb 
1066	Exod	28	41	<i>fill their hand</i>
1067	Exod	29	6	1) Or 
1068	Exod	29	6	<i>turban</i>
1069	Exod	29	14	1) Heb 
1070	Exod	29	14	<i>sin</i>
1071	Exod	29	17	1) Or 
1072	Exod	29	17	<i>upon</i>
1073	Exod	29	22	1) Or 
1074	Exod	29	22	<i>shoulder</i>
1075	Exod	29	36	1) Or 
1076	Exod	29	36	<i>purge the alter, by thy making atonement</i>
1077	Exod	29	37	1) Or 
1078	Exod	29	37	<i>whosoever</i>
1079	Exod	29	39	1) Heb 
1080	Exod	29	39	<i>between the two evenings</i>
1081	Exod	29	41	1) Heb 
1082	Exod	29	41	<i>between the two evenings</i>
1083	Exod	30	3	1) Heb 
1084	Exod	30	3	<i>roof</i>
1085	Exod	30	3	 2) Heb 
1086	Exod	30	3	<i>walls</i>
1087	Exod	30	3	 3) Or 
1088	Exod	30	3	<i>rim</i>
1089	Exod	30	3	 ; Or 
1090	Exod	30	3	<i>moulding</i>
1091	Exod	30	8	1) Or 
1092	Exod	30	8	<i>setteth up</i>
1093	Exod	30	8	 ; Heb 
1094	Exod	30	8	<i>causeth to ascend</i>
1095	Exod	30	8	 2) Heb 
1096	Exod	30	8	<i>between</i>
1097	Exod	30	8	 the 
1098	Exod	30	8	<i>two evenings</i>
1099	Exod	30	10	1) Or 
1100	Exod	30	10	<i>for</i>
1101	Exod	30	10	 2) Or 
1102	Exod	30	10	<i>upon</i>
1103	Exod	30	24	1) Or 
1104	Exod	30	24	<i>costus</i>
1105	Exod	30	29	1) Or 
1106	Exod	30	29	<i>whosoever</i>
1107	Exod	30	34	1) Or 
1108	Exod	30	34	<i>opobalsamum</i>
1109	Exod	30	35	1) Or 
1110	Exod	30	35	<i>tempered together</i>
1111	Exod	32	1	1) Or 
1112	Exod	32	1	<i>a god</i>
1113	Exod	32	4	1) Or 
1114	Exod	32	4	<i>This is thy God</i>
1115	Exod	32	25	1) Heb 
1116	Exod	32	25	<i>whispering</i>
1117	Exod	32	29	1) Heb 
1118	Exod	32	29	<i>Fill your hand</i>
1119	Exod	32	29	 2) Or 
1120	Exod	32	29	<i>for every man</i>
1121	Exod	32	29	 hath been 
1122	Exod	32	29	<i>against his son and against his brother</i>
1123	Exod	32	29	 3) Or 
1124	Exod	32	29	<i>upon</i>
1125	Exod	33	12	1) Or 
1126	Exod	33	12	<i>him whom</i>
1127	Exod	34	5	1) Or 
1128	Exod	34	5	<i>and he stood with him there, and called upon etc</i>
1129	Exod	34	5	 2) Or 
1130	Exod	34	5	<i>Jehovah by name</i>
1131	Exod	34	10	1) Heb 
1132	Exod	34	10	<i>created</i>
1133	Exod	34	13	1) Or 
1134	Exod	34	13	<i>obelisks</i>
1135	Exod	34	13	 2) Probably the wooden symbols of a goddess Asherah.
1136	Exod	34	20	1) Or 
1137	Exod	34	20	<i>kid</i>
1138	Exod	34	22	1) Heb 
1139	Exod	34	22	<i>revolution</i>
1140	Exod	34	28	1) Heb 
1141	Exod	34	28	<i>words</i>
1142	Exod	34	29	1) Or 
1143	Exod	34	29	<i>sent forth beams</i>
1144	Exod	34	29	 (Heb 
1145	Exod	34	29	<i>horns</i>
1146	Exod	34	29	 ) 2) Or 
1147	Exod	34	29	<i>while he talked with him</i>
1149	Exod	35	13	<i>Presence-bread</i>
1150	Exod	35	22	1) Or 
1151	Exod	35	22	<i>nose-rings</i>
1152	Exod	35	22	 2) Or 
1153	Exod	35	22	<i>necklaces</i>
1154	Exod	35	27	1) Or 
1155	Exod	35	27	<i>beryl</i>
1156	Exod	35	35	1) Or 
1157	Exod	35	35	<i>craftsman</i>
1158	Exod	36	11	1) Or 
1159	Exod	36	11	<i>that was outmost in the</i>
1160	Exod	36	11	 first 
1161	Exod	36	11	<i>set</i>
1162	Exod	36	11	 2) Or 
1163	Exod	36	11	<i>set</i>
1164	Exod	36	12	1) Or 
1165	Exod	36	12	<i>set</i>
1166	Exod	36	17	1) Or, first 
1167	Exod	36	17	<i>set</i>
1168	Exod	36	17	 2) Or 
1169	Exod	36	17	<i>set</i>
1170	Exod	36	19	1) Or 
1171	Exod	36	19	<i>porpoise-skins</i>
1172	Exod	36	22	1) Or 
1173	Exod	36	22	<i>mortised</i>
1174	Exod	36	29	1) Or 
1175	Exod	36	29	<i>the first</i>
1176	Exod	37	2	1) Or 
1177	Exod	37	2	<i>rim</i>
1178	Exod	37	2	 ; Or 
1179	Exod	37	2	<i>moulding</i>
1180	Exod	37	3	1) Heb 
1181	Exod	37	3	<i>rib</i>
1182	Exod	37	6	1) Or 
1183	Exod	37	6	<i>covering</i>
1184	Exod	37	7	1) Or 
1185	Exod	37	7	<i>turned</i>
1186	Exod	38	8	1) Or 
1187	Exod	38	8	<i>the women that assembled to minister</i>
1188	Exod	38	23	1) Or 
1189	Exod	38	23	<i>a craftsman</i>
1190	Exod	39	28	1) Or 
1191	Exod	39	28	<i>turban</i>
1192	Exod	39	31	1) Or 
1193	Exod	39	31	<i>turban</i>
1194	Exod	39	34	1) Or 
1195	Exod	39	34	<i>porpoise-skins</i>
1196	Exod	40	4	1) Or 
1197	Exod	40	4	<i>set up</i>
1198	Exod	40	25	1) Or 
1199	Exod	40	25	<i>set up</i>
1200	Lev	1	15	1) Or 
1201	Lev	1	15	<i>pinch</i>
1202	Lev	1	16	1) Or 
1203	Lev	1	16	<i>feathers</i>
1204	Lev	2	5	1) Or 
1205	Lev	2	5	<i>flat plate</i>
1206	Lev	3	1	1) Or 
1207	Lev	3	1	<i>thank-offerings</i>
1208	Lev	3	4	1) Or 
1209	Lev	3	4	<i>which he shall take away by the kidneys</i>
1210	Lev	3	11	1) Heb 
1211	Lev	3	11	<i>bread</i>
1212	Lev	4	2	1) Or 
1213	Lev	4	2	<i>through error</i>
1214	Lev	4	27	1) Heb 
1215	Lev	4	27	<i>people of the land</i>
1216	Lev	4	35	1) Or 
1217	Lev	4	35	<i>after the manner of</i>
1218	Lev	5	6	1) Or 
1219	Lev	5	6	<i>for his guilt</i>
1220	Lev	5	8	1) Or 
1221	Lev	5	8	<i>pinch</i>
1222	Lev	5	10	1) Or 
1223	Lev	5	10	<i>prepare</i>
1224	Lev	5	12	1) Or 
1225	Lev	5	12	<i>after the manner of</i>
1226	Lev	6	2	1) Or 
1227	Lev	6	2	<i>pledge</i>
1228	Lev	6	9	1) Or 
1229	Lev	6	9	<i>on its firewood</i>
1230	Lev	6	21	1) The meaning of the Hebrew word is uncertain.
1231	Lev	6	27	1) Or 
1232	Lev	6	27	<i>Whosoever</i>
1233	Lev	7	32	1) Or 
1234	Lev	7	32	<i>shoulder</i>
1235	Lev	7	33	1) Or 
1236	Lev	7	33	<i>shoulder</i>
1237	Lev	7	34	1) Or 
1238	Lev	7	34	<i>shoulder</i>
1239	Lev	7	35	1) Or 
1240	Lev	7	35	<i>portion</i>
1241	Lev	8	8	1) That is 
1242	Lev	8	8	<i>the Lights and the Perfections</i>
1243	Lev	8	9	1) Or 
1244	Lev	8	9	<i>turban</i>
1245	Lev	8	25	1) Or 
1246	Lev	8	25	<i>shoulder</i>
1247	Lev	8	31	1) Or as otherwise read 
1248	Lev	8	31	<i>as I am commanded</i>
1249	Lev	8	33	1) Heb 
1250	Lev	8	33	<i>fill your hand</i>
1251	Lev	10	3	1) Or 
1252	Lev	10	3	<i>are nigh</i>
1253	Lev	10	6	1) According to Sept, Vulg, and Syr 
1254	Lev	10	6	<i>Uncover not your heads</i>
1255	Lev	10	10	1) Or 
1256	Lev	10	10	<i>ye shall</i>
1257	Lev	10	11	1) Or 
1258	Lev	10	11	<i>ye shall</i>
1259	Lev	10	17	1) Or 
1260	Lev	10	17	<i>to take away</i>
1261	Lev	11	3	1) Heb 
1262	Lev	11	3	<i>bringeth up</i>
1263	Lev	11	4	1) Heb 
1264	Lev	11	4	<i>bringeth up</i>
1265	Lev	11	5	1) Heb 
1266	Lev	11	5	<i>shaphan</i>
1267	Lev	11	5	 , the 
1268	Lev	11	5	<i>Hyrax Syriacus</i>
1269	Lev	11	5	 or 
1270	Lev	11	5	<i>rock-badger</i>
1271	Lev	11	5	 2) Heb 
1272	Lev	11	5	<i>bringeth up</i>
1273	Lev	11	6	1) Heb 
1274	Lev	11	6	<i>bringeth up</i>
1275	Lev	11	7	1) Heb 
1276	Lev	11	7	<i>bringeth up</i>
1277	Lev	11	13	1) Or 
1278	Lev	11	13	<i>great vulture</i>
1279	Lev	11	16	1) Heb 
1280	Lev	11	16	<i>tahmas</i>
1281	Lev	11	16	 , of uncertain meaning
1282	Lev	11	18	1) Or 
1283	Lev	11	18	<i>swan</i>
1284	Lev	11	19	1) Or 
1285	Lev	11	19	<i>ibis</i>
1286	Lev	11	22	1) Four kinds of locusts or grasshoppers, which are not certainly known.
1287	Lev	11	30	1) Words of uncertain meaning, but probably denoting four kinds of lizards.
1288	Lev	11	35	1) Or 
1289	Lev	11	35	<i>stewpan</i>
1290	Lev	11	36	1) Or 
1291	Lev	11	36	<i>cistern</i>
1292	Lev	11	36	 2) Or 
1293	Lev	11	36	<i>he who</i>
1294	Lev	12	2	1) Or 
1295	Lev	12	2	<i>separation</i>
1296	Lev	12	5	1) Or 
1297	Lev	12	5	<i>separation</i>
1298	Lev	13	48	1) Or 
1299	Lev	13	48	<i>woven or knitted stuff</i>
1300	Lev	13	48	 (and in verse 49, etc)
1301	Lev	13	55	1) Heb. whether 
1302	Lev	13	55	<i>it</i>
1303	Lev	13	55	 be 
1304	Lev	13	55	<i>bald in the head thereof, or in the forehead thereof</i>
1305	Lev	14	5	1) Heb 
1306	Lev	14	5	<i>living</i>
1307	Lev	14	6	1) Heb 
1308	Lev	14	6	<i>living</i>
1309	Lev	14	50	1) Heb 
1310	Lev	14	50	<i>living</i>
1311	Lev	14	51	1) Heb 
1312	Lev	14	51	<i>living</i>
1313	Lev	14	52	1) Heb 
1314	Lev	14	52	<i>living</i>
1315	Lev	15	9	1) Or 
1316	Lev	15	9	<i>carriage</i>
1317	Lev	15	13	1) Heb 
1318	Lev	15	13	<i>living</i>
1319	Lev	15	19	1) Or 
1320	Lev	15	19	<i>separation</i>
1321	Lev	15	20	1) Or 
1322	Lev	15	20	<i>separation</i>
1323	Lev	16	4	1) Or 
1324	Lev	16	4	<i>turban</i>
1325	Lev	16	8	1) Or 
1326	Lev	16	8	<i>removal</i>
1327	Lev	16	10	1) Or 
1328	Lev	16	10	<i>over</i>
1329	Lev	16	21	1) Or 
1330	Lev	16	21	<i>appointed</i>
1331	Lev	16	26	1) Or 
1332	Lev	16	26	<i>removal</i>
1333	Lev	17	11	1) Heb 
1334	Lev	17	11	<i>soul</i>
1335	Lev	17	15	1) Heb 
1336	Lev	17	15	<i>a carcass</i>
1337	Lev	18	5	1) Or 
1338	Lev	18	5	<i>by</i>
1339	Lev	18	17	1) Or 
1340	Lev	18	17	<i>enormity</i>
1341	Lev	18	19	1) Or 
1342	Lev	18	19	<i>separated for</i>
1343	Lev	18	21	1) Or 
1344	Lev	18	21	<i>to set them apart to Molech</i>
1345	Lev	19	4	1) Heb 
1346	Lev	19	4	<i>things of nought</i>
1347	Lev	19	20	1) Heb 
1348	Lev	19	20	<i>there shall be inquisition</i>
1349	Lev	19	29	1) Or 
1350	Lev	19	29	<i>enormity</i>
1351	Lev	20	14	1) Or 
1352	Lev	20	14	<i>enormity</i>
1353	Lev	20	25	1) Heb 
1354	Lev	20	25	<i>creepeth</i>
1355	Lev	21	4	1) Or, as 
1356	Lev	21	4	<i>a husband</i>
1357	Lev	21	7	1) Or 
1358	Lev	21	7	<i>polluted</i>
1359	Lev	21	10	1) Heb 
1360	Lev	21	10	<i>whose hand is filled</i>
1361	Lev	21	12	1) Or 
1362	Lev	21	12	<i>consecration</i>
1363	Lev	21	14	1) Or 
1364	Lev	21	14	<i>polluted</i>
1365	Lev	21	18	1) Or 
1366	Lev	21	18	<i>slit</i>
1367	Lev	22	4	1) Or 
1368	Lev	22	4	<i>any one</i>
1369	Lev	22	21	1) Or 
1370	Lev	22	21	<i>make a special vow</i>
1371	Lev	22	22	1) Or 
1372	Lev	22	22	<i>sores</i>
1373	Lev	22	24	1) Or 
1374	Lev	22	24	<i>sacrifice</i>
1375	Lev	22	24	 them
1376	Lev	23	2	1) Or 
1377	Lev	23	2	<i>appointed seasons</i>
1378	Lev	23	5	1) Heb 
1379	Lev	23	5	<i>between the two evenings</i>
1380	Lev	23	7	1) Heb 
1381	Lev	23	7	<i>work of labor</i>
1382	Lev	23	34	1) Heb 
1383	Lev	23	34	<i>booths</i>
1384	Lev	23	36	1) Or 
1385	Lev	23	36	<i>closing festival</i>
1386	Lev	24	2	1) Or 
1387	Lev	24	2	<i>to set up a lamp continually</i>
1388	Lev	24	6	1) Or 
1389	Lev	24	6	<i>two piles, six in a pile</i>
1390	Lev	24	7	1) Or 
1391	Lev	24	7	<i>pile</i>
1392	Lev	24	8	1) Or 
1393	Lev	24	8	<i>from</i>
1394	Lev	25	33	1) Or 
1395	Lev	25	33	<i>if a man redeem from the Levites</i>
1396	Lev	25	33	 ; Or according to Vulg 
1397	Lev	25	33	<i>if they have not been redeemed</i>
1398	Lev	25	34	1) Or 
1399	Lev	25	34	<i>pasture lands</i>
1400	Lev	25	35	1) Or 
1401	Lev	25	35	<i>relieve</i>
1402	Lev	25	54	1) Or 
1403	Lev	25	54	<i>in these</i>
1404	Lev	25	54	 years
1405	Lev	26	1	1) Or 
1406	Lev	26	1	<i>an obelisk</i>
1407	Lev	26	1	 2) Or 
1408	Lev	26	1	<i>thereon</i>
1409	Lev	26	10	1) Or 
1410	Lev	26	10	<i>from before</i>
1411	Lev	26	23	1) Or 
1412	Lev	26	23	<i>by</i>
1413	Lev	27	2	1) Or 
1680	Num	25	8	1) Or 
1414	Lev	27	2	<i>make a special vow</i>
1415	Lev	27	2	 2) Or 
1416	Lev	27	2	<i>according to thy estimation of persons unto Jehovah, then they estimation etc</i>
1417	Num	1	14	1) In Nu 2:14 
1418	Num	1	14	<i>Reuel</i>
1419	Num	1	16	1) Or 
1420	Num	1	16	<i>families</i>
1421	Num	2	14	1) In Nu 1:14 
1422	Num	2	14	<i>Deuel</i>
1423	Num	3	9	1) Heb 
1424	Num	3	9	<i>given, given</i>
1425	Num	3	9	 2) Or 
1426	Num	3	9	<i>from</i>
1427	Num	3	10	1) Or 
1428	Num	3	10	<i>number</i>
1429	Num	3	36	1) Heb 
1430	Num	3	36	<i>the office of the charge</i>
1431	Num	3	38	1) Or 
1432	Num	3	38	<i>even</i>
1433	Num	3	46	1) Or 
1434	Num	3	46	<i>those that are to be redeemed, the etc</i>
1435	Num	3	51	1) Or 
1436	Num	3	51	<i>the money of them that were redeemed</i>
1437	Num	4	3	1) Heb 
1438	Num	4	3	<i>warefare</i>
1439	Num	4	3	 , or 
1440	Num	4	3	<i>host</i>
1441	Num	4	3	 (and so in verses 35, 39, 43)
1442	Num	4	4	1) Or 
1443	Num	4	4	<i>work</i>
1444	Num	4	10	1) Or 
1445	Num	4	10	<i>a bar</i>
1446	Num	4	15	1) Or 
1447	Num	4	15	<i>holy things</i>
1448	Num	4	23	1) Heb 
1449	Num	4	23	<i>war the warfare</i>
1450	Num	4	32	1) Or 
1451	Num	4	32	<i>number</i>
1452	Num	4	49	1) Or 
1453	Num	4	49	<i>according to his burden and his duty, as etc</i>
1454	Num	5	19	1) Or, with another 
1455	Num	5	19	<i>instead of thy husband</i>
1456	Num	5	19	 ; See Eze 23:5; Ro 7:2
1457	Num	5	20	1) Or, with another 
1458	Num	5	20	<i>instead of thy husband</i>
1459	Num	5	20	 ; See Eze 23:5; Ro 7:2
1460	Num	5	21	1) Or 
1461	Num	5	21	<i>adjuration</i>
1462	Num	5	29	1) Or 
1463	Num	5	29	<i>goeth aside</i>
1464	Num	5	29	 with another 
1465	Num	5	29	<i>instead of her husband</i>
1466	Num	6	2	1) That is 
1467	Num	6	2	<i>one separated</i>
1468	Num	6	2	 or 
1469	Num	6	2	<i>consecrated</i>
1470	Num	6	2	 2) Or 
1471	Num	6	2	<i>consecrate</i>
1472	Num	6	4	1) Or 
1473	Num	6	4	<i>consecration</i>
1474	Num	6	4	 ; Or 
1475	Num	6	4	<i>Naziriteship</i>
1476	Num	6	20	1) Or 
1477	Num	6	20	<i>shoulder</i>
1478	Num	7	10	1) Or 
1479	Num	7	10	<i>the dedication-gift</i>
1480	Num	7	84	1) Or 
1481	Num	7	84	<i>the dedication-gift</i>
1482	Num	7	84	 2) Or 
1483	Num	7	84	<i>at the hands of</i>
1484	Num	7	88	1) Or 
1485	Num	7	88	<i>the dedication-gift</i>
1486	Num	8	2	1) Or 
1487	Num	8	2	<i>settest up</i>
1488	Num	8	3	1) Or 
1489	Num	8	3	<i>set up</i>
1490	Num	8	4	1) Or 
1491	Num	8	4	<i>turned</i>
1492	Num	8	11	1) Heb 
1493	Num	8	11	<i>wave</i>
1494	Num	8	11	 , and in verses 13, 15, 21. 2) Or 
1495	Num	8	11	<i>from</i>
1496	Num	8	19	1) Heb 
1497	Num	8	19	<i>Nethunim</i>
1498	Num	8	19	 , given 2) Or 
1499	Num	8	19	<i>through the children of Israel coming nigh</i>
1500	Num	8	24	1) Heb 
1501	Num	8	24	<i>to war the warfare in the work</i>
1502	Num	8	25	1) Heb 
1503	Num	8	25	<i>return from the warfare of the work</i>
1504	Num	9	3	1) Heb 
1505	Num	9	3	<i>between the two evenings</i>
1506	Num	9	5	1) Heb 
1507	Num	9	5	<i>between the two evenings</i>
1508	Num	9	11	1) Heb 
1509	Num	9	11	<i>between the two evenings</i>
1510	Num	10	2	1) Or 
1511	Num	10	2	<i>turned</i>
1512	Num	11	1	1) Or, which was 
1513	Num	11	1	<i>evil</i>
1514	Num	11	3	1) That is 
1515	Num	11	3	<i>Burning</i>
1516	Num	11	7	1) Heb 
1517	Num	11	7	<i>eye</i>
1518	Num	11	8	1) Or 
1519	Num	11	8	<i>cakes baked with oil</i>
1520	Num	11	9	1) Or 
1521	Num	11	9	<i>with</i>
1522	Num	11	28	1) Or 
1523	Num	11	28	<i>from his youth</i>
1524	Num	11	31	1) Or 
1525	Num	11	31	<i>over</i>
1526	Num	11	34	1) That is 
1527	Num	11	34	<i>The graves of lust</i>
1528	Num	12	2	1) Or 
1529	Num	12	2	<i>by</i>
1530	Num	13	17	1) Or 
1531	Num	13	17	<i>into</i>
1532	Num	13	24	1) That is 
1533	Num	13	24	<i>a cluster</i>
1534	Num	13	33	1) Or 
1535	Num	13	33	<i>giants</i>
1536	Num	14	9	1) Heb 
1537	Num	14	9	<i>shadow</i>
1538	Num	14	14	1) Heb 
1539	Num	14	14	<i>eye to eye</i>
1540	Num	14	30	1) Heb 
1541	Num	14	30	<i>lifted up my hand</i>
1542	Num	14	33	1) Heb 
1543	Num	14	33	<i>shepherds</i>
1544	Num	14	34	1) Or 
1545	Num	14	34	<i>the revoking of my promise</i>
1546	Num	15	3	1) Or 
1547	Num	15	3	<i>in making a special vow</i>
1548	Num	15	8	1) Or 
1549	Num	15	8	<i>in making a special vow</i>
1550	Num	15	20	1) Or 
1551	Num	15	20	<i>coarse meal</i>
1552	Num	15	24	1) Or 
1553	Num	15	24	<i>in error</i>
1554	Num	15	38	1) Or 
1555	Num	15	38	<i>tassels in the corners</i>
1556	Num	15	39	1) Heb 
1557	Num	15	39	<i>spy not out</i>
1558	Num	16	3	1) Heb 
1559	Num	16	3	<i>It is enough for you</i>
1560	Num	16	5	1) Or 
1561	Num	16	5	<i>whom he will cause to come near</i>
1562	Num	16	14	1) Heb 
1563	Num	16	14	<i>bore out</i>
1564	Num	16	30	1) Heb 
1565	Num	16	30	<i>create a creation</i>
1566	Num	16	38	1) Or 
1567	Num	16	38	<i>these men who have sinned at the cost of their lives</i>
1568	Num	16	38	 2) Or 
1569	Num	16	38	<i>souls</i>
1570	Num	17	13	1) Or 
1571	Num	17	13	<i>shall die</i>
1572	Num	18	8	1) Or 
1573	Num	18	8	<i>for a portion</i>
1574	Num	18	12	1) Heb 
1575	Num	18	12	<i>fat</i>
1576	Num	18	16	1) Or 
1577	Num	18	16	<i>And as to their redemption money, from a month old shalt thou redeem them</i>
1578	Num	18	29	1) Heb 
1579	Num	18	29	<i>fat</i>
1580	Num	18	30	1) Heb 
1581	Num	18	30	<i>fat</i>
1582	Num	18	32	1) Heb 
1583	Num	18	32	<i>fat</i>
1584	Num	18	32	 2) Or 
1585	Num	18	32	<i>neither shall ye die</i>
1586	Num	19	2	1) Or 
1587	Num	19	2	<i>perfect</i>
1588	Num	19	12	1) Or 
1589	Num	19	12	<i>and on the seventh day,</i>
1590	Num	19	12	 so 
1591	Num	19	12	<i>shall he be clean</i>
1592	Num	19	12	 2) Or 
1593	Num	19	12	<i>and</i>
1594	Num	19	17	1) Heb 
1595	Num	19	17	<i>living</i>
1596	Num	20	13	1) That is 
1597	Num	20	13	<i>Strife</i>
1598	Num	20	13	 2) Or 
1599	Num	20	13	<i>showed himself holy</i>
1600	Num	21	1	1) Or 
1601	Num	21	1	<i>of the spies</i>
1602	Num	21	2	1) Heb 
1603	Num	21	2	<i>devote</i>
1604	Num	21	3	1) Heb 
1605	Num	21	3	<i>devoted</i>
1606	Num	21	3	 2) From the same root as 
1607	Num	21	3	<i>herem</i>
1608	Num	21	3	 , a devoted thing
1609	Num	21	4	1) Or 
1610	Num	21	4	<i>was impatient</i>
1611	Num	21	4	 ; Heb 
1612	Num	21	4	<i>was shortened</i>
1613	Num	21	4	 2) Or 
1614	Num	21	4	<i>in</i>
1615	Num	21	5	1) Or 
1616	Num	21	5	<i>vile</i>
1617	Num	21	14	1) Or 
1618	Num	21	14	<i>in storm</i>
1619	Num	21	16	1) That is 
1620	Num	21	16	<i>A well</i>
1621	Num	21	18	1) Or 
1622	Num	21	18	<i>By</i>
1623	Num	21	18	 order of 
1624	Num	21	18	<i>the law-giver</i>
1625	Num	21	20	1) Or 
1626	Num	21	20	<i>Jeshimon</i>
1627	Num	21	25	1) Heb 
1628	Num	21	25	<i>daughers</i>
1629	Num	21	28	1) Or 
1630	Num	21	28	<i>Bamoth</i>
1631	Num	22	4	1) Heb 
1632	Num	22	4	<i>the assembly</i>
1633	Num	22	5	1) Heb 
1634	Num	22	5	<i>eye</i>
1635	Num	22	11	1) Heb 
1636	Num	22	11	<i>eye</i>
1637	Num	22	32	1) Heb 
1638	Num	22	32	<i>headlong</i>
1639	Num	22	41	1) Or 
1640	Num	22	41	<i>Bamoth-baal</i>
1641	Num	23	7	1) Heb 
1642	Num	23	7	<i>be wroth against</i>
1643	Num	23	10	1) Heb 
1644	Num	23	10	<i>Or, by number, the etc</i>
1645	Num	23	10	 2) Heb 
1646	Num	23	10	<i>my soul</i>
1647	Num	23	21	1) Or 
1648	Num	23	21	<i>trouble</i>
1649	Num	23	22	1) Or 
1650	Num	23	22	<i>horns</i>
1651	Num	23	22	 2) Or 
1652	Num	23	22	<i>ox-antelope</i>
1653	Num	23	22	 ; Heb 
1654	Num	23	22	<i>reem</i>
1655	Num	23	23	1) Or 
1656	Num	23	23	<i>against</i>
1657	Num	23	23	 2) Or 
1658	Num	23	23	<i>At the due season</i>
1659	Num	23	23	 3) Or 
1660	Num	23	23	<i>told to…what God hath wrought</i>
1661	Num	23	28	1) Or 
1662	Num	23	28	<i>Jeshimon</i>
1663	Num	24	3	1) Or 
1664	Num	24	3	<i>is opened</i>
1665	Num	24	15	1) Or 
1666	Num	24	15	<i>is opened</i>
1667	Num	24	17	1) Or 
1668	Num	24	17	<i>of Sheth</i>
1669	Num	24	22	1) Or 
1670	Num	24	22	<i>the Kenites</i>
1671	Num	24	22	 2) Or 
1672	Num	24	22	<i>How long? Asshur etc</i>
1673	Num	24	23	1) Or 
1674	Num	24	23	<i>established him</i>
1675	Num	25	3	1) Or 
1676	Num	25	3	<i>yoked</i>
1677	Num	25	3	 2) Or 
1678	Num	25	3	<i>the Baal of Peor</i>
1679	Num	25	3	 ; See Nu 23:28
1681	Num	25	8	<i>alcove</i>
1682	Num	26	12	1) In Ge 46:10; Ex 6:15 
1683	Num	26	12	<i>Jemuel</i>
1684	Num	26	12	 2) In 1 Ch 4:24 
1685	Num	26	12	<i>Jarib</i>
1686	Num	26	13	1) In Ge 46:10 
1687	Num	26	13	<i>Zohar</i>
1688	Num	26	15	1) In Ge 46:16 
1689	Num	26	15	<i>Ziphion</i>
1690	Num	26	16	1) In Ge 46:16 
1691	Num	26	16	<i>Ezbon</i>
1692	Num	26	17	1) In Ge 46:16 
1693	Num	26	17	<i>Arodi</i>
1694	Num	26	24	1) In Ge 46:13 
1695	Num	26	24	<i>Iob</i>
1696	Num	26	30	1) In Jos 17:2 
1697	Num	26	30	<i>Abiezer</i>
1698	Num	26	30	 ; See Jud 6:11, 24, 34
1699	Num	26	35	1) In 1 Ch 7:20 
1700	Num	26	35	<i>Bered</i>
1701	Num	26	38	1) In Ge 46:21 
1702	Num	26	38	<i>Ehi</i>
1703	Num	26	38	 ; in 1 Ch 8:1 
1704	Num	26	38	<i>Aharah</i>
1705	Num	26	39	1) In Ge 46:21 
1706	Num	26	39	<i>Muppim, and Huppim</i>
1707	Num	26	40	1) In 1 Ch 8:3 
1708	Num	26	40	<i>Addar</i>
1709	Num	26	42	1) In Ge 46:23 
1710	Num	26	42	<i>Hushim</i>
1711	Num	27	11	1) Heb 
1712	Num	27	11	<i>statute of judgment</i>
1713	Num	28	2	1) Heb 
1714	Num	28	2	<i>bread</i>
1715	Num	28	4	1) Heb 
1716	Num	28	4	<i>between the two evenings</i>
1717	Num	28	24	1) Heb 
1718	Num	28	24	<i>bread</i>
1719	Num	30	2	1) Heb 
1720	Num	30	2	<i>profane</i>
1721	Num	31	50	1) Or 
1722	Num	31	50	<i>necklaces</i>
1723	Num	32	3	1) In verse 36 
1724	Num	32	3	<i>Beth-nimrah</i>
1725	Num	32	3	 2) In verse 38 
1726	Num	32	3	<i>Sibmah</i>
1727	Num	32	3	 3) In verse 38 
1728	Num	32	3	<i>Baal-meon</i>
1729	Num	32	41	1) That is 
1730	Num	32	41	<i>The towns of Jair</i>
1731	Num	32	42	1) Heb 
1732	Num	32	42	<i>daughters</i>
1733	Num	33	1	1) Or 
1734	Num	33	1	<i>stages</i>
1735	Num	33	1	  2) Or 
1736	Num	33	1	<i>by which</i>
1737	Num	34	6	1) Or 
1738	Num	34	6	<i>for a border</i>
1739	Num	34	11	1) Heb 
1740	Num	34	11	<i>shoulder</i>
1741	Num	35	2	1) Or 
1742	Num	35	2	<i>pasture lands</i>
1743	Num	35	11	1) Or 
1744	Num	35	11	<i>through error</i>
1745	Num	35	15	1) Or 
1746	Num	35	15	<i>through error</i>
1747	Num	35	27	1) Or 
1748	Num	35	27	<i>there shall be no blood-guiltiness for him</i>
1749	Num	35	29	1) Heb 
1750	Num	35	29	<i>statute of judgment</i>
1751	Deut	1	1	1) That is, the deep valley running north and south of the Dead Sea.
1752	Deut	1	32	1) Or 
1753	Deut	1	32	<i>for</i>
1754	Deut	1	32	 all 
1755	Deut	1	32	<i>this thing</i>
1756	Deut	1	41	1) Or 
1757	Deut	1	41	<i>deemed it a light thing</i>
1758	Deut	2	27	1) Heb 
1759	Deut	2	27	<i>by the way, by the way</i>
1760	Deut	2	30	1) Heb 
1761	Deut	2	30	<i>strong</i>
1762	Deut	2	33	1) Or 
1763	Deut	2	33	<i>son</i>
1764	Deut	2	34	1) Heb 
1765	Deut	2	34	<i>devoted</i>
1766	Deut	2	34	  2) Heb 
1767	Deut	2	34	<i>city of men</i>
1768	Deut	3	5	1) Or 
1769	Deut	3	5	<i>country town</i>
1770	Deut	3	6	1) Heb 
1771	Deut	3	6	<i>devoted</i>
1772	Deut	3	6	  2) Heb 
1773	Deut	3	6	<i>city of men</i>
1774	Deut	3	10	1) Or 
1775	Deut	3	10	<i>table-land</i>
1776	Deut	3	13	1) Or 
1777	Deut	3	13	<i>all the region of Argob. (All that Bashan is called etc</i>
1778	Deut	3	13	 2) Or 
1779	Deut	3	13	<i>with</i>
1780	Deut	3	16	1) Or 
1781	Deut	3	16	<i>for a border</i>
1782	Deut	3	17	1) Or 
1783	Deut	3	17	<i>for a border</i>
1784	Deut	3	17	 2) Or 
1785	Deut	3	17	<i>springs</i>
1786	Deut	3	25	1) Or 
1787	Deut	3	25	<i>hill-country</i>
1788	Deut	4	7	1) Or 
1789	Deut	4	7	<i>God</i>
1790	Deut	4	13	1) Heb 
1791	Deut	4	13	<i>words</i>
1792	Deut	4	30	1) Or 
1793	Deut	4	30	<i>if in the latter days thou return</i>
1794	Deut	4	43	1) Or 
1795	Deut	4	43	<i>table-land</i>
1796	Deut	4	49	1) Or 
1797	Deut	4	49	<i>springs</i>
1798	Deut	5	6	1) Heb 
1799	Deut	5	6	<i>bondmen</i>
1800	Deut	5	7	1) Or 
1801	Deut	5	7	<i>besides me</i>
1802	Deut	5	10	1) Or 
1803	Deut	5	10	<i>a thousand generations</i>
1804	Deut	5	11	1) Or 
1805	Deut	5	11	<i>for vanity</i>
1806	Deut	5	11	 (or 
1807	Deut	5	11	<i>falsehood</i>
1808	Deut	5	11	 )
1809	Deut	5	29	1) Or 
1810	Deut	5	29	<i>Oh that they had such a heart as this alway, to fear me, and keep all my commandments, that etc</i>
1811	Deut	6	4	1) Or 
1812	Deut	6	4	<i>Jehovah our God, Jehovah is one</i>
1813	Deut	6	4	 ; Or 
1814	Deut	6	4	<i>Jehovah is our God, Jehovah is one</i>
1815	Deut	6	4	 ; Or 
1816	Deut	6	4	<i>Jehovah is our God, Jehovah alone</i>
1817	Deut	7	1	1) Heb 
1818	Deut	7	1	<i>pluck off</i>
1819	Deut	7	2	1) Heb 
1820	Deut	7	2	<i>devote</i>
1821	Deut	7	5	1) Or 
1822	Deut	7	5	<i>obelisks</i>
1823	Deut	7	6	1) Or 
1824	Deut	7	6	<i>out of</i>
1825	Deut	7	20	1) Or 
1826	Deut	7	20	<i>hide themselves from thee, perish</i>
1827	Deut	7	22	1) Or 
1828	Deut	7	22	<i>quickly</i>
1829	Deut	10	4	1) Heb 
1830	Deut	10	4	<i>words</i>
1831	Deut	10	6	1) Or 
1832	Deut	10	6	<i>the wells of the children of Jaakan</i>
1833	Deut	10	15	1) Or 
1834	Deut	10	15	<i>out of</i>
1835	Deut	11	2	1) Or 
1836	Deut	11	2	<i>instruction</i>
1837	Deut	11	12	1) Heb 
1838	Deut	11	12	<i>seeketh after</i>
1839	Deut	11	24	1) That is 
1840	Deut	11	24	<i>western</i>
1841	Deut	11	30	1) Or 
1842	Deut	11	30	<i>terebinths</i>
1843	Deut	12	3	1) Or 
1844	Deut	12	3	<i>obelisks</i>
1845	Deut	12	30	1) Heb 
1846	Deut	12	30	<i>after them</i>
1847	Deut	12	30	 2) Or 
1848	Deut	12	30	<i>that I also may do likewise</i>
1849	Deut	13	5	1) Heb 
1850	Deut	13	5	<i>turning aside</i>
1851	Deut	13	12	1) Or 
1852	Deut	13	12	<i>in</i>
1853	Deut	13	13	1) Heb 
1854	Deut	13	13	<i>sons of worthlessness</i>
1855	Deut	13	15	1) Heb 
1856	Deut	13	15	<i>devoting it</i>
1857	Deut	13	16	1) Or 
1858	Deut	13	16	<i>as a whole burnt-offering</i>
1859	Deut	13	16	 2) Or 
1860	Deut	13	16	<i>mound</i>
1861	Deut	13	16	 ; Heb 
1862	Deut	13	16	<i>tel</i>
1863	Deut	14	2	1) Or 
1864	Deut	14	2	<i>out of</i>
1865	Deut	14	6	1) Heb 
1866	Deut	14	6	<i>bringeth up</i>
1867	Deut	15	3	1) Or 
1868	Deut	15	3	<i>release: save when there etc</i>
1869	Deut	15	17	1) Or 
1870	Deut	15	17	<i>bond-man</i>
1871	Deut	15	17	 2) Or 
1872	Deut	15	17	<i>bond-woman</i>
1873	Deut	16	7	1) Or 
1874	Deut	16	7	<i>boil</i>
1875	Deut	16	10	1) Or 
1876	Deut	16	10	<i>after the measure of the etc</i>
1877	Deut	16	13	1) Heb 
1878	Deut	16	13	<i>booths</i>
1879	Deut	16	17	1) Heb 
1880	Deut	16	17	<i>according to the gift of his hand</i>
1881	Deut	16	19	1) Or 
1882	Deut	16	19	<i>cause</i>
1883	Deut	16	20	1) Heb 
1884	Deut	16	20	<i>Justice, justice</i>
1885	Deut	16	22	1) Or 
1886	Deut	16	22	<i>obelisk</i>
1887	Deut	18	1	1) Or, and
1888	Deut	19	5	1) Heb 
1889	Deut	19	5	<i>iron</i>
1890	Deut	19	5	 2) Or 
1891	Deut	19	5	<i>the tree</i>
1892	Deut	19	10	1) Or 
1893	Deut	19	10	<i>the blood of an innocent man</i>
1894	Deut	19	13	1) Or 
1895	Deut	19	13	<i>the blood of the innocent</i>
1896	Deut	19	16	1) Or 
1897	Deut	19	16	<i>rebellion</i>
1898	Deut	19	16	 ; See De 13:5
1899	Deut	20	11	1) Or 
1900	Deut	20	11	<i>subject to taskwork</i>
1901	Deut	20	17	1) Heb 
1902	Deut	20	17	<i>devote</i>
1903	Deut	21	14	1) Or 
1904	Deut	21	14	<i>as a chattel</i>
1905	Deut	21	16	1) Or 
1906	Deut	21	16	<i>during the lifetime of</i>
1907	Deut	21	23	1) Heb 
1908	Deut	21	23	<i>the curse of God</i>
1909	Deut	22	9	1) Heb 
1910	Deut	22	9	<i>fulness</i>
1911	Deut	22	9	 2) Heb 
1912	Deut	22	9	<i>consecrated</i>
1913	Deut	22	12	1) Or 
1914	Deut	22	12	<i>twisted threads</i>
1915	Deut	23	4	1) Heb 
1916	Deut	23	4	<i>Aram-naharaim</i>
1917	Deut	23	13	1) Or 
1918	Deut	23	13	<i>shovel</i>
1919	Deut	23	14	1) Heb 
1920	Deut	23	14	<i>nakedness of anything</i>
1921	Deut	23	17	1) Heb 
1922	Deut	23	17	<i>kedeshah</i>
1923	Deut	23	17	 ; See Ge 38:21. 2) Heb 
1924	Deut	23	17	<i>kadesh</i>
1925	Deut	24	7	1) Or 
1926	Deut	24	7	<i>as a chattel</i>
1927	Deut	26	5	1) Heb 
1928	Deut	26	5	<i>Aramean</i>
1929	Deut	26	5	 2) Or 
1930	Deut	26	5	<i>wandering</i>
1931	Deut	26	5	 ; Or 
1932	Deut	26	5	<i>lost</i>
1933	Deut	26	19	1) Or 
1934	Deut	26	19	<i>for a praise, and for a name, and for an honor</i>
1935	Deut	27	6	1) Heb 
1936	Deut	27	6	<i>whole</i>
1937	Deut	28	12	1) Or 
1938	Deut	28	12	<i>treasury</i>
1939	Deut	28	22	1) Or as otherwise read 
1940	Deut	28	22	<i>drought</i>
1941	Deut	28	25	1) Or 
1942	Deut	28	25	<i>a terror unto all</i>
1943	Deut	28	27	1) Or 
1944	Deut	28	27	<i>tumors</i>
1945	Deut	28	27	 ; Or 
1946	Deut	28	27	<i>plague boils</i>
1947	Deut	28	57	1) Or 
1948	Deut	28	57	<i>after-birth</i>
1949	Deut	29	9	1) Or 
1950	Deut	29	9	<i>deal wisely</i>
1951	Deut	29	18	1) Heb 
1952	Deut	29	18	<i>rosh</i>
1953	Deut	29	18	 , a poisonous herb
1954	Deut	29	19	1) Or 
1955	Deut	29	19	<i>oath</i>
1956	Deut	29	19	 (and so verses 20, 21) 2) Or 
1957	Deut	29	19	<i>to add drunkenness to thirst</i>
1958	Deut	29	26	1) Heb 
1959	Deut	29	26	<i>allotted</i>
1960	Deut	30	3	1) Or 
1961	Deut	30	3	<i>return to</i>
1962	Deut	30	11	1) Or 
1963	Deut	30	11	<i>wonderful</i>
1964	Deut	30	20	1) Or 
1965	Deut	30	20	<i>that</i>
1966	Deut	31	15	1) Or 
1967	Deut	31	15	<i>by</i>
1968	Deut	32	5	1) Or 
1969	Deut	32	5	<i>corrupted themselves,</i>
1970	Deut	32	5	 they etc 2) Or, but 
1971	Deut	32	5	<i>a blot upon them</i>
1972	Deut	32	6	1) Or 
1973	Deut	32	6	<i>possessed</i>
1974	Deut	32	6	 ; Or 
1975	Deut	32	6	<i>gotten</i>
1976	Deut	32	11	1) Or 
1977	Deut	32	11	<i>Spreadeth abroad her wings, taketh them, beareth them on her pinions.</i>
1978	Deut	32	14	1) Heb 
1979	Deut	32	14	<i>fat of kidneys of wheat</i>
1980	Deut	32	18	1) Or 
1981	Deut	32	18	<i>bare</i>
1982	Deut	32	24	1) Heb 
1983	Deut	32	24	<i>burning coals</i>
1984	Deut	32	24	 ; See Hab 3:5
1985	Deut	32	34	1) Or 
1986	Deut	32	34	<i>in my treasuries</i>
1987	Deut	32	41	1) Heb 
1988	Deut	32	41	<i>the lightning of my sword</i>
1989	Deut	32	42	1) Or 
1990	Deut	32	42	<i>From the beginning of revenges upon the enemy</i>
1991	Deut	32	42	 2) Or 
1992	Deut	32	42	<i>the hairy head of the enemy</i>
1993	Deut	32	43	1) Or 
1994	Deut	32	43	<i>Praise his people, ye nations</i>
1995	Deut	32	43	 2) Or 
1996	Deut	32	43	<i>ye nations, his people</i>
1997	Deut	33	2	1) Heb 
1998	Deut	33	2	<i>holiness</i>
1999	Deut	33	2	 2) Or 
2000	Deut	33	2	<i>was fire, a law</i>
2001	Deut	33	2	 ; Or as otherwise read 
2002	Deut	33	2	<i>were streams for them</i>
2003	Deut	33	3	1) Or 
2004	Deut	33	3	<i>tribes</i>
2005	Deut	33	3	 2) Or 
2006	Deut	33	3	<i>their holy ones</i>
2007	Deut	33	3	 3) Or 
2008	Deut	33	3	<i>received</i>
2009	Deut	33	5	1) Or 
2010	Deut	33	5	<i>there was a king</i>
2011	Deut	33	6	1) Or 
2012	Deut	33	6	<i>But</i>
2013	Deut	33	7	1) Or, Let 
2014	Deut	33	7	<i>his hands be sufficient for them</i>
2015	Deut	33	7	 2) Or 
2016	Deut	33	7	<i>for them</i>
2017	Deut	33	8	1) Or 
2018	Deut	33	8	<i>him whom thou lovest</i>
2019	Deut	33	10	1) Heb 
2020	Deut	33	10	<i>in thy nostrils</i>
2021	Deut	33	14	1) Or 
2022	Deut	33	14	<i>months</i>
2023	Deut	33	16	1) Or 
2024	Deut	33	16	<i>that is prince among</i>
2025	Deut	33	17	1) Or 
2026	Deut	33	17	<i>His firstling bullock</i>
2027	Deut	33	17	 2) Or 
2028	Deut	33	17	<i>gore</i>
2029	Deut	33	21	1) Or 
2030	Deut	33	21	<i>chose</i>
2031	Deut	33	21	 ; Heb 
2032	Deut	33	21	<i>saw</i>
2033	Deut	33	21	 2) Or 
2034	Deut	33	21	<i>a ruler’s portion</i>
2035	Deut	33	21	 3) Or, to
2036	Deut	33	23	1) Or 
2037	Deut	33	23	<i>sea</i>
2038	Deut	33	24	1) Or 
2039	Deut	33	24	<i>above sons</i>
2040	Deut	33	25	1) Or 
2041	Deut	33	25	<i>shoes</i>
2042	Deut	33	25	 2) Or 
2043	Deut	33	25	<i>rest</i>
2044	Deut	33	25	 ; Or 
2045	Deut	33	25	<i>security</i>
2046	Deut	33	29	1) Or 
2047	Deut	33	29	<i>yield feigned obedience</i>
2048	Deut	34	2	1) That is 
2049	Deut	34	2	<i>western</i>
2050	Deut	34	6	1) Or 
2051	Deut	34	6	<i>he was buried</i>
2052	Josh	1	7	1) Or 
2053	Josh	1	7	<i>deal wisely</i>
2054	Josh	1	8	1) Or 
2055	Josh	1	8	<i>deal wisely</i>
2056	Josh	2	10	1) Heb 
2057	Josh	2	10	<i>devoted</i>
2058	Josh	2	14	1) Heb 
2059	Josh	2	14	<i>instead of you to die</i>
2060	Josh	3	16	1) Another reading is 
2061	Josh	3	16	<i>off from</i>
2062	Josh	5	1	1) Another reading is 
2063	Josh	5	1	<i>they</i>
2064	Josh	5	3	1) Or 
2065	Josh	5	3	<i>Gibeath-haaraloth</i>
2066	Josh	5	9	1) That is 
2067	Josh	5	9	<i>Rolling</i>
2068	Josh	6	1	1) Heb 
2069	Josh	6	1	<i>shut</i>
2070	Josh	6	1	 the gates 
2071	Josh	6	1	<i>and was shut in</i>
2072	Josh	6	4	1) Or 
2073	Josh	6	4	<i>jubilee trumpets</i>
2074	Josh	6	5	1) Heb 
2075	Josh	6	5	<i>in its place</i>
2076	Josh	6	7	1) Another reading is 
2077	Josh	6	7	<i>he</i>
2078	Josh	6	18	1) Heb 
2079	Josh	6	18	<i>devoted</i>
2080	Josh	6	20	1) Heb 
2081	Josh	6	20	<i>in its place</i>
2082	Josh	6	21	1) Heb 
2083	Josh	6	21	<i>devoted</i>
2084	Josh	6	23	1) Heb 
2085	Josh	6	23	<i>families</i>
2086	Josh	7	5	1) Or 
2087	Josh	7	5	<i>the quarries</i>
2088	Josh	7	19	1) Or 
2089	Josh	7	19	<i>give praise</i>
2090	Josh	7	21	1) Heb 
2091	Josh	7	21	<i>mantle of Shinar</i>
2092	Josh	7	26	1) That is 
2093	Josh	7	26	<i>Troubling</i>
2094	Josh	8	12	1) Another reading is 
2095	Josh	8	12	<i>Ai</i>
2096	Josh	8	13	1) Or 
2097	Josh	8	13	<i>So the people set all etc</i>
2098	Josh	8	13	 2) Some MSS read 
2099	Josh	8	13	<i>lodged that night in</i>
2100	Josh	8	14	1) Or 
2101	Josh	8	14	<i>to the place appointed</i>
2102	Josh	8	16	1) Another reading is 
2103	Josh	8	16	<i>Ai</i>
2104	Josh	8	20	1) Heb 
2105	Josh	8	20	<i>hands</i>
2106	Josh	8	26	1) Heb 
2107	Josh	8	26	<i>devoted</i>
2108	Josh	8	28	1) Or 
2109	Josh	8	28	<i>mound</i>
2110	Josh	8	28	 ; Heb 
2111	Josh	8	28	<i>tel</i>
2112	Josh	8	31	1) Heb 
2113	Josh	8	31	<i>whole</i>
2114	Josh	8	32	1) Or 
2115	Josh	8	32	<i>which he wrote in etc</i>
2116	Josh	8	33	1) Or 
2117	Josh	8	33	<i>commanded that they should bless the people of Israel first of all</i>
2118	Josh	8	35	1) Heb 
2119	Josh	8	35	<i>walked</i>
2120	Josh	9	4	1) According to Sept, Vulg, and Syr 
2121	Josh	9	4	<i>took provisions</i>
2122	Josh	9	4	 ; See Jos 9:12
2123	Josh	9	23	1) Heb 
2124	Josh	9	23	<i>shall not be cut off from you</i>
2125	Josh	10	1	1) Heb 
2126	Josh	10	1	<i>devoted</i>
2127	Josh	10	12	1) Heb 
2128	Josh	10	12	<i>be silent</i>
2129	Josh	10	13	1) Or 
2130	Josh	10	13	<i>The Upright</i>
2131	Josh	10	21	1) Heb 
2132	Josh	10	21	<i>whetted</i>
2133	Josh	10	28	1) Heb 
2134	Josh	10	28	<i>devoted</i>
2135	Josh	10	35	1) Heb 
2136	Josh	10	35	<i>devoted</i>
2137	Josh	10	37	1) Heb 
2138	Josh	10	37	<i>devoted</i>
2139	Josh	10	39	1) Heb 
2140	Josh	10	39	<i>devoted</i>
2141	Josh	10	40	1) Heb 
2142	Josh	10	40	<i>devoted</i>
2143	Josh	11	2	1) Or 
2144	Josh	11	2	<i>Naphoth-dor</i>
2145	Josh	11	11	1) Heb 
2146	Josh	11	11	<i>devoting</i>
2147	Josh	11	12	1) Heb 
2148	Josh	11	12	<i>devoted</i>
2149	Josh	11	15	1) Heb 
2150	Josh	11	15	<i>he removed nothing</i>
2151	Josh	11	17	1) Or 
2152	Josh	11	17	<i>the bare mountain</i>
2153	Josh	11	20	1) Heb 
2154	Josh	11	20	<i>make strong</i>
2155	Josh	11	20	 2) Heb 
2156	Josh	11	20	<i>devote</i>
2157	Josh	11	20	 3) Or 
2158	Josh	11	20	<i>might not sue for favor</i>
2159	Josh	11	21	1) Heb 
2160	Josh	11	21	<i>devoted</i>
2161	Josh	12	23	1) Or 
2162	Josh	12	23	<i>Naphath-dor</i>
2163	Josh	12	23	 2) Or 
2164	Josh	12	23	<i>nations</i>
2165	Josh	13	3	1) Commonly called 
2166	Josh	13	3	<i>the brook of Egypt</i>
2167	Josh	13	3	 ; See Nu 34:5. 2) Or 
2168	Josh	13	3	<i>also the Avvim; from the south, all etc</i>
2169	Josh	13	9	1) Or 
2170	Josh	13	9	<i>table-land</i>
2171	Josh	13	16	1) Or 
2172	Josh	13	16	<i>table-land</i>
2173	Josh	13	17	1) Or 
2174	Josh	13	17	<i>table-land</i>
2175	Josh	13	20	1) Or 
2176	Josh	13	20	<i>springs</i>
2177	Josh	13	21	1) Or 
2178	Josh	13	21	<i>table-land</i>
2179	Josh	13	26	1) Or 
2180	Josh	13	26	<i>Lidebir</i>
2181	Josh	13	27	1) Or 
2182	Josh	13	27	<i>having the Jordan for a border</i>
2183	Josh	14	4	1) Or 
2184	Josh	14	4	<i>pasture lands</i>
2185	Josh	14	15	1) That is 
2186	Josh	14	15	<i>The city of Arba</i>
2187	Josh	15	2	1) Heb 
2188	Josh	15	2	<i>tongue</i>
2189	Josh	15	5	1) Heb 
2190	Josh	15	5	<i>tongue</i>
2191	Josh	15	8	1) Heb 
2192	Josh	15	8	<i>shoulder</i>
2193	Josh	15	13	1) That is 
2194	Josh	15	13	<i>The city of Arba</i>
2195	Josh	15	19	1) Or 
2196	Josh	15	19	<i>present</i>
2197	Josh	15	19	 2) Or 
2198	Josh	15	19	<i>given me the land of the South</i>
2199	Josh	15	40	1) Or 
2200	Josh	15	40	<i>Lahmas</i>
2201	Josh	15	45	1) Heb 
2202	Josh	15	45	<i>daughters</i>
2203	Josh	17	5	1) Heb 
2204	Josh	17	5	<i>lines</i>
2205	Josh	17	11	1) Heb 
2206	Josh	17	11	<i>daughters</i>
2207	Josh	17	14	1) Heb 
2208	Josh	17	14	<i>line</i>
2209	Josh	17	16	1) Heb 
2210	Josh	17	16	<i>is not found for us</i>
2211	Josh	18	12	1) Heb 
2212	Josh	18	12	<i>shoulder</i>
2213	Josh	18	13	1) Heb 
2214	Josh	18	13	<i>shoulder</i>
2215	Josh	18	19	1) Heb 
2216	Josh	18	19	<i>tongue</i>
2217	Josh	19	9	1) Heb 
2218	Josh	19	9	<i>line</i>
2219	Josh	19	29	1) Or 
2220	Josh	19	29	<i>the city of Mibzar-zor</i>
2221	Josh	19	29	 , that is, the fortress of Tyre 2) Or 
2222	Josh	19	29	<i>from Hebel to Achzib</i>
2223	Josh	19	33	1) Or 
2224	Josh	19	33	<i>oak</i>
2225	Josh	19	33	 (or 
2226	Josh	19	33	<i>terebinth</i>
2227	Josh	19	33	 ) 
2228	Josh	19	33	<i>of Bezaanannim</i>
2229	Josh	19	46	1) Heb 
2230	Josh	19	46	<i>Japho</i>
2231	Josh	19	47	1) Or 
2232	Josh	19	47	<i>from them; and etc</i>
2233	Josh	19	47	 2) In Jud 18:29 
2234	Josh	19	47	<i>Laish</i>
2235	Josh	20	3	1) Or 
2236	Josh	20	3	<i>through error</i>
2237	Josh	20	4	1) Heb 
2238	Josh	20	4	<i>gather</i>
2239	Josh	20	7	1) Heb 
2240	Josh	20	7	<i>sanctified</i>
2241	Josh	20	7	 2) Heb 
2242	Josh	20	7	<i>Galil</i>
2243	Josh	20	8	1) Or 
2244	Josh	20	8	<i>table-land</i>
2245	Josh	20	9	1) Or 
2246	Josh	20	9	<i>through error</i>
2247	Josh	21	2	1) Or 
2248	Josh	21	2	<i>pasture lands</i>
2249	Josh	21	11	1) Heb 
2250	Josh	21	11	<i>Anok</i>
2251	Josh	22	14	1) Or 
2252	Josh	22	14	<i>families</i>
2253	Josh	22	21	1) Or 
2254	Josh	22	21	<i>families</i>
2255	Josh	22	34	1) That is, Witness
2256	Josh	23	10	1) Or 
2257	Josh	23	10	<i>hath chased</i>
2258	Josh	24	17	1) Heb 
2259	Josh	24	17	<i>bondmen</i>
2260	Josh	24	26	1) Or 
2261	Josh	24	26	<i>in</i>
2262	Josh	24	33	1) Or 
2263	Josh	24	33	<i>Gibeah of Phinehas</i>
2264	Judg	1	15	1) Or 
2265	Judg	1	15	<i>present</i>
2266	Judg	1	15	 2) Or 
2267	Judg	1	15	<i>given me the land of the South</i>
2268	Judg	1	16	1) Or 
2269	Judg	1	16	<i>father-in-law</i>
2270	Judg	1	17	1) Heb 
2271	Judg	1	17	<i>devoted</i>
2272	Judg	1	27	1) Heb 
2273	Judg	1	27	<i>daughters</i>
2274	Judg	1	36	1) Or 
2275	Judg	1	36	<i>Sela</i>
2276	Judg	2	1	1) Or 
2277	Judg	2	1	<i>a messenger</i>
2278	Judg	2	5	1) That is 
2279	Judg	2	5	<i>Weepers</i>
2280	Judg	2	19	1) Heb 
2281	Judg	2	19	<i>they let nothing fall of their doings</i>
2282	Judg	3	8	1) Heb 
2283	Judg	3	8	<i>Aram-naharaim</i>
2284	Judg	3	10	1) Heb 
2285	Judg	3	10	<i>Aram</i>
2286	Judg	3	19	1) Or 
2287	Judg	3	19	<i>graven images</i>
2288	Judg	3	22	1) Or 
2289	Judg	3	22	<i>he went out into the antechamber</i>
2290	Judg	3	26	1) Or 
2291	Judg	3	26	<i>graven images</i>
2292	Judg	3	28	1) Or 
2293	Judg	3	28	<i>toward Moab</i>
2294	Judg	4	2	1) Or 
2295	Judg	4	2	<i>nations</i>
2296	Judg	4	5	1) Or 
2297	Judg	4	5	<i>sat</i>
2298	Judg	4	11	1) Heb 
2299	Judg	4	11	<i>Kain</i>
2300	Judg	4	11	 ; See Nu 24:22. 2) Or 
2301	Judg	4	11	<i>father-in-law</i>
2302	Judg	4	11	 3) Or 
2303	Judg	4	11	<i>terebinth</i>
2304	Judg	4	13	1) Or 
2305	Judg	4	13	<i>nations</i>
2306	Judg	4	16	1) Or 
2307	Judg	4	16	<i>nations</i>
2308	Judg	4	21	1) Or 
2309	Judg	4	21	<i>in a deep sleep and weary; so he died</i>
2310	Judg	5	5	1) Or 
2311	Judg	5	5	<i>flowed down</i>
2312	Judg	5	6	1) Or 
2313	Judg	5	6	<i>the caravans ceased</i>
2314	Judg	5	6	  2) Heb 
2315	Judg	5	6	<i>crooked ways</i>
2316	Judg	5	7	1) Or 
2317	Judg	5	7	<i>The villages were unoccupied</i>
2318	Judg	5	9	1) Or 
2319	Judg	5	9	<i>Ye that offered yourselves willingly among the people, bless etc</i>
2320	Judg	5	11	1) Or 
2321	Judg	5	11	<i>Because of the voice of the archers…there let them rehearse</i>
2322	Judg	5	11	 2) Or 
2323	Judg	5	11	<i>toward his villages</i>
2324	Judg	5	13	1) Or 
2325	Judg	5	13	<i>Then go down, O remnant, for the nobles…O Jehovah, go down for me against the mighty</i>
2326	Judg	5	13	 ; Or 
2327	Judg	5	13	<i>Then made he a remnant to have dominion over the nobles</i>
2328	Judg	5	13	 and 
2329	Judg	5	13	<i>the people; Jehovah made me have dominion over the mighty</i>
2330	Judg	5	13	 2) Or as otherwise read 
2331	Judg	5	13	<i>the people of Jehovah came down for me against</i>
2332	Judg	5	13	 (or 
2333	Judg	5	13	<i>among</i>
2334	Judg	5	13	 ) 
2335	Judg	5	13	<i>the mighty</i>
2336	Judg	5	13	 3) Or 
2337	Judg	5	13	<i>among</i>
2338	Judg	5	14	1) Or 
2339	Judg	5	14	<i>lawgivers</i>
2340	Judg	5	14	 2) Or 
2341	Judg	5	14	<i>the staff of the scribe</i>
2342	Judg	5	15	1) Or 
2343	Judg	5	15	<i>my princes in Issachar</i>
2344	Judg	5	17	1) Or 
2345	Judg	5	17	<i>shore</i>
2346	Judg	5	21	1) Or 
2347	Judg	5	21	<i>thou hast trodden down strength</i>
2348	Judg	5	23	1) Or 
2349	Judg	5	23	<i>among</i>
2350	Judg	5	24	1) Or 
2351	Judg	5	24	<i>of</i>
2352	Judg	5	27	1) Or 
2353	Judg	5	27	<i>overpowered</i>
2354	Judg	5	28	1) Heb 
2355	Judg	5	28	<i>steps</i>
2356	Judg	5	29	1) Or (
2357	Judg	5	29	<i> Yet she repeateth her words unto herself</i>
2358	Judg	5	29	 )
2359	Judg	6	11	1) Or 
2360	Judg	6	11	<i>terebinth</i>
2361	Judg	6	14	1) Or 
2362	Judg	6	14	<i>turned towards</i>
2363	Judg	6	15	1) Heb 
2364	Judg	6	15	<i>thousand</i>
2365	Judg	6	18	1) Or 
2366	Judg	6	18	<i>offering</i>
2367	Judg	6	19	1) Or 
2368	Judg	6	19	<i>terebinth</i>
2369	Judg	6	24	1) That is 
2370	Judg	6	24	<i>Jehovah is peace</i>
2371	Judg	6	25	1) Or 
2372	Judg	6	25	<i>and</i>
2373	Judg	6	25	 2) Or 
2374	Judg	6	25	<i>upon</i>
2375	Judg	6	26	1) Or 
2376	Judg	6	26	<i>with that pertaining to it</i>
2377	Judg	6	28	1) Or 
2378	Judg	6	28	<i>upon</i>
2379	Judg	6	30	1) Or 
2380	Judg	6	30	<i>upon</i>
2381	Judg	6	31	1) Or 
2382	Judg	6	31	<i>shall be put to death:</i>
2383	Judg	6	31	 let be 
2384	Judg	6	31	<i>till morning; if etc</i>
2385	Judg	6	31	 2) Or 
2386	Judg	6	31	<i>before morning</i>
2387	Judg	6	32	1) That is 
2388	Judg	6	32	<i>Let Baal contend</i>
2389	Judg	6	34	1) Heb 
2390	Judg	6	34	<i>clothed itself with</i>
2391	Judg	7	1	1) That is 
2392	Judg	7	1	<i>Trembling</i>
2393	Judg	7	1	 ; See verse 3. 2) Or 
2394	Judg	7	1	<i>from the hill of Moreh</i>
2395	Judg	7	1	 onwards 
2396	Judg	7	1	<i>in the valley</i>
2397	Judg	7	3	1) Or 
2398	Judg	7	3	<i>go round about</i>
2399	Judg	7	9	1) Or 
2400	Judg	7	9	<i>against</i>
2401	Judg	7	11	1) Or 
2402	Judg	7	11	<i>against</i>
2403	Judg	7	20	1) Or 
2404	Judg	7	20	<i>A sword for etc</i>
2405	Judg	7	21	1) Another reading is 
2406	Judg	7	21	<i>fled</i>
2407	Judg	7	22	1) Heb 
2408	Judg	7	22	<i>lip</i>
2409	Judg	7	24	1) Or 
2410	Judg	7	24	<i>and also</i>
2411	Judg	8	3	1) Heb 
2412	Judg	8	3	<i>spirit</i>
2413	Judg	8	4	1) Or 
2414	Judg	8	4	<i>to pass</i>
2415	Judg	8	7	1) Heb 
2416	Judg	8	7	<i>thresh</i>
2417	Judg	8	12	1) Heb 
2418	Judg	8	12	<i>terrified</i>
2419	Judg	8	14	1) Or 
2420	Judg	8	14	<i>wrote down</i>
2421	Judg	8	24	1) Or 
2422	Judg	8	24	<i>nose-rings</i>
2423	Judg	8	31	1) Heb 
2424	Judg	8	31	<i>set</i>
2425	Judg	9	6	1) Or 
2426	Judg	9	6	<i>Beth-millo</i>
2427	Judg	9	6	 2) Or 
2428	Judg	9	6	<i>terebinth</i>
2429	Judg	9	6	 3) Or 
2430	Judg	9	6	<i>garrison</i>
2431	Judg	9	9	1) Or 
2432	Judg	9	9	<i>which God and man honor in me</i>
2433	Judg	9	14	1) Or 
2434	Judg	9	14	<i>thorn</i>
2435	Judg	9	15	1) Or 
2436	Judg	9	15	<i>thorn</i>
2437	Judg	9	17	1) Heb 
2438	Judg	9	17	<i>cast his life before him</i>
2439	Judg	9	27	1) Or 
2440	Judg	9	27	<i>offered a praise-offering</i>
2441	Judg	9	29	1) Or 
2442	Judg	9	29	<i>of</i>
2443	Judg	9	31	1) Or 
2444	Judg	9	31	<i>in Tormah</i>
2445	Judg	9	31	 2) Or 
2446	Judg	9	31	<i>oppress the city on thy account</i>
2447	Judg	9	33	1) Heb 
2448	Judg	9	33	<i>as thy hand shall find</i>
2449	Judg	9	37	1) Heb 
2450	Judg	9	37	<i>navel</i>
2451	Judg	9	37	 2) That is 
2452	Judg	9	37	<i>the augurs’ oak</i>
2453	Judg	9	37	 (or 
2454	Judg	9	37	<i>terebinth</i>
2455	Judg	9	37	 )
2456	Judg	9	48	1) Heb 
2457	Judg	9	48	<i>the axes</i>
2458	Judg	10	4	1) That is 
2459	Judg	10	4	<i>The towns of Jair</i>
2460	Judg	10	6	1) Heb 
2461	Judg	10	6	<i>Aram</i>
2462	Judg	11	10	1) Heb 
2463	Judg	11	10	<i>hearer</i>
2464	Judg	11	26	1) Heb 
2465	Judg	11	26	<i>daughters</i>
2466	Judg	11	31	1) Or 
2467	Judg	11	31	<i>whosoever</i>
2468	Judg	11	33	1) That is 
2469	Judg	11	33	<i>The meadow of vineyards</i>
2470	Judg	11	39	1) Or 
2471	Judg	11	39	<i>an ordinance</i>
2472	Judg	11	40	1) Or 
2473	Judg	11	40	<i>lament</i>
2474	Judg	12	1	1) Or 
2475	Judg	12	1	<i>to Zaphon</i>
2476	Judg	12	5	1) Or 
2477	Judg	12	5	<i>toward Ephraim</i>
2478	Judg	13	12	1) Or 
2479	Judg	13	12	<i>Now when thy words come to pass, what etc</i>
2480	Judg	13	14	1) Or 
2481	Judg	13	14	<i>grape-vine</i>
2482	Judg	13	18	1) Or 
2483	Judg	13	18	<i>secret</i>
2484	Judg	13	24	1) Heb 
2485	Judg	13	24	<i>Shimshon</i>
2486	Judg	13	25	1) That is 
2487	Judg	13	25	<i>The camp of Dan</i>
2488	Judg	14	15	1) Or 
2489	Judg	14	15	<i>take that which we have</i>
2490	Judg	14	19	1) Or 
2491	Judg	14	19	<i>apparel</i>
2492	Judg	15	3	1) Or 
2493	Judg	15	3	<i>shall I be quits with</i>
2494	Judg	15	4	1) Or 
2495	Judg	15	4	<i>jackals</i>
2496	Judg	15	4	 2) Or 
2497	Judg	15	4	<i>torches</i>
2498	Judg	15	14	1) Heb 
2499	Judg	15	14	<i>were melted</i>
2500	Judg	15	16	1) Heb 
2501	Judg	15	16	<i>heap, two heaps</i>
2502	Judg	15	17	1) Or 
2503	Judg	15	17	<i>he called that place</i>
2504	Judg	15	17	 2) That is 
2505	Judg	15	17	<i>The hill of the jawbone</i>
2506	Judg	15	19	1) Or 
2507	Judg	15	19	<i>the jawbone</i>
2508	Judg	15	19	 2) Or 
2509	Judg	15	19	<i>he called the name thereof</i>
2510	Judg	15	19	 3) That is 
2511	Judg	15	19	<i>The spring of him that called</i>
2512	Judg	16	2	1) Or 
2513	Judg	16	2	<i>When</i>
2514	Judg	16	2	 (or 
2515	Judg	16	2	<i>Before</i>
2516	Judg	16	2	 ) 
2517	Judg	16	2	<i>the morning is light</i>
2518	Judg	16	4	1) Or 
2519	Judg	16	4	<i>by the brook</i>
2520	Judg	16	5	1) Or 
2521	Judg	16	5	<i>humble</i>
2522	Judg	16	7	1) Or 
2523	Judg	16	7	<i>new bowstrings</i>
2524	Judg	16	9	1) Heb 
2525	Judg	16	9	<i>smelleth</i>
2526	Judg	16	18	1) Or according to another reading 
2527	Judg	16	18	<i>he had told her</i>
2528	Judg	16	19	1) Or 
2529	Judg	16	19	<i>the men</i>
2530	Judg	16	28	1) Or 
2531	Judg	16	28	<i>be avenged…for one of my two eyes</i>
2532	Judg	17	2	1) Or 
2533	Judg	17	2	<i>an adjuration</i>
2534	Judg	17	3	1) Or 
2535	Judg	17	3	<i>had dedicated</i>
2536	Judg	17	5	1) Or 
2537	Judg	17	5	<i>God</i>
2538	Judg	17	5	 2) Heb 
2539	Judg	17	5	<i>filled the hand of</i>
2540	Judg	18	7	1) Heb 
2541	Judg	18	7	<i>power of restraint</i>
2542	Judg	18	7	 2) Or 
2543	Judg	18	7	<i>that might do any hurt</i>
2544	Judg	18	23	1) Heb 
2545	Judg	18	23	<i>that thou art gathered together</i>
2546	Judg	18	25	1) Heb 
2547	Judg	18	25	<i>bitter of soul</i>
2548	Judg	18	30	1) Another reading is 
2549	Judg	18	30	<i>Manasseh</i>
2550	Judg	19	3	1) Heb 
2551	Judg	19	3	<i>to her heart</i>
2552	Judg	19	9	1) Heb 
2553	Judg	19	9	<i>to thy tents</i>
2554	Judg	19	12	1) Or 
2555	Judg	19	12	<i>where there are none of the children of Israel</i>
2556	Judg	19	29	1) Heb 
2557	Judg	19	29	<i>according to her bones</i>
2558	Judg	20	2	1) Heb 
2559	Judg	20	2	<i>corners</i>
2560	Judg	20	2	 2) Or 
2561	Judg	20	2	<i>even all</i>
2562	Judg	20	10	1) Heb 
2563	Judg	20	10	<i>Geba</i>
2564	Judg	20	12	1) Heb 
2565	Judg	20	12	<i>tribes</i>
2566	Judg	20	12	 ; See Nu 4:18; 1 Sa 9:21
2567	Judg	20	13	1) Another reading is 
2568	Judg	20	13	<i>the children of Benjamin</i>
2569	Judg	20	33	1) Or 
2570	Judg	20	33	<i>the meadow of Geba</i>
2571	Judg	20	33	 (or 
2572	Judg	20	33	<i>Gibeah</i>
2573	Judg	20	33	 ; See verse 10)
2574	Judg	20	34	1) Heb 
2575	Judg	20	34	<i>touching</i>
2576	Judg	20	39	1) Or 
2577	Judg	20	39	<i>And the men…battle: (now Benjamin…heaven:) and the men etc</i>
2578	Judg	20	42	1) Or 
2579	Judg	20	42	<i>them that came…they destroyed</i>
2580	Judg	20	43	1) Or 
2581	Judg	20	43	<i>overtook them</i>
2582	Judg	20	43	 2) Or 
2583	Judg	20	43	<i>at Menuhah</i>
2584	Judg	20	48	1) Or as otherwise read 
2585	Judg	20	48	<i>the inhabited city</i>
2586	Judg	20	48	 ; See De 2:34
2587	Judg	21	11	1) Heb 
2588	Judg	21	11	<i>devote</i>
2589	Judg	21	19	1) Or 
2590	Judg	21	19	<i>the feast</i>
2591	Judg	21	22	1) Or 
2592	Judg	21	22	<i>strive with us</i>
2593	Judg	21	22	 2) Or 
2594	Judg	21	22	<i>as a gift</i>
2595	Ruth	1	1	1) Heb 
2596	Ruth	1	1	<i>field</i>
2597	Ruth	1	2	1) Heb 
2598	Ruth	1	2	<i>Noomi</i>
2599	Ruth	1	13	1) Or 
2600	Ruth	1	13	<i>it is far more bitter for me than for you</i>
2601	Ruth	1	20	1) That is 
2602	Ruth	1	20	<i>Pleasant</i>
2603	Ruth	1	20	 2) That is 
2604	Ruth	1	20	<i>Bitter</i>
2605	Ruth	2	1	1) Or 
2606	Ruth	2	1	<i>valor</i>
2607	Ruth	2	13	1) Heb 
2608	Ruth	2	13	<i>to the heart of</i>
2609	Ruth	2	14	1) Or 
2610	Ruth	2	14	<i>he</i>
2611	Ruth	2	20	1) Or 
2612	Ruth	2	20	<i>one of them that hath the right to redeem for us</i>
2613	Ruth	2	20	 ; See Le 25:25
2614	Ruth	3	1	1) Or 
2615	Ruth	3	1	<i>a resting-place</i>
2616	Ruth	3	5	1) Another reading is 
2617	Ruth	3	5	<i>sayest unto me</i>
2618	Ruth	3	8	1) Or 
2619	Ruth	3	8	<i>startled</i>
2620	Ruth	3	9	1) Or 
2621	Ruth	3	9	<i>one that hath the right to redeem</i>
2622	Ruth	3	9	 ; Heb 
2623	Ruth	3	9	<i>goel</i>
2624	Ruth	3	11	1) Heb 
2625	Ruth	3	11	<i>gate</i>
2626	Ruth	3	11	 ; See Ru 4:1, 11
2627	Ruth	3	15	1) According to Vulg and Syr 
2628	Ruth	3	15	<i>she went</i>
2629	Ruth	3	16	1) Or 
2630	Ruth	3	16	<i>How hast thou fared</i>
2631	Ruth	3	17	1) Another reading is 
2632	Ruth	3	17	<i>said to me</i>
2633	Ruth	4	4	1) Heb 
2634	Ruth	4	4	<i>uncover thine ear</i>
2635	Ruth	4	4	 2) So Sept, Vulg, and Syr; Heb 
2636	Ruth	4	4	<i>he will</i>
2637	Ruth	4	11	1) Or 
2638	Ruth	4	11	<i>get thee wealth</i>
2639	Ruth	4	11	 (or 
2640	Ruth	4	11	<i>power</i>
2641	Ruth	4	11	 )
2642	Ruth	4	17	1) Heb 
2643	Ruth	4	17	<i>Ishai</i>
2644	Ruth	4	20	1) Heb 
2645	Ruth	4	20	<i>Salmah</i>
5276	Ezra	1	1	1) Heb 
5277	Ezra	1	1	<i>Coresh</i>
5278	Ezra	1	3	1) Or 
5279	Ezra	1	3	<i>he is the God who is in Jerusalem</i>
5280	Ezra	2	1	1) Heb 
5281	Ezra	2	1	<i>Nebuchadnezzor</i>
5282	Ezra	2	2	1) In Ne 7:7 
5283	Ezra	2	2	<i>Azariah</i>
5284	Ezra	2	2	 2) In Ne 7:7 
5285	Ezra	2	2	<i>Raamiah</i>
5286	Ezra	2	2	 3) In Ne 7:7 
5287	Ezra	2	2	<i>Mispereth</i>
5288	Ezra	2	2	 4) In Ne 7:7 
5289	Ezra	2	2	<i>Nehum</i>
5290	Ezra	2	10	1) In Ne 7:15 
5291	Ezra	2	10	<i>Binnui</i>
5292	Ezra	2	18	1) In Ne 7:24 
5293	Ezra	2	18	<i>Hariph</i>
5294	Ezra	2	20	1) In Ne 7:25 
5295	Ezra	2	20	<i>Gibeon</i>
5296	Ezra	2	24	1) In Ne 7:28 
5297	Ezra	2	24	<i>Beth-azmaveth</i>
5298	Ezra	2	25	1) In Ne 7:29 
5299	Ezra	2	25	<i>Kiriath-jearim</i>
5300	Ezra	2	40	1) In Ezr 3:9 
5301	Ezra	2	40	<i>Judah</i>
5302	Ezra	2	40	 ; In Ne 7:43 
5303	Ezra	2	40	<i>Hodevah</i>
5304	Ezra	2	44	1) In Ne 7:47 
5305	Ezra	2	44	<i>Sia</i>
5306	Ezra	2	46	1) In Ne 7:48 
5307	Ezra	2	46	<i>Salmai</i>
5308	Ezra	2	50	1) Another reading is 
5309	Ezra	2	50	<i>Nephusim</i>
5310	Ezra	2	50	 ; In Ne 7:52 
5311	Ezra	2	50	<i>Nephushesim</i>
5312	Ezra	2	52	1) In Ne 7:54 
5313	Ezra	2	52	<i>Bazlith</i>
5314	Ezra	2	55	1) In Ne 7:57 
5315	Ezra	2	55	<i>Sophereth</i>
5316	Ezra	2	55	 2) In Ne 7:57 
5317	Ezra	2	55	<i>Perida</i>
5318	Ezra	2	57	1) In Ne 7:59 
5319	Ezra	2	57	<i>Amon</i>
5320	Ezra	2	59	1) In Ne 7:61 
5321	Ezra	2	59	<i>Addon</i>
5322	Ezra	2	61	1) In Ne 7:63 
5323	Ezra	2	61	<i>Hobaiah</i>
5324	Ezra	2	62	1) Heb 
5325	Ezra	2	62	<i>they were polluted from the priesthood</i>
5326	Ezra	2	69	1) Heb 
5327	Ezra	2	69	<i>maneh</i>
5328	Ezra	3	3	1) Or 
5329	Ezra	3	3	<i>in its place</i>
5330	Ezra	3	7	1) Or 
5331	Ezra	3	7	<i>hewers</i>
5332	Ezra	3	8	1) Or 
5333	Ezra	3	8	<i>set forward the work</i>
5334	Ezra	3	9	1) In Ezr 2:40 
5335	Ezra	3	9	<i>Hodaviah</i>
5336	Ezra	3	9	 2) Heb 
5337	Ezra	3	9	<i>as one</i>
5338	Ezra	3	10	1) According to some MSS 
5339	Ezra	3	10	<i>the priests stood</i>
5340	Ezra	3	12	1) Or 
5341	Ezra	3	12	<i>the first house</i>
5342	Ezra	3	12	 standing 
5343	Ezra	3	12	<i>on its foundation, when this house was before their eyes</i>
5344	Ezra	4	2	1) Another reading is 
5345	Ezra	4	2	<i>yet we do not sacrifice since etc</i>
5346	Ezra	4	4	1) Or 
5347	Ezra	4	4	<i>terrified</i>
5348	Ezra	4	6	1) Or 
5349	Ezra	4	6	<i>Xerxes</i>
5350	Ezra	4	6	 ; Heb 
5351	Ezra	4	6	<i>Ahashverosh</i>
5352	Ezra	4	7	1) Heb 
5353	Ezra	4	7	<i>Artahshashta</i>
5354	Ezra	4	7	 2) Or 
5355	Ezra	4	7	<i>Aramaic</i>
5356	Ezra	4	8	1) Ezr 4:8-6:18 is in Aramaic.
5357	Ezra	4	17	1) Or 
5358	Ezra	4	17	<i>unto the rest beyond etc</i>
5359	Ezra	4	18	1) Or 
5360	Ezra	4	18	<i>translated</i>
5361	Ezra	5	1	1) Or, which was 
5362	Ezra	5	1	<i>upon them</i>
5363	Ezra	5	5	1) Or 
5364	Ezra	5	5	<i>they returned answer</i>
5365	Ezra	5	12	1) Or 
5366	Ezra	5	12	<i>because that</i>
5367	Ezra	6	1	1) Aram 
5368	Ezra	6	1	<i>books</i>
5369	Ezra	6	2	1) That is 
5370	Ezra	6	2	<i>Ecbatana</i>
5371	Ezra	6	6	1) Aram 
5372	Ezra	6	6	<i>their</i>
5373	Ezra	6	13	1) Or 
5374	Ezra	6	13	<i>because of that which etc</i>
5375	Ezra	6	20	1) Heb 
5376	Ezra	6	20	<i>as one</i>
5377	Ezra	7	9	1) Heb 
5378	Ezra	7	9	<i>that was the foundation of the going up</i>
5379	Ezra	7	12	1) Ezr 7:12-26 is in Aramaic.
5380	Ezra	7	14	1) Aram 
5381	Ezra	7	14	<i>from before the king</i>
5382	Ezra	7	22	1) Aram 
5383	Ezra	7	22	<i>cors</i>
5384	Ezra	7	26	1) Aram 
5385	Ezra	7	26	<i>rooting out</i>
5386	Ezra	8	14	1) Another reading is 
5387	Ezra	8	14	<i>Zaccur</i>
5388	Ezra	8	16	1) Or 
5389	Ezra	8	16	<i>who had understanding</i>
5390	Ezra	8	17	1) Another reading is 
5391	Ezra	8	17	<i>I gave them commandment</i>
5392	Ezra	8	17	 2) The text as pointed has 
5393	Ezra	8	17	<i>Iddo, his brother</i>
5394	Ezra	8	18	1) Or 
5395	Ezra	8	18	<i>Ish-sechel</i>
5396	Ezra	8	24	1) In Ne 12:24 
5397	Ezra	8	24	<i>Levites</i>
5398	Ezra	8	24	 2) Or 
5399	Ezra	8	24	<i>besides</i>
5400	Ezra	8	33	1) Or 
5401	Ezra	8	33	<i>by</i>
5402	Ezra	9	2	1) Or 
5403	Ezra	9	2	<i>deputies</i>
5404	Ezra	9	2	 2) Or 
5405	Ezra	9	2	<i>first</i>
5406	Ezra	9	5	1) Or 
5407	Ezra	9	5	<i>fasting</i>
5408	Ezra	9	7	1) Heb 
5409	Ezra	9	7	<i>in great guiltiness</i>
5410	Ezra	9	9	1) Or 
5411	Ezra	9	9	<i>waste places</i>
5412	Ezra	9	9	 2) Or 
5413	Ezra	9	9	<i>fence</i>
5414	Ezra	10	3	1) Or 
5415	Ezra	10	3	<i>the Lord</i>
5416	Ezra	10	8	1) Heb 
5417	Ezra	10	8	<i>devoted</i>
5418	Ezra	10	9	1) Heb 
5419	Ezra	10	9	<i>the rains</i>
5420	Ezra	10	11	1) Or 
5421	Ezra	10	11	<i>give thanks</i>
5422	Ezra	10	12	1) Or 
5423	Ezra	10	12	<i>As thou hast said, so it behooveth us to do.</i>
5424	Ezra	10	14	1) Heb 
5425	Ezra	10	14	<i>stand</i>
5426	Ezra	10	14	 2) Or 
5427	Ezra	10	14	<i>as touching this matter</i>
5428	Ezra	10	15	1) Or 
5429	Ezra	10	15	<i>were appointed over this</i>
5430	Ezra	10	29	1) Another reading is 
5431	Ezra	10	29	<i>and Ramoth</i>
5432	Ezra	10	35	1) Another reading is 
5433	Ezra	10	35	<i>Cheluhu</i>
5434	Ezra	10	37	1) Another reading is 
5435	Ezra	10	37	<i>Jaasai</i>
5436	Ezra	10	43	1) Another reading is 
5437	Ezra	10	43	<i>Jaddai</i>
5438	Ezra	10	44	1) Or 
5439	Ezra	10	44	<i>some of the wives had borne children</i>
5440	Neh	1	1	1) Or 
5441	Neh	1	1	<i>history</i>
5442	Neh	1	1	 2) Or 
5443	Neh	1	1	<i>castle</i>
5444	Neh	2	8	1) Or 
5445	Neh	2	8	<i>park</i>
5446	Neh	2	16	1) Or 
5447	Neh	2	16	<i>deputies</i>
5448	Neh	3	1	1) Or 
5449	Neh	3	1	<i>The hundred</i>
5450	Neh	3	2	1) Heb 
5451	Neh	3	2	<i>him</i>
5452	Neh	3	5	1) Or 
5453	Neh	3	5	<i>lords</i>
5454	Neh	3	5	 ; Or 
5455	Neh	3	5	<i>Lord</i>
5456	Neh	3	6	1) Or 
5457	Neh	3	6	<i>the gate of the old</i>
5458	Neh	3	6	 city (or 
5459	Neh	3	6	<i>of the old</i>
5460	Neh	3	6	 wall)
5461	Neh	3	8	1) Or 
5462	Neh	3	8	<i>left</i>
5463	Neh	3	15	1) In Isa 8:6 
5464	Neh	3	15	<i>Shiloah</i>
5465	Neh	3	20	1) Another reading is 
5466	Neh	3	20	<i>Zaccai</i>
5467	Neh	3	22	1) Or 
5468	Neh	3	22	<i>Circuit</i>
5469	Neh	3	23	1) Heb 
5470	Neh	3	23	<i>him</i>
5471	Neh	3	25	1) Or 
5472	Neh	3	25	<i>the upper tower…from the house of the king</i>
5473	Neh	3	25	 2) Or 
5474	Neh	3	25	<i>Pedaiah the son of Parosh</i>
5475	Neh	3	25	 (
5476	Neh	3	25	<i> now…Ophel</i>
5477	Neh	3	25	 ) repaired 
5478	Neh	3	25	<i>unto etc</i>
5479	Neh	3	31	1) Or 
5480	Neh	3	31	<i>upper chamber</i>
5481	Neh	3	32	1) Or 
5482	Neh	3	32	<i>upper chamber</i>
5483	Neh	4	2	1) Or 
5484	Neh	4	2	<i>will they leave to themselves</i>
5485	Neh	4	2	 aught? Or 
5486	Neh	4	2	<i>will men let them alone?</i>
5487	Neh	4	3	1) Or 
5488	Neh	4	3	<i>jackal</i>
5489	Neh	4	7	1) Heb 
5490	Neh	4	7	<i>healing went up upon the walls</i>
5491	Neh	4	12	1) Of 
5492	Neh	4	12	<i>From all places whence ye shall return</i>
5493	Neh	4	12	 they will be 
5494	Neh	4	12	<i>upon us</i>
5495	Neh	4	14	1) Or 
5496	Neh	4	14	<i>deputies</i>
5497	Neh	4	16	1) Or 
5498	Neh	4	16	<i>all the house of Judah that builded the wall. And they that etc</i>
5499	Neh	4	19	1) Or 
5500	Neh	4	19	<i>deputies</i>
5501	Neh	4	23	1) The text is obscure.
5502	Neh	5	7	1) Or 
5503	Neh	5	7	<i>deputies</i>
5504	Neh	5	8	1) Heb 
5505	Neh	5	8	<i>bought</i>
5506	Neh	5	15	1) Or 
5507	Neh	5	15	<i>laid burdens upon</i>
5508	Neh	5	15	 2) Or 
5509	Neh	5	15	<i>at the rate of</i>
5510	Neh	5	15	 ; Or 
5511	Neh	5	15	<i>afterward</i>
5512	Neh	5	15	 3) Or 
5513	Neh	5	15	<i>lorded over</i>
5514	Neh	5	16	1) Heb 
5515	Neh	5	16	<i>held fast to</i>
5516	Neh	5	17	1) Or 
5517	Neh	5	17	<i>deputies</i>
5518	Neh	6	6	1) In verse 1, and elsewhere 
5519	Neh	6	6	<i>Geshem</i>
5520	Neh	6	9	1) Or 
5521	Neh	6	9	<i>I will strengthen my hands</i>
5522	Neh	6	11	1) Or 
5523	Neh	6	11	<i>could go into the temple and live</i>
5524	Neh	6	16	1) According to another reading 
5525	Neh	6	16	<i>saw</i>
5526	Neh	7	5	1) Or 
5527	Neh	7	5	<i>deputies</i>
5528	Neh	7	43	1) Another reading is 
5529	Neh	7	43	<i>Hodeiah</i>
5530	Neh	7	52	1) Another reading is 
5531	Neh	7	52	<i>Nephishesim</i>
5532	Neh	7	64	1) Heb 
5533	Neh	7	64	<i>they were polluted from the priesthood</i>
5534	Neh	7	71	1) Heb 
5535	Neh	7	71	<i>maneh</i>
5536	Neh	8	3	1) Heb 
5537	Neh	8	3	<i>from the light</i>
5538	Neh	8	4	1) Heb 
5539	Neh	8	4	<i>tower</i>
5540	Neh	8	8	1) Or 
5541	Neh	8	8	<i>with an interpretation</i>
5542	Neh	8	8	 2) Or 
5543	Neh	8	8	<i>and caused</i>
5544	Neh	8	8	 them 
5545	Neh	8	8	<i>to understand</i>
5546	Neh	8	10	1) Or 
5547	Neh	8	10	<i>stronghold</i>
5548	Neh	8	18	1) Or 
5549	Neh	8	18	<i>closing festival</i>
5550	Neh	9	5	1) Or 
5551	Neh	9	5	<i>let them bless</i>
5552	Neh	9	7	1) Or, O 
5553	Neh	9	7	<i>Jehovah</i>
5554	Neh	9	15	1) Heb 
5555	Neh	9	15	<i>lifted up thy hand</i>
5556	Neh	9	17	1) Heb 
5557	Neh	9	17	<i>a God of forgivenesses</i>
5558	Neh	9	22	1) Or 
5559	Neh	9	22	<i>and didst distribute them into</i>
5560	Neh	9	22	 every 
5561	Neh	9	22	<i>corner</i>
5562	Neh	9	29	1) Heb 
5563	Neh	9	29	<i>they gave a stubborn shoulder</i>
5564	Neh	9	38	1) Or 
5565	Neh	9	38	<i>because of</i>
5566	Neh	9	38	 2) Or 
5567	Neh	9	38	<i>faithful</i>
5568	Neh	9	38	 3) Heb 
5569	Neh	9	38	<i>are at the sealing</i>
5570	Neh	10	19	1) Another reading is 
5571	Neh	10	19	<i>Nebai</i>
5572	Neh	10	37	1) Or 
5573	Neh	10	37	<i>coarse meal</i>
5574	Neh	10	37	 2) Or 
5575	Neh	10	37	<i>the vintage</i>
5576	Neh	10	39	1) Or 
5577	Neh	10	39	<i>the vintage</i>
5578	Neh	11	14	1) Or 
5579	Neh	11	14	<i>one of the great men</i>
5580	Neh	11	23	1) Or 
5581	Neh	11	23	<i>a sure ordinance concerning</i>
5582	Neh	11	25	1) Heb 
5583	Neh	11	25	<i>daughters</i>
5584	Neh	11	27	1) Heb 
5585	Neh	11	27	<i>daughters</i>
5586	Neh	11	28	1) Heb 
5587	Neh	11	28	<i>daughters</i>
5588	Neh	11	30	1) Heb 
5589	Neh	11	30	<i>daughters</i>
5590	Neh	11	31	1) Heb 
5591	Neh	11	31	<i>daughters</i>
5592	Neh	11	35	1) Or 
5593	Neh	11	35	<i>Ge-haharashim</i>
5594	Neh	11	35	 ; See 1 Ch 4:14
5595	Neh	12	8	1) Or 
5596	Neh	12	8	<i>the choirs</i>
5597	Neh	12	14	1) Another reading is 
5598	Neh	12	14	<i>Melicu</i>
5599	Neh	12	22	1) Or 
5600	Neh	12	22	<i>to</i>
5601	Neh	12	28	1) Or 
5602	Neh	12	28	<i>Circuit</i>
5603	Neh	12	39	1) Or 
5604	Neh	12	39	<i>The hundred</i>
5605	Neh	12	40	1) Or 
5606	Neh	12	40	<i>deputies</i>
5607	Neh	12	44	1) Heb 
5608	Neh	12	44	<i>of the law</i>
5609	Neh	12	44	 2) Heb 
5610	Neh	12	44	<i>stood</i>
5611	Neh	12	46	1) Another reading is 
5612	Neh	12	46	<i>there were chiefs</i>
5613	Neh	13	4	1) Heb 
5614	Neh	13	4	<i>chamber</i>
5615	Neh	13	11	1) Or 
5616	Neh	13	11	<i>deputies</i>
5617	Neh	13	15	1) Or 
5618	Neh	13	15	<i>heaps of grain</i>
5619	Neh	13	21	1) Heb 
5620	Neh	13	21	<i>before</i>
5621	Neh	13	23	1) Heb 
5622	Neh	13	23	<i>had made to dwell</i>
5623	Neh	13	23	 with them
5624	Neh	13	25	1) Or 
5625	Neh	13	25	<i>reviled</i>
5626	Neh	13	29	1) Heb 
5627	Neh	13	29	<i>for the defilings of etc</i>
5628	Neh	13	30	1) Or 
5629	Neh	13	30	<i>everything foreign</i>
5630	Esth	1	1	1) Or 
5631	Esth	1	1	<i>Xerxes</i>
5632	Esth	1	1	 ; Heb 
5633	Esth	1	1	<i>Ahashverosh</i>
5634	Esth	1	2	1) Or 
5635	Esth	1	2	<i>castle</i>
5636	Esth	1	6	1) Or 
5637	Esth	1	6	<i>fine</i>
5638	Esth	1	6	 cloth, 
5639	Esth	1	6	<i>white and blue</i>
5640	Esth	1	6	 2) Or 
5641	Esth	1	6	<i>cotton</i>
5642	Esth	1	6	 3) Or 
5643	Esth	1	6	<i>of porphyry, and white marble and alabaster, and stone of blue color</i>
5644	Esth	1	7	1) Heb 
5645	Esth	1	7	<i>hand</i>
5646	Esth	1	10	1) Or 
5647	Esth	1	10	<i>eunuchs</i>
5648	Esth	1	10	 (and so in verse 12, etc)
5649	Esth	1	18	1) Or 
5650	Esth	1	18	<i>tell</i>
5651	Esth	1	18	 it 2) Or 
5652	Esth	1	18	<i>enough</i>
5653	Esth	1	19	1) Heb 
5654	Esth	1	19	<i>that it pass not away</i>
5655	Esth	1	19	 2) Heb 
5656	Esth	1	19	<i>unto her companion</i>
5657	Esth	2	3	1) Heb 
5658	Esth	2	3	<i>Hegee</i>
5659	Esth	2	6	1) In 2 Ki 24:6 
5660	Esth	2	6	<i>Jehoiachin</i>
5661	Esth	2	7	1) Heb 
5662	Esth	2	7	<i>nourished</i>
5663	Esth	2	18	1) Heb 
5664	Esth	2	18	<i>rest</i>
5665	Esth	2	18	 2) Heb 
5666	Esth	2	18	<i>hand</i>
5667	Esth	3	4	1) Or 
5668	Esth	3	4	<i>words</i>
5669	Esth	3	8	1) Or 
5670	Esth	3	8	<i>separated</i>
5671	Esth	3	8	 2) Or 
5672	Esth	3	8	<i>meet for the king</i>
5673	Esth	3	12	1) Or 
5674	Esth	3	12	<i>secretaries</i>
5675	Esth	3	14	1) Or 
5676	Esth	3	14	<i>to be given out for a decree</i>
5677	Esth	4	3	1) Heb 
5678	Esth	4	3	<i>sackcloth and ashes were spread under many</i>
5679	Esth	5	9	1) Or 
5680	Esth	5	9	<i>trembled before him</i>
5681	Esth	5	14	1) Heb 
5682	Esth	5	14	<i>tree</i>
5683	Esth	6	1	1) Heb 
5684	Esth	6	1	<i>the king’s sleep fled</i>
5685	Esth	6	1	 from him
5686	Esth	6	8	1) Or 
5687	Esth	6	8	<i>and the crown royal which is set upon his head</i>
5688	Esth	7	1	1) Heb 
5689	Esth	7	1	<i>to drink</i>
5690	Esth	7	4	1) Or 
5691	Esth	7	4	<i>for our affliction is not to be compared with the king’s damage</i>
5692	Esth	7	9	1) Heb 
5693	Esth	7	9	<i>tree</i>
5694	Esth	8	8	1) Or 
5695	Esth	8	8	<i>concerning</i>
5696	Esth	8	10	1) Or 
5697	Esth	8	10	<i>swift steeds, mules,</i>
5698	Esth	8	10	 and 
5699	Esth	8	10	<i>young dromedaries</i>
5700	Esth	8	13	1) Or 
5701	Esth	8	13	<i>to be given out for a decree</i>
5702	Esth	9	28	1) Heb 
5703	Esth	9	28	<i>be ended</i>
5704	Esth	9	29	1) Heb 
5705	Esth	9	29	<i>strength</i>
5706	Job	1	1	1) Heb 
5707	Job	1	1	<i>Iyob</i>
5708	Job	1	3	1) Or 
5709	Job	1	3	<i>cattle</i>
5710	Job	1	5	1) Or 
5711	Job	1	5	<i>blasphemed</i>
5712	Job	1	5	 ; See Job 1:11; 2:5, 9
5713	Job	1	6	1) That is 
5714	Job	1	6	<i>the Adversary</i>
5715	Job	1	8	1) Or 
5716	Job	1	8	<i>that</i>
5717	Job	1	10	1) Or 
5718	Job	1	10	<i>cattle</i>
5719	Job	1	12	1) Heb 
5720	Job	1	12	<i>hand</i>
5721	Job	1	15	1) Heb 
5722	Job	1	15	<i>Sheba</i>
5723	Job	1	15	 2) Heb 
5724	Job	1	15	<i>young men</i>
5725	Job	1	16	1) Heb 
5726	Job	1	16	<i>young men</i>
5727	Job	1	17	1) Or 
5728	Job	1	17	<i>made a raid</i>
5729	Job	1	17	 2) Heb 
5730	Job	1	17	<i>young men</i>
5731	Job	1	19	1) Or 
5732	Job	1	19	<i>over</i>
5733	Job	1	22	1) Or 
5734	Job	1	22	<i>attributed folly to God</i>
5735	Job	2	3	1) Or 
5736	Job	2	3	<i>that</i>
5737	Job	2	3	 2) Heb 
5738	Job	2	3	<i>to swallow him up</i>
5739	Job	2	10	1) Or 
5740	Job	2	10	<i>impious</i>
5741	Job	2	13	1) Or 
5742	Job	2	13	<i>pain</i>
5743	Job	3	5	1) Or 
5744	Job	3	5	<i>deep darkness</i>
5745	Job	3	5	 (and so elsewhere)
5746	Job	3	7	1) Or 
5747	Job	3	7	<i>solitary</i>
5748	Job	3	8	1) Or 
5749	Job	3	8	<i>skilful</i>
5750	Job	3	14	1) Or 
5751	Job	3	14	<i>built solitary piles</i>
5752	Job	3	17	1) Or 
5753	Job	3	17	<i>raging</i>
5754	Job	3	21	1) Heb 
5755	Job	3	21	<i>wait</i>
5756	Job	3	22	1) Or 
5757	Job	3	22	<i>unto exultation</i>
5758	Job	3	24	1) Or 
5759	Job	3	24	<i>like my food</i>
5760	Job	3	24	 2) Heb 
5761	Job	3	24	<i>roarings</i>
5762	Job	3	25	1) Or 
5763	Job	3	25	<i>the thing which I feared is come etc</i>
5764	Job	3	26	1) Or 
5765	Job	3	26	<i>was not at ease…yet trouble came</i>
5766	Job	4	4	1) Heb 
5767	Job	4	4	<i>bowing</i>
5768	Job	4	5	1) Or 
5769	Job	4	5	<i>art grieved</i>
5770	Job	4	8	1) Or 
5771	Job	4	8	<i>mischief</i>
5772	Job	4	12	1) Heb 
5773	Job	4	12	<i>brought by stealth</i>
5774	Job	4	15	1) Or 
5775	Job	4	15	<i>a breath passed over</i>
5776	Job	4	16	1) Or 
5777	Job	4	16	<i>I heard a still voice</i>
5778	Job	4	17	1) Or 
5779	Job	4	17	<i>be just before God</i>
5780	Job	4	17	 2) Or 
5781	Job	4	17	<i>be pure before his Maker</i>
5782	Job	4	19	1) Or 
5783	Job	4	19	<i>like</i>
5784	Job	4	20	1) Or 
5785	Job	4	20	<i>From morning to evening</i>
5786	Job	4	20	 2) Heb 
5787	Job	4	20	<i>broken in pieces</i>
5788	Job	4	21	1) Or 
5789	Job	4	21	<i>Is not their excellency which is in them removed?</i>
5790	Job	5	2	1) Or 
5791	Job	5	2	<i>indignation</i>
5792	Job	5	5	1) According to Vulg 
5793	Job	5	5	<i>the thirsty swallow up</i>
5794	Job	5	6	1) Or 
5795	Job	5	6	<i>iniquity</i>
5796	Job	5	6	 ; See Job 4:8
5797	Job	5	7	1) Heb 
5798	Job	5	7	<i>the sons of flame</i>
5799	Job	5	7	 (or 
5800	Job	5	7	<i>of lightning</i>
5801	Job	5	7	 )
5802	Job	5	12	1) Or 
5803	Job	5	12	<i>can perform nothing of worth</i>
5804	Job	5	15	1) Heb 
5805	Job	5	15	<i>out of their mouth</i>
5806	Job	5	17	1) Or 
5807	Job	5	17	<i>reproveth</i>
5808	Job	5	24	1) Or 
5809	Job	5	24	<i>habitation</i>
5810	Job	5	24	 2) Or 
5811	Job	5	24	<i>shalt not err</i>
5812	Job	5	27	1) Heb 
5813	Job	5	27	<i>for thyself</i>
5814	Job	6	6	1) Or 
5815	Job	6	6	<i>the juice of purslain</i>
5816	Job	6	7	1) Or, What things 
5817	Job	6	7	<i>my soul refused to touch, these are as my loathsome food</i>
5818	Job	6	10	1) Or 
5819	Job	6	10	<i>Though I shrink back</i>
5820	Job	6	10	 2) Or 
5821	Job	6	10	<i>harden myself</i>
5822	Job	6	10	 3) Or 
5823	Job	6	10	<i>though he spare not</i>
5824	Job	6	10	 4) Or 
5825	Job	6	10	<i>concealed</i>
5826	Job	6	14	1) Or 
5827	Job	6	14	<i>Else might he forsake</i>
5828	Job	6	14	 ; Or 
5829	Job	6	14	<i>But he forsaketh</i>
5830	Job	6	17	1) Or 
5831	Job	6	17	<i>shrink</i>
5832	Job	6	18	1) Or 
5833	Job	6	18	<i>The paths of their way are turned aside</i>
5834	Job	6	21	1) Another reading is 
5835	Job	6	21	<i>are</i>
5836	Job	6	21	 like 
5837	Job	6	21	<i>thereto</i>
5838	Job	6	26	1) Or 
5839	Job	6	26	<i>for the wind</i>
5840	Job	6	28	1) Or 
5841	Job	6	28	<i>And it will be evident unto you if I lie</i>
5842	Job	6	29	1) Heb 
5843	Job	6	29	<i>my righteousness is in it</i>
5844	Job	7	1	1) Or 
5845	Job	7	1	<i>time of service</i>
5846	Job	7	5	1) Or 
5847	Job	7	5	<i>is broken and become loathsome</i>
5848	Job	7	16	1) Or 
5849	Job	7	16	<i>I waste away</i>
5850	Job	7	16	 2) Or 
5851	Job	7	16	<i>shall</i>
5852	Job	7	16	 3) Or 
5853	Job	7	16	<i>as a breath</i>
5854	Job	7	20	1) Or 
5855	Job	7	20	<i>can I do</i>
5856	Job	7	20	 2) Or 
5857	Job	7	20	<i>preserver</i>
5858	Job	8	4	1) Or 
5859	Job	8	4	<i>If thy children sinned…he delivered etc</i>
5860	Job	8	11	1) Or 
5861	Job	8	11	<i>papyrus</i>
5862	Job	8	11	 2) Or 
5863	Job	8	11	<i>reed-grass</i>
5864	Job	8	14	1) Or 
5865	Job	8	14	<i>be cut off</i>
5866	Job	8	14	 2) Heb 
5867	Job	8	14	<i>house</i>
5868	Job	8	17	1) Or 
5869	Job	8	17	<i>beside the spring</i>
5870	Job	8	19	1) Or 
5871	Job	8	19	<i>dust</i>
5872	Job	8	21	1) Or 
5873	Job	8	21	<i>Till he fill</i>
5874	Job	9	2	1) Or 
5875	Job	9	2	<i>For</i>
5876	Job	9	2	 2) Or 
5877	Job	9	2	<i>before</i>
5878	Job	9	3	1) Or 
5879	Job	9	3	<i>If one should desire…He could not etc</i>
5880	Job	9	8	1) Heb 
5881	Job	9	8	<i>high places</i>
5882	Job	9	12	1) Or 
5883	Job	9	12	<i>turn him back</i>
5884	Job	9	13	1) Or 
5885	Job	9	13	<i>arrogancy</i>
5886	Job	9	13	 ; See Isa 30:7. 2) Or 
5887	Job	9	13	<i>did</i>
5888	Job	9	17	1) Heb 
5889	Job	9	17	<i>He who</i>
5890	Job	9	19	1) Or 
5891	Job	9	19	<i>Lo,</i>
5892	Job	9	19	 here am I, saith he; 
5893	Job	9	19	<i>And if of judgement, Who etc</i>
5894	Job	9	20	1) Or 
5895	Job	9	20	<i>he</i>
5896	Job	9	21	1) Or 
5897	Job	9	21	<i>Though I be perfect, I will not regard etc</i>
5898	Job	9	23	1) Or 
5899	Job	9	23	<i>calamity</i>
5900	Job	9	25	1) Or 
5901	Job	9	25	<i>runner</i>
5902	Job	9	26	1) Heb 
5903	Job	9	26	<i>ships of reed</i>
5904	Job	9	27	1) Heb 
5905	Job	9	27	<i>brighten up</i>
5906	Job	9	30	1) Another reading is 
5907	Job	9	30	<i>with snow</i>
5908	Job	9	30	 2) Heb 
5909	Job	9	30	<i>cleanse my hands with lye</i>
5910	Job	10	3	1) Heb 
5911	Job	10	3	<i>labor</i>
5912	Job	10	12	1) Or 
5913	Job	10	12	<i>care</i>
5914	Job	10	15	1) Or 
5915	Job	10	15	<i>I am filled with ignominy, but look thou…for it increaseth: thou etc</i>
5916	Job	10	17	1) Or 
5917	Job	10	17	<i>Host after host is against me.</i>
5918	Job	10	20	1) Another reading is 
5919	Job	10	20	<i>let him cease, and leave me alone</i>
5920	Job	10	20	 2) Heb 
5921	Job	10	20	<i>brighten up</i>
5922	Job	10	22	1) Heb 
5923	Job	10	22	<i>thick darkness</i>
5924	Job	11	6	1) Or 
5925	Job	11	6	<i>remitteth</i>
5926	Job	11	6	 (Heb 
5927	Job	11	6	<i>causeth to be forgotten</i>
5928	Job	11	6	 ) 
5929	Job	11	6	<i>unto thee of thine iniquity</i>
5930	Job	11	7	1) Or 
5931	Job	11	7	<i>Canst thou find out the deep things of God?</i>
5932	Job	11	8	1) Heb 
5933	Job	11	8	<i>The heights of heaven</i>
5934	Job	11	10	1) Heb 
5935	Job	11	10	<i>call an assembly</i>
5936	Job	11	11	1) Or 
5937	Job	11	11	<i>and him that considereth not</i>
5938	Job	11	12	1) Or 
5939	Job	11	12	<i>But an empty man will get understanding, when a wild ass’s colt is born a man.</i>
5940	Job	11	17	1) Or 
5941	Job	11	17	<i>arise above</i>
5942	Job	11	20	1) Heb 
5943	Job	11	20	<i>refuge is perished from them</i>
5944	Job	12	6	1) Or 
5945	Job	12	6	<i>That bring</i>
5946	Job	12	6	 their 
5947	Job	12	6	<i>god in their hand</i>
5948	Job	12	9	1) Or 
5949	Job	12	9	<i>by</i>
5950	Job	12	10	1) Or 
5951	Job	12	10	<i>spirit</i>
5952	Job	12	12	1) Or 
5953	Job	12	12	<i>With aged men,</i>
5954	Job	12	12	 ye say, 
5955	Job	12	12	<i>is wisdom</i>
5956	Job	12	13	1) Heb 
5957	Job	12	13	<i>him</i>
5958	Job	12	24	1) Or 
5959	Job	12	24	<i>land</i>
5960	Job	12	25	1) Heb 
5961	Job	12	25	<i>wander</i>
5962	Job	13	9	1) Or 
5963	Job	13	9	<i>mocketh</i>
5964	Job	13	9	 2) Or 
5965	Job	13	9	<i>mock</i>
5966	Job	13	14	1) Or 
5967	Job	13	14	<i>At all adventures I will take etc</i>
5968	Job	13	15	1) Or 
5969	Job	13	15	<i>Though he slay me, yet will I wait for him</i>
5970	Job	13	15	 2) Heb 
5971	Job	13	15	<i>argue</i>
5972	Job	13	18	1) Or 
5973	Job	13	18	<i>shall be justified</i>
5974	Job	13	19	1) Or 
5975	Job	13	19	<i>if I hold my peace, I shall give up etc</i>
5976	Job	13	28	1) Heb 
5977	Job	13	28	<i>And he is like</i>
5978	Job	14	2	1) Or 
5979	Job	14	2	<i>withereth</i>
5980	Job	14	4	1) Or 
5981	Job	14	4	<i>Oh that a clean thing could come out of an unclean! not one</i>
5982	Job	14	4	 can.
5983	Job	14	6	1) Heb 
5984	Job	14	6	<i>cease</i>
5985	Job	14	6	 2) Or 
5986	Job	14	6	<i>have pleasure in</i>
5987	Job	14	11	1) Heb 
5988	Job	14	11	<i>are gone</i>
5989	Job	14	14	1) Or 
5990	Job	14	14	<i>will…shall come</i>
5991	Job	14	14	 2) Or 
5992	Job	14	14	<i>change</i>
5993	Job	14	15	1) Or 
5994	Job	14	15	<i>shalt call, and I will etc</i>
5995	Job	14	18	1) Heb 
5996	Job	14	18	<i>fadeth away</i>
5997	Job	14	22	1) Or 
5998	Job	14	22	<i>Only for himself his flesh hath pain, and for himself his soul mourneth</i>
5999	Job	15	2	1) Heb 
6000	Job	15	2	<i>knowledge of wind</i>
6001	Job	15	4	1) Heb 
6002	Job	15	4	<i>diminishest</i>
6003	Job	15	4	 2) Or 
6004	Job	15	4	<i>meditation</i>
6005	Job	15	5	1) Or 
6006	Job	15	5	<i>thy mouth teacheth thine iniquity</i>
6007	Job	15	8	1) Or 
6008	Job	15	8	<i>Dost thou hearken in the council</i>
6009	Job	15	11	1) Or 
6010	Job	15	11	<i>Or is there any secret thing with thee?</i>
6011	Job	15	16	1) Or 
6012	Job	15	16	<i>that which is</i>
6013	Job	15	20	1) Or 
6014	Job	15	20	<i>And years that are numbered are laid up etc</i>
6015	Job	15	25	1) Or 
6016	Job	15	25	<i>biddeth defiance to</i>
6017	Job	15	26	1) Or 
6018	Job	15	26	<i>Upon</i>
6019	Job	15	28	1) Heb 
6020	Job	15	28	<i>cut off</i>
6021	Job	15	28	 2) Or 
6022	Job	15	28	<i>would inhabit</i>
6023	Job	15	29	1) Or 
6024	Job	15	29	<i>their produce bend to the earth</i>
6025	Job	15	30	1) Heb 
6026	Job	15	30	<i>his</i>
6027	Job	15	32	1) Or 
6028	Job	15	32	<i>paid in full</i>
6029	Job	16	2	1) Or 
6030	Job	16	2	<i>Wearisome</i>
6031	Job	16	3	1) Heb 
6032	Job	16	3	<i>words of wind</i>
6033	Job	16	6	1) Heb 
6034	Job	16	6	<i>what departeth from me?</i>
6035	Job	16	8	1) Or 
6036	Job	16	8	<i>shrivelled me up</i>
6037	Job	16	9	1) Or 
6038	Job	16	9	<i>hated</i>
6039	Job	16	13	1) Or 
6040	Job	16	13	<i>arrows</i>
6041	Job	16	13	 ; Or 
6042	Job	16	13	<i>mighty ones</i>
6043	Job	16	14	1) Or 
6044	Job	16	14	<i>mighty man</i>
6045	Job	16	15	1) Or 
6046	Job	16	15	<i>defiled</i>
6047	Job	16	18	1) Or 
6048	Job	16	18	<i>have no more place</i>
6049	Job	16	21	1) Or 
6050	Job	16	21	<i>That one might plead for a man with God, As a son of man</i>
6051	Job	16	21	 pleadeth 
6052	Job	16	21	<i>for his neighbor.</i>
6053	Job	17	2	1) Heb 
6054	Job	17	2	<i>mockery</i>
6055	Job	17	5	1) Heb 
6056	Job	17	5	<i>portion</i>
6057	Job	17	10	1) Or 
6058	Job	17	10	<i>For I find not</i>
6059	Job	17	11	1) Heb 
6060	Job	17	11	<i>possessions</i>
6061	Job	17	12	1) Or 
6062	Job	17	12	<i>because of</i>
6063	Job	17	13	1) Or 
6064	Job	17	13	<i>hope, Sheol is my house; I have spread…I have said…And where now is my hope?</i>
6065	Job	17	14	1) Or 
6066	Job	17	14	<i>the pit</i>
6067	Job	18	5	1) Or 
6068	Job	18	5	<i>flame</i>
6069	Job	18	6	1) Or 
6070	Job	18	6	<i>beside</i>
6071	Job	18	12	1) Or 
6072	Job	18	12	<i>for his halting</i>
6073	Job	18	13	1) Heb 
6074	Job	18	13	<i>bars of his skin</i>
6075	Job	18	14	1) Heb 
6076	Job	18	14	<i>it shall</i>
6077	Job	18	14	 (or 
6078	Job	18	14	<i>thou shalt</i>
6079	Job	18	14	 ) 
6080	Job	18	14	<i>bring him</i>
6081	Job	18	15	1) Or 
6082	Job	18	15	<i>It shall dwell in his tent, that it be no more his</i>
6083	Job	18	15	 (or 
6084	Job	18	15	<i>because it is none of his</i>
6085	Job	18	15	 )
6086	Job	18	16	1) Or 
6087	Job	18	16	<i>wither</i>
6088	Job	18	20	1) Or 
6089	Job	18	20	<i>They that dwell in the west are…as they that well in the east are etc</i>
6090	Job	18	20	 2) Heb 
6091	Job	18	20	<i>laid hold on horror</i>
6092	Job	19	5	1) Or 
6093	Job	19	5	<i>Will ye indeed…reproach?</i>
6094	Job	19	6	1) Or 
6095	Job	19	6	<i>overthrown me</i>
6096	Job	19	7	1) Or 
6097	Job	19	7	<i>cry out, Violence!</i>
6098	Job	19	15	1) Or 
6099	Job	19	15	<i>sojourn</i>
6100	Job	19	17	1) Or 
6101	Job	19	17	<i>I make supplication</i>
6102	Job	19	17	 ; Or 
6103	Job	19	17	<i>I am loathsome</i>
6104	Job	19	17	 2) Or 
6105	Job	19	17	<i>of my body</i>
6106	Job	19	19	1) Heb 
6107	Job	19	19	<i>the men of my council</i>
6108	Job	19	25	1) Or 
6109	Job	19	25	<i>For</i>
6110	Job	19	25	 2) Or 
6111	Job	19	25	<i>vindicator</i>
6112	Job	19	25	 ; Heb 
6113	Job	19	25	<i>goel</i>
6114	Job	19	25	 3) Heb 
6115	Job	19	25	<i>dust</i>
6116	Job	19	26	1) Or 
6117	Job	19	26	<i>And after my skin hath been thus destroyed, Yet from my flesh shall I see God</i>
6118	Job	19	27	1) Or 
6119	Job	19	27	<i>for myself</i>
6120	Job	19	27	 2) Heb 
6121	Job	19	27	<i>reins</i>
6122	Job	19	29	1) Or 
6123	Job	19	29	<i>wrathful are</i>
6124	Job	20	2	1) Or 
6125	Job	20	2	<i>And by reason of</i>
6126	Job	20	2	 this 
6127	Job	20	2	<i>my haste is within me</i>
6128	Job	20	3	1) Or 
6129	Job	20	3	<i>But out of my understanding</i>
6130	Job	20	3	 my 
6131	Job	20	3	<i>spirit answereth me</i>
6132	Job	20	10	1) Or as otherwise read 
6133	Job	20	10	<i>The poor shall oppress his children</i>
6134	Job	20	18	1) Heb 
6135	Job	20	18	<i>of his exchange</i>
6136	Job	20	19	1) Or 
6137	Job	20	19	<i>which he builded not</i>
6138	Job	20	20	1) Or 
6139	Job	20	20	<i>in his greed</i>
6140	Job	20	20	 ; Heb 
6141	Job	20	20	<i>in his belly</i>
6142	Job	20	23	1) Or 
6143	Job	20	23	<i>Let it be for the filling of his belly that God shall cast etc</i>
6144	Job	20	23	 2) Or 
6145	Job	20	23	<i>as his food</i>
6146	Job	20	26	1) Or 
6147	Job	20	26	<i>It shall go ill with him that is left</i>
6148	Job	21	3	1) Or 
6149	Job	21	3	<i>thou shalt mock</i>
6150	Job	21	4	1) Or 
6151	Job	21	4	<i>of</i>
6152	Job	21	5	1) Heb 
6153	Job	21	5	<i>Look unto me</i>
6154	Job	21	9	1) Or 
6155	Job	21	9	<i>in peace, without fear</i>
6156	Job	21	12	1) Heb 
6157	Job	21	12	<i>lift up</i>
6158	Job	21	12	 the voice
6159	Job	21	16	1) Or, Ye say, 
6160	Job	21	16	<i>Lo etc</i>
6161	Job	21	17	1) Or 
6162	Job	21	17	<i>How oft is the lamp of the wicked put out, And</i>
6163	Job	21	17	 how oft 
6164	Job	21	17	<i>cometh their calamity upon them! God distributeth sorrows in his anger. They are as stubble…away.</i>
6165	Job	21	19	1) Or 
6166	Job	21	19	<i>God layeth up his iniquity for his children: He rewardeth him, and he shall know it. His eyes shall see his destruction, and he shall drink etc</i>
6167	Job	21	30	1) Or 
6168	Job	21	30	<i>spared in etc</i>
6169	Job	21	30	 2) Or 
6170	Job	21	30	<i>led away in etc</i>
6171	Job	21	32	1) Or 
6172	Job	21	32	<i>Moreover he is borne to the grave, And keepeth watch over his tomb. The clods of the valley are sweet unto him; And all men draw etc</i>
6173	Job	21	34	1) Or 
6174	Job	21	34	<i>with vanity</i>
6175	Job	21	34	 2) Or 
6176	Job	21	34	<i>faithlessness</i>
6177	Job	22	4	1) Or 
6178	Job	22	4	<i>for fear of thee</i>
6179	Job	22	8	1) Heb 
6180	Job	22	8	<i>the man of arm</i>
6181	Job	22	8	 2) Or 
6182	Job	22	8	<i>land</i>
6183	Job	22	8	 3) Heb 
6184	Job	22	8	<i>he whose person is accepted</i>
6185	Job	22	11	1) Or 
6186	Job	22	11	<i>Or dost thou not see the darkness, And the flood of waters that covereth thee?</i>
6187	Job	22	12	1) Heb 
6188	Job	22	12	<i>head</i>
6189	Job	22	15	1) Or 
6190	Job	22	15	<i>Dost thou mark</i>
6191	Job	22	17	1) Or 
6192	Job	22	17	<i>to</i>
6193	Job	22	17	 2) Heb 
6194	Job	22	17	<i>them</i>
6195	Job	22	20	1) Or 
6196	Job	22	20	<i>that which remained to them</i>
6197	Job	22	20	 ; Or 
6198	Job	22	20	<i>their abundance</i>
6199	Job	22	21	1) Or as otherwise read 
6200	Job	22	21	<i>Thereby shall thine increase be good.</i>
6201	Job	22	22	1) Or 
6202	Job	22	22	<i>instruction</i>
6203	Job	22	23	1) Or 
6204	Job	22	23	<i>Thou shalt put away…And shalt lay up</i>
6205	Job	22	24	1) Heb 
6206	Job	22	24	<i>ore</i>
6207	Job	22	24	 2) Or 
6208	Job	22	24	<i>on the earth</i>
6209	Job	22	25	1) Heb 
6210	Job	22	25	<i>ore</i>
6211	Job	22	25	 2) Or 
6212	Job	22	25	<i>precious silver shall be thine</i>
6213	Job	22	29	1) Or 
6214	Job	22	29	<i>are made low</i>
6215	Job	22	29	 2) Heb 
6216	Job	22	29	<i>him that is lowly of eyes</i>
6217	Job	23	2	1) Or 
6218	Job	23	2	<i>bitter</i>
6219	Job	23	2	 ; Or, accounted 
6220	Job	23	2	<i>rebellion</i>
6221	Job	23	6	1) Or 
6222	Job	23	6	<i>he would only give heed</i>
6223	Job	23	9	1) Or 
6224	Job	23	9	<i>turneth himself to…him, but</i>
6225	Job	23	10	1) Or 
6226	Job	23	10	<i>For</i>
6227	Job	23	10	 2) Heb 
6228	Job	23	10	<i>the way</i>
6229	Job	23	10	 that is 
6230	Job	23	10	<i>with me</i>
6231	Job	23	12	1) Or 
6232	Job	23	12	<i>more than my own law</i>
6233	Job	23	12	 2) Or 
6234	Job	23	12	<i>portion</i>
6235	Job	23	12	 ; See Pr 30:8
6236	Job	23	13	1) Or 
6237	Job	23	13	<i>he is one</i>
6238	Job	23	17	1) Or 
6239	Job	23	17	<i>For I am not dismayed because of the darkness, Nor because thick darkness covereth my face.</i>
6240	Job	24	1	1) Or 
6241	Job	24	1	<i>Why is it, seeing times are not hidden from the Almighty, That they who know him see not his days?</i>
6242	Job	24	4	1) Or 
6243	Job	24	4	<i>meek</i>
6244	Job	24	5	1) Heb 
6245	Job	24	5	<i>prey</i>
6246	Job	24	6	1) Or 
6247	Job	24	6	<i>his</i>
6248	Job	24	9	1) Or 
6249	Job	24	9	<i>take in pledge that which is on the poor</i>
6250	Job	24	12	1) Heb 
6251	Job	24	12	<i>city of men</i>
6252	Job	24	15	1) Or 
6253	Job	24	15	<i>putteth a covering on his face</i>
6254	Job	24	16	1) Or, Which 
6255	Job	24	16	<i>they had marked for themselves</i>
6256	Job	24	17	1) Or 
6257	Job	24	17	<i>thick darkness is to all of them as the morning; for they etc</i>
6258	Job	24	18	1) Or, Ye say, 
6259	Job	24	18	<i>Swiftly etc</i>
6260	Job	24	18	 ; Heb 
6261	Job	24	18	<i>Swift is he etc</i>
6262	Job	24	19	1) Heb 
6263	Job	24	19	<i>violently take away</i>
6264	Job	24	20	1) Or 
6265	Job	24	20	<i>as a tree; even he that devoureth etc</i>
6266	Job	24	23	1) Or 
6267	Job	24	23	<i>But</i>
6268	Job	24	24	1) Or 
6269	Job	24	24	<i>And when they are etc</i>
6270	Job	24	24	 2) Or 
6271	Job	24	24	<i>gathered in</i>
6272	Job	25	4	1) Or 
6273	Job	25	4	<i>before</i>
6274	Job	26	4	1) Heb 
6275	Job	26	4	<i>breath</i>
6276	Job	26	5	1) Or 
6277	Job	26	5	<i>The shades</i>
6278	Job	26	5	 ; Heb 
6279	Job	26	5	<i>The Rephaim</i>
6280	Job	26	6	1) Heb 
6281	Job	26	6	<i>him</i>
6282	Job	26	6	 2) Or 
6283	Job	26	6	<i>Destruction</i>
6284	Job	26	7	1) Or 
6285	Job	26	7	<i>over</i>
6286	Job	26	12	1) Or 
6287	Job	26	12	<i>stilleth</i>
6288	Job	26	13	1) Heb 
6289	Job	26	13	<i>beauty</i>
6290	Job	26	13	 2) Or 
6291	Job	26	13	<i>fleeing</i>
6292	Job	26	13	 ; Or 
6293	Job	26	13	<i>gliding</i>
6294	Job	26	14	1) Or 
6295	Job	26	14	<i>how little a portion</i>
6296	Job	26	14	 2) Or 
6297	Job	26	14	<i>is heard</i>
6298	Job	26	14	 3) Or 
6299	Job	26	14	<i>mighty deeds</i>
6300	Job	27	2	1) Heb 
6301	Job	27	2	<i>made my soul bitter</i>
6302	Job	27	3	1) Or 
6303	Job	27	3	<i>All the while my breath is in me…nostrils; surely</i>
6304	Job	27	4	1) Or 
6305	Job	27	4	<i>do</i>
6306	Job	27	4	 2) Or 
6307	Job	27	4	<i>doth</i>
6308	Job	27	6	1) Or 
6309	Job	27	6	<i>doth not reproach</i>
6310	Job	27	6	 me for 
6311	Job	27	6	<i>any of my days</i>
6312	Job	27	8	1) Or 
6313	Job	27	8	<i>when God cutteth him off, When he taketh etc</i>
6314	Job	28	1	1) Or 
6315	Job	28	1	<i>For</i>
6316	Job	28	2	1) Or 
6317	Job	28	2	<i>dust</i>
6318	Job	28	4	1) Or 
6319	Job	28	4	<i>The flood breaketh out from where men sojourn;</i>
6320	Job	28	4	 Even the waters 
6321	Job	28	4	<i>forgotten of the foot: They are diminished, they are gone away from man.</i>
6322	Job	28	4	 2) Or 
6323	Job	28	4	<i>flit</i>
6324	Job	28	6	1) Or 
6325	Job	28	6	<i>And he winneth lumps of gold</i>
6326	Job	28	8	1) Heb 
6327	Job	28	8	<i>sons of pride</i>
6328	Job	28	10	1) Or 
6329	Job	28	10	<i>passages</i>
6330	Job	28	11	1) Heb 
6331	Job	28	11	<i>from weeping</i>
6332	Job	28	15	1) Or 
6333	Job	28	15	<i>treasure</i>
6334	Job	28	16	1) Or 
6335	Job	28	16	<i>beryl</i>
6336	Job	28	17	1) Or 
6337	Job	28	17	<i>vessels</i>
6338	Job	28	18	1) Or 
6339	Job	28	18	<i>red coral</i>
6340	Job	28	18	 ; Or 
6341	Job	28	18	<i>pearls</i>
6342	Job	28	22	1) Heb 
6343	Job	28	22	<i>Abaddon</i>
6344	Job	28	25	1) Or 
6345	Job	28	25	<i>When he maketh</i>
6346	Job	28	27	1) Or 
6347	Job	28	27	<i>recount</i>
6348	Job	29	3	1) Or 
6349	Job	29	3	<i>above</i>
6350	Job	29	4	1) Heb 
6351	Job	29	4	<i>my days of autumn</i>
6352	Job	29	4	 2) Or 
6353	Job	29	4	<i>counsel</i>
6354	Job	29	7	1) Or 
6355	Job	29	7	<i>broad places</i>
6356	Job	29	10	1) Heb 
6357	Job	29	10	<i>hid</i>
6358	Job	29	12	1) Or 
6359	Job	29	12	<i>and</i>
6360	Job	29	12	 him 
6361	Job	29	12	<i>that had etc</i>
6362	Job	29	14	1) Or 
6363	Job	29	14	<i>clothed itself with me</i>
6364	Job	29	14	 2) Or 
6365	Job	29	14	<i>turban</i>
6366	Job	29	16	1) Or 
6367	Job	29	16	<i>the cause which I knew not</i>
6368	Job	29	17	1) Heb 
6369	Job	29	17	<i>great teeth</i>
6370	Job	29	18	1) Or 
6371	Job	29	18	<i>beside</i>
6372	Job	29	18	 ; Heb 
6373	Job	29	18	<i>with</i>
6374	Job	29	19	1) Heb 
6375	Job	29	19	<i>opened</i>
6376	Job	29	19	 2) Or 
6377	Job	29	19	<i>by</i>
6378	Job	30	2	1) Or 
6379	Job	30	2	<i>vigor</i>
6380	Job	30	3	1) Or 
6381	Job	30	3	<i>They flee into the wilderness, into etc</i>
6382	Job	30	3	 2) Or, which 
6383	Job	30	3	<i>yesternight</i>
6384	Job	30	3	 was; Or 
6385	Job	30	3	<i>on the eve of</i>
6386	Job	30	4	1) Or 
6387	Job	30	4	<i>to warm them</i>
6388	Job	30	7	1) Or 
6389	Job	30	7	<i>wild vetches</i>
6390	Job	30	7	 2) Or 
6391	Job	30	7	<i>stretch themselves</i>
6392	Job	30	8	1) Heb. men of 
6393	Job	30	8	<i>no name</i>
6394	Job	30	8	 2) Or 
6395	Job	30	8	<i>are outcasts from the land</i>
6396	Job	30	10	1) Or 
6397	Job	30	10	<i>at the sight of me</i>
6398	Job	30	11	1) According to another reading 
6399	Job	30	11	<i>my cord</i>
6400	Job	30	11	 (or 
6401	Job	30	11	<i>bowstring</i>
6402	Job	30	11	 )
6403	Job	30	12	1) Or 
6404	Job	30	12	<i>brood</i>
6405	Job	30	13	1) Or 
6406	Job	30	13	<i>break up</i>
6407	Job	30	14	1) Or 
6408	Job	30	14	<i>As a wide breaking in</i>
6409	Job	30	14	 of waters
6410	Job	30	15	1) Or 
6411	Job	30	15	<i>Thou chasest</i>
6412	Job	30	15	 2) Or 
6413	Job	30	15	<i>my nobility</i>
6414	Job	30	16	1) Heb 
6415	Job	30	16	<i>upon</i>
6416	Job	30	17	1) Or 
6417	Job	30	17	<i>corroded</i>
6418	Job	30	17	 and drop 
6419	Job	30	17	<i>away from me</i>
6420	Job	30	17	 2) Heb 
6421	Job	30	17	<i>from off</i>
6422	Job	30	17	 3) Or 
6423	Job	30	17	<i>my sinews take etc</i>
6424	Job	30	23	1) Or 
6425	Job	30	23	<i>the house of meeting for etc</i>
6426	Job	30	28	1) Or 
6554	Job	35	14	1) Or 
6427	Job	30	28	<i>blackened, but not by the sun</i>
6428	Job	31	2	1) Or 
6429	Job	31	2	<i>For what portion</i>
6430	Job	31	2	 should I have 
6431	Job	31	2	<i>of God…And what heritage etc? Is there not calamity etc?</i>
6432	Job	31	8	1) Or 
6433	Job	31	8	<i>my offspring</i>
6434	Job	31	8	 ; Heb 
6435	Job	31	8	<i>my produce</i>
6436	Job	31	12	1) Heb 
6437	Job	31	12	<i>Abaddon</i>
6438	Job	31	12	 ; See Job 26:6
6439	Job	31	16	1) Or 
6440	Job	31	16	<i>aught that the poor desired</i>
6441	Job	31	26	1) Heb 
6442	Job	31	26	<i>the light</i>
6443	Job	31	27	1) Heb 
6444	Job	31	27	<i>my hand hath kissed my mouth</i>
6445	Job	31	30	1) Heb 
6446	Job	31	30	<i>palate</i>
6447	Job	31	32	1) Heb 
6448	Job	31	32	<i>the way</i>
6449	Job	31	33	1) Or 
6450	Job	31	33	<i>after the manner of men</i>
6451	Job	31	35	1) Heb 
6452	Job	31	35	<i>mark</i>
6453	Job	31	35	 2) Heb 
6454	Job	31	35	<i>book</i>
6455	Job	31	37	1) Or 
6456	Job	31	37	<i>present it</i>
6457	Job	31	37	 to him
6458	Job	31	39	1) Heb 
6459	Job	31	39	<i>strength</i>
6460	Job	31	40	1) Or 
6461	Job	31	40	<i>thorns</i>
6462	Job	31	40	 2) Or 
6463	Job	31	40	<i>noisome weeds</i>
6464	Job	32	4	1) Heb 
6465	Job	32	4	<i>waited for Job with words</i>
6466	Job	32	10	1) Or 
6467	Job	32	10	<i>say</i>
6468	Job	32	13	1) Or 
6469	Job	32	13	<i>Lest ye should say, We have found out wisdom; God thrusteth him down, not man: Now he etc</i>
6470	Job	32	19	1) Or 
6471	Job	32	19	<i>which are ready</i>
6472	Job	32	20	1) Or 
6473	Job	32	20	<i>find relief</i>
6474	Job	33	2	1) Heb 
6475	Job	33	2	<i>palate</i>
6476	Job	33	6	1) Or 
6477	Job	33	6	<i>I am according to thy wish in God’s stead</i>
6478	Job	33	10	1) Or 
6479	Job	33	10	<i>causes of alienation</i>
6480	Job	33	12	1) Or 
6481	Job	33	12	<i>in this thou art not just: I will answer thee; For etc</i>
6482	Job	33	14	1) Or 
6483	Job	33	14	<i>in one way, yea, in two</i>
6484	Job	33	16	1) Heb 
6485	Job	33	16	<i>uncovereth</i>
6486	Job	33	17	1) Or 
6487	Job	33	17	<i>That man may put away</i>
6488	Job	33	17	 his 
6489	Job	33	17	<i>purpose, And that he may hide</i>
6490	Job	33	18	1) Or 
6491	Job	33	18	<i>That he may keep back</i>
6492	Job	33	18	 2) Or 
6493	Job	33	18	<i>weapons</i>
6494	Job	33	19	1) Another reading is 
6495	Job	33	19	<i>While all his bones are firm</i>
6496	Job	33	23	1) Or 
6497	Job	33	23	<i>a messenger</i>
6498	Job	33	23	 2) Or 
6499	Job	33	23	<i>of the thousand</i>
6500	Job	33	23	 3) Or 
6501	Job	33	23	<i>his uprightness</i>
6502	Job	33	24	1) Or 
6503	Job	33	24	<i>And he be gracious…and say…ransom: his flesh etc</i>
6504	Job	33	27	1) Or 
6505	Job	33	27	<i>looketh upon men</i>
6506	Job	33	27	 2) Or 
6507	Job	33	27	<i>it was not requited unto me</i>
6508	Job	33	27	 ; Or 
6509	Job	33	27	<i>it was not meet for me</i>
6510	Job	33	30	1) Or 
6511	Job	33	30	<i>life</i>
6512	Job	34	6	1) Or 
6513	Job	34	6	<i>Should I lie against my right?</i>
6514	Job	34	6	  2) Heb 
6515	Job	34	6	<i>Mine arrow</i>
6516	Job	34	9	1) Or 
6517	Job	34	9	<i>consent with</i>
6518	Job	34	9	 ; See Ps 50:18
6519	Job	34	13	1) Or 
6520	Job	34	13	<i>laid</i>
6521	Job	34	13	 upon him
6522	Job	34	14	1) According to another reading 
6523	Job	34	14	<i>If he cause his heart to return unto himself</i>
6524	Job	34	14	 2) Or 
6525	Job	34	14	<i>man</i>
6526	Job	34	14	 ; Heb 
6527	Job	34	14	<i>him</i>
6528	Job	34	16	1) Or 
6529	Job	34	16	<i>Only understand</i>
6530	Job	34	18	1) The Hebrew as pointed reads 
6531	Job	34	18	<i>Is it</i>
6532	Job	34	18	 fit 
6533	Job	34	18	<i>to say to a king,</i>
6534	Job	34	18	 Thou art 
6535	Job	34	18	<i>vile?</i>
6536	Job	34	18	 Or 
6537	Job	34	18	<i>to nobles,</i>
6538	Job	34	18	 Ye are 
6539	Job	34	18	<i>wicked?</i>
6540	Job	34	20	1) Or 
6541	Job	34	20	<i>and at midnight the people etc</i>
6542	Job	34	24	1) Or 
6543	Job	34	24	<i>without inquisition</i>
6544	Job	34	25	1) Heb 
6545	Job	34	25	<i>crushed</i>
6546	Job	34	26	1) Heb 
6547	Job	34	26	<i>In the place of beholders</i>
6548	Job	34	28	1) Or 
6549	Job	34	28	<i>That they might cause…And that he might hear</i>
6550	Job	34	31	1) Or 
6551	Job	34	31	<i>though I offend not</i>
6552	Job	35	12	1) Or 
6553	Job	35	12	<i>but he answereth not</i>
6555	Job	35	14	<i>thou beholdest him not! The cause is before him; therefore wait thou for him</i>
6556	Job	35	15	1) Or, Thou sayest, 
6557	Job	35	15	<i>He doth not greatly regard arrogance. Thus doth etc</i>
6558	Job	36	2	1) Heb 
6559	Job	36	2	<i>Wait for</i>
6560	Job	36	2	 2) Heb. there are 
6561	Job	36	2	<i>yet words for God</i>
6562	Job	36	5	1) Heb 
6563	Job	36	5	<i>heart</i>
6564	Job	36	11	1) Or 
6565	Job	36	11	<i>pleasantness</i>
6566	Job	36	12	1) Or 
6567	Job	36	12	<i>weapons</i>
6568	Job	36	14	1) Heb 
6569	Job	36	14	<i>Their soul dieth</i>
6570	Job	36	14	 2) Or 
6571	Job	36	14	<i>like</i>
6572	Job	36	14	 3) Or 
6573	Job	36	14	<i>sodomites</i>
6574	Job	36	14	 ; See De 23:17
6575	Job	36	15	1) Or 
6576	Job	36	15	<i>in</i>
6577	Job	36	15	 2) Or 
6578	Job	36	15	<i>by adversity</i>
6579	Job	36	16	1) Heb 
6580	Job	36	16	<i>out of the mouth of</i>
6581	Job	36	17	1) Or 
6582	Job	36	17	<i>hast filled up</i>
6583	Job	36	18	1) Or 
6584	Job	36	18	<i>Because there is wrath, beware lest thou be led away by thy sufficiency.</i>
6585	Job	36	20	1) Heb 
6586	Job	36	20	<i>go up</i>
6587	Job	36	27	1) Heb 
6588	Job	36	27	<i>belonging to</i>
6589	Job	36	27	 2) Or 
6590	Job	36	27	<i>the vapor thereof</i>
6591	Job	36	30	1) Or 
6592	Job	36	30	<i>thereon</i>
6593	Job	36	30	 2) Or 
6594	Job	36	30	<i>covereth</i>
6595	Job	36	30	 it 
6596	Job	36	30	<i>with the depths of the sea</i>
6597	Job	36	32	1) Heb 
6598	Job	36	32	<i>light</i>
6599	Job	36	32	 2) Or 
6600	Job	36	32	<i>against the assailant</i>
6601	Job	36	33	1) Or 
6602	Job	36	33	<i>it</i>
6603	Job	36	33	 2) Or, him
6604	Job	37	2	1) Or 
6605	Job	37	2	<i>muttering</i>
6606	Job	37	3	1) Heb 
6607	Job	37	3	<i>light</i>
6608	Job	37	3	 2) Heb 
6609	Job	37	3	<i>skirts</i>
6610	Job	37	4	1) Heb 
6611	Job	37	4	<i>them</i>
6612	Job	37	9	1) Heb 
6613	Job	37	9	<i>scattering</i>
6614	Job	37	9	 winds
6615	Job	37	10	1) Or 
6616	Job	37	10	<i>congealed</i>
6617	Job	37	11	1) Heb 
6618	Job	37	11	<i>light</i>
6619	Job	37	13	1) Or 
6620	Job	37	13	<i>earth</i>
6621	Job	37	15	1) Heb 
6622	Job	37	15	<i>light</i>
6623	Job	37	17	1) Or 
6624	Job	37	17	<i>Thou whose garments are etc</i>
6625	Job	37	17	 2) Or 
6626	Job	37	17	<i>When he quieteth the earth by the south</i>
6627	Job	37	17	 wind
6628	Job	37	20	1) Or 
6629	Job	37	20	<i>If a man speak, surely he shall be swallowed up</i>
6630	Job	37	21	1) Or 
6631	Job	37	21	<i>cannot look on the light when it is bright in the skies, When the wind hath passed, and cleared them</i>
6632	Job	37	22	1) Heb 
6633	Job	37	22	<i>gold</i>
6634	Job	37	23	1) Or 
6635	Job	37	23	<i>to justice…he doeth no violence</i>
6636	Job	38	4	1) Heb 
6637	Job	38	4	<i>if thou knowest understanding</i>
6638	Job	38	5	1) Or 
6639	Job	38	5	<i>seeing</i>
6640	Job	38	6	1) Heb 
6641	Job	38	6	<i>sockets</i>
6642	Job	38	6	 2) Heb 
6643	Job	38	6	<i>made to sink</i>
6644	Job	38	8	1) Or, and 
6645	Job	38	8	<i>issued</i>
6646	Job	38	10	1) Heb 
6647	Job	38	10	<i>brake</i>
6648	Job	38	14	1) Or 
6649	Job	38	14	<i>as</i>
6650	Job	38	14	 in 
6651	Job	38	14	<i>a garment</i>
6652	Job	38	16	1) Or 
6653	Job	38	16	<i>search</i>
6654	Job	38	24	1) Or 
6655	Job	38	24	<i>Which is the way</i>
6656	Job	38	24	 to the place where 
6657	Job	38	24	<i>the light is etc</i>
6658	Job	38	27	1) Or 
6659	Job	38	27	<i>greensward</i>
6660	Job	38	29	1) Or 
6661	Job	38	29	<i>given it birth</i>
6662	Job	38	30	1) Or 
6663	Job	38	30	<i>are congealed like stone</i>
6664	Job	38	30	 2) Heb 
6665	Job	38	30	<i>cohereth</i>
6666	Job	38	31	1) Or 
6667	Job	38	31	<i>chain</i>
6668	Job	38	31	 ; Or 
6669	Job	38	31	<i>sweet influence</i>
6670	Job	38	32	1) Or 
6671	Job	38	32	<i>the signs of the Zodiac</i>
6672	Job	38	32	 2) Heb 
6673	Job	38	32	<i>sons</i>
6674	Job	38	36	1) Or 
6675	Job	38	36	<i>dark clouds</i>
6676	Job	38	36	 2) Or 
6677	Job	38	36	<i>meteor</i>
6678	Job	38	37	1) Heb 
6679	Job	38	37	<i>cause to lie down</i>
6680	Job	39	4	1) Or 
6681	Job	39	4	<i>return not unto them</i>
6682	Job	39	7	1) Or 
6683	Job	39	7	<i>taskmaster</i>
6684	Job	39	13	1) Or 
6685	Job	39	13	<i>a stork</i>
6686	Job	39	16	1) Or 
6687	Job	39	16	<i>is hardened against</i>
6688	Job	39	17	1) Heb 
6689	Job	39	17	<i>made her to forget wisdom</i>
6690	Job	39	18	1) Or 
6691	Job	39	18	<i>rouseth herself up to fight</i>
6692	Job	39	19	1) Heb 
6693	Job	39	19	<i>shaking</i>
6694	Job	39	21	1) Heb 
6695	Job	39	21	<i>They paw</i>
6696	Job	39	21	 2) Or 
6697	Job	39	21	<i>the weapons</i>
6698	Job	39	23	1) Or 
6699	Job	39	23	<i>upon</i>
6700	Job	39	24	1) Or 
6701	Job	39	24	<i>standeth he still at etc</i>
6702	Job	40	15	1) That is 
6703	Job	40	15	<i>the hippopotamus</i>
6704	Job	40	15	 2) Heb 
6705	Job	40	15	<i>with</i>
6706	Job	40	18	1) Or 
6707	Job	40	18	<i>ribs</i>
6708	Job	40	23	1) Or 
6709	Job	40	23	<i>be violent</i>
6710	Job	41	1	1) That is 
6711	Job	41	1	<i>the crocodile</i>
6712	Job	41	2	1) Heb 
6713	Job	41	2	<i>a rope of rushes</i>
6714	Job	41	2	 2) Or 
6715	Job	41	2	<i>spike</i>
6716	Job	41	13	1) Heb 
6717	Job	41	13	<i>uncover the face of his garment</i>
6718	Job	41	14	1) Or 
6719	Job	41	14	<i>His teeth are terrible round about.</i>
6720	Job	41	15	1) Or 
6721	Job	41	15	<i>courses of scales</i>
6722	Job	41	15	 ; Heb 
6723	Job	41	15	<i>channels of shields</i>
6724	Job	41	26	1) Or 
6725	Job	41	26	<i>coat of mail</i>
6726	Job	41	28	1) Heb 
6727	Job	41	28	<i>son of the bow</i>
6728	Job	42	6	1) Or 
6729	Job	42	6	<i>loathe</i>
6730	Job	42	6	 my words
6731	Job	42	11	1) Heb 
6732	Job	42	11	<i>kesitah</i>
6733	Ps	1	1	1) Or 
6734	Ps	1	1	<i>Happy</i>
6735	Ps	1	3	1) Or 
6736	Ps	1	3	<i>in whatsoever he doeth he shall prosper</i>
6737	Ps	2	1	1) Or 
6738	Ps	2	1	<i>tumultuously assemble</i>
6739	Ps	2	5	1) Or 
6740	Ps	2	5	<i>trouble</i>
6741	Ps	2	12	1) Or 
6742	Ps	2	12	<i>may</i>
6743	Ps	2	12	 2) Or 
6744	Ps	2	12	<i>Happy</i>
6745	Ps	3	2	1) Or 
6746	Ps	3	2	<i>to</i>
6747	Ps	3	2	 2) Or 
6748	Ps	3	2	<i>salvation</i>
6749	Ps	3	8	1) Or 
6750	Ps	3	8	<i>Victory</i>
6751	Ps	4	1	1) Or 
6752	Ps	4	1	<i>Be gracious unto me</i>
6753	Ps	4	3	1) Or 
6754	Ps	4	3	<i>one that he favoreth</i>
6755	Ps	4	4	1) Or 
6756	Ps	4	4	<i>be ye angry</i>
6757	Ps	4	8	1) Or 
6758	Ps	4	8	<i>in solitude</i>
6759	Ps	5	1	1) Or 
6760	Ps	5	1	<i>wind instruments</i>
6761	Ps	5	4	1) Or 
6762	Ps	5	4	<i>The evil man</i>
6763	Ps	5	5	1) Or 
6764	Ps	5	5	<i>Fools</i>
6765	Ps	5	8	1) Or 
6766	Ps	5	8	<i>them that lie in wait for me</i>
6767	Ps	5	8	 2) Or 
6768	Ps	5	8	<i>level</i>
6769	Ps	5	9	1) Or 
6770	Ps	5	9	<i>stedfastness</i>
6771	Ps	5	9	 2) Or 
6772	Ps	5	9	<i>a yawning gulf</i>
6773	Ps	5	9	 3) Heb 
6774	Ps	5	9	<i>make smooth their tongue</i>
6775	Ps	5	10	1) Or 
6776	Ps	5	10	<i>from their counsels</i>
6777	Ps	5	11	1) Or 
6778	Ps	5	11	<i>So shall all those…rejoice, They shall ever shout…and thou shalt defend them: They also…shall be joyful in thee.</i>
6779	Ps	6	1	1) Or 
6780	Ps	6	1	<i>the eighth</i>
6781	Ps	7	7	1) Or 
6782	Ps	7	7	<i>So shall</i>
6783	Ps	7	8	1) Or 
6784	Ps	7	8	<i>be it unto me</i>
6785	Ps	7	9	1) Heb 
6786	Ps	7	9	<i>reins</i>
6787	Ps	7	12	1) Or 
6788	Ps	7	12	<i>Surely he will again whet</i>
6789	Ps	8	1	1) Or 
6790	Ps	8	1	<i>above</i>
6791	Ps	8	5	1) Or 
6792	Ps	8	5	<i>the angels</i>
6793	Ps	8	5	 ; Heb 
6794	Ps	8	5	<i>Elohim</i>
6795	Ps	9	2	1) Or 
6796	Ps	9	2	<i>Most High; Because mine etc</i>
6797	Ps	9	5	1) Or 
6798	Ps	9	5	<i>heathen</i>
6799	Ps	9	6	1) Or 
6800	Ps	9	6	<i>O thou enemy, desolations are come to a perpetual end</i>
6801	Ps	9	6	 2) Or 
6802	Ps	9	6	<i>And</i>
6803	Ps	9	6	 their 
6804	Ps	9	6	<i>cities thou hast overthrown</i>
6805	Ps	9	6	 3) Heb 
6806	Ps	9	6	<i>plucked up</i>
6807	Ps	9	8	1) Or 
6808	Ps	9	8	<i>people</i>
6809	Ps	9	11	1) Or 
6810	Ps	9	11	<i>peoples</i>
6811	Ps	9	12	1) Or 
6812	Ps	9	12	<i>For when he maketh…he remembereth</i>
6813	Ps	9	12	 2) Or 
6814	Ps	9	12	<i>meek</i>
6815	Ps	9	14	1) Or 
6816	Ps	9	14	<i>saving help</i>
6817	Ps	9	16	1) Or 
6818	Ps	9	16	<i>He snareth the wicked</i>
6819	Ps	9	18	1) Or 
6820	Ps	9	18	<i>meek</i>
6821	Ps	10	2	1) Or 
6822	Ps	10	2	<i>he doth hotly pursue the poor </i>
6823	Ps	10	2	 2) Heb 
6824	Ps	10	2	<i>is set on fire</i>
6825	Ps	10	2	 3) Or 
6826	Ps	10	2	<i>They are taken</i>
6827	Ps	10	3	1) Or 
6828	Ps	10	3	<i>blesseth the covetous,</i>
6829	Ps	10	3	 but 
6830	Ps	10	3	<i>contemneth etc</i>
6831	Ps	10	3	 2) Or 
6832	Ps	10	3	<i>revileth</i>
6833	Ps	10	5	1) Or 
6834	Ps	10	5	<i>grievous</i>
6835	Ps	10	7	1) Or 
6836	Ps	10	7	<i>fraud</i>
6837	Ps	10	8	1) Or 
6838	Ps	10	8	<i>hapless</i>
6839	Ps	10	10	1) Another reading is 
6840	Ps	10	10	<i>And being crushed</i>
6841	Ps	10	10	 2) Or 
6842	Ps	10	10	<i>hapless</i>
6843	Ps	10	12	1) Or 
6844	Ps	10	12	<i>meek</i>
6845	Ps	10	14	1) Or 
6846	Ps	10	14	<i>travail and grief</i>
6847	Ps	10	14	 2) Or 
6848	Ps	10	14	<i>to take it into thy hand</i>
6849	Ps	10	14	 3) Or 
6850	Ps	10	14	<i>hapless</i>
6851	Ps	10	16	1) Or 
6852	Ps	10	16	<i>heathen</i>
6853	Ps	10	17	1) Or 
6854	Ps	10	17	<i>establish</i>
6855	Ps	11	1	1) Or 
6856	Ps	11	1	<i>ye birds</i>
6857	Ps	11	3	1) Or 
6858	Ps	11	3	<i>For the foundations are destroyed; What hath the righteous wrought?</i>
6859	Ps	11	7	1) Or 
6860	Ps	11	7	<i>righteous deeds</i>
6861	Ps	11	7	 2) Or 
6862	Ps	11	7	<i>His countenance doth behold the upright.</i>
6863	Ps	12	1	1) Or 
6864	Ps	12	1	<i>the eighth</i>
6865	Ps	12	1	 2) Or 
6866	Ps	12	1	<i>faithfulness faileth</i>
6867	Ps	12	4	1) Heb 
6868	Ps	12	4	<i>with us</i>
6869	Ps	14	2	1) Or 
6870	Ps	14	2	<i>deal wisely</i>
6871	Ps	14	6	1) Or 
6872	Ps	14	6	<i>But</i>
6873	Ps	14	7	1) Or 
6874	Ps	14	7	<i>returneth to</i>
6875	Ps	15	1	1) Heb 
6876	Ps	15	1	<i>tent</i>
6877	Ps	15	3	1) Or 
6878	Ps	15	3	<i>He slandereth</i>
6879	Ps	15	4	1) Or 
6880	Ps	15	4	<i>his…he</i>
6881	Ps	15	4	 2) Or 
6882	Ps	15	4	<i>He sweareth</i>
6883	Ps	15	5	1) Or 
6884	Ps	15	5	<i>He putteth</i>
6885	Ps	16	2	1) Or 
6886	Ps	16	2	<i>the Lord</i>
6887	Ps	16	3	1) Or 
6888	Ps	16	3	<i>Unto</i>
6889	Ps	16	3	 2) Or 
6890	Ps	16	3	<i>And the excellent…delight; Their etc</i>
6891	Ps	16	7	1) Heb 
6892	Ps	16	7	<i>reins</i>
6893	Ps	16	9	1) Or 
6894	Ps	16	9	<i>confidently</i>
6895	Ps	16	10	1) Or 
6896	Ps	16	10	<i>godly</i>
6897	Ps	16	10	 ; Or 
6898	Ps	16	10	<i>beloved</i>
6899	Ps	16	10	 ; Another reading is 
6900	Ps	16	10	<i>holy ones</i>
6901	Ps	16	10	 2) Or 
6902	Ps	16	10	<i>the pit</i>
6903	Ps	17	2	1) Or 
6904	Ps	17	2	<i>Thine eyes behold with equity</i>
6905	Ps	17	3	1) Or 
6906	Ps	17	3	<i>findest no evil purpose in me; My mouth etc</i>
6907	Ps	17	7	1) Or 
6908	Ps	17	7	<i>them that take refuge…rise up against thy right hand</i>
6909	Ps	17	10	1) Or 
6910	Ps	17	10	<i>They have shut up their heart</i>
6911	Ps	17	13	1) Or 
6912	Ps	17	13	<i>Forestall</i>
6913	Ps	17	13	 2) Or 
6914	Ps	17	13	<i>the wicked, who is thy sword</i>
6915	Ps	17	14	1) Or 
6916	Ps	17	14	<i>men who are thy hand</i>
6917	Ps	17	14	 2) Or 
6918	Ps	17	14	<i>whose portion in life is of the world</i>
6919	Ps	17	15	1) Or 
6920	Ps	17	15	<i>let me</i>
6921	Ps	18	1	1) See 2 Sa 22:1-51
6922	Ps	18	4	1) Heb 
6923	Ps	18	4	<i>Belial</i>
6924	Ps	18	8	1) Or 
6925	Ps	18	8	<i>in his wrath</i>
6926	Ps	18	14	1) Or 
6927	Ps	18	14	<i>And he shot out lightnings</i>
6928	Ps	18	16	1) Or 
6929	Ps	18	16	<i>great</i>
6930	Ps	18	29	1) Or 
6931	Ps	18	29	<i>through</i>
6932	Ps	18	35	1) Or 
6933	Ps	18	35	<i>condescension</i>
6934	Ps	18	36	1) Heb 
6935	Ps	18	36	<i>ankles</i>
6936	Ps	18	39	1) Heb 
6937	Ps	18	39	<i>caused to bow</i>
6938	Ps	18	42	1) Heb 
6939	Ps	18	42	<i>empty</i>
6940	Ps	18	43	1) Or 
6941	Ps	18	43	<i>wilt make</i>
6942	Ps	18	44	1) Or 
6943	Ps	18	44	<i>yield feigned obedience</i>
6944	Ps	18	44	 ; Heb 
6945	Ps	18	44	<i>lie</i>
6946	Ps	18	50	1) Heb 
6947	Ps	18	50	<i>salvations</i>
6948	Ps	19	4	1) Heb 
6949	Ps	19	4	<i>tent</i>
6950	Ps	19	13	1) Or 
6951	Ps	19	13	<i>from the proud</i>
6952	Ps	20	2	1) Or 
6953	Ps	20	2	<i>support</i>
6954	Ps	20	3	1) Or 
6955	Ps	20	3	<i>meal-offerings</i>
6956	Ps	20	3	 2) Heb 
6957	Ps	20	3	<i>accept as fat</i>
6958	Ps	20	5	1) Or 
6959	Ps	20	5	<i>victory</i>
6960	Ps	21	3	1) Or 
6961	Ps	21	3	<i>good things</i>
6962	Ps	21	6	1) Heb 
6963	Ps	21	6	<i>settest him to be blessings</i>
6964	Ps	21	6	 ; See Ge 12:2
6965	Ps	21	9	1) Or 
6966	Ps	21	9	<i>presence</i>
6967	Ps	21	9	 ; Heb 
6968	Ps	21	9	<i>countenance</i>
6969	Ps	22	1	1) That is 
6970	Ps	22	1	<i>The hind of the morning</i>
6971	Ps	22	1	 2) Or 
6972	Ps	22	1	<i>Far from my help</i>
6973	Ps	22	1	 are 
6974	Ps	22	1	<i>the words of my groaning</i>
6975	Ps	22	1	 ; Heb 
6976	Ps	22	1	<i>roaring</i>
6977	Ps	22	2	1) Or 
6978	Ps	22	2	<i>but find no rest</i>
6979	Ps	22	3	1) Or 
6980	Ps	22	3	<i>art enthroned upon</i>
6981	Ps	22	8	1) Or 
6982	Ps	22	8	<i>He trusted on Jehovah, that he would deliver him</i>
6983	Ps	22	16	1) So the Sept, Vulg, and Syr; The Hebrew text as pointed reads 
6984	Ps	22	16	<i>Like a lion, my etc</i>
6985	Ps	22	20	1) Or 
6986	Ps	22	20	<i>dear</i>
6987	Ps	22	20	 life; Heb 
6988	Ps	22	20	<i>only one</i>
6989	Ps	22	30	1) Or 
6990	Ps	22	30	<i>counted unto the Lord for</i>
6991	Ps	22	30	 his 
6992	Ps	22	30	<i>generations</i>
6993	Ps	23	2	1) Heb 
6994	Ps	23	2	<i>waters of rest</i>
6995	Ps	23	4	1) Or 
6996	Ps	23	4	<i>deep darkness</i>
6997	Ps	23	4	 (and so elsewhere)
6998	Ps	23	6	1) Or 
6999	Ps	23	6	<i>Only</i>
7000	Ps	23	6	 2) Heb 
7001	Ps	23	6	<i>for length of days</i>
7002	Ps	24	7	1) Or 
7003	Ps	24	7	<i>ancient</i>
7004	Ps	24	9	1) Or 
7005	Ps	24	9	<i>ancient</i>
7006	Ps	25	14	1) Or 
7007	Ps	25	14	<i>counsel</i>
7008	Ps	25	14	 ; Or 
7009	Ps	25	14	<i>secret</i>
7010	Ps	25	14	 2) Or 
7011	Ps	25	14	<i>And his covenant, to make them know it</i>
7012	Ps	25	17	1) Or as otherwise read 
7013	Ps	25	17	<i>relieve thou, And bring me etc</i>
7014	Ps	26	1	1) Or 
7015	Ps	26	1	<i>I shall not slide</i>
7016	Ps	26	2	1) Heb 
7017	Ps	26	2	<i>reins</i>
7018	Ps	26	7	1) Or 
7019	Ps	26	7	<i>publish with the voice of thanksgiving</i>
7020	Ps	26	8	1) Heb 
7021	Ps	26	8	<i>of the tabernacle of thy glory</i>
7022	Ps	26	9	1) Or 
7023	Ps	26	9	<i>Take not away</i>
7024	Ps	27	1	1) Or 
7025	Ps	27	1	<i>stronghold</i>
7026	Ps	27	3	1) Or 
7027	Ps	27	3	<i>In this</i>
7028	Ps	27	4	1) Or 
7029	Ps	27	4	<i>the pleasantness</i>
7030	Ps	27	4	 2) Or 
7031	Ps	27	4	<i>consider his temple</i>
7032	Ps	27	5	1) Heb 
7033	Ps	27	5	<i>tent</i>
7034	Ps	27	6	1) Heb 
7035	Ps	27	6	<i>tent</i>
7036	Ps	27	6	 2) Or 
7037	Ps	27	6	<i>shouting</i>
7038	Ps	27	6	 ; Or 
7039	Ps	27	6	<i>trumpet-sound</i>
7040	Ps	27	10	1) Or 
7041	Ps	27	10	<i>For my father and my mother have forsaken me, But Jehovah etc</i>
7042	Ps	27	11	1) Or 
7043	Ps	27	11	<i>them that lie in wait for me</i>
7044	Ps	28	2	1) Or 
7045	Ps	28	2	<i>toward the innermost place of thy sanctuary</i>
7046	Ps	29	1	1) Or 
7047	Ps	29	1	<i>sons of God</i>
7048	Ps	29	1	 2) Or 
7049	Ps	29	1	<i>gods</i>
7050	Ps	29	1	 ; See Ex 15:11
7051	Ps	29	2	1) Or 
7052	Ps	29	2	<i>in the beauty of holiness</i>
7053	Ps	29	3	1) Or 
7054	Ps	29	3	<i>great</i>
7055	Ps	29	7	1) Or 
7056	Ps	29	7	<i>heweth out flames of fire</i>
7057	Ps	30	1	1) Or 
7058	Ps	30	1	<i>drawn</i>
7059	Ps	30	3	1) Another reading is 
7060	Ps	30	3	<i>from among them that go down to the pit</i>
7061	Ps	30	5	1) Or 
7062	Ps	30	5	<i>In his favor is life</i>
7063	Ps	30	5	 2) Heb 
7064	Ps	30	5	<i>may come in to lodge at even</i>
7065	Ps	31	2	1) Heb 
7066	Ps	31	2	<i>fortresses</i>
7067	Ps	31	7	1) Or 
7068	Ps	31	7	<i>the adversities of my soul</i>
7069	Ps	31	22	1) Or 
7070	Ps	31	22	<i>alarm</i>
7071	Ps	31	23	1) Or 
7072	Ps	31	23	<i>faithfulness</i>
7073	Ps	31	24	1) Or 
7074	Ps	31	24	<i>wait for</i>
7075	Ps	32	3	1) Heb 
7076	Ps	32	3	<i>roaring</i>
7077	Ps	32	4	1) Or 
7078	Ps	32	4	<i>into the</i>
7079	Ps	32	6	1) Or 
7210	Ps	39	13	1) Or 
7080	Ps	32	6	<i>in the time of finding out</i>
7081	Ps	32	6	 sin
7082	Ps	32	9	1) Or 
7083	Ps	32	9	<i>That they come not near</i>
7084	Ps	33	16	1) Or 
7085	Ps	33	16	<i>a great power</i>
7086	Ps	33	18	1) Or 
7087	Ps	33	18	<i>wait for</i>
7088	Ps	33	22	1) Or 
7089	Ps	33	22	<i>wait for</i>
7090	Ps	34	1	1) See 1 Sa 21:10-15. 2) Or 
7091	Ps	34	1	<i>feigned madness</i>
7092	Ps	34	21	1) Or 
7093	Ps	34	21	<i>held guilty</i>
7094	Ps	35	3	1) Or 
7095	Ps	35	3	<i>and the battle axe against etc</i>
7096	Ps	35	6	1) Heb 
7097	Ps	35	6	<i>darkness and slippery places</i>
7098	Ps	35	7	1) Or 
7099	Ps	35	7	<i>the pit of their net</i>
7100	Ps	35	8	1) Or 
7101	Ps	35	8	<i>Into that very destruction let him fall</i>
7102	Ps	35	11	1) Or 
7103	Ps	35	11	<i>Malicious</i>
7104	Ps	35	11	 ; See Ex 23:1
7105	Ps	35	13	1) Or 
7106	Ps	35	13	<i>shall return</i>
7107	Ps	35	15	1) Heb 
7108	Ps	35	15	<i>my limping</i>
7109	Ps	35	15	 2) Or 
7110	Ps	35	15	<i>smiters</i>
7111	Ps	35	15	 3) Or, those whom 
7112	Ps	35	15	<i>I knew not</i>
7113	Ps	35	16	1) Or 
7114	Ps	35	16	<i>Among</i>
7115	Ps	35	17	1) Or 
7116	Ps	35	17	<i>dear</i>
7117	Ps	35	17	 live; Heb 
7118	Ps	35	17	<i>only one</i>
7119	Ps	35	18	1) Or 
7120	Ps	35	18	<i>a mighty people</i>
7121	Ps	35	19	1) Heb 
7122	Ps	35	19	<i>falsely</i>
7123	Ps	35	25	1) Heb 
7124	Ps	35	25	<i>Aha, our desire</i>
7125	Ps	35	27	1) Heb 
7126	Ps	35	27	<i>have pleasure in my righteousness</i>
7127	Ps	36	1	1) Or 
7128	Ps	36	1	<i>Transgression saith to the wicked</i>
7129	Ps	36	1	 2) Or 
7130	Ps	36	1	<i>uttereth its oracle</i>
7131	Ps	36	2	1) Or 
7132	Ps	36	2	<i>it</i>
7133	Ps	36	2	 (or 
7134	Ps	36	2	<i>he</i>
7135	Ps	36	2	 ) 
7136	Ps	36	2	<i>flattereth him in his eyes</i>
7137	Ps	36	2	 2) Or 
7138	Ps	36	2	<i>Until his iniquity be found and be hated</i>
7139	Ps	36	2	 ; Heb 
7140	Ps	36	2	<i>Concerning the finding out of his iniquity and hating it</i>
7141	Ps	36	8	1) Heb 
7142	Ps	36	8	<i>watered</i>
7143	Ps	37	3	1) Or 
7144	Ps	37	3	<i>So shalt thou dwell in the land and feed securely</i>
7145	Ps	37	3	 2) Or, verily 
7146	Ps	37	3	<i>thou shalt be fed</i>
7147	Ps	37	4	1) Or 
7148	Ps	37	4	<i>So shalt thou have thy delight in etc</i>
7149	Ps	37	4	 2) Heb 
7150	Ps	37	4	<i>petitions</i>
7151	Ps	37	5	1) Heb 
7152	Ps	37	5	<i>Roll thy way upon Jehovah</i>
7153	Ps	37	7	1) Or 
7154	Ps	37	7	<i>Be still before</i>
7155	Ps	37	7	 (Heb 
7156	Ps	37	7	<i>silent to</i>
7157	Ps	37	7	 ) 
7158	Ps	37	7	<i>Jehovah</i>
7159	Ps	37	9	1) Or 
7160	Ps	37	9	<i>the earth</i>
7161	Ps	37	9	 (and so in verses 11, 22, 29, 34)
7162	Ps	37	10	1) Or 
7163	Ps	37	10	<i>it</i>
7164	Ps	37	20	1) Or 
7165	Ps	37	20	<i>the excellency of the pastures</i>
7166	Ps	37	20	 2) Or 
7167	Ps	37	20	<i>like smoke</i>
7168	Ps	37	24	1) Or 
7169	Ps	37	24	<i>upholdeth his hand</i>
7170	Ps	37	36	1) Or 
7171	Ps	37	36	<i>Yet he passed away</i>
7172	Ps	38	1	1) Or 
7173	Ps	38	1	<i>to make memorial</i>
7174	Ps	38	2	1) Heb 
7175	Ps	38	2	<i>lighted on me</i>
7176	Ps	38	3	1) Or 
7177	Ps	38	3	<i>rest</i>
7178	Ps	38	6	1) Heb 
7179	Ps	38	6	<i>bent</i>
7180	Ps	38	8	1) Heb 
7181	Ps	38	8	<i>roared</i>
7182	Ps	38	14	1) Or 
7183	Ps	38	14	<i>arguments</i>
7184	Ps	38	19	1) Heb 
7185	Ps	38	19	<i>falsely</i>
7186	Ps	39	1	1) Ps 62:1 title; Ps 77:1 title; 1 Ch 16:41; 52:1. 2) Heb 
7187	Ps	39	1	<i>a bridle</i>
7188	Ps	39	1	 (or 
7189	Ps	39	1	<i>muzzle</i>
7190	Ps	39	1	 ) 
7191	Ps	39	1	<i>for my mouth</i>
7192	Ps	39	2	1) Or 
7193	Ps	39	2	<i>and had no comfort</i>
7194	Ps	39	2	 ; Heb 
7195	Ps	39	2	<i>away from good</i>
7196	Ps	39	5	1) Heb 
7197	Ps	39	5	<i>standing firm</i>
7198	Ps	39	5	 2) Heb 
7199	Ps	39	5	<i>a breath</i>
7200	Ps	39	6	1) Or 
7201	Ps	39	6	<i>as a shadow</i>
7202	Ps	39	6	 2) Or 
7203	Ps	39	6	<i>for vanity</i>
7204	Ps	39	10	1) Heb 
7205	Ps	39	10	<i>conflict</i>
7206	Ps	39	11	1) Or 
7207	Ps	39	11	<i>consumest like a moth his delights</i>
7208	Ps	39	11	 2) Heb 
7209	Ps	39	11	<i>a breath</i>
7211	Ps	39	13	<i>look away from me</i>
7212	Ps	39	13	 2) Heb 
7213	Ps	39	13	<i>brighten up</i>
7214	Ps	40	2	1) Heb 
7215	Ps	40	2	<i>a pit of tumult</i>
7216	Ps	40	2	 (or 
7217	Ps	40	2	<i>destruction</i>
7218	Ps	40	2	 )
7219	Ps	40	4	1) Or 
7220	Ps	40	4	<i>fall away treacherously</i>
7221	Ps	40	5	1) Or 
7222	Ps	40	5	<i>There is none to be compared unto thee</i>
7223	Ps	40	6	1) Or 
7224	Ps	40	6	<i>meal-offering</i>
7225	Ps	40	6	 2) Heb 
7226	Ps	40	6	<i>Ears hast thou digged</i>
7227	Ps	40	6	 (or 
7228	Ps	40	6	<i>pierced</i>
7229	Ps	40	6	 ) 
7230	Ps	40	6	<i>for me</i>
7231	Ps	40	7	1) Or 
7232	Ps	40	7	<i>prescribed to</i>
7233	Ps	40	12	1) Heb 
7234	Ps	40	12	<i>forsaken</i>
7235	Ps	40	15	1) Or 
7236	Ps	40	15	<i>astonished</i>
7237	Ps	40	15	 2) Or 
7238	Ps	40	15	<i>for a reward of</i>
7239	Ps	41	1	1) Or 
7240	Ps	41	1	<i>the weak</i>
7241	Ps	41	2	1) Or 
7242	Ps	41	2	<i>in the land</i>
7243	Ps	41	3	1) Heb 
7244	Ps	41	3	<i>turnest</i>
7245	Ps	41	3	 , or 
7246	Ps	41	3	<i>changest</i>
7247	Ps	41	8	1) Or 
7248	Ps	41	8	<i>Some wicked thing</i>
7249	Ps	41	8	 2) Or 
7250	Ps	41	8	<i>is poured out upon him</i>
7251	Ps	42	3	1) Heb 
7252	Ps	42	3	<i>all the day</i>
7253	Ps	42	4	1) Heb 
7254	Ps	42	4	<i>upon</i>
7255	Ps	42	4	 2) Or 
7256	Ps	42	4	<i>went in procession with them</i>
7257	Ps	42	5	1) Heb 
7258	Ps	42	5	<i>bowed down</i>
7259	Ps	42	6	1) Or 
7260	Ps	42	6	<i>the little mountain</i>
7261	Ps	42	9	1) Or 
7262	Ps	42	9	<i>while the enemy oppresseth</i>
7263	Ps	42	10	1) Or 
7264	Ps	42	10	<i>crushing</i>
7265	Ps	43	2	1) Or 
7266	Ps	43	2	<i>while the enemy oppresseth</i>
7267	Ps	43	4	1) Heb 
7268	Ps	43	4	<i>the gladness of my joy</i>
7269	Ps	44	4	1) Or 
7270	Ps	44	4	<i>victories</i>
7271	Ps	44	19	1) Or 
7272	Ps	44	19	<i>Though</i>
7273	Ps	45	1	1) That is 
7274	Ps	45	1	<i>Lilies</i>
7275	Ps	45	1	 2) Or 
7276	Ps	45	1	<i>I speak: my work is for a king</i>
7277	Ps	45	2	1) Or 
7278	Ps	45	2	<i>upon</i>
7279	Ps	45	4	1) Or 
7280	Ps	45	4	<i>In behalf of</i>
7281	Ps	45	4	 2) Or 
7282	Ps	45	4	<i>let thy right hand teach</i>
7283	Ps	45	6	1) Or 
7284	Ps	45	6	<i>Thy throne is</i>
7285	Ps	45	6	 the throne of 
7286	Ps	45	6	<i>God etc</i>
7287	Ps	45	13	1) Or 
7288	Ps	45	13	<i>in the inner part</i>
7289	Ps	45	13	 of the palace
7290	Ps	45	14	1) Or 
7291	Ps	45	14	<i>upon</i>
7292	Ps	46	3	1) Or 
7293	Ps	46	3	<i>pride</i>
7294	Ps	46	5	1) Heb 
7295	Ps	46	5	<i>at the dawn of morning</i>
7296	Ps	46	7	1) Or 
7297	Ps	46	7	<i>high tower</i>
7298	Ps	46	8	1) Or 
7299	Ps	46	8	<i>Who hath made desolation etc</i>
7300	Ps	46	10	1) Or 
7301	Ps	46	10	<i>Let be</i>
7302	Ps	46	11	1) Or 
7303	Ps	46	11	<i>high tower</i>
7304	Ps	47	2	1) Or 
7305	Ps	47	2	<i>Jehovah is most high</i>
7306	Ps	47	2	 and 
7307	Ps	47	2	<i>terrible</i>
7308	Ps	47	4	1) Or 
7309	Ps	47	4	<i>loveth</i>
7310	Ps	47	7	1) Or 
7311	Ps	47	7	<i>in a skilful psalm</i>
7312	Ps	47	7	 ; Heb 
7313	Ps	47	7	<i>Maschil</i>
7314	Ps	47	9	1) Or, Unto 
7315	Ps	47	9	<i>the people</i>
7316	Ps	48	3	1) Or 
7317	Ps	48	3	<i>high tower</i>
7318	Ps	48	4	1) Or 
7319	Ps	48	4	<i>passed away</i>
7320	Ps	48	5	1) Or 
7321	Ps	48	5	<i>were stricken with terror</i>
7322	Ps	48	7	1) Or, As 
7323	Ps	48	7	<i>with the east wind that breaketh</i>
7324	Ps	48	13	1) Or 
7325	Ps	48	13	<i>Traverse</i>
7326	Ps	49	5	1) Or 
7327	Ps	49	5	<i>the iniquity of them that would supplant me compasseth me about, Even of them that trust…riches?</i>
7328	Ps	49	9	1) Or 
7329	Ps	49	9	<i>the pit</i>
7330	Ps	49	10	1) Or 
7331	Ps	49	10	<i>he seeth that wise men etc</i>
7332	Ps	49	13	1) Or 
7333	Ps	49	13	<i>is the way of them that are foolish</i>
7334	Ps	49	13	 2) Or 
7335	Ps	49	13	<i>their confidence: and after etc</i>
7336	Ps	49	14	1) Or 
7337	Ps	49	14	<i>form</i>
7338	Ps	49	15	1) Heb 
7339	Ps	49	15	<i>hand</i>
7340	Ps	49	16	1) Or 
7341	Ps	49	16	<i>wealth</i>
7342	Ps	49	19	1) Heb 
7343	Ps	49	19	<i>Thou shalt go</i>
7344	Ps	49	19	 , or 
7345	Ps	49	19	<i>It shall go</i>
7346	Ps	49	19	 2) Or 
7347	Ps	49	19	<i>Who never more see</i>
7348	Ps	50	6	1) Or 
7349	Ps	50	6	<i>declare</i>
7350	Ps	50	7	1) Or 
7351	Ps	50	7	<i>against</i>
7352	Ps	50	8	1) Or 
7353	Ps	50	8	<i>Nor for thy burnt-offerings, which are etc</i>
7354	Ps	50	10	1) Or 
7355	Ps	50	10	<i>upon the mountains where thousands are</i>
7356	Ps	50	11	1) Or 
7357	Ps	50	11	<i>in my mind</i>
7358	Ps	50	11	 ; Heb 
7359	Ps	50	11	<i>with me</i>
7360	Ps	50	17	1) Or 
7361	Ps	50	17	<i>correction</i>
7362	Ps	50	18	1) Heb 
7363	Ps	50	18	<i>thy portion was with adulterers</i>
7364	Ps	50	20	1) Or 
7365	Ps	50	20	<i>givest a thrust against</i>
7366	Ps	50	23	1) Or 
7367	Ps	50	23	<i>prepareth a way that I may show him</i>
7368	Ps	51	10	1) Or 
7369	Ps	51	10	<i>for me</i>
7370	Ps	51	10	 2) Or 
7371	Ps	51	10	<i>stedfast</i>
7372	Ps	51	13	1) Or 
7373	Ps	51	13	<i>return</i>
7374	Ps	51	16	1) Or 
7375	Ps	51	16	<i>that I should give it</i>
7376	Ps	52	4	1) Or, And 
7377	Ps	52	4	<i>the deceitful tongue</i>
7378	Ps	52	5	1) Or 
7379	Ps	52	5	<i>break thee down</i>
7380	Ps	52	7	1) Or 
7381	Ps	52	7	<i>stronghold</i>
7382	Ps	53	2	1) Or 
7383	Ps	53	2	<i>deal wisely</i>
7384	Ps	53	6	1) Or 
7385	Ps	53	6	<i>returneth to</i>
7386	Ps	54	4	1) Or 
7387	Ps	54	4	<i>with</i>
7388	Ps	54	5	1) Another reading is 
7389	Ps	54	5	<i>The evil shall return</i>
7390	Ps	54	5	 2) Or 
7391	Ps	54	5	<i>them that lie in wait for me</i>
7392	Ps	55	8	1) Or 
7393	Ps	55	8	<i>hasten my escape</i>
7394	Ps	55	9	1) Heb 
7395	Ps	55	9	<i>Swallow up</i>
7396	Ps	55	11	1) Or 
7397	Ps	55	11	<i>Fraud</i>
7398	Ps	55	15	1) Or as otherwise read 
7399	Ps	55	15	<i>Desolations be upon them!</i>
7400	Ps	55	15	 2) Or 
7401	Ps	55	15	<i>their inward part</i>
7402	Ps	55	18	1) Or 
7403	Ps	55	18	<i>so that none came nigh me</i>
7404	Ps	55	19	1) Or 
7405	Ps	55	19	<i>afflict</i>
7406	Ps	55	22	1) Or 
7407	Ps	55	22	<i>what he hath given thee</i>
7408	Ps	56	1	1) That is 
7409	Ps	56	1	<i>The silent dove of them that are afar off</i>
7410	Ps	56	1	 ; Or as otherwise read 
7411	Ps	56	1	<i>The dove of the distant terebinths</i>
7412	Ps	56	2	1) Or 
7413	Ps	56	2	<i>They that lie in wait for me</i>
7414	Ps	56	6	1) Or 
7415	Ps	56	6	<i>Inasmuch as</i>
7416	Ps	56	7	1) Or 
7417	Ps	56	7	<i>They think to escape</i>
7418	Ps	56	8	1) Or 
7419	Ps	56	8	<i>record</i>
7420	Ps	56	9	1) Or 
7421	Ps	56	9	<i>for</i>
7422	Ps	56	13	1) Or 
7423	Ps	56	13	<i>life</i>
7424	Ps	57	1	1) Or 
7425	Ps	57	1	<i>wickednesses</i>
7426	Ps	57	4	1) Or 
7427	Ps	57	4	<i>must lie</i>
7428	Ps	57	8	1) Or 
7429	Ps	57	8	<i>will awake the dawn</i>
7430	Ps	58	1	1) Or 
7431	Ps	58	1	<i>Is the righteousness ye should speak dumb?</i>
7432	Ps	58	1	 2) Or as otherwise read 
7433	Ps	58	1	<i>O ye gods</i>
7434	Ps	58	1	 ; Or 
7435	Ps	58	1	<i>O ye mighty ones</i>
7436	Ps	58	1	 3) Or 
7437	Ps	58	1	<i>judge uprightly the sons of men</i>
7438	Ps	58	5	1) Or 
7439	Ps	58	5	<i>enchanters</i>
7440	Ps	58	8	1) Or, like them 
7441	Ps	58	8	<i>that have not seen the sun</i>
7442	Ps	58	9	1) Or 
7443	Ps	58	9	<i>Wrath shall take them away while living as with a whirlwind</i>
7444	Ps	58	11	1) Heb 
7445	Ps	58	11	<i>fruit</i>
7446	Ps	59	4	1) Heb 
7447	Ps	59	4	<i>meet</i>
7448	Ps	59	9	1) According to Sept and Vulg 
7449	Ps	59	9	<i>My strength</i>
7450	Ps	59	10	1) Or 
7451	Ps	59	10	<i>them that lie in wait for me</i>
7452	Ps	59	11	1) Or 
7453	Ps	59	11	<i>Make them wander to and fro</i>
7454	Ps	60	1	1) That is 
7455	Ps	60	1	<i>The lily of testimony</i>
7456	Ps	60	5	1) Another reading is 
7457	Ps	60	5	<i>me</i>
7458	Ps	60	7	1) Or 
7459	Ps	60	7	<i>lawgiver</i>
7460	Ps	60	8	1) Or 
7461	Ps	60	8	<i>Unto</i>
7462	Ps	60	9	1) Or 
7463	Ps	60	9	<i>Who will lead me etc</i>
7464	Ps	60	10	1) Or 
7465	Ps	60	10	<i>Wilt not thou, O God, who hast cast us off, And goest…hosts?</i>
7466	Ps	60	11	1) Heb 
7467	Ps	60	11	<i>salvation</i>
7468	Ps	61	2	1) Or 
7469	Ps	61	2	<i>fainteth</i>
7470	Ps	61	2	 2) Or 
7471	Ps	61	2	<i>a rock that is too high for me</i>
7472	Ps	61	4	1) Heb 
7473	Ps	61	4	<i>tent</i>
7474	Ps	61	5	1) Or 
7475	Ps	61	5	<i>given a heritage unto those etc</i>
7476	Ps	62	1	1) Heb 
7477	Ps	62	1	<i>is silent unto God</i>
7478	Ps	62	3	1) Or as otherwise read 
7479	Ps	62	3	<i>Ye shall be slain etc</i>
7480	Ps	62	5	1) Heb 
7481	Ps	62	5	<i>be thou silent unto God</i>
7482	Ps	62	9	1) Heb 
7483	Ps	62	9	<i>a breath</i>
7484	Ps	63	5	1) Heb 
7485	Ps	63	5	<i>fat</i>
7486	Ps	63	6	1) Or 
7487	Ps	63	6	<i>I meditate</i>
7488	Ps	63	9	1) Or 
7489	Ps	63	9	<i>shall be destroyed; They shall etc</i>
7490	Ps	63	10	1) Or 
7491	Ps	63	10	<i>poured out by</i>
7492	Ps	63	10	 2) Or 
7493	Ps	63	10	<i>jackals</i>
7494	Ps	64	2	1) Or 
7495	Ps	64	2	<i>throng</i>
7496	Ps	64	6	1) Or as otherwise read 
7497	Ps	64	6	<i>They have accomplished</i>
7498	Ps	64	6	 (or 
7499	Ps	64	6	<i>have hidden</i>
7500	Ps	64	6	 )
7501	Ps	64	8	1) Or 
7502	Ps	64	8	<i>shall they against whom their tongue was make them to stumble</i>
7503	Ps	64	8	 2) Or 
7504	Ps	64	8	<i>flee away</i>
7505	Ps	65	1	1) Or 
7506	Ps	65	1	<i>There shall be silence before thee,</i>
7507	Ps	65	1	 and 
7508	Ps	65	1	<i>praise, O God etc</i>
7509	Ps	65	3	1) Heb 
7510	Ps	65	3	<i>Words</i>
7511	Ps	65	3	 (or 
7512	Ps	65	3	<i>Matters</i>
7513	Ps	65	3	 ) 
7514	Ps	65	3	<i>of iniquities</i>
7515	Ps	65	3	 2) Or 
7516	Ps	65	3	<i>expiate</i>
7517	Ps	65	5	1) Or 
7518	Ps	65	5	<i>of the sea, afar off</i>
7519	Ps	65	9	1) Or 
7520	Ps	65	9	<i>for so preparest thou</i>
7521	Ps	65	9	 2) Heb 
7522	Ps	65	9	<i>it</i>
7523	Ps	65	10	1) Heb 
7524	Ps	65	10	<i>lowerest</i>
7525	Ps	65	11	1) Heb 
7526	Ps	65	11	<i>the year of thy goodness</i>
7527	Ps	65	12	1) Or 
7528	Ps	65	12	<i>The pastures…do drop</i>
7529	Ps	66	3	1) Or 
7530	Ps	66	3	<i>yield feigned obedience</i>
7531	Ps	66	3	 ; Heb 
7532	Ps	66	3	<i>lie</i>
7533	Ps	66	6	1) Or 
7534	Ps	66	6	<i>let us rejoice</i>
7535	Ps	66	9	1) Heb 
7536	Ps	66	9	<i>putteth</i>
7537	Ps	66	12	1) Heb 
7538	Ps	66	12	<i>abundance</i>
7539	Ps	66	17	1) Or as otherwise read 
7540	Ps	66	17	<i>high praise was under my tongue</i>
7541	Ps	66	18	1) Or 
7542	Ps	66	18	<i>had regarded</i>
7543	Ps	66	18	 2) Or 
7544	Ps	66	18	<i>would</i>
7545	Ps	67	1	1) Heb 
7546	Ps	67	1	<i>with us</i>
7547	Ps	67	3	1) Or 
7548	Ps	67	3	<i>give thanks unto</i>
7549	Ps	67	4	1) Heb 
7550	Ps	67	4	<i>lead</i>
7551	Ps	68	1	1) Or 
7552	Ps	68	1	<i>God ariseth</i>
7553	Ps	68	1	 ; and so throughout verses 1, 2, 3
7554	Ps	68	4	1) Heb 
7555	Ps	68	4	<i>Jah</i>
7556	Ps	68	6	1) Heb 
7557	Ps	68	6	<i>maketh the solitary to dwell in a house</i>
7558	Ps	68	10	1) Or 
7559	Ps	68	10	<i>troop</i>
7560	Ps	68	13	1) Or 
7561	Ps	68	13	<i>Will ye lie among the sheepfolds,</i>
7562	Ps	68	13	 as 
7563	Ps	68	13	<i>the wings…gold?</i>
7564	Ps	68	14	1) Or 
7565	Ps	68	14	<i>snowed</i>
7566	Ps	68	15	1) Heb 
7567	Ps	68	15	<i>mountain of summits</i>
7568	Ps	68	17	1) Or 
7569	Ps	68	17	<i>Sinai</i>
7570	Ps	68	17	 is 
7571	Ps	68	17	<i>in the sanctuary</i>
7572	Ps	68	18	1) Heb 
7573	Ps	68	18	<i>Jah</i>
7574	Ps	68	18	 2) Or 
7575	Ps	68	18	<i>dwell</i>
7576	Ps	68	18	 there
7577	Ps	68	19	1) Or 
7578	Ps	68	19	<i>the Lord day by day: if one oppresseth us, God is our salvation</i>
7579	Ps	68	24	1) Or 
7580	Ps	68	24	<i>in the sanctuary</i>
7581	Ps	68	24	 ; Or 
7582	Ps	68	24	<i>in holiness</i>
7583	Ps	68	27	1) Or 
7584	Ps	68	27	<i>company</i>
7585	Ps	68	28	1) Or 
7586	Ps	68	28	<i>Be strong, O God, thou that hast etc</i>
7587	Ps	68	28	 2) Or 
7588	Ps	68	28	<i>hast wrought for us out of thy temple. Unto Jerusalem etc</i>
7589	Ps	68	30	1) Or, Every one 
7590	Ps	68	30	<i>submitting himself with pieces of silver</i>
7591	Ps	68	30	 2) Or as otherwise read 
7592	Ps	68	30	<i>Scatter thou</i>
7593	Ps	68	31	1) Heb 
7594	Ps	68	31	<i>Cush</i>
7595	Ps	68	35	1) Or 
7596	Ps	68	35	<i>Terrible is God</i>
7597	Ps	69	1	1) That is 
7598	Ps	69	1	<i>Lilies</i>
7599	Ps	69	4	1) Heb 
7600	Ps	69	4	<i>falsely</i>
7601	Ps	69	5	1) Heb 
7602	Ps	69	5	<i>guiltinesses</i>
7603	Ps	69	20	1) Or 
7604	Ps	69	20	<i>sore sick</i>
7605	Ps	69	25	1) Or 
7606	Ps	69	25	<i>encampment</i>
7607	Ps	69	26	1) Or 
7608	Ps	69	26	<i>pain</i>
7609	Ps	69	28	1) Or 
7610	Ps	69	28	<i>the living</i>
7611	Ps	69	29	1) Or 
7612	Ps	69	29	<i>in pain</i>
7613	Ps	70	1	1) Or 
7614	Ps	70	1	<i>to make memorial</i>
7615	Ps	70	3	1) Or 
7616	Ps	70	3	<i>for a reward of</i>
7617	Ps	71	6	1) Or 
7618	Ps	71	6	<i>hast been my benefactor from etc</i>
7619	Ps	71	16	1) Or 
7620	Ps	71	16	<i>in the strength</i>
7621	Ps	71	18	1) Heb 
7622	Ps	71	18	<i>unto old age and gray hairs</i>
7623	Ps	71	18	 2) Heb 
7624	Ps	71	18	<i>thine arm</i>
7625	Ps	71	20	1) Another reading is 
7626	Ps	71	20	<i>me</i>
7627	Ps	72	2	1) Or 
7628	Ps	72	2	<i>Let him</i>
7629	Ps	72	2	 (and so throughout the Psalm)
7630	Ps	72	5	1) Heb 
7631	Ps	72	5	<i>before the moon</i>
7632	Ps	72	12	1) Or 
7633	Ps	72	12	<i>and him that hath</i>
7634	Ps	72	13	1) Or 
7635	Ps	72	13	<i>weak</i>
7636	Ps	72	14	1) Or 
7637	Ps	72	14	<i>fraud</i>
7638	Ps	72	15	1) Or 
7639	Ps	72	15	<i>he</i>
7640	Ps	72	16	1) Or 
7641	Ps	72	16	<i>a handful</i>
7642	Ps	72	16	 2) Or 
7643	Ps	72	16	<i>land</i>
7644	Ps	72	17	1) Or 
7645	Ps	72	17	<i>have issue</i>
7646	Ps	72	17	 2) Heb 
7647	Ps	72	17	<i>before the sun</i>
7648	Ps	72	17	 3) Or 
7649	Ps	72	17	<i>bless themselves</i>
7650	Ps	73	1	1) Or 
7651	Ps	73	1	<i>Only good is God</i>
7652	Ps	73	3	1) Or 
7653	Ps	73	3	<i>fools</i>
7654	Ps	73	5	1) Heb 
7655	Ps	73	5	<i>in the trouble of men</i>
7656	Ps	73	7	1) Or 
7657	Ps	73	7	<i>The imaginations of their heart overflow.</i>
7658	Ps	73	8	1) Or 
7659	Ps	73	8	<i>from on high</i>
7660	Ps	73	9	1) Or 
7661	Ps	73	9	<i>against</i>
7662	Ps	73	10	1) Another reading is 
7663	Ps	73	10	<i>he will bring back his people</i>
7664	Ps	73	14	1) Heb 
7665	Ps	73	14	<i>my chastisement</i>
7666	Ps	73	14	 was
7667	Ps	73	16	1) Heb 
7668	Ps	73	16	<i>labor in mine eyes</i>
7669	Ps	73	18	1) Heb 
7670	Ps	73	18	<i>ruins</i>
7671	Ps	73	20	1) Or 
7672	Ps	73	20	<i>in the city</i>
7673	Ps	73	21	1) Heb 
7674	Ps	73	21	<i>was in a ferment</i>
7675	Ps	73	21	 2) Heb 
7676	Ps	73	21	<i>reins</i>
7677	Ps	73	22	1) Or 
7678	Ps	73	22	<i>am</i>
7679	Ps	73	22	 2) Heb 
7680	Ps	73	22	<i>with thee</i>
7681	Ps	73	24	1) Or 
7682	Ps	73	24	<i>with</i>
7683	Ps	73	25	1) Or 
7684	Ps	73	25	<i>with thee</i>
7685	Ps	73	26	1) Heb 
7686	Ps	73	26	<i>rock</i>
7687	Ps	74	3	1) Or 
7688	Ps	74	3	<i>The enemy hath wrought all evil</i>
7689	Ps	74	5	1) Or 
7690	Ps	74	5	<i>made themselves known</i>
7691	Ps	74	8	1) Or 
7692	Ps	74	8	<i>places of assembly</i>
7693	Ps	74	13	1) Heb 
7694	Ps	74	13	<i>break up</i>
7695	Ps	74	15	1) Or 
7696	Ps	74	15	<i>ever-flowing</i>
7697	Ps	74	16	1) Heb 
7698	Ps	74	16	<i>luminary</i>
7699	Ps	74	18	1) Or 
7700	Ps	74	18	<i>hath reproached Jehovah</i>
7701	Ps	74	19	1) Or 
7702	Ps	74	19	<i>thy turtle-dove unto the greedy multitude</i>
7703	Ps	74	19	 2) Or 
7704	Ps	74	19	<i>multitude</i>
7705	Ps	74	20	1) Or 
7706	Ps	74	20	<i>land</i>
7707	Ps	74	23	1) Or 
7708	Ps	74	23	<i>which ascendeth</i>
7709	Ps	75	1	1) Or 
7710	Ps	75	1	<i>for</i>
7711	Ps	75	1	 that 
7712	Ps	75	1	<i>thy name is near Thy wondrous works declare</i>
7713	Ps	75	2	1) Heb 
7714	Ps	75	2	<i>take</i>
7715	Ps	75	3	1) Or 
7716	Ps	75	3	<i>When the earth…I set up</i>
7717	Ps	75	3	 2) Heb 
7718	Ps	75	3	<i>proportioned</i>
7719	Ps	75	4	1) Or 
7720	Ps	75	4	<i>fools</i>
7721	Ps	75	5	1) Or 
7722	Ps	75	5	<i>insolently with a</i>
7723	Ps	75	5	 haughty 
7724	Ps	75	5	<i>neck</i>
7725	Ps	75	6	1) Or 
7726	Ps	75	6	<i>from the wilderness of mountains</i>
7727	Ps	75	6	 cometh judgment 2) Heb 
7728	Ps	75	6	<i>wilderness</i>
7729	Ps	75	8	1) Or 
7730	Ps	75	8	<i>is red</i>
7731	Ps	76	2	1) Or 
7732	Ps	76	2	<i>covert</i>
7733	Ps	76	2	 2) Or 
7734	Ps	76	2	<i>lair</i>
7735	Ps	76	3	1) Or 
7736	Ps	76	3	<i>fiery shafts</i>
7737	Ps	76	3	 ; Or 
7738	Ps	76	3	<i>lightnings</i>
7739	Ps	76	4	1) Or 
7740	Ps	76	4	<i>More than</i>
7741	Ps	76	10	1) Or 
7742	Ps	76	10	<i>restrain</i>
7743	Ps	77	3	1) Or 
7744	Ps	77	3	<i>fainteth</i>
7745	Ps	77	10	1) Or 
7746	Ps	77	10	<i>This is my grief, That the right hand of the Most High doth change.</i>
7747	Ps	77	11	1) Heb 
7748	Ps	77	11	<i>Jah</i>
7749	Ps	77	13	1) Or 
7750	Ps	77	13	<i>in holiness</i>
7751	Ps	77	16	1) Or 
7752	Ps	77	16	<i>were in pain</i>
7753	Ps	78	1	1) Or 
7754	Ps	78	1	<i>teaching</i>
7755	Ps	78	8	1) Or 
7756	Ps	78	8	<i>that prepared not their heart</i>
7757	Ps	78	17	1) Or 
7758	Ps	78	17	<i>a dry land</i>
7759	Ps	78	18	1) Or 
7760	Ps	78	18	<i>for themselves</i>
7761	Ps	78	24	1) Heb 
7762	Ps	78	24	<i>grain</i>
7763	Ps	78	25	1) Or 
7764	Ps	78	25	<i>Every one</i>
7765	Ps	78	26	1) Heb 
7766	Ps	78	26	<i>led forth the east wind</i>
7767	Ps	78	37	1) Or 
7768	Ps	78	37	<i>stedfast</i>
7769	Ps	78	41	1) Or 
7770	Ps	78	41	<i>limited</i>
7771	Ps	78	47	1) Heb 
7772	Ps	78	47	<i>killed</i>
7773	Ps	78	47	 2) Or 
7774	Ps	78	47	<i>great hailstones</i>
7775	Ps	78	49	1) Heb 
7776	Ps	78	49	<i>A sending</i>
7777	Ps	78	50	1) Heb 
7778	Ps	78	50	<i>levelled</i>
7779	Ps	78	50	 2) Or 
7780	Ps	78	50	<i>their beasts to the murrain</i>
7781	Ps	78	51	1) Heb 
7782	Ps	78	51	<i>beginning</i>
7783	Ps	78	51	 ; See De 21:17
7784	Ps	78	54	1) Or 
7785	Ps	78	54	<i>his holy border</i>
7786	Ps	78	54	 2) Or 
7787	Ps	78	54	<i>mountain land</i>
7788	Ps	79	7	1) Or 
7789	Ps	79	7	<i>pasture</i>
7790	Ps	79	9	1) Or 
7791	Ps	79	9	<i>expiate</i>
7792	Ps	79	11	1) Heb 
7793	Ps	79	11	<i>thine arm</i>
7794	Ps	79	11	 2) Heb 
7795	Ps	79	11	<i>the children of death</i>
7796	Ps	80	1	1) That is 
7797	Ps	80	1	<i>Lilies, a testimony</i>
7798	Ps	80	1	 2) Or 
7799	Ps	80	1	<i>art enthroned</i>
7800	Ps	80	3	1) Or 
7801	Ps	80	3	<i>Restore</i>
7802	Ps	80	4	1) Heb 
7803	Ps	80	4	<i>wilt thou smoke</i>
7804	Ps	80	4	 ; See Ps 74:1
7805	Ps	80	7	1) Or 
7806	Ps	80	7	<i>Restore</i>
7807	Ps	80	10	1) Or 
7808	Ps	80	10	<i>the cedars of God with the boughs thereof</i>
7809	Ps	80	10	 2) Or 
7810	Ps	80	10	<i>goodly cedars</i>
7811	Ps	80	15	1) Or 
7812	Ps	80	15	<i>protect</i>
7813	Ps	80	15	 (or 
7814	Ps	80	15	<i>maintain</i>
7815	Ps	80	15	 ) 
7816	Ps	80	15	<i>that which etc</i>
7817	Ps	80	15	 2) Heb 
7818	Ps	80	15	<i>son</i>
7819	Ps	80	19	1) Or 
7820	Ps	80	19	<i>Restore</i>
7821	Ps	81	2	1) Or 
7822	Ps	81	2	<i>strike the timbrel</i>
7823	Ps	81	5	1) Or 
7824	Ps	81	5	<i>against</i>
7825	Ps	81	5	 2) Or 
7826	Ps	81	5	<i>the speech of one that etc</i>
7827	Ps	81	15	1) Or 
7828	Ps	81	15	<i>yield feigned obedience</i>
7829	Ps	81	15	 ; Heb 
7830	Ps	81	15	<i>lie</i>
7831	Ps	81	16	1) Heb 
7832	Ps	81	16	<i>fat of wheat</i>
7833	Ps	82	3	1) Or 
7834	Ps	82	3	<i>weak</i>
7835	Ps	82	4	1) Or 
7836	Ps	82	4	<i>weak</i>
7837	Ps	83	6	1) Or 
7838	Ps	83	6	<i>Hagrites</i>
7839	Ps	83	6	 ; See 1 Ch 5:10
7840	Ps	83	8	1) Heb 
7841	Ps	83	8	<i>been an arm to the children of Lot</i>
7842	Ps	83	12	1) Or 
7843	Ps	83	12	<i>pastures</i>
7844	Ps	83	18	1) Or 
7845	Ps	83	18	<i>thou, whose name alone is Jehovah, art etc</i>
7846	Ps	84	1	1) Or 
7847	Ps	84	1	<i>lovely</i>
7848	Ps	84	2	1) Or 
7849	Ps	84	2	<i>sing for joy</i>
7850	Ps	84	6	1) Or 
7851	Ps	84	6	<i>balsam-trees</i>
7852	Ps	84	6	 ; Heb 
7853	Ps	84	6	<i>Baca</i>
7854	Ps	84	6	 ; See 2 Sa 5:23
7855	Ps	84	9	1) Or 
7856	Ps	84	9	<i>Behold our shield, O God</i>
7857	Ps	84	10	1) Or 
7858	Ps	84	10	<i>stand at the threshold of etc</i>
7859	Ps	85	1	1) Or 
7860	Ps	85	1	<i>returned to</i>
7861	Ps	85	4	1) Or 
7862	Ps	85	4	<i>Turn to us</i>
7863	Ps	85	13	1) Or 
7864	Ps	85	13	<i>set</i>
7865	Ps	85	13	 us 
7866	Ps	85	13	<i>in the way of his steps</i>
7867	Ps	86	16	1) Or 
7868	Ps	86	16	<i>be gracious unto</i>
7869	Ps	87	1	1) Or 
7870	Ps	87	1	<i>His foundation in the holy mountains Jehovah loveth, even the gates etc</i>
7871	Ps	87	4	1) Or 
7872	Ps	87	4	<i>Egypt</i>
7873	Ps	87	4	 2) Heb 
7874	Ps	87	4	<i>Cush</i>
7875	Ps	87	7	1) Or 
7876	Ps	87	7	<i>the players on instruments</i>
7877	Ps	87	7	 shall be there
7878	Ps	88	1	1) Or 
7879	Ps	88	1	<i>for singing</i>
7880	Ps	88	5	1) Or 
7881	Ps	88	5	<i>away</i>
7882	Ps	88	10	1) Or 
7883	Ps	88	10	<i>the shades</i>
7884	Ps	88	10	 ; Heb 
7885	Ps	88	10	<i>Rephaim</i>
7886	Ps	88	11	1) Heb 
7887	Ps	88	11	<i>Abaddon</i>
7888	Ps	88	11	 ; See Job 26:6
7889	Ps	88	18	1) Or 
7890	Ps	88	18	<i>are darkness</i>
7891	Ps	89	6	1) Or 
7892	Ps	89	6	<i>sons of God</i>
7893	Ps	89	6	 2) Or 
7894	Ps	89	6	<i>gods</i>
7895	Ps	89	6	 ; See Ps 29:1
7896	Ps	89	8	1) Heb 
7897	Ps	89	8	<i>Jah</i>
7898	Ps	89	10	1) Or 
7899	Ps	89	10	<i>Egypt</i>
7900	Ps	89	13	1) Heb 
7901	Ps	89	13	<i>an arm with might</i>
7902	Ps	89	15	1) Or 
7903	Ps	89	15	<i>trumpet sound</i>
7904	Ps	89	17	1) Another reading is 
7905	Ps	89	17	<i>thou shalt exalt our horn</i>
7906	Ps	89	18	1) Or 
7907	Ps	89	18	<i>Even to the Holy One of Israel our King</i>
7908	Ps	89	19	1) Or as otherwise read 
7909	Ps	89	19	<i>saint</i>
7910	Ps	89	22	1) Or 
7911	Ps	89	22	<i>do him violence</i>
7912	Ps	89	28	1) Or 
7913	Ps	89	28	<i>be faithful</i>
7914	Ps	89	31	1) Heb 
7915	Ps	89	31	<i>profane</i>
7916	Ps	89	34	1) Heb 
7917	Ps	89	34	<i>profane</i>
7918	Ps	89	35	1) Or 
7919	Ps	89	35	<i>One thing</i>
7920	Ps	89	37	1) Or 
7921	Ps	89	37	<i>As the moon which is established for ever</i>
7922	Ps	89	37	 2) Or 
7923	Ps	89	37	<i>And the witness in the sky is faithful</i>
7924	Ps	89	48	1) Heb 
7925	Ps	89	48	<i>hand</i>
7926	Ps	89	50	1) Or 
7927	Ps	89	50	<i>many</i>
7928	Ps	90	2	1) Heb 
7929	Ps	90	2	<i>gavest birth to</i>
7930	Ps	90	3	1) Or 
7931	Ps	90	3	<i>dust</i>
7932	Ps	90	3	 ; Heb 
7933	Ps	90	3	<i>crushing</i>
7934	Ps	90	4	1) Or 
7935	Ps	90	4	<i>when it passeth</i>
7936	Ps	90	9	1) Or 
7937	Ps	90	9	<i>a sound</i>
7938	Ps	90	17	1) Or 
7939	Ps	90	17	<i>beauty</i>
7940	Ps	91	1	1) Or 
7941	Ps	91	1	<i>That abideth…Almighty; Even I etc</i>
7942	Ps	91	9	1) Or 
7943	Ps	91	9	<i>Because thou</i>
7944	Ps	91	9	 has said, 
7945	Ps	91	9	<i>Jehovah is my refuge.</i>
7946	Ps	92	11	1) Or 
7947	Ps	92	11	<i>them that lie in wait for me</i>
7948	Ps	93	3	1) Or 
7949	Ps	93	3	<i>roaring</i>
7950	Ps	94	7	1) Heb 
7951	Ps	94	7	<i>Jah</i>
7952	Ps	94	10	1) Or 
7953	Ps	94	10	<i>instructeth</i>
7954	Ps	94	11	1) Or 
7955	Ps	94	11	<i>For</i>
7956	Ps	94	11	 2) Heb 
7957	Ps	94	11	<i>a breath</i>
7958	Ps	94	12	1) Heb 
7959	Ps	94	12	<i>Jah</i>
7960	Ps	94	19	1) Or 
7961	Ps	94	19	<i>doubts</i>
7962	Ps	94	20	1) Or 
7963	Ps	94	20	<i>seat</i>
7964	Ps	95	4	1) Or 
7965	Ps	95	4	<i>strength</i>
7966	Ps	95	7	1) Or 
7967	Ps	95	7	<i>if ye will hear his voice, Harden etc</i>
7968	Ps	95	8	1) That is 
7969	Ps	95	8	<i>strife</i>
7970	Ps	95	8	 2) That is 
7971	Ps	95	8	<i>temptation</i>
7972	Ps	96	5	1) Or 
7973	Ps	96	5	<i>things of nought</i>
7974	Ps	96	9	1) Or 
7975	Ps	96	9	<i>in the beauty of holiness</i>
7976	Ps	96	13	1) Or 
7977	Ps	96	13	<i>in his faithfulness</i>
7978	Ps	99	1	1) Or 
7979	Ps	99	1	<i>is enthroned</i>
7980	Ps	100	1	1) Or 
7981	Ps	100	1	<i>for the thank-offering</i>
7982	Ps	100	1	 2) Heb 
7983	Ps	100	1	<i>all the earth</i>
7984	Ps	100	3	1) Another reading is 
7985	Ps	100	3	<i>and not we ourselves</i>
7986	Ps	100	4	1) Or 
7987	Ps	100	4	<i>a thank-offering</i>
7988	Ps	101	2	1) Or 
7989	Ps	101	2	<i>give heed unto the perfect way</i>
7990	Ps	101	2	 2) Or 
7991	Ps	101	2	<i>in the integrity of my heart</i>
7992	Ps	101	3	1) Or 
7993	Ps	101	3	<i>the doing of unfaithfulness</i>
7994	Ps	101	4	1) Or 
7995	Ps	101	4	<i>evil person</i>
7996	Ps	102	1	1) Or 
7997	Ps	102	1	<i>fainteth</i>
7998	Ps	102	3	1) Or 
7999	Ps	102	3	<i>in smoke</i>
8000	Ps	102	3	 2) Or 
8001	Ps	102	3	<i>as a hearth</i>
8002	Ps	102	11	1) Or 
8003	Ps	102	11	<i>is stretched out</i>
8004	Ps	102	12	1) Or 
8005	Ps	102	12	<i>sittest</i>
8006	Ps	102	12	 as King
8007	Ps	102	18	1) Heb 
8008	Ps	102	18	<i>Jah</i>
8009	Ps	102	20	1) Heb 
8010	Ps	102	20	<i>the children of death</i>
8011	Ps	102	23	1) Another reading is 
8012	Ps	102	23	<i>afflicted</i>
8013	Ps	102	23	 me with 
8014	Ps	102	23	<i>his strength</i>
8015	Ps	103	4	1) Or 
8016	Ps	103	4	<i>the pit</i>
8017	Ps	103	5	1) Or 
8018	Ps	103	5	<i>thy years</i>
8019	Ps	103	5	 ; Or 
8020	Ps	103	5	<i>thy prime</i>
8021	Ps	103	5	 ; Heb 
8022	Ps	103	5	<i>thine ornament</i>
8023	Ps	104	4	1) Or 
8024	Ps	104	4	<i>his angles winds</i>
8025	Ps	104	5	1) Heb 
8026	Ps	104	5	<i>He founded the earth upon its bases</i>
8027	Ps	104	8	1) Or 
8028	Ps	104	8	<i>They went up by the mountains, they went down by the valleys</i>
8029	Ps	104	12	1) Heb 
8030	Ps	104	12	<i>utter their voice</i>
8031	Ps	104	14	1) Or 
8032	Ps	104	14	<i>labor</i>
8033	Ps	104	14	 2) Heb 
8034	Ps	104	14	<i>bread</i>
8035	Ps	104	15	1) Heb 
8036	Ps	104	15	<i>To make his face to shine with oil</i>
8037	Ps	104	24	1) Or 
8038	Ps	104	24	<i>creatures</i>
8039	Ps	104	26	1) Or 
8040	Ps	104	26	<i>with him</i>
8041	Ps	104	26	 ; See Job 41:5
8042	Ps	104	29	1) Or 
8043	Ps	104	29	<i>gatherest in</i>
8044	Ps	104	35	1) Heb 
8045	Ps	104	35	<i>Hallelujah</i>
8046	Ps	105	2	1) Or 
8047	Ps	105	2	<i>Meditate</i>
8048	Ps	105	11	1) Heb 
8049	Ps	105	11	<i>cord</i>
8050	Ps	105	11	 , or 
8051	Ps	105	11	<i>line</i>
8052	Ps	105	18	1) Heb 
8053	Ps	105	18	<i>His soul entered into the iron</i>
8054	Ps	105	27	1) Heb 
8055	Ps	105	27	<i>the words of his signs</i>
8056	Ps	105	36	1) Heb 
8057	Ps	105	36	<i>beginning</i>
8058	Ps	105	36	 ; See De 21:17
8059	Ps	105	37	1) Or 
8060	Ps	105	37	<i>none that stumbled</i>
8061	Ps	105	45	1) Heb 
8062	Ps	105	45	<i>Hallelujah</i>
8063	Ps	106	1	1) Heb 
8064	Ps	106	1	<i>Hallelujah</i>
8065	Ps	106	9	1) Or 
8066	Ps	106	9	<i>pasture-land</i>
8067	Ps	106	16	1) Or 
8068	Ps	106	16	<i>holy one</i>
8069	Ps	106	26	1) Heb 
8070	Ps	106	26	<i>lifted up his hand</i>
8071	Ps	106	26	 2) Heb 
8072	Ps	106	26	<i>make them fall</i>
8073	Ps	106	32	1) Or 
8074	Ps	106	32	<i>strife</i>
8075	Ps	106	48	1) Heb 
8076	Ps	106	48	<i>Hallelujah</i>
8077	Ps	107	3	1) Heb 
8078	Ps	107	3	<i>from the sea</i>
8079	Ps	107	17	1) Heb 
8080	Ps	107	17	<i>the way of their transgression</i>
8081	Ps	107	20	1) Heb 
8082	Ps	107	20	<i>pits</i>
8083	Ps	107	27	1) Heb 
8084	Ps	107	27	<i>all their wisdom is swallowed up</i>
8085	Ps	108	2	1) Or 
8086	Ps	108	2	<i>awake the dawn</i>
8087	Ps	108	6	1) Another reading is 
8088	Ps	108	6	<i>me</i>
8089	Ps	108	8	1) Or 
8090	Ps	108	8	<i>lawgiver</i>
8091	Ps	108	9	1) Or 
8092	Ps	108	9	<i>Unto</i>
8093	Ps	108	10	1) Or 
8094	Ps	108	10	<i>will lead me etc</i>
8095	Ps	108	11	1) Or 
8096	Ps	108	11	<i>Wilt not thou, O God, who hast cast us off, And goest…hosts?</i>
8097	Ps	108	12	1) Heb 
8098	Ps	108	12	<i>salvation</i>
8099	Ps	109	2	1) Or 
8100	Ps	109	2	<i>against</i>
8101	Ps	109	5	1) Heb 
8102	Ps	109	5	<i>laid upon me</i>
8103	Ps	109	6	1) Or 
8104	Ps	109	6	<i>Satan</i>
8105	Ps	109	6	 ; Or 
8106	Ps	109	6	<i>an accuser</i>
8107	Ps	109	7	1) Or 
8108	Ps	109	7	<i>become</i>
8109	Ps	109	10	1) Or 
8110	Ps	109	10	<i>far from</i>
8111	Ps	109	11	1) Heb 
8112	Ps	109	11	<i>snare</i>
8113	Ps	109	12	1) Or 
8114	Ps	109	12	<i>continue</i>
8115	Ps	109	23	1) Or 
8116	Ps	109	23	<i>is stretched out</i>
8117	Ps	109	24	1) Or 
8118	Ps	109	24	<i>totter</i>
8119	Ps	109	29	1) Or 
8120	Ps	109	29	<i>Mine adversaries shall be clothed…And they shall cover etc</i>
8121	Ps	110	2	1) Or 
8122	Ps	110	2	<i>stretch</i>
8123	Ps	110	2	 2) Or 
8124	Ps	110	2	<i>sceptre</i>
8125	Ps	110	3	1) Heb 
8126	Ps	110	3	<i>are freewill-offerings</i>
8127	Ps	110	3	 2) Or 
8128	Ps	110	3	<i>army</i>
8129	Ps	110	3	 3) Or 
8130	Ps	110	3	<i>in the beauty of holiness</i>
8131	Ps	110	3	 4) Or 
8132	Ps	110	3	<i>Thy youth are to thee</i>
8133	Ps	110	3	 as 
8134	Ps	110	3	<i>the dew</i>
8135	Ps	110	4	1) Or 
8136	Ps	110	4	<i>manner</i>
8137	Ps	110	5	1) Or 
8138	Ps	110	5	<i>Hath stricken</i>
8139	Ps	110	6	1) Or, The places 
8140	Ps	110	6	<i>are full of etc</i>
8141	Ps	110	6	 2) Or 
8142	Ps	110	6	<i>hath filled</i>
8143	Ps	110	6	 3) Or 
8144	Ps	110	6	<i>Hath stricken</i>
8145	Ps	110	6	 4) Or 
8146	Ps	110	6	<i>over a wide land</i>
8147	Ps	111	1	1) Heb 
8148	Ps	111	1	<i>Hallelujah</i>
8149	Ps	111	5	1) Heb 
8150	Ps	111	5	<i>prey</i>
8151	Ps	111	8	1) Or 
8152	Ps	111	8	<i>made</i>
8153	Ps	111	10	1) Or 
8154	Ps	111	10	<i>Good repute</i>
8155	Ps	111	10	 2) Heb 
8156	Ps	111	10	<i>them</i>
8157	Ps	112	1	1) Heb 
8158	Ps	112	1	<i>Hallelujah</i>
8159	Ps	113	1	1) Heb 
8160	Ps	113	1	<i>Hallelujah</i>
8161	Ps	113	6	1) Or 
8162	Ps	113	6	<i>to regard the heavens and the earth</i>
8163	Ps	113	9	1) Heb 
8164	Ps	113	9	<i>Hallelujah</i>
8165	Ps	115	17	1) Heb 
8166	Ps	115	17	<i>Jah</i>
8167	Ps	115	18	1) Heb 
8168	Ps	115	18	<i>Jah</i>
8169	Ps	115	18	 2) Heb 
8170	Ps	115	18	<i>Hallelujah</i>
8171	Ps	116	3	1) Or 
8172	Ps	116	3	<i>found me</i>
8173	Ps	116	9	1) Heb 
8174	Ps	116	9	<i>lands</i>
8175	Ps	116	10	1) Or 
8176	Ps	116	10	<i>believed, when I spake</i>
8177	Ps	116	10	 thus
8178	Ps	116	11	1) Or 
8179	Ps	116	11	<i>alarm</i>
8180	Ps	116	19	1) Heb 
8181	Ps	116	19	<i>Hallelujah</i>
8182	Ps	117	2	1) Heb 
8183	Ps	117	2	<i>Hallelujah</i>
8184	Ps	118	5	1) Heb 
8185	Ps	118	5	<i>Jah</i>
8186	Ps	118	14	1) Heb 
8187	Ps	118	14	<i>Jah</i>
8188	Ps	118	17	1) Heb 
8189	Ps	118	17	<i>Jah</i>
8190	Ps	118	18	1) Heb 
8191	Ps	118	18	<i>Jah</i>
8192	Ps	118	19	1) Heb 
8193	Ps	118	19	<i>Jah</i>
8194	Ps	118	23	1) Heb 
8195	Ps	118	23	<i>from Jehovah</i>
8196	Ps	118	26	1) Or 
8197	Ps	118	26	<i>entereth</i>
8198	Ps	119	1	1) Or 
8199	Ps	119	1	<i>upright in way</i>
8200	Ps	119	21	1) Or 
8201	Ps	119	21	<i>Cursed are they that etc</i>
8202	Ps	119	24	1) Heb 
8203	Ps	119	24	<i>the men of my counsel</i>
8204	Ps	119	28	1) Heb 
8205	Ps	119	28	<i>droppeth</i>
8206	Ps	119	38	1) Or 
8207	Ps	119	38	<i>Who</i>
8208	Ps	119	38	 is devoted 
8209	Ps	119	38	<i>to</i>
8210	Ps	119	49	1) Or 
8211	Ps	119	49	<i>Wherein</i>
8212	Ps	119	50	1) Or 
8213	Ps	119	50	<i>That</i>
8214	Ps	119	53	1) Or 
8215	Ps	119	53	<i>Horror</i>
8216	Ps	119	56	1) Or 
8217	Ps	119	56	<i>That</i>
8218	Ps	119	57	1) Or 
8219	Ps	119	57	<i>Jehovah is my portion, have I said: That I may observe etc</i>
8220	Ps	119	73	1) Or 
8221	Ps	119	73	<i>established</i>
8222	Ps	119	78	1) Or 
8223	Ps	119	78	<i>with falsehood</i>
8224	Ps	119	79	1) Another reading is 
8225	Ps	119	79	<i>Even they that know</i>
8226	Ps	119	86	1) Or 
8227	Ps	119	86	<i>with falsehood</i>
8228	Ps	119	91	1) Or 
8229	Ps	119	91	<i>As for thine ordinances, they abide this day</i>
8230	Ps	119	98	1) Or 
8231	Ps	119	98	<i>Thou through thy commandments makest</i>
8232	Ps	119	103	1) Heb 
8233	Ps	119	103	<i>palate</i>
8234	Ps	119	118	1) Or 
8235	Ps	119	118	<i>vain</i>
8236	Ps	119	119	1) Heb 
8237	Ps	119	119	<i>causest to cease</i>
8238	Ps	119	137	1) Or 
8239	Ps	119	137	<i>in thy judgments</i>
8240	Ps	119	139	1) Heb 
8241	Ps	119	139	<i>cut me off</i>
8242	Ps	119	140	1) Heb 
8243	Ps	119	140	<i>tried</i>
8244	Ps	119	140	 , or 
8245	Ps	119	140	<i>refined</i>
8246	Ps	119	143	1) Or 
8247	Ps	119	143	<i>found me</i>
8248	Ps	119	149	1) Or 
8249	Ps	119	149	<i>as thou art wont</i>
8250	Ps	119	150	1) Or 
8251	Ps	119	150	<i>that persecute</i>
8252	Ps	119	150	 me 
8253	Ps	119	150	<i>with wickedness</i>
8254	Ps	119	158	1) Or 
8255	Ps	119	158	<i>loathed</i>
8256	Ps	119	158	 them
8257	Ps	120	4	1) Or, It is as 
8258	Ps	120	4	<i>the sharp arrows of the mighty</i>
8259	Ps	120	4	 man 2) Or 
8260	Ps	120	4	<i>broom</i>
8261	Ps	121	3	1) Or 
8262	Ps	121	3	<i>Let him not suffer…Let him not slumber that etc</i>
8263	Ps	122	2	1) Or 
8264	Ps	122	2	<i>have stood</i>
8265	Ps	122	4	1) Heb 
8266	Ps	122	4	<i>Jah</i>
8267	Ps	122	4	 2) Heb 
8268	Ps	122	4	<i>a testimony</i>
8269	Ps	122	5	1) Or 
8270	Ps	122	5	<i>were</i>
8271	Ps	122	6	1) Or 
8272	Ps	122	6	<i>Salute ye Jerusalem</i>
8273	Ps	122	6	 2) Or 
8274	Ps	122	6	<i>May they</i>
8275	Ps	122	8	1) Or 
8276	Ps	122	8	<i>speak peace concerning thee</i>
8277	Ps	126	6	1) Or 
8278	Ps	126	6	<i>bearing the measure of seed</i>
8279	Ps	127	2	1) Or 
8280	Ps	127	2	<i>in sleep</i>
8281	Ps	128	6	1) Or, And 
8282	Ps	128	6	<i>peace upon Israel</i>
8283	Ps	129	1	1) Or 
8284	Ps	129	1	<i>Much</i>
8285	Ps	129	2	1) Or 
8286	Ps	129	2	<i>Much</i>
8287	Ps	129	6	1) Or 
8288	Ps	129	6	<i>is plucked up</i>
8289	Ps	130	3	1) Heb 
8290	Ps	130	3	<i>Jah</i>
8291	Ps	131	1	1) Heb 
8292	Ps	131	1	<i>walk</i>
8293	Ps	132	3	1) Heb 
8294	Ps	132	3	<i>tent</i>
8295	Ps	132	3	 2) Heb 
8296	Ps	132	3	<i>the couch of my bed</i>
8297	Ps	132	5	1) Heb 
8298	Ps	132	5	<i>Tabernacles</i>
8299	Ps	132	6	1) Or 
8300	Ps	132	6	<i>Ephraim</i>
8301	Ps	132	6	 2) Or 
8302	Ps	132	6	<i>Jaar</i>
8303	Ps	132	6	 ; See 1 Co 13:5
8304	Ps	132	15	1) Or 
8305	Ps	132	15	<i>surely</i>
8306	Ps	132	17	1) Or 
8307	Ps	132	17	<i>a horn to spring forth unto David</i>
8308	Ps	132	17	 2) Or 
8309	Ps	132	17	<i>prepared</i>
8310	Ps	133	2	1) Or 
8311	Ps	133	2	<i>collar</i>
8312	Ps	134	2	1) Or 
8313	Ps	134	2	<i>in holiness</i>
8314	Ps	135	1	1) Heb 
8315	Ps	135	1	<i>Hallelujah</i>
8316	Ps	135	4	1) Heb 
8317	Ps	135	4	<i>Jah</i>
8318	Ps	135	10	1) Or 
8319	Ps	135	10	<i>great</i>
8320	Ps	135	21	1) Heb 
8321	Ps	135	21	<i>Hallelujah</i>
8322	Ps	136	15	1) Heb 
8323	Ps	136	15	<i>shook off</i>
8324	Ps	137	3	1) Heb 
8325	Ps	137	3	<i>words of song</i>
8326	Ps	137	3	 2) Or 
8327	Ps	137	3	<i>our tormentors</i>
8328	Ps	137	8	1) Or 
8329	Ps	137	8	<i>that art laid waste</i>
8330	Ps	139	3	1) Or 
8331	Ps	139	3	<i>winnowest</i>
8332	Ps	139	11	1) Or 
8333	Ps	139	11	<i>cover</i>
8334	Ps	139	11	 2) Or 
8335	Ps	139	11	<i>Then the night shall be light about me</i>
8336	Ps	139	13	1) Heb 
8337	Ps	139	13	<i>reins</i>
8338	Ps	139	13	 2) Or 
8339	Ps	139	13	<i>knit me together</i>
8340	Ps	139	19	1) Or 
8341	Ps	139	19	<i>Oh that thou wouldest slay</i>
8342	Ps	139	20	1) Or 
8343	Ps	139	20	<i>utter thy name</i>
8344	Ps	139	20	 (Heb 
8345	Ps	139	20	<i>thee</i>
8346	Ps	139	20	 ); Or as otherwise read 
8347	Ps	139	20	<i>rebel against thee</i>
8348	Ps	139	20	 2) Or 
8349	Ps	139	20	<i>lift themselves up</i>
8350	Ps	139	20	 against thee 
8351	Ps	139	20	<i>for vanity</i>
8352	Ps	139	21	1) Or 
8353	Ps	139	21	<i>do not I loathe</i>
8354	Ps	139	24	1) Or 
8355	Ps	139	24	<i>way of pain</i>
8356	Ps	140	2	1) Or 
8357	Ps	140	2	<i>stir up wars</i>
8358	Ps	140	10	1) Or 
8359	Ps	140	10	<i>floods</i>
8360	Ps	140	11	1) Heb 
8361	Ps	140	11	<i>A man of tongue</i>
8362	Ps	141	2	1) Or 
8363	Ps	141	2	<i>oblation</i>
8364	Ps	141	5	1) Or 
8365	Ps	141	5	<i>still is my prayer against their wickedness</i>
8366	Ps	141	5	 2) Or 
8367	Ps	141	5	<i>calamities</i>
8368	Ps	141	8	1) Or 
8369	Ps	141	8	<i>pour thou not out my life</i>
8370	Ps	141	10	1) Heb 
8371	Ps	141	10	<i>pass over</i>
8372	Ps	142	3	1) Or 
8373	Ps	142	3	<i>fainted</i>
8374	Ps	142	7	1) Or 
8375	Ps	142	7	<i>crown themselves because of me</i>
8376	Ps	143	4	1) Or 
8377	Ps	143	4	<i>my spirit fainteth</i>
8378	Ps	143	9	1) Heb 
8379	Ps	143	9	<i>Unto thee have I hidden</i>
8380	Ps	143	10	1) Or 
8381	Ps	143	10	<i>Let thy good Spirit lead me</i>
8382	Ps	143	10	 2) Or 
8383	Ps	143	10	<i>a plain country</i>
8384	Ps	144	4	1) Heb 
8385	Ps	144	4	<i>a breath</i>
8386	Ps	144	14	1) Or 
8387	Ps	144	14	<i>sallying</i>
8388	Ps	145	16	1) Or 
8389	Ps	145	16	<i>satisfiest every living thing with favor</i>
8390	Ps	146	1	1) Heb 
8391	Ps	146	1	<i>Hallelujah</i>
8392	Ps	146	4	1) Or 
8393	Ps	146	4	<i>purposes</i>
8394	Ps	146	9	1) Or 
8395	Ps	146	9	<i>maketh crooked</i>
8396	Ps	146	10	1) Heb 
8397	Ps	146	10	<i>Hallelujah</i>
8398	Ps	147	1	1) Heb 
8399	Ps	147	1	<i>Hallelujah</i>
8400	Ps	147	1	 2) Or 
8401	Ps	147	1	<i>For he is good: sing praises unto our God; For he is gracious</i>
8402	Ps	147	3	1) Heb 
8403	Ps	147	3	<i>sorrows</i>
8404	Ps	147	14	1) Heb 
8405	Ps	147	14	<i>thy border peace</i>
8406	Ps	147	14	 2) Heb 
8407	Ps	147	14	<i>fat of wheat</i>
8408	Ps	147	20	1) Heb 
8409	Ps	147	20	<i>Hallelujah</i>
8410	Ps	148	1	1) Heb 
8411	Ps	148	1	<i>Hallelujah</i>
8412	Ps	148	6	1) Or 
8413	Ps	148	6	<i>which none shall transgress</i>
8414	Ps	148	14	1) Or 
8415	Ps	148	14	<i>a horn for his people, A praise for all his saints; Even for etc</i>
8416	Ps	148	14	 2) Heb 
8417	Ps	148	14	<i>Hallelujah</i>
8418	Ps	149	1	1) Heb 
8419	Ps	149	1	<i>Hallelujah</i>
8420	Ps	149	4	1) Or 
8421	Ps	149	4	<i>victory</i>
8422	Ps	149	6	1) Heb 
8423	Ps	149	6	<i>throat</i>
8424	Ps	149	9	1) Or 
8425	Ps	149	9	<i>He is the honor of all his saints</i>
8426	Ps	149	9	 2) Heb 
8427	Ps	149	9	<i>Hallelujah</i>
8428	Ps	150	1	1) Heb 
8429	Ps	150	1	<i>Hallelujah</i>
8430	Ps	150	6	1) Heb 
8431	Ps	150	6	<i>Jah</i>
8432	Ps	150	6	 2) Heb 
8433	Ps	150	6	<i>Hallelujah</i>
8434	Prov	1	6	1) Or 
8435	Prov	1	6	<i>an interpretation</i>
8436	Prov	1	6	 2) Or 
8437	Prov	1	6	<i>riddles</i>
8438	Prov	1	7	1) Or 
8439	Prov	1	7	<i>chief part</i>
8440	Prov	1	8	1) Or 
8441	Prov	1	8	<i>teaching</i>
8442	Prov	1	12	1) Or 
8443	Prov	1	12	<i>Even the perfect</i>
8444	Prov	1	14	1) Or 
8445	Prov	1	14	<i>Cast in thy lot</i>
8446	Prov	1	21	1) Heb 
8447	Prov	1	21	<i>at the head of the noisy</i>
8448	Prov	1	21	 streets
8449	Prov	1	27	1) Or 
8450	Prov	1	27	<i>desolation</i>
8451	Prov	1	28	1) Or 
8452	Prov	1	28	<i>early</i>
8453	Prov	2	7	1) Or, And 
8454	Prov	2	7	<i>a shield for etc</i>
8455	Prov	2	8	1) Or 
8456	Prov	2	8	<i>That they may keep</i>
8457	Prov	2	8	 2) Or 
8458	Prov	2	8	<i>Yea, he preserveth</i>
8459	Prov	2	12	1) Or 
8460	Prov	2	12	<i>the evil</i>
8461	Prov	2	12	 man
8462	Prov	2	14	1) Or 
8463	Prov	2	14	<i>the evil</i>
8464	Prov	2	14	 man
8465	Prov	2	16	1) Heb 
8466	Prov	2	16	<i>maketh smooth her words</i>
8467	Prov	2	17	1) Or 
8468	Prov	2	17	<i>guide</i>
8469	Prov	2	18	1) Or 
8470	Prov	2	18	<i>she sinketh down unto death,</i>
8471	Prov	2	18	 which is 
8472	Prov	2	18	<i>her house</i>
8473	Prov	2	18	 2) Or 
8474	Prov	2	18	<i>the shades</i>
8475	Prov	2	18	 ; Heb 
8476	Prov	2	18	<i>Rephaim</i>
8477	Prov	2	21	1) Or 
8478	Prov	2	21	<i>earth</i>
8479	Prov	2	22	1) Or 
8480	Prov	2	22	<i>earth</i>
8481	Prov	3	1	1) Or 
8482	Prov	3	1	<i>teaching</i>
8483	Prov	3	4	1) Or 
8484	Prov	3	4	<i>good repute</i>
8485	Prov	3	6	1) Or 
8486	Prov	3	6	<i>make straight</i>
8487	Prov	3	6	 (or 
8488	Prov	3	6	<i>plain</i>
8489	Prov	3	6	 )
8490	Prov	3	8	1) Or 
8491	Prov	3	8	<i>refreshing</i>
8492	Prov	3	8	 ; Heb 
8493	Prov	3	8	<i>moistening</i>
8494	Prov	3	11	1) Or 
8495	Prov	3	11	<i>instruction</i>
8496	Prov	3	13	1) Heb 
8497	Prov	3	13	<i>draweth forth</i>
8498	Prov	3	23	1) Heb 
8499	Prov	3	23	<i>thou shalt not dash thy foot</i>
8500	Prov	3	25	1) Or 
8501	Prov	3	25	<i>storm</i>
8502	Prov	3	32	1) Or 
8503	Prov	3	32	<i>counsel</i>
8504	Prov	3	34	1) Or 
8505	Prov	3	34	<i>Though</i>
8506	Prov	3	34	 2) Or 
8507	Prov	3	34	<i>Yet</i>
8508	Prov	3	35	1) Or 
8509	Prov	3	35	<i>fools carry away shame</i>
8510	Prov	4	2	1) Or 
8511	Prov	4	2	<i>teaching</i>
8512	Prov	4	3	1) Heb 
8513	Prov	4	3	<i>an only one</i>
8514	Prov	4	7	1) Or 
8515	Prov	4	7	<i>The beginning of wisdom</i>
8516	Prov	4	7	 is, 
8517	Prov	4	7	<i>Get wisdom</i>
8518	Prov	4	7	 2) Or 
8519	Prov	4	7	<i>thou hast gotten</i>
8520	Prov	4	9	1) Or 
8521	Prov	4	9	<i>glory</i>
8522	Prov	4	23	1) Or 
8523	Prov	4	23	<i>above all that thou guardest</i>
8524	Prov	4	26	1) Or 
8648	Prov	8	31	<i>Sporting</i>
8525	Prov	4	26	<i>Weigh carefully</i>
8526	Prov	4	26	 2) Or 
8527	Prov	4	26	<i>ordered aright</i>
8528	Prov	5	6	1) Or 
8529	Prov	5	6	<i>Lest thou find the level etc</i>
8530	Prov	5	6	 ; Or 
8531	Prov	5	6	<i>Lest thou weigh carefully the path of life</i>
8532	Prov	5	6	 2) Or 
8533	Prov	5	6	<i>thou canst not know</i>
8534	Prov	5	6	 them
8535	Prov	5	10	1) Or 
8536	Prov	5	10	<i>wealth</i>
8537	Prov	5	11	1) Or 
8538	Prov	5	11	<i>groan</i>
8539	Prov	5	16	1) Or 
8540	Prov	5	16	<i>Let</i>
8541	Prov	5	19	1) Heb 
8542	Prov	5	19	<i>go astray</i>
8543	Prov	5	20	1) Heb 
8544	Prov	5	20	<i>go astray</i>
8545	Prov	5	21	1) Or 
8546	Prov	5	21	<i>weigheth carefully</i>
8547	Prov	6	1	1) Or 
8548	Prov	6	1	<i>thy hand with a stranger</i>
8549	Prov	6	3	1) Or 
8550	Prov	6	3	<i>bestir</i>
8551	Prov	6	5	1) Or 
8552	Prov	6	5	<i>gazelle</i>
8553	Prov	6	7	1) Or 
8554	Prov	6	7	<i>judge</i>
8555	Prov	6	9	1) Heb 
8556	Prov	6	9	<i>lie down</i>
8557	Prov	6	10	1) Heb 
8558	Prov	6	10	<i>lie down</i>
8559	Prov	6	11	1) Or 
8560	Prov	6	11	<i>rover</i>
8561	Prov	6	11	 2) Heb 
8562	Prov	6	11	<i>a man with a shield</i>
8563	Prov	6	13	1) Or 
8564	Prov	6	13	<i>shuffleth</i>
8565	Prov	6	13	 2) Or 
8566	Prov	6	13	<i>teacheth with</i>
8567	Prov	6	14	1) Heb 
8568	Prov	6	14	<i>letteth loose</i>
8569	Prov	6	16	1) Heb 
8570	Prov	6	16	<i>of his soul</i>
8571	Prov	6	19	1) Heb 
8572	Prov	6	19	<i>breatheth out</i>
8573	Prov	6	19	 2) Heb 
8574	Prov	6	19	<i>letteth loose</i>
8575	Prov	6	20	1) Or 
8576	Prov	6	20	<i>teaching</i>
8577	Prov	6	22	1) Heb 
8578	Prov	6	22	<i>liest down</i>
8579	Prov	6	23	1) Or, their 
8580	Prov	6	23	<i>commandment</i>
8581	Prov	6	23	 2) Or, their 
8582	Prov	6	23	<i>teaching</i>
8583	Prov	6	26	1) Heb 
8584	Prov	6	26	<i>a man’s wife</i>
8585	Prov	6	29	1) Heb 
8586	Prov	6	29	<i>held innocent</i>
8587	Prov	6	30	1) Or 
8588	Prov	6	30	<i>his appetite</i>
8589	Prov	6	32	1) Heb 
8590	Prov	6	32	<i>heart</i>
8591	Prov	7	4	1) Or 
8592	Prov	7	4	<i>familiar friend</i>
8593	Prov	7	5	1) Heb 
8594	Prov	7	5	<i>maketh smooth her words</i>
8595	Prov	7	9	1) Heb 
8596	Prov	7	9	<i>pupil</i>
8597	Prov	7	9	 (of the eye)
8598	Prov	7	10	1) Or 
8599	Prov	7	10	<i>close</i>
8600	Prov	7	10	 ; Heb 
8601	Prov	7	10	<i>guarded</i>
8602	Prov	7	11	1) Or 
8603	Prov	7	11	<i>turbulent</i>
8604	Prov	7	13	1) Heb 
8605	Prov	7	13	<i>She hardened her face, and said</i>
8606	Prov	7	14	1) Or 
8607	Prov	7	14	<i>were due from me</i>
8608	Prov	7	16	1) Or 
8609	Prov	7	16	<i>cushions</i>
8610	Prov	7	17	1) Or 
8611	Prov	7	17	<i>sprinkled</i>
8612	Prov	7	22	1) Heb 
8613	Prov	7	22	<i>suddenly</i>
8614	Prov	7	22	 2) The Hebrew is obscure.
8615	Prov	8	8	1) Or 
8616	Prov	8	8	<i>are righteousness</i>
8617	Prov	8	12	1) Or 
8618	Prov	8	12	<i>knowledge of witty inventions</i>
8619	Prov	8	14	1) Or 
8620	Prov	8	14	<i>effectual working</i>
8621	Prov	8	16	1) Or 
8622	Prov	8	16	<i>rulers</i>
8623	Prov	8	17	1) Or 
8624	Prov	8	17	<i>early</i>
8625	Prov	8	18	1) Or 
8626	Prov	8	18	<i>ancient</i>
8627	Prov	8	19	1) Or 
8628	Prov	8	19	<i>increase</i>
8629	Prov	8	22	1) Or 
8630	Prov	8	22	<i>formed</i>
8631	Prov	8	22	 2) Or 
8632	Prov	8	22	<i>as</i>
8633	Prov	8	22	 3) Or 
8634	Prov	8	22	<i>The first of</i>
8635	Prov	8	26	1) Or 
8636	Prov	8	26	<i>sum</i>
8637	Prov	8	27	1) Or 
8638	Prov	8	27	<i>prepared</i>
8639	Prov	8	29	1) Or 
8640	Prov	8	29	<i>his decree</i>
8641	Prov	8	29	 2) Or 
8642	Prov	8	29	<i>appointed</i>
8643	Prov	8	30	1) Or 
8644	Prov	8	30	<i>had delight continually</i>
8645	Prov	8	30	 2) Or 
8646	Prov	8	30	<i>Sporting</i>
8647	Prov	8	31	1) Or 
8649	Prov	8	35	1) Heb 
8650	Prov	8	35	<i>draw forth</i>
8651	Prov	8	36	1) Or 
8652	Prov	8	36	<i>misseth me</i>
8653	Prov	9	6	1) Or 
8654	Prov	9	6	<i>Forsake the simple</i>
8655	Prov	9	13	1) Or 
8656	Prov	9	13	<i>Folly</i>
8657	Prov	9	13	 2) Heb 
8658	Prov	9	13	<i>simplicity</i>
8659	Prov	9	18	1) Or 
8660	Prov	9	18	<i>the shades</i>
8661	Prov	9	18	 ; Heb 
8662	Prov	9	18	<i>Rephaim</i>
8663	Prov	10	5	1) Or 
8664	Prov	10	5	<i>a son that doeth wisely</i>
8665	Prov	10	5	 2) Or 
8666	Prov	10	5	<i>that doeth shamefully</i>
8667	Prov	10	6	1) Or 
8668	Prov	10	6	<i>the mouth of the wicked covereth violence</i>
8669	Prov	10	8	1) Heb 
8670	Prov	10	8	<i>the foolish of lips</i>
8671	Prov	10	8	 2) Or 
8672	Prov	10	8	<i>shall be overthrown</i>
8673	Prov	10	8	 (or 
8674	Prov	10	8	<i>laid low</i>
8675	Prov	10	8	 )
8676	Prov	10	10	1) Heb 
8677	Prov	10	10	<i>the foolish of lips</i>
8678	Prov	10	10	 2) Or 
8679	Prov	10	10	<i>shall be overthrown</i>
8680	Prov	10	10	 (or 
8681	Prov	10	10	<i>laid low</i>
8682	Prov	10	10	 )
8683	Prov	10	11	1) Or 
8684	Prov	10	11	<i>the mouth of the wicked covereth violence</i>
8685	Prov	10	13	1) Heb 
8686	Prov	10	13	<i>heart</i>
8687	Prov	10	17	1) Or 
8688	Prov	10	17	<i>is a way</i>
8689	Prov	10	17	 2) Or 
8690	Prov	10	17	<i>instruction</i>
8691	Prov	10	17	 3) Or 
8692	Prov	10	17	<i>causeth to err</i>
8693	Prov	10	19	1) Or 
8694	Prov	10	19	<i>is wise</i>
8695	Prov	10	21	1) Heb 
8696	Prov	10	21	<i>heart</i>
8697	Prov	10	22	1) Or 
8698	Prov	10	22	<i>toil addeth nothing thereto</i>
8699	Prov	10	23	1) Or 
8700	Prov	10	23	<i>But a man of understanding hath wisdom</i>
8701	Prov	10	25	1) Or 
8702	Prov	10	25	<i>As the whirlwind passeth, so is the wicked no more</i>
8703	Prov	10	27	1) Heb 
8704	Prov	10	27	<i>addeth</i>
8705	Prov	10	29	1) Or 
8706	Prov	10	29	<i>destruction shall be to etc</i>
8707	Prov	10	30	1) Or 
8708	Prov	10	30	<i>earth</i>
8709	Prov	10	31	1) Or 
8710	Prov	10	31	<i>buddeth with</i>
8711	Prov	10	32	1) Or, is
8712	Prov	11	1	1) Heb 
8713	Prov	11	1	<i>A balance of deceit</i>
8714	Prov	11	5	1) Or 
8715	Prov	11	5	<i>make straight</i>
8716	Prov	11	5	 (or 
8717	Prov	11	5	<i>plain</i>
8718	Prov	11	5	 )
8719	Prov	11	7	1) Or 
8720	Prov	11	7	<i>strong</i>
8721	Prov	11	7	 men
8722	Prov	11	12	1) Heb 
8723	Prov	11	12	<i>heart</i>
8724	Prov	11	15	1) Heb 
8725	Prov	11	15	<i>shall be sore broken</i>
8726	Prov	11	15	 2) Heb 
8727	Prov	11	15	<i>those that strike</i>
8728	Prov	11	15	 hands
8729	Prov	11	19	1) Or 
8730	Prov	11	19	<i>So righteousness</i>
8731	Prov	11	19	 tendeth 
8732	Prov	11	19	<i>to life, and he etc</i>
8733	Prov	11	21	1) Or 
8734	Prov	11	21	<i>My hand upon it!</i>
8735	Prov	11	21	 Heb 
8736	Prov	11	21	<i>Hand to hand</i>
8737	Prov	11	22	1) Heb 
8738	Prov	11	22	<i>turneth aside from</i>
8739	Prov	11	23	1) Or 
8740	Prov	11	23	<i>arrogance</i>
8741	Prov	11	24	1) Or 
8742	Prov	11	24	<i>what is justly due</i>
8743	Prov	12	1	1) Or 
8744	Prov	12	1	<i>instruction</i>
8745	Prov	12	6	1) Or 
8746	Prov	12	6	<i>are a lying in wait</i>
8747	Prov	12	7	1) Or 
8748	Prov	12	7	<i>Overthrow the wicked, and they are not</i>
8749	Prov	12	11	1) Or 
8750	Prov	12	11	<i>vain</i>
8751	Prov	12	11	 things
8752	Prov	12	12	1) Or 
8753	Prov	12	12	<i>the prey</i>
8754	Prov	12	13	1) Or 
8755	Prov	12	13	<i>an evil snare</i>
8756	Prov	12	16	1) Or 
8757	Prov	12	16	<i>openly</i>
8758	Prov	12	16	 ; Heb 
8759	Prov	12	16	<i>in the day</i>
8760	Prov	12	17	1) Heb 
8761	Prov	12	17	<i>breatheth out</i>
8762	Prov	12	24	1) Heb 
8763	Prov	12	24	<i>slothfulness</i>
8764	Prov	12	25	1) Or 
8765	Prov	12	25	<i>Care</i>
8766	Prov	12	27	1) Heb 
8767	Prov	12	27	<i>slothfulness</i>
8768	Prov	12	27	 2) Or 
8769	Prov	12	27	<i>catcheth not his prey</i>
8770	Prov	12	27	 3) Or, is to be 
8771	Prov	12	27	<i>diligent</i>
8772	Prov	13	1	1) Or 
8773	Prov	13	1	<i>correction</i>
8774	Prov	13	2	1) Or 
8775	Prov	13	2	<i>from</i>
8776	Prov	13	2	 2) Or 
8777	Prov	13	2	<i>the desire of the treacherous</i>
8778	Prov	13	2	  is for 
8779	Prov	13	2	<i>violence</i>
8780	Prov	13	5	1) Or 
8781	Prov	13	5	<i>causeth shame and bringeth reproach</i>
8782	Prov	13	6	1) Heb 
8783	Prov	13	6	<i>uprightness of way</i>
8784	Prov	13	6	 2) Heb 
8785	Prov	13	6	<i>sin</i>
8786	Prov	13	7	1) Or 
8787	Prov	13	7	<i>feigneth</i>
8788	Prov	13	8	1) Or 
8789	Prov	13	8	<i>rebuke</i>
8790	Prov	13	11	1) Heb 
8791	Prov	13	11	<i>with the hand</i>
8792	Prov	13	13	1) Or 
8793	Prov	13	13	<i>maketh himself a debtor thereto</i>
8794	Prov	13	14	1) Or 
8795	Prov	13	14	<i>teaching</i>
8796	Prov	13	15	1) Or 
8797	Prov	13	15	<i>getteth</i>
8798	Prov	13	18	1) Or 
8799	Prov	13	18	<i>instruction</i>
8800	Prov	13	20	1) According to another reading 
8801	Prov	13	20	<i>He that walketh with wise men shall be wise</i>
8802	Prov	13	20	 2) Heb 
8803	Prov	13	20	<i>be broken</i>
8804	Prov	13	23	1) Or 
8805	Prov	13	23	<i>tilled land</i>
8806	Prov	13	24	1) Or 
8807	Prov	13	24	<i>diligently</i>
8808	Prov	14	1	1) Heb 
8809	Prov	14	1	<i>folly</i>
8810	Prov	14	5	1) Heb 
8811	Prov	14	5	<i>breatheth out</i>
8812	Prov	14	7	1) Or 
8813	Prov	14	7	<i>Go from…For thou wilt not etc</i>
8814	Prov	14	9	1) Or 
8815	Prov	14	9	<i>Fools make a mock at sin</i>
8816	Prov	14	9	 2) Or 
8817	Prov	14	9	<i>the favor</i>
8818	Prov	14	9	 of God
8819	Prov	14	12	1) Or 
8820	Prov	14	12	<i>is straight before</i>
8821	Prov	14	22	1) Or 
8822	Prov	14	22	<i>Shall they not go astray</i>
8823	Prov	14	24	1) Or 
8824	Prov	14	24	<i>Their riches is a crown unto the wise</i>
8825	Prov	14	25	1) Heb 
8826	Prov	14	25	<i>breatheth out</i>
8827	Prov	14	26	1) Or 
8828	Prov	14	26	<i>the children of him</i>
8829	Prov	14	26	 that hath it
8830	Prov	14	29	1) Or 
8831	Prov	14	29	<i>carrieth away</i>
8832	Prov	14	30	1) Or 
8833	Prov	14	30	<i>jealousy</i>
8834	Prov	14	32	1) Or 
8835	Prov	14	32	<i>calamity</i>
8836	Prov	14	33	1) Or 
8837	Prov	14	33	<i>And in the midst of fools it maketh itself known</i>
8838	Prov	14	34	1) Heb 
8839	Prov	14	34	<i>peoples</i>
8840	Prov	14	35	1) Or 
8841	Prov	14	35	<i>doeth shamefully</i>
8842	Prov	15	4	1) Heb 
8843	Prov	15	4	<i>The healing of the tongue</i>
8844	Prov	15	5	1) Or 
8845	Prov	15	5	<i>instruction</i>
8846	Prov	15	5	 2) Or 
8847	Prov	15	5	<i>dealeth prudently</i>
8848	Prov	15	7	1) Or, is 
8849	Prov	15	7	<i>not stedfast</i>
8850	Prov	15	7	 (or 
8851	Prov	15	7	<i>right</i>
8852	Prov	15	7	 )
8853	Prov	15	11	1) Or 
8854	Prov	15	11	<i>Destruction</i>
8855	Prov	15	17	1) Or 
8856	Prov	15	17	<i>portion</i>
8857	Prov	15	21	1) Heb 
8858	Prov	15	21	<i>heart</i>
8859	Prov	15	26	1) Or 
8860	Prov	15	26	<i>the pure</i>
8861	Prov	15	26	 speak 
8862	Prov	15	26	<i>pleasant words</i>
8863	Prov	15	32	1) Or 
8864	Prov	15	32	<i>instruction</i>
8865	Prov	15	32	 2) Heb 
8866	Prov	15	32	<i>heart</i>
8867	Prov	16	3	1) Heb 
8868	Prov	16	3	<i>Roll</i>
8869	Prov	16	4	1) Or 
8870	Prov	16	4	<i>his own purpose</i>
8871	Prov	16	10	1) Heb 
8872	Prov	16	10	<i>Divination</i>
8873	Prov	16	19	1) Or 
8874	Prov	16	19	<i>meek</i>
8875	Prov	16	20	1) Or 
8876	Prov	16	20	<i>handleth a matter wisely</i>
8877	Prov	16	25	1) Or 
8878	Prov	16	25	<i>is straight before</i>
8879	Prov	16	27	1) Heb 
8880	Prov	16	27	<i>diggeth</i>
8881	Prov	16	28	1) Or 
8882	Prov	16	28	<i>alienateth his friend</i>
8883	Prov	16	30	1) Or 
8884	Prov	16	30	<i>He that shutteth his eyes to devise perverse things, That compresseth his lips, bringeth etc</i>
8885	Prov	16	31	1) Or 
8886	Prov	16	31	<i>beauty</i>
8887	Prov	16	31	 2) Or, If 
8888	Prov	16	31	<i>it be found</i>
8889	Prov	17	1	1) Heb 
8890	Prov	17	1	<i>the sacrifices of strife</i>
8891	Prov	17	2	1) Or 
8892	Prov	17	2	<i>doeth shamefully</i>
8893	Prov	17	4	1) Heb 
8894	Prov	17	4	<i>falsehood</i>
8895	Prov	17	7	1) Or 
8896	Prov	17	7	<i>Arrogant</i>
8897	Prov	17	8	1) Or 
8898	Prov	17	8	<i>he</i>
8899	Prov	17	8	 2) Or 
8900	Prov	17	8	<i>dealeth wisely</i>
8901	Prov	17	11	1) Or 
8902	Prov	17	11	<i>A rebellious man</i>
8903	Prov	17	11	 (Heb 
8904	Prov	17	11	<i>Rebellion</i>
8905	Prov	17	11	 ) 
8906	Prov	17	11	<i>seeketh only evil</i>
8907	Prov	17	16	1) Heb 
8908	Prov	17	16	<i>heart</i>
8909	Prov	17	17	1) Or 
8910	Prov	17	17	<i>is born as a brother</i>
8911	Prov	17	18	1) Heb 
8912	Prov	17	18	<i>heart</i>
8913	Prov	17	19	1) Or 
8914	Prov	17	19	<i>He that loveth transgression loveth strife</i>
8915	Prov	17	20	1) Or 
8916	Prov	17	20	<i>calamity</i>
8917	Prov	17	22	1) Heb 
8918	Prov	17	22	<i>causeth good healing</i>
8919	Prov	17	26	1) Or 
8920	Prov	17	26	<i>fine</i>
8921	Prov	17	27	1) Or 
8922	Prov	17	27	<i>that hath knowledge spareth his words; And a man of understanding is of a cool spirit</i>
8923	Prov	17	28	1) Or 
8924	Prov	17	28	<i>He that shutteth his lips is etc</i>
8925	Prov	18	1	1) Or 
8926	Prov	18	1	<i>quarrelleth with</i>
8927	Prov	18	4	1) Or 
8928	Prov	18	4	<i>A flowing brook, a wellspring of wisdom</i>
8929	Prov	18	5	1) Or 
8930	Prov	18	5	<i>So as to turn aside</i>
8931	Prov	18	6	1) Or 
8932	Prov	18	6	<i>bring contention</i>
8933	Prov	18	10	1) Heb 
8934	Prov	18	10	<i>is set on high</i>
8935	Prov	18	14	1) Or 
8936	Prov	18	14	<i>raise up</i>
8937	Prov	18	19	1) Or 
8938	Prov	18	19	<i>injured</i>
8939	Prov	18	24	1) Heb 
8940	Prov	18	24	<i>A man of friends</i>
8941	Prov	18	24	 2) Heb 
8942	Prov	18	24	<i>lover</i>
8943	Prov	19	2	1) Or 
8944	Prov	19	2	<i>desire without knowledge is not good</i>
8945	Prov	19	2	 2) Or 
8946	Prov	19	2	<i>misseth</i>
8947	Prov	19	2	  his way
8948	Prov	19	4	1) Or 
8949	Prov	19	4	<i>the friend of the poor separateth himself from him</i>
8950	Prov	19	5	1) Heb 
8951	Prov	19	5	<i>breatheth out</i>
8952	Prov	19	6	1) Or 
8953	Prov	19	6	<i>a prince</i>
8954	Prov	19	7	1) Or 
8955	Prov	19	7	<i>He pursueth after words,</i>
8956	Prov	19	7	 which 
8957	Prov	19	7	<i>are nought</i>
8958	Prov	19	8	1) Heb 
8959	Prov	19	8	<i>heart</i>
8960	Prov	19	9	1) Heb 
8961	Prov	19	9	<i>breatheth out</i>
8962	Prov	19	16	1) Heb 
8963	Prov	19	16	<i>despiseth</i>
8964	Prov	19	18	1) Heb 
8965	Prov	19	18	<i>causing him to die</i>
8966	Prov	19	20	1) Or 
8967	Prov	19	20	<i>correction</i>
8968	Prov	20	1	1) Or 
8969	Prov	20	1	<i>reeleth</i>
8970	Prov	20	2	1) Or 
8971	Prov	20	2	<i>angereth himself against him</i>
8972	Prov	20	2	 2) Heb 
8973	Prov	20	2	<i>soul</i>
8974	Prov	20	3	1) Or 
8975	Prov	20	3	<i>cease</i>
8976	Prov	20	4	1) Or 
8977	Prov	20	4	<i>Therefore when he seeketh in harvest, there shall be nothing</i>
8978	Prov	20	6	1) Or 
8979	Prov	20	6	<i>Many a man will meet one that is kind to him</i>
8980	Prov	20	8	1) Or 
8981	Prov	20	8	<i>Winnoweth</i>
8982	Prov	20	10	1) Heb 
8983	Prov	20	10	<i>A stone and a stone, an ephah and an ephah</i>
8984	Prov	20	16	1) Or 
8985	Prov	20	16	<i>take a pledge of him</i>
8986	Prov	20	16	 2) Another reading is 
8987	Prov	20	16	<i>a foreign woman</i>
8988	Prov	20	23	1) Heb 
8989	Prov	20	23	<i>a balance of deceit</i>
8990	Prov	20	25	1) Or 
8991	Prov	20	25	<i>rashly to utter holy</i>
8992	Prov	20	25	 words; Or 
8993	Prov	20	25	<i>to devour</i>
8994	Prov	20	25	 that which is 
8995	Prov	20	25	<i>holy</i>
8996	Prov	20	28	1) Or 
8997	Prov	20	28	<i>he upholdeth his throne</i>
8998	Prov	21	4	1) Or, And 
8999	Prov	21	4	<i>the tillage</i>
9000	Prov	21	8	1) Or 
9001	Prov	21	8	<i>straight</i>
9002	Prov	21	9	1) Or 
9003	Prov	21	9	<i>a house in common</i>
9004	Prov	21	9	 ; Heb 
9005	Prov	21	9	<i>a house of society</i>
9006	Prov	21	11	1) Or 
9007	Prov	21	11	<i>when one considereth the wise</i>
9008	Prov	21	12	1) Or 
9009	Prov	21	12	<i>One that is righteous…he overthroweth the wicked etc</i>
9010	Prov	21	14	1) Heb 
9011	Prov	21	14	<i>bendeth</i>
9012	Prov	21	15	1) Or 
9013	Prov	21	15	<i>But destruction</i>
9014	Prov	21	15	 shall be 
9015	Prov	21	15	<i>to etc</i>
9016	Prov	21	16	1) Or 
9017	Prov	21	16	<i>the shades</i>
9018	Prov	21	16	 ; Heb 
9019	Prov	21	16	<i>Rephaim</i>
9020	Prov	21	19	1) Or 
9021	Prov	21	19	<i>a contentious woman and vexation</i>
9022	Prov	21	27	1) Or, to atone 
9023	Prov	21	27	<i>for wickedness</i>
9024	Prov	21	29	1) Another reading is 
9025	Prov	21	29	<i>he considereth his way</i>
9026	Prov	21	31	1) Or 
9027	Prov	21	31	<i>deliverance</i>
9028	Prov	22	1	1) Or 
9029	Prov	22	1	<i>favor is better than etc</i>
9030	Prov	22	3	1) Heb 
9031	Prov	22	3	<i>are mulcted</i>
9032	Prov	22	6	1) Heb 
9033	Prov	22	6	<i>according to his way</i>
9034	Prov	22	8	1) Or 
9035	Prov	22	8	<i>vanity</i>
9036	Prov	22	9	1) Heb 
9037	Prov	22	9	<i>good</i>
9038	Prov	22	11	1) Another reading is 
9039	Prov	22	11	<i>the pure of heart</i>
9040	Prov	22	11	 2) Or 
9041	Prov	22	11	<i>Hath grace in his lips</i>
9042	Prov	22	11	 ; Or, That 
9043	Prov	22	11	<i>hath grace in his lips</i>
9044	Prov	22	14	1) Or 
9045	Prov	22	14	<i>against whom Jehovah hath indignation</i>
9046	Prov	22	20	1) The word is doubtful. Another reading is 
9047	Prov	22	20	<i>heretofore</i>
9048	Prov	22	20	 2) Or 
9049	Prov	22	20	<i>In</i>
9050	Prov	22	21	1) Or 
9051	Prov	22	21	<i>of a certainty the words etc</i>
9052	Prov	22	22	1) Or 
9053	Prov	22	22	<i>for</i>
9054	Prov	22	22	 2) Or 
9055	Prov	22	22	<i>crush</i>
9056	Prov	22	29	1) Or 
9057	Prov	22	29	<i>skilful</i>
9058	Prov	22	29	 2) Heb 
9059	Prov	22	29	<i>obscure</i>
9060	Prov	23	1	1) Or 
9061	Prov	23	1	<i>what</i>
9062	Prov	23	2	1) Or 
9063	Prov	23	2	<i>For thou wilt put</i>
9064	Prov	23	4	1) Or 
9065	Prov	23	4	<i>by reason of thine own understanding</i>
9066	Prov	23	5	1) Or 
9067	Prov	23	5	<i>Wilt thou set thine eyes upon it? it is gone:</i>
9068	Prov	23	5	 Heb 
9069	Prov	23	5	<i>Shall thine eyes fly upon it, and it is not?</i>
9070	Prov	23	7	1) Or 
9071	Prov	23	7	<i>as one that reckoneth</i>
9072	Prov	23	12	1) Or 
9073	Prov	23	12	<i>correction</i>
9074	Prov	23	13	1) Or 
9075	Prov	23	13	<i>though</i>
9076	Prov	23	16	1) Heb 
9077	Prov	23	16	<i>reins</i>
9078	Prov	23	18	1) Or 
9079	Prov	23	18	<i>sequel</i>
9080	Prov	23	18	 ; Or 
9081	Prov	23	18	<i>future</i>
9082	Prov	23	18	 ; Heb 
9083	Prov	23	18	<i>latter end</i>
9084	Prov	23	26	1) Another reading is 
9085	Prov	23	26	<i>observe</i>
9086	Prov	23	28	1) Or 
9087	Prov	23	28	<i>as</i>
9088	Prov	23	28	 for 
9089	Prov	23	28	<i>a prey</i>
9090	Prov	23	29	1) Heb 
9091	Prov	23	29	<i>Oh!</i>
9092	Prov	23	29	 2) Heb 
9093	Prov	23	29	<i>Alas!</i>
9094	Prov	23	29	 3) Or 
9095	Prov	23	29	<i>darkness</i>
9096	Prov	23	30	1) Or 
9097	Prov	23	30	<i>try</i>
9098	Prov	23	31	1) Or 
9099	Prov	23	31	<i>moveth itself aright</i>
9100	Prov	23	33	1) Or 
9101	Prov	23	33	<i>strange women</i>
9102	Prov	24	5	1) Heb 
9103	Prov	24	5	<i>is in strength</i>
9104	Prov	24	5	 2) Heb 
9105	Prov	24	5	<i>strengtheneth might</i>
9106	Prov	24	6	1) Or 
9107	Prov	24	6	<i>victory</i>
9108	Prov	24	11	1) Heb 
9109	Prov	24	11	<i>tottering to the slaughter</i>
9110	Prov	24	11	 2) Or 
9111	Prov	24	11	<i>forbear thou not to deliver</i>
9112	Prov	24	12	1) Or 
9113	Prov	24	12	<i>this man</i>
9114	Prov	24	15	1) Or 
9115	Prov	24	15	<i>as a wicked man</i>
9116	Prov	24	15	 2) Or 
9117	Prov	24	15	<i>pasture</i>
9118	Prov	24	15	 3) Or 
9119	Prov	24	15	<i>fold</i>
9120	Prov	24	22	1) Or 
9121	Prov	24	22	<i>of their years</i>
9122	Prov	24	26	1) Or 
9123	Prov	24	26	<i>kisseth with the lips</i>
9124	Prov	24	28	1) Heb 
9125	Prov	24	28	<i>And wouldest thou deceive with thy lips?</i>
9126	Prov	24	31	1) Or 
9127	Prov	24	31	<i>wild vetches</i>
9128	Prov	25	6	1) Heb 
9129	Prov	25	6	<i>Glorify not thyself</i>
9130	Prov	25	8	1) Or 
9131	Prov	25	8	<i>Lest</i>
9132	Prov	25	8	 it be said 
9133	Prov	25	8	<i>in the end thereof, What wilt thou do? When etc</i>
9134	Prov	25	9	1) Or 
9135	Prov	25	9	<i>But</i>
9136	Prov	25	11	1) Or 
9137	Prov	25	11	<i>in due season</i>
9138	Prov	25	12	1) Or 
9139	Prov	25	12	<i>a nose-ring</i>
9140	Prov	25	14	1) Heb 
9141	Prov	25	14	<i>in a gift of falsehood</i>
9142	Prov	25	15	1) Or 
9143	Prov	25	15	<i>judge</i>
9144	Prov	25	17	1) Heb 
9145	Prov	25	17	<i>full of thee</i>
9146	Prov	25	21	1) Heb 
9147	Prov	25	21	<i>he that hateth thee</i>
9148	Prov	25	25	1) Or 
9149	Prov	25	25	<i>weary</i>
9150	Prov	25	26	1) Heb 
9151	Prov	25	26	<i>trampled</i>
9152	Prov	25	26	 2) Or 
9153	Prov	25	26	<i>is moved</i>
9154	Prov	25	27	1) Or 
9155	Prov	25	27	<i>But</i>
9156	Prov	25	27	 for men 
9157	Prov	25	27	<i>to search out their own glory is glory</i>
9158	Prov	25	27	 ; The Hebrew text is obscure.
9159	Prov	25	28	1) Or 
9160	Prov	25	28	<i>He that hath no rule over his spirit</i>
9161	Prov	26	2	1) Heb 
9162	Prov	26	2	<i>cometh not</i>
9163	Prov	26	5	1) Heb 
9164	Prov	26	5	<i>his own eyes</i>
9165	Prov	26	10	1) Or 
9166	Prov	26	10	<i>A master worker formeth all things; But he that hireth the fool is as one that hireth them that pass by.</i>
9167	Prov	26	10	 The Hebrew is obscure.
9168	Prov	26	12	1) Heb 
9169	Prov	26	12	<i>his own eyes</i>
9170	Prov	26	16	1) Heb 
9171	Prov	26	16	<i>his own eyes</i>
9172	Prov	26	16	 2) Or 
9173	Prov	26	16	<i>answer discreetly</i>
9174	Prov	26	17	1) Or 
9175	Prov	26	17	<i>He that vexeth himself…Is</i>
9176	Prov	26	17	 like 
9177	Prov	26	17	<i>one that taketh a passing dog etc</i>
9178	Prov	26	28	1) Heb 
9179	Prov	26	28	<i>crushed</i>
9180	Prov	27	4	1) Heb 
9181	Prov	27	4	<i>a flood</i>
9182	Prov	27	7	1) Heb 
9183	Prov	27	7	<i>trampleth upon</i>
9184	Prov	27	16	1) Heb 
9185	Prov	27	16	<i>hide</i>
9186	Prov	27	16	 2) Heb 
9187	Prov	27	16	<i>hideth</i>
9188	Prov	27	16	 3) Or 
9189	Prov	27	16	<i>the oil of his right hand betrayeth itself</i>
9190	Prov	27	19	1) Or 
9191	Prov	27	19	<i>As water</i>
9192	Prov	27	19	 showeth 
9193	Prov	27	19	<i>face to face, so the heart</i>
9194	Prov	27	19	 showeth 
9195	Prov	27	19	<i>man to man.</i>
9196	Prov	27	21	1) Or 
9197	Prov	27	21	<i>that which he praiseth</i>
9198	Prov	27	21	 ; Or 
9199	Prov	27	21	<i>that whereof he boasteth</i>
9200	Prov	27	25	1) Heb 
9201	Prov	27	25	<i>grass</i>
9202	Prov	28	2	1) Or 
9203	Prov	28	2	<i>a man</i>
9204	Prov	28	3	1) Heb 
9205	Prov	28	3	<i>without food</i>
9206	Prov	28	6	1) Heb 
9207	Prov	28	6	<i>preverse of two ways</i>
9208	Prov	28	11	1) Heb 
9209	Prov	28	11	<i>his own eyes</i>
9210	Prov	28	12	1) Heb 
9211	Prov	28	12	<i>must be searched for</i>
9212	Prov	28	14	1) Or 
9213	Prov	28	14	<i>calamity</i>
9214	Prov	28	16	1) Or 
9215	Prov	28	16	<i>O prince that lackest understanding and art a great oppressor, He etc</i>
9216	Prov	28	18	1) Or 
9217	Prov	28	18	<i>he that walketh perversely in two ways</i>
9218	Prov	28	21	1) Or 
9219	Prov	28	21	<i>For for a piece of bread a man will transgress</i>
9220	Prov	29	2	1) Or 
9221	Prov	29	2	<i>are in authority</i>
9222	Prov	29	4	1) Or 
9223	Prov	29	4	<i>he that imposeth tribute</i>
9224	Prov	29	4	 ; Heb 
9225	Prov	29	4	<i>a man of offerings</i>
9226	Prov	29	7	1) Or 
9227	Prov	29	7	<i>understandeth not knowledge</i>
9228	Prov	29	9	1) Or 
9229	Prov	29	9	<i>He rageth and laugheth, and there is no rest</i>
9230	Prov	29	10	1) Or 
9231	Prov	29	10	<i>But the upright care for his soul</i>
9232	Prov	29	11	1) Heb 
9233	Prov	29	11	<i>spirit</i>
9234	Prov	29	16	1) Or 
9235	Prov	29	16	<i>are in authority</i>
9236	Prov	29	19	1) Heb 
9237	Prov	29	19	<i>answer</i>
9238	Prov	29	20	1) Or 
9239	Prov	29	20	<i>business</i>
9240	Prov	29	21	1) The meaning of the word is doubtful.
9241	Prov	29	25	1) Heb 
9242	Prov	29	25	<i>shall be set on high</i>
9243	Prov	30	1	1) Or 
9361	Eccl	3	11	<i>the world</i>
9244	Prov	30	1	<i>Jakeh, of Massa</i>
9245	Prov	30	1	 ; See Ge 25:14. 2) Or 
9246	Prov	30	1	<i>burden</i>
9247	Prov	30	1	 3) Or as otherwise read 
9248	Prov	30	1	<i>I have wearied myself, O God, I have wearied myself, O God, and am consumed: For I am etc</i>
9249	Prov	30	3	1) Or 
9250	Prov	30	3	<i>That I should have the knowledge etc</i>
9251	Prov	30	5	1) Heb 
9252	Prov	30	5	<i>purified</i>
9253	Prov	30	8	1) Heb 
9254	Prov	30	8	<i>the bread of my portion</i>
9255	Prov	30	9	1) Heb 
9256	Prov	30	9	<i>handle the name</i>
9257	Prov	30	15	1) Or 
9258	Prov	30	15	<i>vampire</i>
9259	Prov	30	15	 2) Or, called
9260	Prov	30	17	1) Or 
9261	Prov	30	17	<i>the brook</i>
9262	Prov	30	17	 2) Or 
9263	Prov	30	17	<i>vultures</i>
9264	Prov	30	21	1) Heb 
9265	Prov	30	21	<i>Under</i>
9266	Prov	30	28	1) Or 
9267	Prov	30	28	<i>thou canst seize with thy hands</i>
9268	Prov	30	31	1) Or 
9269	Prov	30	31	<i>war-horse</i>
9270	Prov	30	31	 ; Heb 
9271	Prov	30	31	<i>well girt</i>
9272	Prov	30	31	 (or 
9273	Prov	30	31	<i>well knit</i>
9274	Prov	30	31	 ) 
9275	Prov	30	31	<i>in the loins</i>
9276	Prov	30	31	 2) Or 
9277	Prov	30	31	<i>when his army is with him</i>
9278	Prov	30	33	1) Heb 
9279	Prov	30	33	<i>pressing</i>
9280	Prov	31	1	1) Or 
9281	Prov	31	1	<i>The words of Lemuel king of Massa, which etc</i>
9282	Prov	31	1	 ; See Pr 30:1 margin 2) Or 
9283	Prov	31	1	<i>burden</i>
9284	Prov	31	3	1) Or as otherwise read 
9285	Prov	31	3	<i>them that destroy</i>
9286	Prov	31	4	1) Another reading is 
9287	Prov	31	4	<i>to desire strong drink</i>
9288	Prov	31	5	1) Heb 
9289	Prov	31	5	<i>that which is decreed</i>
9290	Prov	31	5	 2) Heb 
9291	Prov	31	5	<i>all the sons of affliction</i>
9292	Prov	31	8	1) Or 
9293	Prov	31	8	<i>ready to pass away</i>
9294	Prov	31	8	 ; Heb 
9295	Prov	31	8	<i>the sons of passing away</i>
9296	Prov	31	11	1) Heb 
9297	Prov	31	11	<i>spoil</i>
9298	Prov	31	13	1) Or 
9299	Prov	31	13	<i>at the business of</i>
9300	Prov	31	15	1) Or 
9301	Prov	31	15	<i>portion</i>
9302	Prov	31	19	1) Heb 
9303	Prov	31	19	<i>palms</i>
9304	Prov	31	20	1) Heb 
9305	Prov	31	20	<i>palm</i>
9306	Prov	31	22	1) Or 
9307	Prov	31	22	<i>cushio</i>
9308	Prov	31	24	1) Heb 
9309	Prov	31	24	<i>Canaanite</i>
9310	Prov	31	26	1) Or 
9311	Prov	31	26	<i>teaching</i>
9312	Eccl	1	1	1) Heb 
9313	Eccl	1	1	<i>Koheleth</i>
9314	Eccl	1	7	1) Or 
9315	Eccl	1	7	<i>torrents</i>
9316	Eccl	1	8	1) Or 
9317	Eccl	1	8	<i>All words are feeble</i>
9318	Eccl	1	14	1) Or 
9319	Eccl	1	14	<i>a feeding on wind</i>
9320	Eccl	1	14	 (See Ho 12:1); Or 
9321	Eccl	1	14	<i>vexation of spirit</i>
9322	Eccl	1	14	 (and so elsewhere)
9323	Eccl	1	15	1) Heb 
9324	Eccl	1	15	<i>defect</i>
9325	Eccl	1	16	1) Or 
9326	Eccl	1	16	<i>yea, more than all</i>
9327	Eccl	1	16	 2) Heb 
9328	Eccl	1	16	<i>over</i>
9329	Eccl	1	16	 3) Heb 
9330	Eccl	1	16	<i>hath seen abundantly</i>
9331	Eccl	2	1	1) Or 
9332	Eccl	2	1	<i>and thou shalt enjoy</i>
9333	Eccl	2	1	 2) Or 
9334	Eccl	2	1	<i>good</i>
9335	Eccl	2	3	1) Or 
9336	Eccl	2	3	<i>holding its course</i>
9337	Eccl	2	3	 2) Heb 
9338	Eccl	2	3	<i>the number of days of their life</i>
9339	Eccl	2	8	1) Or 
9340	Eccl	2	8	<i>concubines very many</i>
9341	Eccl	2	8	 ; The meaning of the Hebrew is very uncertain.
9342	Eccl	2	9	1) Or 
9343	Eccl	2	9	<i>stood by me</i>
9344	Eccl	2	12	1) Or 
9345	Eccl	2	12	<i>after the king, even him whom they made king long ago?</i>
9346	Eccl	2	12	 Or 
9347	Eccl	2	12	<i>after the king, in those things which have been already done?</i>
9348	Eccl	2	21	1) Or 
9349	Eccl	2	21	<i>success</i>
9350	Eccl	2	21	 2) Heb 
9351	Eccl	2	21	<i>give</i>
9352	Eccl	2	22	1) Or 
9353	Eccl	2	22	<i>vexation</i>
9354	Eccl	2	25	1) Or 
9355	Eccl	2	25	<i>hasten</i>
9356	Eccl	2	25	 thereto 2) According to Sept and Syr 
9357	Eccl	2	25	<i>apart from him</i>
9358	Eccl	3	1	1) Or 
9359	Eccl	3	1	<i>matter</i>
9360	Eccl	3	11	1) Or 
9362	Eccl	3	12	1) Or 
9363	Eccl	3	12	<i>to get good</i>
9364	Eccl	3	15	1) Or 
9365	Eccl	3	15	<i>That which hath been is now</i>
9366	Eccl	3	15	  2) Heb 
9367	Eccl	3	15	<i>driven away</i>
9368	Eccl	3	17	1) Or 
9369	Eccl	3	17	<i>matter</i>
9370	Eccl	3	18	1) Or 
9371	Eccl	3	18	<i>I said in my heart concerning the sons of men.</i>
9372	Eccl	3	18	 It is 
9373	Eccl	3	18	<i>that God etc</i>
9374	Eccl	3	19	1) Or 
9375	Eccl	3	19	<i>spirit</i>
9376	Eccl	3	21	1) Heb 
9377	Eccl	3	21	<i>of the sons of men</i>
9378	Eccl	3	21	 2) Or 
9379	Eccl	3	21	<i>that goeth</i>
9380	Eccl	4	3	1) Or 
9381	Eccl	4	3	<i>better than they both is he that etc</i>
9382	Eccl	4	4	1) Or 
9383	Eccl	4	4	<i>successful</i>
9384	Eccl	4	4	 2) Or 
9385	Eccl	4	4	<i>it cometh of a man’s rivalry with his neighbor</i>
9386	Eccl	4	6	1) Or 
9387	Eccl	4	6	<i>of</i>
9388	Eccl	4	16	1) Or 
9389	Eccl	4	16	<i>There is no end, in the mind of all the people, to all that hath been before them; they also etc</i>
9390	Eccl	5	2	1) Or 
9391	Eccl	5	2	<i>a word</i>
9392	Eccl	5	3	1) Or 
9393	Eccl	5	3	<i>travail</i>
9394	Eccl	5	6	1) Or 
9395	Eccl	5	6	<i>messenger</i>
9396	Eccl	5	6	 of God; See Mal 2:7
9397	Eccl	5	8	1) Or 
9398	Eccl	5	8	<i>the state</i>
9399	Eccl	5	9	1) Or 
9400	Eccl	5	9	<i>But the profit of a land every way is a king that maketh himself servant to the field.</i>
9401	Eccl	5	9	  (or 
9402	Eccl	5	9	<i>is a king over the cultivated field</i>
9403	Eccl	5	9	 )
9404	Eccl	5	14	1) Or 
9405	Eccl	5	14	<i>travail</i>
9406	Eccl	5	18	1) Or 
9407	Eccl	5	18	<i>that which I have seen: it is good and comely for one etc</i>
9408	Eccl	5	18	 2) Heb 
9409	Eccl	5	18	<i>the number of the days</i>
9410	Eccl	6	5	1) Or 
9411	Eccl	6	5	<i>neither had any knowledge</i>
9412	Eccl	6	5	 2) Or 
9413	Eccl	6	5	<i>it is better with this than with the other</i>
9414	Eccl	6	8	1) Or, or 
9415	Eccl	6	8	<i>the poor man that hath understanding, in walking before the living</i>
9416	Eccl	6	10	1) Or 
9417	Eccl	6	10	<i>Whatsoever he be, his name was given him long ago, and it is know that he is man</i>
9418	Eccl	6	10	 2) Heb 
9419	Eccl	6	10	<i>Adam</i>
9420	Eccl	6	10	 ; See Ge 2:7
9421	Eccl	6	11	1) Or 
9422	Eccl	6	11	<i>words</i>
9423	Eccl	6	12	1) Heb 
9424	Eccl	6	12	<i>the number of the days</i>
9425	Eccl	7	3	1) Or 
9426	Eccl	7	3	<i>better</i>
9427	Eccl	7	7	1) Or 
9428	Eccl	7	7	<i>For</i>
9429	Eccl	7	9	1) Or 
9430	Eccl	7	9	<i>vexed</i>
9431	Eccl	7	9	 2) Or 
9432	Eccl	7	9	<i>vexation</i>
9433	Eccl	7	10	1) Heb 
9434	Eccl	7	10	<i>out of wisdom</i>
9435	Eccl	7	11	1) Or 
9436	Eccl	7	11	<i>is good together with an inheritance, and profitable unto them etc</i>
9437	Eccl	7	20	1) Or 
9438	Eccl	7	20	<i>For</i>
9439	Eccl	7	21	1) Heb 
9440	Eccl	7	21	<i>give not thy heart</i>
9441	Eccl	7	23	1) Or 
9442	Eccl	7	23	<i>tried by</i>
9443	Eccl	7	24	1) Or 
9444	Eccl	7	24	<i>hath been</i>
9445	Eccl	7	25	1) Or 
9446	Eccl	7	25	<i>the wickedness of folly, and foolishness</i>
9447	Eccl	7	25	 which is 
9448	Eccl	7	25	<i>madness</i>
9449	Eccl	7	26	1) Or 
9450	Eccl	7	26	<i>who is a snare, and her heart is</i>
9451	Eccl	7	26	 as 
9452	Eccl	7	26	<i>nets</i>
9453	Eccl	7	27	1) Or, weighing 
9454	Eccl	7	27	<i>one thing after another, to find out the reason</i>
9455	Eccl	8	1	1) Heb 
9456	Eccl	8	1	<i>strength</i>
9457	Eccl	8	6	1) Or 
9458	Eccl	8	6	<i>matter</i>
9459	Eccl	8	6	 2) Or 
9460	Eccl	8	6	<i>evil</i>
9461	Eccl	8	7	1) Or 
9462	Eccl	8	7	<i>for</i>
9463	Eccl	8	7	 even 
9464	Eccl	8	7	<i>when it cometh to pass, who shall declare it unto him?</i>
9465	Eccl	8	8	1) Or 
9466	Eccl	8	8	<i>wind</i>
9467	Eccl	8	8	 2) Or 
9468	Eccl	8	8	<i>in battle</i>
9469	Eccl	8	9	1) Or 
9470	Eccl	8	9	<i>what time one man had etc</i>
9471	Eccl	8	9	 2) Or 
9472	Eccl	8	9	<i>to his own hurt</i>
9473	Eccl	8	10	1) Or 
9474	Eccl	8	10	<i>who had come and gone away from the holy place; and they were forgotten in the city where they had so done</i>
9475	Eccl	8	10	 ; Or 
9476	Eccl	8	10	<i>and men came and went etc</i>
9477	Eccl	8	11	1) Or 
9478	Eccl	8	11	<i>emboldened</i>
9479	Eccl	8	15	1) Or 
9480	Eccl	8	15	<i>and that this should accompany him</i>
9481	Eccl	8	16	1) Or 
9482	Eccl	8	16	<i>travail</i>
9483	Eccl	8	16	 2) Or 
9484	Eccl	8	16	<i>how that neither by day nor by night do men see sleep with their eyes</i>
9485	Eccl	9	4	1) Another reading is 
9486	Eccl	9	4	<i>For who is exempted? With all etc</i>
9487	Eccl	9	4	 ; or 
9488	Eccl	9	4	<i>who can choose? With all etc</i>
9489	Eccl	9	9	1) Or 
9490	Eccl	9	9	<i>Enjoy</i>
9491	Eccl	9	9	 (Heb 
9492	Eccl	9	9	<i>See</i>
9493	Eccl	9	9	 ) 
9494	Eccl	9	9	<i>life</i>
9495	Eccl	9	10	1) Or 
9496	Eccl	9	10	<i>attaineth to do by they strength,</i>
9497	Eccl	9	10	 that 
9498	Eccl	9	10	<i>do</i>
9499	Eccl	10	1	1) Or 
9500	Eccl	10	1	<i>to stink and putrefy</i>
9501	Eccl	10	1	 2) Or 
9502	Eccl	10	1	<i>him that is valued for wisdom</i>
9503	Eccl	10	3	1) Heb 
9504	Eccl	10	3	<i>heart</i>
9505	Eccl	10	3	 2) Or 
9506	Eccl	10	3	<i>of</i>
9507	Eccl	10	4	1) Or 
9508	Eccl	10	4	<i>calmness leaveth great sins undone</i>
9509	Eccl	10	6	1) Heb 
9510	Eccl	10	6	<i>heights</i>
9511	Eccl	10	9	1) Or 
9512	Eccl	10	9	<i>moveth stones</i>
9513	Eccl	10	11	1) Or 
9514	Eccl	10	11	<i>Surely the serpent will bite where there is no enchantment; and the slanderer is no better.</i>
9515	Eccl	10	11	 2) Heb 
9516	Eccl	10	11	<i>without enchantment</i>
9517	Eccl	10	11	 3) Heb 
9518	Eccl	10	11	<i>the master of the tongue</i>
9519	Eccl	10	13	1) Heb 
9520	Eccl	10	13	<i>his mouth</i>
9521	Eccl	10	16	1) Or 
9522	Eccl	10	16	<i>servant</i>
9523	Eccl	10	17	1) Or 
9524	Eccl	10	17	<i>a free man</i>
9525	Eccl	10	18	1) Or 
9526	Eccl	10	18	<i>rafters sink</i>
9527	Eccl	11	1	1) Or 
9528	Eccl	11	1	<i>Send forth</i>
9529	Eccl	11	1	 2) Heb 
9530	Eccl	11	1	<i>upon the face of the waters</i>
9531	Eccl	11	2	1) Or 
9532	Eccl	11	2	<i>Divide a portion into seven, yea, even into eight</i>
9533	Eccl	11	3	1) Or 
9534	Eccl	11	3	<i>in</i>
9535	Eccl	11	5	1) Or 
9536	Eccl	11	5	<i>spirit</i>
9537	Eccl	11	8	1) Or 
9538	Eccl	11	8	<i>For</i>
9539	Eccl	11	8	 2) Or 
9540	Eccl	11	8	<i>and remember</i>
9541	Eccl	11	10	1) Or 
9542	Eccl	11	10	<i>vexation</i>
9543	Eccl	11	10	 ; Or 
9544	Eccl	11	10	<i>provocation</i>
9545	Eccl	12	3	1) Or 
9546	Eccl	12	3	<i>grinding women</i>
9547	Eccl	12	5	1) Or, of danger 
9548	Eccl	12	5	<i>from on high</i>
9549	Eccl	12	5	 2) Or 
9550	Eccl	12	5	<i>shall drag itself along</i>
9551	Eccl	12	5	 3) Or 
9552	Eccl	12	5	<i>the caperberry</i>
9553	Eccl	12	5	 4) Or 
9554	Eccl	12	5	<i>burst</i>
9555	Eccl	12	6	1) Or 
9556	Eccl	12	6	<i>snapped asunder</i>
9557	Eccl	12	9	1) Or 
9558	Eccl	12	9	<i>gave ear</i>
9559	Eccl	12	10	1) Heb 
9560	Eccl	12	10	<i>words of delight</i>
9561	Eccl	12	11	1) Or 
9562	Eccl	12	11	<i>collectors of sentences</i>
9563	Eccl	12	12	1) Or 
9564	Eccl	12	12	<i>And as for more than these, my son, be warned</i>
9565	Eccl	12	13	1) Or 
9566	Eccl	12	13	<i>Let us hear the conclusion of the whole matter</i>
9567	Eccl	12	13	 2) Or 
9568	Eccl	12	13	<i>this is</i>
9569	Eccl	12	13	 the duty of 
9570	Eccl	12	13	<i>all men</i>
9571	Eccl	12	14	1) Or 
9572	Eccl	12	14	<i>concerning</i>
9573	Song	1	3	1) Or 
9574	Song	1	3	<i>maidens</i>
9575	Song	1	4	1) Or 
9576	Song	1	4	<i>In uprightness</i>
9577	Song	1	6	1) Or 
9578	Song	1	6	<i>looked upon</i>
9579	Song	1	9	1) Or 
9580	Song	1	9	<i>my friend</i>
9581	Song	1	9	 (and so throughout) 2) Or 
9582	Song	1	9	<i>To the steeds</i>
9583	Song	1	9	 ; Or 
9584	Song	1	9	<i>To my steed</i>
9585	Song	1	13	1) Or 
9586	Song	1	13	<i>bag</i>
9587	Song	1	14	1) Heb 
9588	Song	1	14	<i>copher</i>
9589	Song	1	15	1) Or 
9590	Song	1	15	<i>Thou hast doves’ eyes</i>
9591	Song	1	17	1) Or 
9592	Song	1	17	<i>houses</i>
9593	Song	1	17	 2) Or 
9594	Song	1	17	<i>of cedar…of fir</i>
9595	Song	1	17	 3) Or 
9596	Song	1	17	<i>cypresses</i>
9597	Song	2	1	1) Heb 
9598	Song	2	1	<i>habazzeleth</i>
9599	Song	2	1	 , the autumn crocus 2) Or 
9600	Song	2	1	<i>the plain</i>
9601	Song	2	3	1) Heb 
9602	Song	2	3	<i>delighted and sat down etc</i>
9603	Song	2	4	1) Heb 
9604	Song	2	4	<i>house of wine</i>
9605	Song	2	5	1) Heb 
9606	Song	2	5	<i>cakes of raisins</i>
9607	Song	2	6	1) Or, Let 
9608	Song	2	6	<i>his left hand</i>
9609	Song	2	6	 be 
9610	Song	2	6	<i>etc</i>
9611	Song	2	7	1) Or 
9612	Song	2	7	<i>gazelles</i>
9613	Song	2	7	  2) Or 
9614	Song	2	7	<i>it</i>
9615	Song	2	7	 ; Or 
9616	Song	2	7	<i>she</i>
9617	Song	2	9	1) Or 
9618	Song	2	9	<i>gazelle</i>
9619	Song	2	12	1) Or 
9620	Song	2	12	<i>pruning</i>
9621	Song	2	12	 of vines
9622	Song	2	17	1) Or 
9623	Song	2	17	<i>When the day is cool</i>
9624	Song	2	17	 2) Or 
9625	Song	2	17	<i>break</i>
9626	Song	2	17	 ; Heb 
9627	Song	2	17	<i>breathe</i>
9628	Song	2	17	 3) Or 
9629	Song	2	17	<i>gazelle</i>
9630	Song	2	17	 4) Or 
9631	Song	2	17	<i>mountains of separation</i>
9632	Song	2	17	 5) Perhaps, the spice 
9633	Song	2	17	<i>malobathron</i>
9634	Song	3	5	1) Or 
9635	Song	3	5	<i>it</i>
9636	Song	3	5	 ; Or 
9637	Song	3	5	<i>she</i>
9638	Song	3	9	1) Or 
9639	Song	3	9	<i>car of state</i>
9640	Song	3	10	1) Or 
9641	Song	3	10	<i>inlaid</i>
9642	Song	4	1	1) Or 
9643	Song	4	1	<i>Thou hast doves’ eyes</i>
9644	Song	4	1	 2) Or 
9645	Song	4	1	<i>locks</i>
9646	Song	4	1	 3) Or 
9647	Song	4	1	<i>appear on mount Gilead</i>
9648	Song	4	2	1) Or 
9649	Song	4	2	<i>Which are all of them in pairs</i>
9650	Song	4	3	1) Or 
9651	Song	4	3	<i>speech</i>
9652	Song	4	3	 2) Or 
9653	Song	4	3	<i>locks</i>
9654	Song	4	4	1) Or 
9655	Song	4	4	<i>with turrets</i>
9656	Song	4	5	1) Or 
9657	Song	4	5	<i>gazelle</i>
9658	Song	4	8	1) Or 
9659	Song	4	8	<i>Go</i>
9660	Song	4	9	1) Or 
9661	Song	4	9	<i>given me courage</i>
9662	Song	4	9	 2) Or 
9663	Song	4	9	<i>one</i>
9664	Song	4	9	 look 
9665	Song	4	9	<i>from thine eyes</i>
9666	Song	4	11	1) Or 
9667	Song	4	11	<i>drop honey</i>
9668	Song	4	12	1) Heb 
9669	Song	4	12	<i>barred</i>
9670	Song	4	13	1) Or 
9671	Song	4	13	<i>a paradise</i>
9672	Song	5	1	1) Or 
9673	Song	5	1	<i>balsam</i>
9674	Song	5	1	 2) Or 
9675	Song	5	1	<i>of love</i>
9676	Song	5	2	1) Or 
9677	Song	5	2	<i>sleep, but my heart waketh</i>
9678	Song	5	2	 2) Heb 
9679	Song	5	2	<i>perfect</i>
9680	Song	5	4	1) Heb 
9681	Song	5	4	<i>bowels</i>
9682	Song	5	6	1) Or 
9683	Song	5	6	<i>turned away</i>
9684	Song	5	6	 2) Heb 
9685	Song	5	6	<i>went forth</i>
9686	Song	5	7	1) Or 
9687	Song	5	7	<i>veil</i>
9688	Song	5	8	1) Heb 
9689	Song	5	8	<i>What will ye tell him? That etc</i>
9690	Song	5	10	1) Heb 
9691	Song	5	10	<i>Marked out by a banner</i>
9692	Song	5	11	1) Or 
9693	Song	5	11	<i>curling</i>
9694	Song	5	12	1) Or 
9695	Song	5	12	<i>sitting by full streams</i>
9696	Song	5	13	1) Or 
9697	Song	5	13	<i>balsam</i>
9698	Song	5	13	 2) Or 
9699	Song	5	13	<i>towers of perfumes</i>
9700	Song	5	14	1) Or 
9701	Song	5	14	<i>cylinders</i>
9702	Song	5	14	 2) Or 
9703	Song	5	14	<i>topaz</i>
9704	Song	5	14	 3) Or 
9705	Song	5	14	<i>bright ivory</i>
9706	Song	5	14	 4) Or 
9707	Song	5	14	<i>encrusted</i>
9708	Song	5	16	1) Or 
9709	Song	5	16	<i>speech</i>
9710	Song	5	16	 ; Heb 
9711	Song	5	16	<i>palate</i>
9712	Song	6	2	1) Or 
9713	Song	6	2	<i>balsam</i>
9714	Song	6	4	1) Heb 
9715	Song	6	4	<i>bannered</i>
9716	Song	6	4	 hosts
9717	Song	6	5	1) Or 
9718	Song	6	5	<i>make me afraid</i>
9719	Song	6	8	1) Or 
9720	Song	6	8	<i>maidens</i>
9721	Song	6	9	1) Heb 
9722	Song	6	9	<i>perfect</i>
9723	Song	6	9	 2) Or 
9724	Song	6	9	<i>pure</i>
9725	Song	6	10	1) Or 
9726	Song	6	10	<i>Pure</i>
9727	Song	6	12	1) Or 
9728	Song	6	12	<i>desire</i>
9729	Song	6	12	 2) Or 
9730	Song	6	12	<i>made me</i>
9731	Song	6	12	 like 
9732	Song	6	12	<i>the chariots of Amminadib</i>
9733	Song	6	12	 3) Or 
9734	Song	6	12	<i>willing</i>
9735	Song	6	13	1) Or 
9736	Song	6	13	<i>of two companies</i>
9737	Song	7	1	1) Or 
9738	Song	7	1	<i>steps</i>
9739	Song	7	8	1) Heb 
9740	Song	7	8	<i>nose</i>
9741	Song	7	9	1) Heb 
9742	Song	7	9	<i>palate</i>
9743	Song	7	9	 2) Heb 
9744	Song	7	9	<i>aright</i>
9745	Song	7	9	 3) Or 
9746	Song	7	9	<i>Causing the lips of those that are asleep to move</i>
9747	Song	7	9	 (or 
9748	Song	7	9	<i>speak</i>
9749	Song	7	9	 )
9750	Song	7	12	1) Or 
9751	Song	7	12	<i>the tender grape appeareth</i>
9752	Song	7	13	1) Or 
9753	Song	7	13	<i>over</i>
9754	Song	8	2	1) Or 
9755	Song	8	2	<i>That thou mightest</i>
9756	Song	8	2	 2) Or 
9757	Song	8	2	<i>sweet wine</i>
9758	Song	8	4	1) Heb 
9759	Song	8	4	<i>Why should ye stir up? or why etc</i>
9760	Song	8	4	 2) Or 
9761	Song	8	4	<i>it</i>
9762	Song	8	4	 ; Or 
9763	Song	8	4	<i>she</i>
9764	Song	8	5	1) Or 
9765	Song	8	5	<i>and</i>
9766	Song	8	6	1) Heb 
9767	Song	8	6	<i>hard</i>
9768	Song	8	6	 2) Or 
9769	Song	8	6	<i>A most vehement flame</i>
9770	Song	8	6	 3) Heb 
9771	Song	8	6	<i>Jah</i>
9772	Song	8	7	1) Or 
9773	Song	8	7	<i>It</i>
9774	Song	8	9	1) Or 
9775	Song	8	9	<i>battlements</i>
9776	Song	8	10	1) Or 
9777	Song	8	10	<i>was</i>
9778	Song	8	13	1) Or 
9779	Song	8	13	<i>to</i>
9780	Song	8	14	1) Heb 
9781	Song	8	14	<i>Flee</i>
9782	Song	8	14	 2) Or 
9783	Song	8	14	<i>gazelle</i>
9784	Isa	1	2	1) Or 
9785	Isa	1	2	<i>made great and exalted</i>
9786	Isa	1	2	 ; See Eze 31:4
9787	Isa	1	5	1) Or 
9788	Isa	1	5	<i>Why should ye be stricken any more? ye will revolt etc</i>
9789	Isa	1	5	 2) Or 
9790	Isa	1	5	<i>every</i>
9791	Isa	1	7	1) Or 
9792	Isa	1	7	<i>as the overthrow of strangers</i>
9793	Isa	1	10	1) Or 
9794	Isa	1	10	<i>judges</i>
9795	Isa	1	10	 2) Or 
9796	Isa	1	10	<i>teaching</i>
9797	Isa	1	12	1) Or as otherwise read 
9798	Isa	1	12	<i>to see my face</i>
9799	Isa	1	13	1) Heb 
9800	Isa	1	13	<i>an oblation of vanity</i>
9801	Isa	1	13	 2) Or 
9802	Isa	1	13	<i>I cannot away with; it is iniquity, even the solemn meeting</i>
9803	Isa	1	14	1) Or 
9804	Isa	1	14	<i>cumbrance</i>
9805	Isa	1	17	1) Or 
9806	Isa	1	17	<i>set right the oppressor</i>
9807	Isa	1	25	1) Or 
9808	Isa	1	25	<i>bring my hand again</i>
9809	Isa	1	25	 2) Heb 
9810	Isa	1	25	<i>as with lye</i>
9811	Isa	1	25	 3) Or 
9812	Isa	1	25	<i>alloy</i>
9813	Isa	1	27	1) Or 
9814	Isa	1	27	<i>they that return of her</i>
9815	Isa	1	28	1) Heb 
9816	Isa	1	28	<i>breaking</i>
9817	Isa	1	29	1) Or 
9818	Isa	1	29	<i>terebinths</i>
9819	Isa	1	30	1) Or 
9820	Isa	1	30	<i>a terebinth</i>
9821	Isa	2	2	1) Or 
9822	Isa	2	2	<i>at the head</i>
9823	Isa	2	3	1) Or 
9824	Isa	2	3	<i>instruction</i>
9825	Isa	2	4	1) Or 
9826	Isa	2	4	<i>among</i>
9827	Isa	2	9	1) Or 
9828	Isa	2	9	<i>boweth down</i>
9829	Isa	2	9	 2) Or 
9830	Isa	2	9	<i>humbleth himself</i>
9831	Isa	2	12	1) Or 
9832	Isa	2	12	<i>Jehovah of hosts hath a day</i>
9833	Isa	2	16	1) Or 
9834	Isa	2	16	<i>watch-towers</i>
9835	Isa	2	19	1) Heb 
9836	Isa	2	19	<i>dust</i>
9837	Isa	3	3	1) Or 
9838	Isa	3	3	<i>charmer</i>
9839	Isa	3	4	1) Or 
9840	Isa	3	4	<i>with childishness shall they rule over them</i>
9841	Isa	3	6	1) Or 
9842	Isa	3	6	<i>judge</i>
9843	Isa	3	7	1) Heb 
9844	Isa	3	7	<i>a binder up</i>
9845	Isa	3	9	1) Or 
9846	Isa	3	9	<i>Their respecting of persons doth etc</i>
9847	Isa	3	12	1) Heb 
9848	Isa	3	12	<i>swallow up</i>
9849	Isa	3	13	1) Or 
9850	Isa	3	13	<i>people</i>
9851	Isa	3	18	1) Or 
9852	Isa	3	18	<i>networks</i>
9853	Isa	3	19	1) Or 
9854	Isa	3	19	<i>chains</i>
9855	Isa	3	25	1) Heb 
9856	Isa	3	25	<i>might</i>
9857	Isa	3	26	1) Or 
9858	Isa	3	26	<i>emptied</i>
9859	Isa	4	2	1) Or 
9860	Isa	4	2	<i>shoot</i>
9861	Isa	4	2	 ; Or 
9862	Isa	4	2	<i>sprout</i>
9863	Isa	4	2	 2) Or 
9864	Isa	4	2	<i>earth</i>
9865	Isa	4	2	 3) Or 
9866	Isa	4	2	<i>majestic</i>
9867	Isa	4	3	1) Or 
9868	Isa	4	3	<i>unto life</i>
9869	Isa	4	4	1) Or 
9870	Isa	4	4	<i>blast</i>
9871	Isa	4	5	1) Or 
9872	Isa	4	5	<i>every dwelling-place</i>
9873	Isa	5	1	1) Or 
9874	Isa	5	1	<i>of</i>
9875	Isa	5	1	 2) Heb 
9876	Isa	5	1	<i>a horn, the son of oil</i>
9877	Isa	5	2	1) Or 
9878	Isa	5	2	<i>wine-vat</i>
9879	Isa	5	5	1) Or 
9880	Isa	5	5	<i>burnt</i>
9881	Isa	5	7	1) Heb 
9882	Isa	5	7	<i>the plant of his delight</i>
9883	Isa	5	7	 2) Or 
9884	Isa	5	7	<i>shedding of blood</i>
9885	Isa	5	13	1) Heb 
9886	Isa	5	13	<i>their glory are men of famine</i>
9887	Isa	5	14	1) Or 
9888	Isa	5	14	<i>tumult</i>
9889	Isa	5	17	1) Or 
9890	Isa	5	17	<i>sojourners</i>
9891	Isa	5	24	1) Or 
9892	Isa	5	24	<i>teaching</i>
9893	Isa	5	26	1) Heb 
9894	Isa	5	26	<i>him</i>
9895	Isa	5	26	 2) Heb 
9896	Isa	5	26	<i>he</i>
9897	Isa	5	26	 (and in the following verses)
9898	Isa	5	30	1) Or 
9899	Isa	5	30	<i>over</i>
9900	Isa	5	30	 2) According to the Massoretic text 
9901	Isa	5	30	<i>behold, darkness; distress and light; it is dark etc</i>
9902	Isa	6	1	1) Or 
9903	Isa	6	1	<i>skirts</i>
9904	Isa	6	3	1) Heb 
9905	Isa	6	3	<i>the fulness of the whole earth is his glory</i>
9906	Isa	6	6	1) Or 
9907	Isa	6	6	<i>hot stone</i>
9908	Isa	6	7	1) Or 
9909	Isa	6	7	<i>expiated</i>
9910	Isa	6	9	1) Or 
9911	Isa	6	9	<i>continually</i>
9912	Isa	6	10	1) Or 
9913	Isa	6	10	<i>their heart should understand</i>
9914	Isa	6	13	1) Or 
9915	Isa	6	13	<i>But yet in it shall be a tenth, and it shall return, and shall be eaten up</i>
9916	Isa	6	13	 2) Or 
9917	Isa	6	13	<i>burnt</i>
9918	Isa	6	13	 3) Or 
9919	Isa	6	13	<i>whose substance is in them</i>
9920	Isa	6	13	 4) Or 
9921	Isa	6	13	<i>substance</i>
9922	Isa	6	13	 5) Or 
9923	Isa	6	13	<i>cast</i>
9924	Isa	6	13	 their leaves
9925	Isa	7	2	1) Heb 
9926	Isa	7	2	<i>resteth on Ephraim</i>
9927	Isa	7	3	1) That is 
9928	Isa	7	3	<i>A remnant shall return</i>
9929	Isa	7	14	1) Or 
9930	Isa	7	14	<i>the</i>
9931	Isa	7	14	 2) Or 
9932	Isa	7	14	<i>maiden</i>
9933	Isa	7	14	 3) Or 
9934	Isa	7	14	<i>is with child, and beareth</i>
9935	Isa	7	14	 4) That is 
9936	Isa	7	14	<i>God is with us</i>
9937	Isa	7	15	1) Or 
9938	Isa	7	15	<i>Curds</i>
9939	Isa	7	15	 2) Or 
9940	Isa	7	15	<i>that he may know</i>
9941	Isa	7	15	 ; Or 
9942	Isa	7	15	<i>till he know</i>
9943	Isa	7	19	1) Or 
9944	Isa	7	19	<i>rugged</i>
9945	Isa	7	19	 2) Or 
9946	Isa	7	19	<i>bushes</i>
9947	Isa	7	25	1) Or 
9948	Isa	7	25	<i>where never came the fear of briers and thorns, shall be etc</i>
9949	Isa	7	25	 ; Or 
9950	Isa	7	25	<i>there shall not come thither the fear…but it shall be etc</i>
9951	Isa	8	1	1) Or 
9952	Isa	8	1	<i>in common characters</i>
9953	Isa	8	1	 2) That is 
9954	Isa	8	1	<i>The spoil speedeth, the prey hasteth</i>
9955	Isa	8	6	1) Or 
9956	Isa	8	6	<i>even they that rejoice</i>
9957	Isa	8	6	 2) Or 
9958	Isa	8	6	<i>with</i>
9959	Isa	8	9	1) Or 
9960	Isa	8	9	<i>Break, O ye</i>
9961	Isa	8	10	1) Heb 
9962	Isa	8	10	<i>immanu El</i>
9963	Isa	8	11	1) Heb 
9964	Isa	8	11	<i>with strength of hand</i>
9965	Isa	8	15	1) Or 
9966	Isa	8	15	<i>many among them shall stumble, and fall etc</i>
9967	Isa	8	16	1) Or 
9968	Isa	8	16	<i>teaching</i>
9969	Isa	8	20	1) Or 
9970	Isa	8	20	<i>teaching</i>
9971	Isa	8	20	 2) Or 
9972	Isa	8	20	<i>surely according to this word shall they speak for whom there is no morning</i>
9973	Isa	8	21	1) Or 
9974	Isa	8	21	<i>curse their king and their God</i>
9975	Isa	8	22	1) Or 
9976	Isa	8	22	<i>and thick darkness shall be driven away. For there etc</i>
9977	Isa	8	22	 2) Or 
9978	Isa	8	22	<i>in</i>
9979	Isa	9	1	1) Or 
9980	Isa	9	1	<i>For</i>
9981	Isa	9	1	 2) Or 
9982	Isa	9	1	<i>the district</i>
9983	Isa	9	2	1) Or 
9984	Isa	9	2	<i>deep darkness</i>
9985	Isa	9	3	1) Another reading is 
9986	Isa	9	3	<i>thou didst not increase the joy</i>
9987	Isa	9	5	1) Or 
9988	Isa	9	5	<i>every boot of the booted warrior</i>
9989	Isa	9	6	1) Or 
9990	Isa	9	6	<i>Wonderful counsellor</i>
9991	Isa	9	6	 2) Heb 
9992	Isa	9	6	<i>Father of Eternity</i>
9993	Isa	9	11	1) Or 
9994	Isa	9	11	<i>hath set</i>
9995	Isa	9	11	 2) Or 
9996	Isa	9	11	<i>hath stirred</i>
9997	Isa	9	11	 3) Or 
9998	Isa	9	11	<i>join together</i>
9999	Isa	9	11	 ; Or 
10000	Isa	9	11	<i>arm</i>
10001	Isa	9	12	1) Or 
10002	Isa	9	12	<i>on the east</i>
10003	Isa	9	12	 2) Or 
10004	Isa	9	12	<i>on the west</i>
10005	Isa	9	12	 3) Or 
10006	Isa	9	12	<i>have devoured</i>
10007	Isa	9	14	1) Or 
10008	Isa	9	14	<i>hath cut</i>
10009	Isa	9	16	1) Heb 
10010	Isa	9	16	<i>swallowed up</i>
10011	Isa	9	19	1) Or 
10012	Isa	9	19	<i>darkened</i>
10013	Isa	10	4	1) Or 
10014	Isa	10	4	<i>Without me they shall bow down etc</i>
10015	Isa	10	5	1) Or 
10016	Isa	10	5	<i>Woe to Asshur</i>
10017	Isa	10	6	1) Heb 
10018	Isa	10	6	<i>to make them a treading down</i>
10019	Isa	10	10	1) Or 
10020	Isa	10	10	<i>reached</i>
10021	Isa	10	12	1) Heb 
10022	Isa	10	12	<i>visit upon</i>
10023	Isa	10	13	1) Or 
10024	Isa	10	13	<i>the inhabitants</i>
10025	Isa	10	16	1) Or 
10026	Isa	10	16	<i>instead of</i>
10027	Isa	10	18	1) Or 
10028	Isa	10	18	<i>as when a sick man pineth away</i>
10029	Isa	10	21	1) Heb 
10030	Isa	10	21	<i>shear jashub</i>
10031	Isa	10	21	 ; See Isa 7:3
10032	Isa	10	22	1) Heb 
10033	Isa	10	22	<i>in it</i>
10034	Isa	10	23	1) Or 
10035	Isa	10	23	<i>land</i>
10036	Isa	10	24	1) Heb 
10037	Isa	10	24	<i>Asshur</i>
10038	Isa	10	26	1) Or 
10039	Isa	10	26	<i>as his rod was over the sea, so shall he etc</i>
10040	Isa	10	27	1) Heb 
10041	Isa	10	27	<i>oil</i>
10042	Isa	10	29	1) Or 
10043	Isa	10	29	<i>Geba is our lodging,</i>
10044	Isa	10	29	 they cry
10045	Isa	10	31	1) Or 
10046	Isa	10	31	<i>make</i>
10047	Isa	10	31	 their households 
10048	Isa	10	31	<i>flee</i>
10049	Isa	10	32	1) Another reading is 
10050	Isa	10	32	<i>house</i>
10051	Isa	11	3	1) Or 
10052	Isa	11	3	<i>he shall be of quick understanding</i>
10053	Isa	11	3	 2) Heb 
10054	Isa	11	3	<i>scent</i>
10055	Isa	11	4	1) Or 
10056	Isa	11	4	<i>land</i>
10057	Isa	11	10	1) Heb 
10058	Isa	11	10	<i>glory</i>
10059	Isa	11	11	1) Or 
10060	Isa	11	11	<i>will again the second time recover with his hand</i>
10061	Isa	11	11	 2) Or 
10062	Isa	11	11	<i>purchase</i>
10063	Isa	11	11	 ; See Ex 15:16. 3) Or 
10064	Isa	11	11	<i>coast-lands</i>
10065	Isa	11	13	1) Or 
10066	Isa	11	13	<i>in Judah</i>
10067	Isa	11	15	1) Heb 
10068	Isa	11	15	<i>devote</i>
10069	Isa	12	1	1) Or 
10070	Isa	12	1	<i>let thine anger turn away, and comfort thou me</i>
10071	Isa	12	2	1) Heb 
10072	Isa	12	2	<i>Jah Jehovah</i>
10073	Isa	12	4	1) Or 
10074	Isa	12	4	<i>proclaim his name</i>
10075	Isa	12	5	1) Or 
10076	Isa	12	5	<i>gloriously</i>
10077	Isa	12	5	 2) Or 
10078	Isa	12	5	<i>this is made known</i>
10079	Isa	12	6	1) Heb 
10080	Isa	12	6	<i>inhabitress</i>
10081	Isa	13	1	1) Or 
10082	Isa	13	1	<i>oracle concerning</i>
10083	Isa	13	3	1) Or 
10084	Isa	13	3	<i>them that exult in my majesty</i>
10085	Isa	13	6	1) Heb 
10086	Isa	13	6	<i>Shaddai</i>
10087	Isa	13	6	 ; See Ge 17:1
10088	Isa	13	8	1) Or 
10089	Isa	13	8	<i>they shall take hold of pangs and sorrows</i>
10090	Isa	13	14	1) Or 
10091	Isa	13	14	<i>gazelle</i>
10092	Isa	13	15	1) Or 
10093	Isa	13	15	<i>joined</i>
10094	Isa	13	15	 thereunto
10095	Isa	13	22	1) Heb 
10096	Isa	13	22	<i>howling creatures</i>
10097	Isa	13	22	 2) Or 
10098	Isa	13	22	<i>answer</i>
10099	Isa	14	4	1) Or 
10100	Isa	14	4	<i>exactress</i>
10101	Isa	14	6	1) Or 
10102	Isa	14	6	<i>he that smote…is persecuted, and none hindereth</i>
10103	Isa	14	9	1) Or 
10104	Isa	14	9	<i>the shades</i>
10105	Isa	14	9	 ; Heb 
10106	Isa	14	9	<i>Rephaim</i>
10107	Isa	14	9	 2) Heb 
10108	Isa	14	9	<i>he-goats</i>
10109	Isa	14	19	1) Or, as 
10110	Isa	14	19	<i>the raiment of those that are slain</i>
10111	Isa	14	21	1) Or 
10112	Isa	14	21	<i>a place of slaughter</i>
10113	Isa	14	28	1) Or 
10114	Isa	14	28	<i>oracle</i>
10115	Isa	14	31	1) Or 
10116	Isa	14	31	<i>none standeth aloof at his appointed times</i>
10117	Isa	15	1	1) Or 
10118	Isa	15	1	<i>oracle concerning</i>
10119	Isa	15	1	 2) Or 
10120	Isa	15	1	<i>in the night</i>
10121	Isa	15	2	1) Or 
10122	Isa	15	2	<i>Bayith and Dibon are gone up to the high places</i>
10123	Isa	15	2	 2) Or 
10124	Isa	15	2	<i>the temple</i>
10125	Isa	15	2	 3) Or 
10126	Isa	15	2	<i>upon</i>
10127	Isa	15	5	1) Or as otherwise read 
10128	Isa	15	5	<i>fugitives</i>
10129	Isa	15	5	 2) Or, as 
10130	Isa	15	5	<i>a heifer three years old</i>
10131	Isa	15	6	1) Heb 
10132	Isa	15	6	<i>desolations</i>
10133	Isa	16	1	1) Or 
10134	Isa	16	1	<i>Petra</i>
10135	Isa	16	4	1) Or 
10136	Isa	16	4	<i>extortion</i>
10137	Isa	16	4	 2) Heb 
10138	Isa	16	4	<i>the treaders down</i>
10139	Isa	16	7	1) Or 
10140	Isa	16	7	<i>foundations</i>
10141	Isa	16	8	1) Or 
10142	Isa	16	8	<i>its choice plants did break down the lords of nations</i>
10143	Isa	17	1	1) Or 
10144	Isa	17	1	<i>oracle concerning</i>
10145	Isa	17	3	1) Or 
10146	Isa	17	3	<i>from Damascus; and the remnant of Syria shall etc</i>
10147	Isa	17	6	1) Heb 
10148	Isa	17	6	<i>beating</i>
10149	Isa	17	10	1) Or 
10150	Isa	17	10	<i>stronghold</i>
10151	Isa	17	10	 2) Or 
10152	Isa	17	10	<i>vine slips of a strange</i>
10153	Isa	17	10	 god
10154	Isa	17	11	1) Or 
10155	Isa	17	11	<i>shall be a heap</i>
10156	Isa	17	12	1) Or 
10157	Isa	17	12	<i>multitude</i>
10158	Isa	17	13	1) Heb 
10159	Isa	17	13	<i>him</i>
10160	Isa	17	13	 2) Heb 
10161	Isa	17	13	<i>he</i>
10162	Isa	17	14	1) Heb 
10163	Isa	17	14	<i>he is</i>
10164	Isa	18	1	1) Or 
10165	Isa	18	1	<i>shadowing with wings</i>
10166	Isa	18	1	 2) Heb 
10167	Isa	18	1	<i>Cush</i>
10168	Isa	18	2	1) Or 
10169	Isa	18	2	<i>and</i>
10170	Isa	18	2	 2) Or 
10171	Isa	18	2	<i>dragged away and peeled</i>
10172	Isa	18	2	 3) Or 
10173	Isa	18	2	<i>meted out and trodden down</i>
10174	Isa	18	2	 ; Heb 
10175	Isa	18	2	<i>of line, lien, and of treading down</i>
10176	Isa	18	2	 4) Or 
10177	Isa	18	2	<i>have despoiled</i>
10178	Isa	18	4	1) Or 
10179	Isa	18	4	<i>when there is</i>
10180	Isa	18	7	1) Or 
10181	Isa	18	7	<i>dragged away and peeled</i>
10182	Isa	19	1	1) Or 
10183	Isa	19	1	<i>oracle concerning</i>
10184	Isa	19	2	1) Or 
10185	Isa	19	2	<i>join together</i>
10186	Isa	19	2	 ; Or 
10187	Isa	19	2	<i>arm</i>
10188	Isa	19	3	1) Heb 
10189	Isa	19	3	<i>be emptied</i>
10190	Isa	19	3	 2) Heb 
10191	Isa	19	3	<i>swallow up</i>
10192	Isa	19	3	 3) Or 
10193	Isa	19	3	<i>whisperers</i>
10194	Isa	19	4	1) Or 
10195	Isa	19	4	<i>shut up</i>
10196	Isa	19	6	1) Or 
10197	Isa	19	6	<i>canals</i>
10198	Isa	19	6	 2) Heb 
10199	Isa	19	6	<i>Mazor</i>
10200	Isa	19	9	1) Or 
10201	Isa	19	9	<i>cotton</i>
10202	Isa	19	10	1) Heb 
10203	Isa	19	10	<i>her pillars</i>
10204	Isa	19	10	 2) Or 
10205	Isa	19	10	<i>foundations</i>
10206	Isa	19	10	 3) Or 
10207	Isa	19	10	<i>that make dams</i>
10208	Isa	19	14	1) Or 
10209	Isa	19	14	<i>goeth astray</i>
10210	Isa	19	17	1) Or 
10211	Isa	19	17	<i>every one that maketh mention thereof, to him shall they turn in fear</i>
10212	Isa	19	18	1) Or 
10213	Isa	19	18	<i>Heres</i>
10214	Isa	19	18	 ; Or according to another reading 
10215	Isa	19	18	<i>the sun</i>
10216	Isa	19	20	1) Or 
10217	Isa	19	20	<i>a mighty one</i>
10218	Isa	19	21	1) Or 
10219	Isa	19	21	<i>make himself known</i>
10220	Isa	20	1	1) The title of the Assyrian commander-in-chief.
10221	Isa	20	3	1) Or 
10222	Isa	20	3	<i>to be for three years a sign etc</i>
10223	Isa	20	3	 2) Heb 
10224	Isa	20	3	<i>Cush</i>
10225	Isa	21	1	1) Or 
10226	Isa	21	1	<i>oracle concerning</i>
10227	Isa	21	2	1) Or 
10228	Isa	21	2	<i>hard</i>
10229	Isa	21	2	 2) Or 
10230	Isa	21	2	<i>will I make</i>
10231	Isa	21	3	1) Heb 
10232	Isa	21	3	<i>bent</i>
10233	Isa	21	4	1) Heb 
10234	Isa	21	4	<i>wandereth</i>
10235	Isa	21	5	1) Or 
10236	Isa	21	5	<i>spread the carpets</i>
10237	Isa	21	7	1) Or 
10238	Isa	21	7	<i>and he saw…and he hearkened</i>
10239	Isa	21	7	 2) Or 
10240	Isa	21	7	<i>a chariot</i>
10241	Isa	21	7	 ; Or 
10242	Isa	21	7	<i>chariots</i>
10243	Isa	21	7	 3) Or 
10244	Isa	21	7	<i>a pair of horsemen</i>
10245	Isa	21	8	1) Or 
10246	Isa	21	8	<i>every night</i>
10247	Isa	21	9	1) Or 
10248	Isa	21	9	<i>come chariots of men</i>
10249	Isa	21	9	 2) Or 
10250	Isa	21	9	<i>a pair of horsemen</i>
10251	Isa	21	10	1) Heb 
10252	Isa	21	10	<i>son</i>
10253	Isa	21	11	1) Or 
10254	Isa	21	11	<i>oracle concerning</i>
10255	Isa	21	11	  2) Or 
10256	Isa	21	11	<i>what</i>
10257	Isa	21	11	 hour
10258	Isa	21	12	1) Or 
10259	Isa	21	12	<i>is come</i>
10260	Isa	21	12	 2) Or 
10261	Isa	21	12	<i>come ye again</i>
10262	Isa	21	13	1) Or 
10263	Isa	21	13	<i>oracle</i>
10264	Isa	21	13	 2) Or 
10265	Isa	21	13	<i>thickets</i>
10266	Isa	21	14	1) Or 
10267	Isa	21	14	<i>is thirsty bring ye</i>
10268	Isa	21	14	 2) Or as otherwise read 
10269	Isa	21	14	<i>ye inhabitants of the land of Tema, meet</i>
10270	Isa	22	1	1) Or 
10271	Isa	22	1	<i>oracle concerning</i>
10272	Isa	22	3	1) Or 
10273	Isa	22	3	<i>without the bow</i>
10274	Isa	22	3	 2) Or 
10275	Isa	22	3	<i>that had fled from far</i>
10276	Isa	22	4	1) Or 
10277	Isa	22	4	<i>hasten</i>
10278	Isa	22	5	1) Or 
10279	Isa	22	5	<i>mountain</i>
10280	Isa	22	6	1) Or 
10281	Isa	22	6	<i>troops</i>
10282	Isa	22	11	1) Or 
10283	Isa	22	11	<i>the maker thereof</i>
10284	Isa	22	14	1) Or 
10285	Isa	22	14	<i>expiated by</i>
10286	Isa	22	15	1) Or 
10287	Isa	22	15	<i>steward</i>
10288	Isa	22	17	1) Or 
10289	Isa	22	17	<i>O thou</i>
10290	Isa	22	17	 strong 
10291	Isa	22	17	<i>man</i>
10292	Isa	22	17	 2) Or 
10293	Isa	22	17	<i>lay fast hold on thee</i>
10294	Isa	23	1	1) Or 
10295	Isa	23	1	<i>oracle concerning</i>
10296	Isa	23	5	1) Or 
10297	Isa	23	5	<i>As at the report concerning Egypt, so etc</i>
10298	Isa	23	7	1) Or 
10299	Isa	23	7	<i>of ancient days? her own feet shall carry etc</i>
10300	Isa	23	9	1) Heb 
10301	Isa	23	9	<i>profane</i>
10302	Isa	23	10	1) Or 
10303	Isa	23	10	<i>Overflow</i>
10304	Isa	23	10	 2) Heb 
10305	Isa	23	10	<i>girdle</i>
10306	Isa	23	11	1) Or 
10307	Isa	23	11	<i>the merchant</i>
10308	Isa	23	11	 people
10309	Isa	23	13	1) Or 
10310	Isa	23	13	<i>This people is no more; the Assyrian hath appointed it for the beasts of the wilderness</i>
10311	Isa	23	13	 2) Or 
10312	Isa	23	13	<i>the towers thereof</i>
10313	Isa	23	13	 3) Or 
10314	Isa	23	13	<i>raised up</i>
10315	Isa	23	15	1) Or 
10316	Isa	23	15	<i>shall Tyre sing as a harlot</i>
10317	Isa	23	18	1) Or 
10318	Isa	23	18	<i>stately</i>
10319	Isa	24	1	1) Or 
10320	Isa	24	1	<i>land</i>
10321	Isa	24	1	 (and so in verses 3, 4, etc)
10322	Isa	24	4	1) Or 
10323	Isa	24	4	<i>the high ones of the people</i>
10324	Isa	24	11	1) Heb 
10325	Isa	24	11	<i>gone into captivity</i>
10326	Isa	24	13	1) Heb 
10327	Isa	24	13	<i>beating</i>
10328	Isa	24	15	1) Or 
10329	Isa	24	15	<i>lights</i>
10330	Isa	24	15	 ; Or 
10331	Isa	24	15	<i>fires</i>
10332	Isa	24	15	 2) Or 
10333	Isa	24	15	<i>coast-lands</i>
10334	Isa	24	16	1) Heb 
10335	Isa	24	16	<i>Leanness to me</i>
10336	Isa	24	21	1) Heb 
10337	Isa	24	21	<i>visit upon</i>
10338	Isa	24	21	  2) Heb 
10339	Isa	24	21	<i>height</i>
10340	Isa	24	22	1) Or 
10341	Isa	24	22	<i>dungeon</i>
10342	Isa	24	22	 2) Or 
10343	Isa	24	22	<i>punished</i>
10344	Isa	25	7	1) Heb 
10345	Isa	25	7	<i>swallow up</i>
10346	Isa	25	10	1) Another reading is 
10347	Isa	25	10	<i>in the dunghill</i>
10348	Isa	25	11	1) Or 
10349	Isa	25	11	<i>of them</i>
10350	Isa	25	11	 2) Or 
10351	Isa	25	11	<i>their</i>
10352	Isa	25	11	 3) Or 
10353	Isa	25	11	<i>for all the craft</i>
10354	Isa	25	12	1) Or 
10355	Isa	25	12	<i>will he bring down, lay low, and bring etc</i>
10356	Isa	26	3	1) Or 
10357	Isa	26	3	<i>A stedfast mind thou keepest in perfect peace, because it etc</i>
10358	Isa	26	3	 2) Heb 
10359	Isa	26	3	<i>peace, peace</i>
10360	Isa	26	3	 3) Or 
10361	Isa	26	3	<i>imagination</i>
10362	Isa	26	4	1) Heb 
10363	Isa	26	4	<i>Jah</i>
10364	Isa	26	4	 2) Or 
10365	Isa	26	4	<i>a rock of ages</i>
10366	Isa	26	7	1) Or 
10367	Isa	26	7	<i>a right way; the path of the just thou directest aright</i>
10368	Isa	26	7	 2) Or 
10369	Isa	26	7	<i>level</i>
10370	Isa	26	11	1) Or 
10371	Isa	26	11	<i>and be put to shame, in</i>
10372	Isa	26	11	 their 
10373	Isa	26	11	<i>envy at the people</i>
10374	Isa	26	11	 2) Or 
10375	Isa	26	11	<i>the fire of thine adversaries shall devour them</i>
10376	Isa	26	14	1) Or 
10377	Isa	26	14	<i>The dead live not, the deceased rise not</i>
10378	Isa	26	14	 2) Or 
10379	Isa	26	14	<i>shades</i>
10380	Isa	26	14	 ; Heb 
10381	Isa	26	14	<i>Rephaim</i>
10382	Isa	26	15	1) Or 
10383	Isa	26	15	<i>thou hast removed</i>
10384	Isa	26	15	 it 
10385	Isa	26	15	<i>far</i>
10386	Isa	26	15	 unto 
10387	Isa	26	15	<i>all the ends of the earth</i>
10388	Isa	26	16	1) Or 
10389	Isa	26	16	<i>looked for</i>
10390	Isa	26	16	 2) Heb 
10391	Isa	26	16	<i>whisper</i>
10392	Isa	26	17	1) Or 
10393	Isa	26	17	<i>at thy presence</i>
10394	Isa	26	18	1) Or 
10395	Isa	26	18	<i>neither have inhabitants of the world been born</i>
10396	Isa	26	19	1) Or 
10397	Isa	26	19	<i>light</i>
10398	Isa	26	19	 2) Or 
10399	Isa	26	19	<i>the shades</i>
10400	Isa	26	19	 ; Heb 
10401	Isa	26	19	<i>Rephaim</i>
10402	Isa	27	1	1) Or 
10403	Isa	27	1	<i>gilding</i>
10404	Isa	27	1	 ; Or 
10405	Isa	27	1	<i>fleeing</i>
10406	Isa	27	1	 2) Or 
10407	Isa	27	1	<i>winding</i>
10408	Isa	27	2	1) Or 
10409	Isa	27	2	<i>of</i>
10410	Isa	27	6	1) Or 
10411	Isa	27	6	<i>In the generations that come</i>
10412	Isa	27	7	1) Or 
10413	Isa	27	7	<i>of their slain</i>
10414	Isa	27	8	1) The meaning of the Hebrew word is uncertain. 2) Or 
10415	Isa	27	8	<i>by sending them away</i>
10416	Isa	27	9	1) Or 
10417	Isa	27	9	<i>expiated</i>
10418	Isa	27	9	 2) Or 
10419	Isa	27	9	<i>to take away</i>
10420	Isa	27	12	1) Or 
10421	Isa	27	12	<i>beat out</i>
10422	Isa	27	12	 his grain 2) Or 
10423	Isa	27	12	<i>gleaned</i>
10424	Isa	27	12	 3) Or 
10425	Isa	27	12	<i>one to another</i>
10426	Isa	27	13	1) Or 
10427	Isa	27	13	<i>lost</i>
10428	Isa	28	1	1) Heb 
10429	Isa	28	1	<i>smitten down</i>
10430	Isa	28	2	1) Or 
10431	Isa	28	2	<i>with violence</i>
10432	Isa	28	6	1) Or 
10433	Isa	28	6	<i>to</i>
10434	Isa	28	9	1) Or 
10435	Isa	28	9	<i>Whom shall he teach…and whom shall he make…breasts. For etc</i>
10436	Isa	28	9	 2) Or 
10437	Isa	28	9	<i>report</i>
10438	Isa	28	10	1) Or 
10439	Isa	28	10	<i>rule</i>
10440	Isa	28	11	1) Or 
10441	Isa	28	11	<i>For with stammering lips</i>
10442	Isa	28	16	1) Or 
10443	Isa	28	16	<i>have laid</i>
10444	Isa	28	22	1) Heb 
10445	Isa	28	22	<i>destruction, and that decreed</i>
10446	Isa	28	22	 2) Or 
10447	Isa	28	22	<i>land</i>
10448	Isa	28	25	1) Or 
10449	Isa	28	25	<i>black cummin</i>
10450	Isa	28	25	 (
10451	Isa	28	25	<i> Nigella sativa</i>
10452	Isa	28	25	 )
10453	Isa	28	26	1) Or 
10454	Isa	28	26	<i>And he traineth each of them aright; his God doth teach him.</i>
10455	Isa	28	28	1) Or 
10456	Isa	28	28	<i>Is bread</i>
10457	Isa	28	28	 grain 
10458	Isa	28	28	<i>crushed? Nay, he will not ever be threshing it, and driving his cart wheels and his horses over it; he doth not crush it.</i>
10459	Isa	28	29	1) Or 
10460	Isa	28	29	<i>effectual working</i>
10461	Isa	29	1	1) Or 
10462	Isa	29	1	<i>Woe to</i>
10463	Isa	29	1	 2) That is 
10464	Isa	29	1	<i>The lion of God</i>
10465	Isa	29	1	 ; Or 
10466	Isa	29	1	<i>The hearth of God</i>
10467	Isa	29	2	1) Or 
10468	Isa	29	2	<i>yet</i>
10469	Isa	29	4	1) Or 
10470	Isa	29	4	<i>chirp</i>
10471	Isa	29	5	1) Heb 
10472	Isa	29	5	<i>strangers</i>
10473	Isa	29	6	1) Or 
10474	Isa	29	6	<i>There shall be a visitation from Jehovah etc</i>
10475	Isa	29	9	1) Or 
10476	Isa	29	9	<i>Be ye amazed</i>
10477	Isa	29	9	 2) Or 
10478	Isa	29	9	<i>blind yourselves and be blind</i>
10479	Isa	29	10	1) Or 
10480	Isa	29	10	<i>your eyes; the prophets, and etc</i>
10481	Isa	29	11	1) Or 
10482	Isa	29	11	<i>writing</i>
10483	Isa	29	11	 2) Heb 
10484	Isa	29	11	<i>knoweth writing</i>
10485	Isa	29	11	 (or 
10486	Isa	29	11	<i>letters</i>
10487	Isa	29	11	 )
10488	Isa	29	13	1) Or 
10489	Isa	29	13	<i>learned</i>
10490	Isa	29	13	 by rote
10491	Isa	29	14	1) Or 
10492	Isa	29	14	<i>again do</i>
10493	Isa	29	14	 ; Heb 
10494	Isa	29	14	<i>add to do</i>
10495	Isa	29	16	1) Or 
10626	Isa	35	3	1) Or 
10496	Isa	29	16	<i>Oh your perversity!</i>
10497	Isa	29	18	1) Or 
10498	Isa	29	18	<i>a book</i>
10499	Isa	29	18	 (or 
10500	Isa	29	18	<i>writing</i>
10501	Isa	29	18	 )
10502	Isa	29	21	1) Or 
10503	Isa	29	21	<i>make men to offend by</i>
10504	Isa	29	21	 their 
10505	Isa	29	21	<i>words</i>
10506	Isa	29	21	 2) Or 
10507	Isa	29	21	<i>for a word</i>
10508	Isa	29	23	1) Or 
10509	Isa	29	23	<i>But when his children see etc</i>
10510	Isa	29	24	1) Heb 
10511	Isa	29	24	<i>shall know understanding</i>
10512	Isa	30	1	1) Or 
10513	Isa	30	1	<i>pour out a drink-offering</i>
10514	Isa	30	2	1) Or 
10515	Isa	30	2	<i>flee to the stronghold of Pharaoh</i>
10516	Isa	30	6	1) Or 
10517	Isa	30	6	<i>oracle concerning</i>
10518	Isa	30	7	1) Or 
10519	Isa	30	7	<i>cried concerning this, They are</i>
10520	Isa	30	7	 but 
10521	Isa	30	7	<i>arrogancy: be still</i>
10522	Isa	30	8	1) Or as otherwise read 
10523	Isa	30	8	<i>for a witness for ever</i>
10524	Isa	30	9	1) Or 
10525	Isa	30	9	<i>teaching</i>
10526	Isa	30	17	1) Or 
10527	Isa	30	17	<i>a pole</i>
10528	Isa	30	19	1) Or 
10529	Isa	30	19	<i>O people that dwellest in Zion at Jerusalem</i>
10530	Isa	30	20	1) Or 
10531	Isa	30	20	<i>And then will the Lord give you bread in adversity and water in affliction; and thy teachers shall not etc</i>
10532	Isa	30	20	 2) Or 
10533	Isa	30	20	<i>teacher</i>
10534	Isa	30	20	 3) Or 
10535	Isa	30	20	<i>hide themselves</i>
10536	Isa	30	22	1) Heb 
10537	Isa	30	22	<i>scatter</i>
10538	Isa	30	22	 2) Heb 
10539	Isa	30	22	<i>menstruous</i>
10540	Isa	30	24	1) Heb 
10541	Isa	30	24	<i>salted</i>
10542	Isa	30	29	1) Or 
10543	Isa	30	29	<i>when a feast is hallowed</i>
10544	Isa	30	30	1) Or 
10545	Isa	30	30	<i>crashing</i>
10546	Isa	30	32	1) Heb 
10547	Isa	30	32	<i>passing</i>
10548	Isa	30	32	 2) Or 
10549	Isa	30	32	<i>staff of doom</i>
10550	Isa	30	32	 (Heb 
10551	Isa	30	32	<i>foundation</i>
10552	Isa	30	32	 )
10553	Isa	31	4	1) Or 
10554	Isa	31	4	<i>against</i>
10555	Isa	31	6	1) Or 
10556	Isa	31	6	<i>from whom the children of Israel have deeply revolted</i>
10557	Isa	31	6	 2) Heb 
10558	Isa	31	6	<i>they</i>
10559	Isa	32	3	1) Or 
10560	Isa	32	3	<i>closed</i>
10561	Isa	32	4	1) Heb 
10562	Isa	32	4	<i>hasty</i>
10563	Isa	32	5	1) Or 
10564	Isa	32	5	<i>crafty</i>
10565	Isa	32	7	1) Or 
10566	Isa	32	7	<i>poor</i>
10567	Isa	32	8	1) Or 
10568	Isa	32	8	<i>by liberal things shall he stand</i>
10569	Isa	32	9	1) Heb 
10570	Isa	32	9	<i>confident</i>
10571	Isa	32	10	1) Or 
10572	Isa	32	10	<i>After a year and days</i>
10573	Isa	32	10	 ; Heb 
10574	Isa	32	10	<i>Days above a year</i>
10575	Isa	32	11	1) Or 
10576	Isa	32	11	<i>put a girdle upon</i>
10577	Isa	32	14	1) Or 
10578	Isa	32	14	<i>Ophel</i>
10579	Isa	33	2	1) Heb 
10580	Isa	33	2	<i>their</i>
10581	Isa	33	6	1) Or 
10582	Isa	33	6	<i>And abundance of salvation, wisdom, and knowledge shall be the stability of thy times</i>
10583	Isa	33	6	 2) Heb 
10584	Isa	33	6	<i>his</i>
10585	Isa	33	8	1) Heb 
10586	Isa	33	8	<i>he</i>
10587	Isa	33	9	1) Or 
10588	Isa	33	9	<i>the Arabah</i>
10589	Isa	33	15	1) Or 
10590	Isa	33	15	<i>fraud</i>
10591	Isa	33	17	1) Or 
10592	Isa	33	17	<i>a land that is very far off</i>
10593	Isa	33	17	 ; Heb 
10594	Isa	33	17	<i>a land of far distances</i>
10595	Isa	33	18	1) Or 
10596	Isa	33	18	<i>the scribe</i>
10597	Isa	33	19	1) Or 
10598	Isa	33	19	<i>stammering</i>
10599	Isa	33	20	1) Or 
10600	Isa	33	20	<i>set feasts</i>
10601	Isa	33	21	1) Or 
10602	Isa	33	21	<i>but in the place…streams there shall go etc</i>
10603	Isa	34	2	1) Heb 
10604	Isa	34	2	<i>devoted</i>
10605	Isa	34	4	1) Or 
10606	Isa	34	4	<i>moulder away</i>
10607	Isa	34	5	1) Heb 
10608	Isa	34	5	<i>devoting</i>
10609	Isa	34	5	 , or 
10610	Isa	34	5	<i>ban</i>
10611	Isa	34	9	1) Heb 
10612	Isa	34	9	<i>thereof</i>
10613	Isa	34	11	1) Or 
10614	Isa	34	11	<i>bittern</i>
10615	Isa	34	11	 2) Heb 
10616	Isa	34	11	<i>stones</i>
10617	Isa	34	12	1) Or 
10618	Isa	34	12	<i>As for her nobles, none shall be there to proclaim the kingdom</i>
10619	Isa	34	14	1) Heb 
10620	Isa	34	14	<i>howling creatures</i>
10621	Isa	34	14	 2) Heb 
10622	Isa	34	14	<i>Lilith</i>
10623	Isa	35	1	1) Or 
10624	Isa	35	1	<i>autumn crocus</i>
10625	Isa	35	1	 ; See So 2:1
10627	Isa	35	3	<i>tottering</i>
10628	Isa	35	4	1) Heb 
10629	Isa	35	4	<i>hasty</i>
10630	Isa	35	4	 2) Or 
10631	Isa	35	4	<i>behold, your God! vengeance will come, even the recompense of God</i>
10632	Isa	35	7	1) Or 
10633	Isa	35	7	<i>mirage</i>
10634	Isa	35	7	 2) Or 
10635	Isa	35	7	<i>a court for reeds etc</i>
10636	Isa	35	7	 ; See Isa 34:13
10637	Isa	35	8	1) Heb 
10638	Isa	35	8	<i>them</i>
10639	Isa	36	1	1) Heb 
10640	Isa	36	1	<i>Sanherib</i>
10641	Isa	36	2	1) The title of an Assyrian officer.
10642	Isa	36	3	1) Or 
10643	Isa	36	3	<i>secretary</i>
10644	Isa	36	3	  2) Or 
10645	Isa	36	3	<i>chronicler</i>
10646	Isa	36	8	1) Or 
10647	Isa	36	8	<i>make a wager with</i>
10648	Isa	36	11	1) Heb 
10649	Isa	36	11	<i>Aramean</i>
10650	Isa	36	16	1) Heb 
10651	Isa	36	16	<i>Make with me a blessing</i>
10652	Isa	37	4	1) Or 
10653	Isa	37	4	<i>wherewith the king of Assyria…hath sent him</i>
10654	Isa	37	11	1) Heb 
10655	Isa	37	11	<i>devoting them</i>
10656	Isa	37	13	1) In 2 Ki 17:24 
10657	Isa	37	13	<i>Avva</i>
10658	Isa	37	16	1) Or 
10659	Isa	37	16	<i>art enthroned</i>
10660	Isa	37	22	1) Heb 
10661	Isa	37	22	<i>after</i>
10662	Isa	37	24	1) Or 
10663	Isa	37	24	<i>cypress-trees</i>
10664	Isa	37	25	1) Or 
10665	Isa	37	25	<i>defence</i>
10666	Isa	37	25	 ; Heb 
10667	Isa	37	25	<i>Mazor</i>
10668	Isa	37	27	1) In 2 Ki 19:26 
10669	Isa	37	27	<i>grain blasted</i>
10670	Isa	37	29	1) Or 
10671	Isa	37	29	<i>thy careless ease</i>
10672	Isa	37	31	1) Heb 
10673	Isa	37	31	<i>the escaped of the house of Judah that remain</i>
10674	Isa	38	8	1) Heb 
10675	Isa	38	8	<i>steps</i>
10676	Isa	38	8	 2) Or 
10677	Isa	38	8	<i>by</i>
10678	Isa	38	8	 3) Or 
10679	Isa	38	8	<i>by which steps it etc</i>
10680	Isa	38	10	1) Or 
10681	Isa	38	10	<i>tranquility</i>
10682	Isa	38	11	1) Heb 
10683	Isa	38	11	<i>Jah</i>
10684	Isa	38	11	 2) Or, when I am 
10685	Isa	38	11	<i>among them that have ceased to be</i>
10686	Isa	38	12	1) Heb 
10687	Isa	38	12	<i>thrum</i>
10688	Isa	38	13	1) Or 
10689	Isa	38	13	<i>I thought until morning, As a lion, so will he break etc</i>
10690	Isa	38	15	1) Or 
10691	Isa	38	15	<i>as in solemn procession</i>
10692	Isa	38	15	 ; See Ps 42:4
10693	Isa	38	16	1) Or 
10694	Isa	38	16	<i>So wilt thou recover me</i>
10695	Isa	38	17	1) Heb 
10696	Isa	38	17	<i>thou hast loved my soul from the pit</i>
10697	Isa	38	17	 2) Or 
10698	Isa	38	17	<i>nothingness</i>
10699	Isa	39	2	1) Or 
10700	Isa	39	2	<i>spicery</i>
10701	Isa	39	2	 2) Or 
10702	Isa	39	2	<i>jewels</i>
10703	Isa	40	2	1) Heb 
10704	Isa	40	2	<i>to the heart of</i>
10705	Isa	40	2	 2) Or 
10706	Isa	40	2	<i>time of service</i>
10707	Isa	40	2	 3) Or 
10708	Isa	40	2	<i>punishment is accepted</i>
10709	Isa	40	2	 ; See Le 26:43
10710	Isa	40	3	1) Or 
10711	Isa	40	3	<i>that crieth in the wilderness, Prepare ye the way etc</i>
10712	Isa	40	9	1) Or 
10713	Isa	40	9	<i>O Zion, that bringest good tidings</i>
10714	Isa	40	9	 2) Or 
10715	Isa	40	9	<i>O Jerusalem, that bringest good tidings</i>
10716	Isa	40	13	1) Or 
10717	Isa	40	13	<i>meted out</i>
10718	Isa	40	15	1) Or 
10719	Isa	40	15	<i>the isles are as the fine dust that is lifted up</i>
10720	Isa	40	17	1) Or 
10721	Isa	40	17	<i>as a thing of nought</i>
10722	Isa	40	17	 2) Or 
10723	Isa	40	17	<i>confusion</i>
10724	Isa	40	20	1) Or 
10725	Isa	40	20	<i>prepare</i>
10726	Isa	40	21	1) Or 
10727	Isa	40	21	<i>understood the foundations</i>
10728	Isa	40	22	1) Or 
10729	Isa	40	22	<i>gauze</i>
10730	Isa	40	23	1) Or 
10731	Isa	40	23	<i>confusion</i>
10732	Isa	40	24	1) Or 
10733	Isa	40	24	<i>Scarce are they planted, scarce are they sown, scarce hath their stock taken root in the earth, when he bloweth upon them etc</i>
10734	Isa	40	26	1) Or 
10735	Isa	40	26	<i>and see: who hath created these? he that etc</i>
10736	Isa	40	28	1) Or 
10737	Isa	40	28	<i>Jehovah is an everlasting God, the Creator…he fainteth not etc</i>
10738	Isa	41	2	1) Or 
10739	Isa	41	2	<i>whom righteousness calleth to its foot</i>
10740	Isa	41	2	 ; Or 
10741	Isa	41	2	<i>whom righteousness meeteth withersoever he goeth</i>
10742	Isa	41	2	 2) Or 
10743	Isa	41	2	<i>he maketh as the dust their sword, as the driven stubble their bow</i>
10744	Isa	41	10	1) Or 
10745	Isa	41	10	<i>look not around thee</i>
10746	Isa	41	14	1) Or 
10747	Isa	41	14	<i>they Redeemer, the Holy One etc</i>
10748	Isa	41	19	1) Or 
10749	Isa	41	19	<i>oleaster</i>
10750	Isa	41	19	 2) Or 
10751	Isa	41	19	<i>cypress</i>
10752	Isa	41	19	 3) Or 
10753	Isa	41	19	<i>plane</i>
10754	Isa	41	23	1) Or 
10755	Isa	41	23	<i>look one upon another</i>
10756	Isa	41	25	1) Or 
10757	Isa	41	25	<i>deputies</i>
10758	Isa	41	29	1) Or 
10759	Isa	41	29	<i>Behold, they are all vanity; their works are nought</i>
10760	Isa	42	1	1) Or 
10761	Isa	42	1	<i>nations</i>
10762	Isa	42	1	 (and elsewhere)
10763	Isa	42	4	1) Or 
10764	Isa	42	4	<i>burn dimly</i>
10765	Isa	42	4	 2) Or 
10766	Isa	42	4	<i>bruised</i>
10767	Isa	42	6	1) Or 
10768	Isa	42	6	<i>form</i>
10769	Isa	42	14	1) Or 
10770	Isa	42	14	<i>destroy and devour</i>
10771	Isa	42	16	1) Or 
10772	Isa	42	16	<i>and will not forbear</i>
10773	Isa	42	19	1) Or 
10774	Isa	42	19	<i>made perfect</i>
10775	Isa	42	19	 ; Or 
10776	Isa	42	19	<i>recompensed</i>
10777	Isa	42	21	1) Or 
10778	Isa	42	21	<i>make the teaching great and glorious</i>
10779	Isa	42	24	1) Or 
10780	Isa	42	24	<i>teaching</i>
10781	Isa	43	4	1) Or 
10782	Isa	43	4	<i>thou hast been honorable etc</i>
10783	Isa	43	9	1) Or 
10784	Isa	43	9	<i>Gather yourselves together, all ye nations</i>
10785	Isa	43	9	 2) Or 
10786	Isa	43	9	<i>and that they may hear</i>
10787	Isa	43	13	1) Or 
10788	Isa	43	13	<i>from</i>
10789	Isa	43	13	 this 
10790	Isa	43	13	<i>day forth I etc</i>
10791	Isa	43	14	1) Or as otherwise read 
10792	Isa	43	14	<i>all their nobles, even etc</i>
10793	Isa	43	17	1) Or 
10794	Isa	43	17	<i>who…the power: They shall lie etc</i>
10795	Isa	43	21	1) Or 
10796	Isa	43	21	<i>they shall set forth</i>
10797	Isa	43	23	1) Or 
10798	Isa	43	23	<i>a meal-offering</i>
10799	Isa	43	24	1) Or 
10800	Isa	43	24	<i>calamus</i>
10801	Isa	43	24	 2) Or 
10802	Isa	43	24	<i>satiated</i>
10803	Isa	43	27	1) Heb 
10804	Isa	43	27	<i>interpreters</i>
10805	Isa	43	28	1) Or 
10806	Isa	43	28	<i>have profaned</i>
10807	Isa	43	28	 2) Or 
10808	Isa	43	28	<i>holy princes</i>
10809	Isa	43	28	 3) Or 
10810	Isa	43	28	<i>have made</i>
10811	Isa	43	28	 4) Or 
10812	Isa	43	28	<i>devoted thing</i>
10813	Isa	44	3	1) Or 
10814	Isa	44	3	<i>the thirsty</i>
10815	Isa	44	3	 land
10816	Isa	44	5	1) Or 
10817	Isa	44	5	<i>proclaim the name</i>
10818	Isa	44	5	 2) Or 
10819	Isa	44	5	<i>write on his hand, Unto Jehovah</i>
10820	Isa	44	5	 3) Or 
10821	Isa	44	5	<i>give for a title the name of Israel</i>
10822	Isa	44	7	1) Or 
10823	Isa	44	7	<i>And who, as I, can proclaim? let him declare it etc</i>
10824	Isa	44	7	 2) Or 
10825	Isa	44	7	<i>declare unto them</i>
10826	Isa	44	9	1) Or 
10827	Isa	44	9	<i>confusion</i>
10828	Isa	44	11	1) Or 
10829	Isa	44	11	<i>all that join themselves thereto</i>
10830	Isa	44	12	1) Or, sharpeneth 
10831	Isa	44	12	<i>a tool</i>
10832	Isa	44	13	1) Or 
10833	Isa	44	13	<i>red ochre</i>
10834	Isa	44	14	1) Or 
10835	Isa	44	14	<i>an ash</i>
10836	Isa	44	16	1) Or 
10837	Isa	44	16	<i>the half</i>
10838	Isa	44	18	1) Heb 
10839	Isa	44	18	<i>daubed</i>
10840	Isa	44	24	1) Another reading is 
10841	Isa	44	24	<i>by myself</i>
10842	Isa	44	25	1) Or 
10843	Isa	44	25	<i>boasters</i>
10844	Isa	44	28	1) Heb 
10845	Isa	44	28	<i>Coresh</i>
10846	Isa	44	28	 2) Or 
10847	Isa	44	28	<i>and the foundation of the temple shall be laid</i>
10848	Isa	45	8	1) Heb 
10849	Isa	45	8	<i>they</i>
10850	Isa	45	8	 2) Or 
10851	Isa	45	8	<i>be fruitful in salvation</i>
10852	Isa	45	18	1) Or 
10853	Isa	45	18	<i>in vain</i>
10854	Isa	45	19	1) Or, as 
10855	Isa	45	19	<i>in a waste</i>
10856	Isa	45	21	1) Or 
10857	Isa	45	21	<i>bring</i>
10858	Isa	45	21	 them 
10859	Isa	45	21	<i>near</i>
10860	Isa	45	23	1) Or 
10861	Isa	45	23	<i>righteousness is gone forth from my mouth, a word which shall not return</i>
10862	Isa	45	23	 ; Or 
10863	Isa	45	23	<i>the word is gone forth from a mouth of righteousness, and shall not return</i>
10864	Isa	46	8	1) Or 
10865	Isa	46	8	<i>stand fast</i>
10866	Isa	46	9	1) Or 
10867	Isa	46	9	<i>that</i>
10868	Isa	46	11	1) Another reading is 
10869	Isa	46	11	<i>his</i>
10870	Isa	46	13	1) Or 
10871	Isa	46	13	<i>give salvation in Zion,</i>
10872	Isa	46	13	 and 
10873	Isa	46	13	<i>my glory unto Israel</i>
10874	Isa	47	8	1) Or 
10875	Isa	47	8	<i>dwellest</i>
10876	Isa	47	11	1) Or 
10877	Isa	47	11	<i>how to charm it away</i>
10878	Isa	47	12	1) Or 
10879	Isa	47	12	<i>strike terror</i>
10880	Isa	47	13	1) Heb 
10881	Isa	47	13	<i>dividers of the heavens</i>
10882	Isa	47	15	1) Or 
10883	Isa	47	15	<i>his own way</i>
10884	Isa	48	6	1) Or 
10885	Isa	48	6	<i>I show</i>
10886	Isa	48	10	1) Or 
10887	Isa	48	10	<i>tried</i>
10888	Isa	48	14	1) Or 
10889	Isa	48	14	<i>Jehovah hath loved him: he shall etc</i>
10890	Isa	48	18	1) Or 
10891	Isa	48	18	<i>Oh that thou wouldest hearken…then would thy peace be etc</i>
10892	Isa	48	19	1) Or, that of 
10893	Isa	48	19	<i>the bowels thereof</i>
10894	Isa	49	5	1) Another reading is 
10895	Isa	49	5	<i>but Israel is not gathered, yet shall I be etc</i>
10896	Isa	49	6	1) Or 
10897	Isa	49	6	<i>that my salvation may be</i>
10898	Isa	49	8	1) Or 
10899	Isa	49	8	<i>establish the earth</i>
10900	Isa	49	10	1) Or 
10901	Isa	49	10	<i>mirage</i>
10902	Isa	49	21	1) Or 
10903	Isa	49	21	<i>borne</i>
10904	Isa	49	21	 2) Or 
10905	Isa	49	21	<i>barren</i>
10906	Isa	49	24	1) Heb 
10907	Isa	49	24	<i>the captives of the just</i>
10908	Isa	50	4	1) Or 
10909	Isa	50	4	<i>disciples</i>
10910	Isa	50	4	 2) Or 
10911	Isa	50	4	<i>to speak a word in season to him etc</i>
10912	Isa	50	10	1) Or 
10913	Isa	50	10	<i>though he walketh</i>
10914	Isa	51	6	1) Or perhaps 
10915	Isa	51	6	<i>like gnats</i>
10916	Isa	51	13	1) Or 
10917	Isa	51	13	<i>as though he made ready</i>
10918	Isa	51	14	1) Or 
10919	Isa	51	14	<i>He that is bent down</i>
10920	Isa	51	15	1) Or 
10921	Isa	51	15	<i>stilleth the sea when the waves thereof roar</i>
10922	Isa	52	2	1) Another reading is 
10923	Isa	52	2	<i>the bonds of thy neck are loosed</i>
10924	Isa	52	6	1) Or 
10925	Isa	52	6	<i>here I am</i>
10926	Isa	52	8	1) Or 
10927	Isa	52	8	<i>how</i>
10928	Isa	52	13	1) Or 
10929	Isa	52	13	<i>prosper</i>
10930	Isa	52	14	1) Or 
10931	Isa	52	14	<i>from that of man, and his form from that of the sons of men</i>
10932	Isa	52	15	1) Or 
10933	Isa	52	15	<i>startle</i>
10934	Isa	52	15	 2) Or 
10935	Isa	52	15	<i>because of</i>
10936	Isa	52	15	 3) Or 
10937	Isa	52	15	<i>consider</i>
10938	Isa	53	1	1) Or 
10939	Isa	53	1	<i>that which we have heard</i>
10940	Isa	53	2	1) Or 
10941	Isa	53	2	<i>that we should look upon him; nor beauty etc</i>
10942	Isa	53	3	1) Or 
10943	Isa	53	3	<i>forsaken</i>
10944	Isa	53	3	 2) Heb 
10945	Isa	53	3	<i>sickness</i>
10946	Isa	53	3	 3) Or 
10947	Isa	53	3	<i>he hid as it were</i>
10948	Isa	53	3	 his 
10949	Isa	53	3	<i>face from us</i>
10950	Isa	53	4	1) Heb 
10951	Isa	53	4	<i>sicknesses</i>
10952	Isa	53	6	1) Heb 
10953	Isa	53	6	<i>made to light</i>
10954	Isa	53	8	1) Or 
10955	Isa	53	8	<i>From</i>
10956	Isa	53	8	 2) Or 
10957	Isa	53	8	<i>living? for the transgression of my people was he stricken</i>
10958	Isa	53	9	1) Or 
10959	Isa	53	9	<i>because</i>
10960	Isa	53	10	1) Heb 
10961	Isa	53	10	<i>made him sick</i>
10962	Isa	53	10	 2) Or 
10963	Isa	53	10	<i>when his soul shall make an offering</i>
10964	Isa	53	10	 3) Heb 
10965	Isa	53	10	<i>a trespass-offering</i>
10966	Isa	53	11	1) Or 
10967	Isa	53	11	<i>He shall see</i>
10968	Isa	53	11	 and 
10969	Isa	53	11	<i>be satisfied with the travail etc</i>
10970	Isa	53	11	 2) Or 
10971	Isa	53	11	<i>by his knowledge</i>
10972	Isa	53	11	 3) Or 
10973	Isa	53	11	<i>make many righteous</i>
10974	Isa	53	12	1) Or 
10975	Isa	53	12	<i>maketh</i>
10976	Isa	54	8	1) Or 
10977	Isa	54	8	<i>In a little wrath</i>
10978	Isa	54	11	1) Or 
10979	Isa	54	11	<i>anlimony</i>
10980	Isa	54	11	 ; See 1 Ch 29:2
10981	Isa	54	12	1) Or 
10982	Isa	54	12	<i>windows</i>
10983	Isa	54	13	1) Or 
10984	Isa	54	13	<i>disciples</i>
10985	Isa	54	14	1) Or 
10986	Isa	54	14	<i>be thou far</i>
10987	Isa	54	15	1) Or 
10988	Isa	54	15	<i>stir up strife</i>
10989	Isa	54	15	 2) Or 
10990	Isa	54	15	<i>shall fall away to thee</i>
10991	Isa	54	16	1) Or 
10992	Isa	54	16	<i>its</i>
10993	Isa	54	17	1) Or 
10994	Isa	54	17	<i>their righteousness is of me</i>
10995	Isa	55	2	1) Heb 
10996	Isa	55	2	<i>weigh</i>
10997	Isa	55	2	 2) Or 
10998	Isa	55	2	<i>earnings</i>
10999	Isa	55	4	1) Or 
11000	Isa	55	4	<i>prince</i>
11001	Isa	56	5	1) Or 
11002	Isa	56	5	<i>place</i>
11003	Isa	56	5	 ; Heb 
11004	Isa	56	5	<i>hand</i>
11005	Isa	56	5	 2) Or 
11006	Isa	56	5	<i>better than sons and daughters</i>
11007	Isa	56	5	 3) Heb 
11008	Isa	56	5	<i>him</i>
11009	Isa	56	8	1) Heb 
11010	Isa	56	8	<i>to his gathered ones</i>
11011	Isa	56	9	1) Or 
11012	Isa	56	9	<i>come ye to devour all the beasts in the forest</i>
11013	Isa	56	11	1) Or 
11014	Isa	56	11	<i>one and all</i>
11015	Isa	57	1	1) Or 
11016	Isa	57	1	<i>godly</i>
11017	Isa	57	1	 2) Or 
11018	Isa	57	1	<i>through wickedness</i>
11019	Isa	57	2	1) Or 
11020	Isa	57	2	<i>straight before him</i>
11021	Isa	57	5	1) Or 
11022	Isa	57	5	<i>with idols</i>
11023	Isa	57	6	1) Or 
11024	Isa	57	6	<i>a meal-offering</i>
11025	Isa	57	8	1) Or 
11026	Isa	57	8	<i>thou providedst room for it</i>
11027	Isa	57	10	1) Heb 
11028	Isa	57	10	<i>the life of thy hand</i>
11029	Isa	57	10	 2) Heb 
11030	Isa	57	10	<i>sick</i>
11031	Isa	57	13	1) Or 
11032	Isa	57	13	<i>thy rabble</i>
11033	Isa	57	13	 of idols
11034	Isa	57	14	1) Or 
11035	Isa	57	14	<i>it shall be said</i>
11036	Isa	57	17	1) Heb 
11037	Isa	57	17	<i>turning away</i>
11038	Isa	57	18	1) Heb 
11039	Isa	57	18	<i>recompense</i>
11040	Isa	58	1	1) Heb 
11041	Isa	58	1	<i>with the throat</i>
11042	Isa	58	3	1) Or 
11043	Isa	58	3	<i>oppress all your laborers</i>
11044	Isa	58	4	1) Or 
11045	Isa	58	4	<i>ye shall not fast as</i>
11046	Isa	58	4	 ye do 
11047	Isa	58	4	<i>this day, to make etc</i>
11048	Isa	58	10	1) Or 
11049	Isa	58	10	<i>bestow on the hungry that which thy soul desireth</i>
11050	Isa	58	11	1) Or 
11051	Isa	58	11	<i>drought</i>
11052	Isa	58	13	1) Or 
11053	Isa	58	13	<i>him</i>
11054	Isa	59	4	1) Heb 
11055	Isa	59	4	<i>calleth</i>
11056	Isa	59	7	1) Or 
11057	Isa	59	7	<i>highways</i>
11058	Isa	59	10	1) Or 
11059	Isa	59	10	<i>we are in dark places like the dead</i>
11060	Isa	59	16	1) Or 
11061	Isa	59	16	<i>none to interpose</i>
11062	Isa	59	17	1) Or 
11063	Isa	59	17	<i>coat of mail</i>
11064	Isa	59	17	 2) Or 
11065	Isa	59	17	<i>salvation for a helmet</i>
11066	Isa	59	18	1) Heb 
11067	Isa	59	18	<i>recompenses</i>
11068	Isa	59	18	 2) Or 
11069	Isa	59	18	<i>coast-lands</i>
11070	Isa	59	19	1) Or 
11071	Isa	59	19	<i>when the adversary shall come in like a flood, the Spirit of Jehovah will lift up a standard against him</i>
11072	Isa	59	19	 2) Heb 
11073	Isa	59	19	<i>a stream pent in</i>
11074	Isa	60	4	1) Heb 
11075	Isa	60	4	<i>nursed upon the side</i>
11076	Isa	60	6	1) Or 
11077	Isa	60	6	<i>young camels</i>
11078	Isa	60	6	 2) Heb 
11079	Isa	60	6	<i>bring good tidings of the praises</i>
11080	Isa	60	7	1) Or 
11081	Isa	60	7	<i>beautify</i>
11082	Isa	60	7	 2) Or 
11083	Isa	60	7	<i>my beautiful house</i>
11084	Isa	60	9	1) Or 
11085	Isa	60	9	<i>beautified</i>
11086	Isa	60	17	1) Or 
11087	Isa	60	17	<i>thy taskmasters</i>
11088	Isa	60	19	1) Or 
11089	Isa	60	19	<i>beauty</i>
11090	Isa	61	1	1) Or 
11091	Isa	61	1	<i>poor</i>
11092	Isa	61	1	 2) Or 
11093	Isa	61	1	<i>opening</i>
11094	Isa	61	1	 of the eyes
11095	Isa	61	6	1) Or 
11096	Isa	61	6	<i>to their glory shall ye succeed</i>
11097	Isa	61	8	1) Or 
11098	Isa	61	8	<i>for</i>
11099	Isa	61	8	 (or 
11100	Isa	61	8	<i>with</i>
11101	Isa	61	8	 ) 
11102	Isa	61	8	<i>a burnt-offering</i>
11103	Isa	61	10	1) Heb 
11104	Isa	61	10	<i>decketh himself as a priest</i>
11105	Isa	62	4	1) That is 
11106	Isa	62	4	<i>My delight is in her</i>
11107	Isa	62	4	 2) That is 
11108	Isa	62	4	<i>Married</i>
11109	Isa	62	5	1) Heb 
11110	Isa	62	5	<i>with the joy of the bridegroom</i>
11111	Isa	62	6	1) Or 
11112	Isa	62	6	<i>keep not silence</i>
11113	Isa	62	7	1) Heb 
11114	Isa	62	7	<i>silence</i>
11115	Isa	62	10	1) Or 
11116	Isa	62	10	<i>over</i>
11117	Isa	62	11	1) Or 
11118	Isa	62	11	<i>work</i>
11119	Isa	63	1	1) Or 
11120	Isa	63	1	<i>crimsoned</i>
11121	Isa	63	3	1) Or 
11122	Isa	63	3	<i>will tread…and trample</i>
11123	Isa	63	3	 2) Or 
11124	Isa	63	3	<i>strength</i>
11125	Isa	63	3	 3) Or 
11126	Isa	63	3	<i>shall be</i>
11127	Isa	63	3	 4) Or 
11128	Isa	63	3	<i>will stain</i>
11129	Isa	63	4	1) Or 
11130	Isa	63	4	<i>is</i>
11131	Isa	63	4	 2) Or 
11132	Isa	63	4	<i>my year of redemption</i>
11133	Isa	63	6	1) Or 
11134	Isa	63	6	<i>I will tread…and make…and I will pour out</i>
11135	Isa	63	6	 2) Or according to another reading 
11136	Isa	63	6	<i>brake them in pieces</i>
11137	Isa	63	6	 3) Or 
11266	Jer	3	16	<i>visit</i>
11138	Isa	63	6	<i>brought down their strength to the earth</i>
11139	Isa	63	9	1) Another reading is 
11140	Isa	63	9	<i>In all their adversity he was no adversary</i>
11141	Isa	63	11	1) Or 
11142	Isa	63	11	<i>Then his people remembered the ancient days of Moses etc</i>
11143	Isa	63	11	 2) Another reading is 
11144	Isa	63	11	<i>shepherd</i>
11145	Isa	64	1	1) Or 
11146	Isa	64	1	<i>flow down</i>
11147	Isa	64	4	1) Or 
11148	Isa	64	4	<i>seen, O God, besides thee, one that etc</i>
11149	Isa	64	5	1) Or 
11150	Isa	64	5	<i>sparest</i>
11151	Isa	64	5	 2) Or 
11152	Isa	64	5	<i>in those is continuance, and we shall be saved</i>
11153	Isa	64	5	 ; The Hebrew is obscure.
11154	Isa	64	7	1) Heb 
11155	Isa	64	7	<i>melted</i>
11156	Isa	65	1	1) Or 
11157	Isa	65	1	<i>was inquired of</i>
11158	Isa	65	1	 2) Or 
11159	Isa	65	1	<i>was found</i>
11160	Isa	65	1	 3) Or as otherwise read 
11161	Isa	65	1	<i>that hath not called upon</i>
11162	Isa	65	4	1) Or 
11163	Isa	65	4	<i>dwell</i>
11164	Isa	65	4	 2) Or 
11165	Isa	65	4	<i>vaults</i>
11166	Isa	65	7	1) Or 
11167	Isa	65	7	<i>defied</i>
11168	Isa	65	7	 2) Or 
11169	Isa	65	7	<i>measure their former work</i>
11170	Isa	65	10	1) Or 
11171	Isa	65	10	<i>pasture</i>
11172	Isa	65	11	1) Heb 
11173	Isa	65	11	<i>Gad</i>
11174	Isa	65	11	 ; See Ge 30:11. 2) Heb 
11175	Isa	65	11	<i>Meni</i>
11176	Isa	65	14	1) Heb 
11177	Isa	65	14	<i>breaking</i>
11178	Isa	65	15	1) Heb 
11179	Isa	65	15	<i>an oath</i>
11180	Isa	65	16	1) Heb 
11181	Isa	65	16	<i>Amen</i>
11182	Isa	65	16	 ; See 2 Co 1:20; Re 3:14
11183	Isa	65	22	1) Heb 
11184	Isa	65	22	<i>wear out</i>
11185	Isa	65	23	1) Or 
11186	Isa	65	23	<i>sudden terror</i>
11187	Isa	65	23	  2) Or, shall be 
11188	Isa	65	23	<i>with them</i>
11189	Isa	66	3	1) Or 
11190	Isa	66	3	<i>a meal-offering</i>
11191	Isa	66	3	 2) Heb 
11192	Isa	66	3	<i>maketh a memorial of</i>
11193	Isa	66	4	1) Or 
11194	Isa	66	4	<i>mockings</i>
11195	Isa	66	8	1) Or 
11196	Isa	66	8	<i>travailed with for but one day</i>
11197	Isa	66	12	1) Or 
11198	Isa	66	12	<i>then shall ye suck, ye etc</i>
11199	Isa	66	15	1) Or 
11200	Isa	66	15	<i>in</i>
11201	Isa	66	17	1) Or 
11202	Isa	66	17	<i>in the</i>
11203	Isa	66	17	 2) Or 
11204	Isa	66	17	<i>one</i>
11205	Isa	66	17	 tree (or Asherah; see De 16:21)
11206	Jer	1	7	1) Or 
11207	Jer	1	7	<i>on whatsoever errand</i>
11208	Jer	1	11	1) Heb 
11209	Jer	1	11	<i>shaked</i>
11210	Jer	1	12	1) Heb 
11211	Jer	1	12	<i>shoked</i>
11212	Jer	1	14	1) Heb 
11213	Jer	1	14	<i>shall be opened</i>
11214	Jer	1	16	1) Or 
11215	Jer	1	16	<i>speak with them of my judgments</i>
11216	Jer	2	2	1) Or 
11217	Jer	2	2	<i>concerning</i>
11218	Jer	2	6	1) Or 
11219	Jer	2	6	<i>deep darkness</i>
11220	Jer	2	8	1) Heb 
11221	Jer	2	8	<i>shepherds</i>
11222	Jer	2	15	1) Heb 
11223	Jer	2	15	<i>given out their voice</i>
11224	Jer	2	16	1) Or 
11225	Jer	2	16	<i>fed on</i>
11226	Jer	2	18	1) That is, the Nile 2) That is, the Euphrates
11227	Jer	2	20	1) Or 
11228	Jer	2	20	<i>thou hast</i>
11229	Jer	2	20	 2) Another reading is 
11230	Jer	2	20	<i>transgress</i>
11231	Jer	2	23	1) Or 
11232	Jer	2	23	<i>young camel</i>
11233	Jer	2	27	1) Or 
11234	Jer	2	27	<i>begotten me</i>
11235	Jer	2	27	 2) Another reading is 
11236	Jer	2	27	<i>us</i>
11237	Jer	2	30	1) Or 
11238	Jer	2	30	<i>instruction</i>
11239	Jer	2	31	1) Or 
11240	Jer	2	31	<i>darkness from Jah</i>
11241	Jer	2	34	1) Or 
11242	Jer	2	34	<i>I have not found it by secret search, but upon all these</i>
11243	Jer	3	1	1) Heb 
11244	Jer	3	1	<i>Saying</i>
11245	Jer	3	1	 2) Or 
11246	Jer	3	1	<i>and</i>
11247	Jer	3	1	 thinkest thou 
11248	Jer	3	1	<i>to return etc?</i>
11249	Jer	3	4	1) Or 
11250	Jer	3	4	<i>companion</i>
11251	Jer	3	5	1) Or 
11252	Jer	3	5	<i>hast spoken</i>
11253	Jer	3	5	  thus, 
11254	Jer	3	5	<i>but hast done etc</i>
11255	Jer	3	5	 2) Heb 
11256	Jer	3	5	<i>been able</i>
11257	Jer	3	7	1) Or 
11258	Jer	3	7	<i>And I said, After she hath done all these things, she etc</i>
11259	Jer	3	7	 2) Or 
11260	Jer	3	7	<i>Let her return unto me</i>
11261	Jer	3	12	1) Heb 
11262	Jer	3	12	<i>cause my countenance to fall upon you</i>
11263	Jer	3	13	1) Or 
11264	Jer	3	13	<i>know</i>
11265	Jer	3	16	1) Or 
11267	Jer	3	16	 2) Or 
11268	Jer	3	16	<i>shall</i>
11269	Jer	3	16	 that 
11270	Jer	3	16	<i>be done any more</i>
11271	Jer	3	18	1) Or 
11272	Jer	3	18	<i>to</i>
11273	Jer	3	19	1) Or 
11274	Jer	3	19	<i>shall I…nations?</i>
11275	Jer	3	19	 2) Or 
11276	Jer	3	19	<i>the goodliest heritage of the nations</i>
11277	Jer	3	19	 3) Another reading is 
11278	Jer	3	19	<i>Thou shalt…and shalt not etc</i>
11279	Jer	3	23	1) Or 
11280	Jer	3	23	<i>noisy throng</i>
11281	Jer	3	24	1) Heb 
11282	Jer	3	24	<i>shame</i>
11283	Jer	3	24	 ; See Jer 11:13; Ho 9:10
11284	Jer	4	1	1) Or 
11285	Jer	4	1	<i>if thou wilt put…and will not wander, and wilt swear…then shall the nations etc</i>
11286	Jer	4	1	 ; or 
11287	Jer	4	1	<i>then shalt thou swear…and the nations etc</i>
11288	Jer	4	12	1) Or 
11289	Jer	4	12	<i>a wind too strong for this</i>
11290	Jer	4	15	1) Or 
11291	Jer	4	15	<i>there is a voice of one that declareth etc</i>
11292	Jer	4	18	1) Or 
11293	Jer	4	18	<i>surely</i>
11294	Jer	4	19	1) Another reading is 
11295	Jer	4	19	<i>I will wait patiently</i>
11296	Jer	4	19	 2) Heb 
11297	Jer	4	19	<i>the walls of my heart</i>
11298	Jer	4	19	 3) Or as otherwise read 
11299	Jer	4	19	<i>my soul heareth</i>
11300	Jer	4	24	1) Or 
11301	Jer	4	24	<i>moved lightly</i>
11302	Jer	4	26	1) Or 
11303	Jer	4	26	<i>Carmel</i>
11304	Jer	4	30	1) Heb 
11305	Jer	4	30	<i>rendest</i>
11306	Jer	5	1	1) Or 
11307	Jer	5	1	<i>faithfulness</i>
11308	Jer	5	3	1) Heb 
11309	Jer	5	3	<i>are not thine eyes upon</i>
11310	Jer	5	3	 2) Or 
11311	Jer	5	3	<i>faithfulness</i>
11312	Jer	5	3	 3) Or 
11313	Jer	5	3	<i>instruction</i>
11314	Jer	5	6	1) Or 
11315	Jer	5	6	<i>deserts</i>
11316	Jer	5	7	1) Or according to another reading 
11317	Jer	5	7	<i>made them swear</i>
11318	Jer	5	15	1) Or 
11319	Jer	5	15	<i>an enduring nation</i>
11320	Jer	5	17	1) Or 
11321	Jer	5	17	<i>impoverish</i>
11322	Jer	5	21	1) Heb 
11323	Jer	5	21	<i>heart</i>
11324	Jer	5	22	1) Or 
11325	Jer	5	22	<i>an everlasting ordinance which it cannot pass</i>
11326	Jer	5	30	1) Or 
11327	Jer	5	30	<i>Astonishment and horror</i>
11328	Jer	5	31	1) Or 
11329	Jer	5	31	<i>at their hands</i>
11330	Jer	6	4	1) Heb 
11331	Jer	6	4	<i>Sanctify</i>
11332	Jer	6	6	1) Or as otherwise read 
11333	Jer	6	6	<i>her trees</i>
11334	Jer	6	7	1) Or 
11335	Jer	6	7	<i>keepeth fresh</i>
11336	Jer	6	9	1) Or 
11337	Jer	6	9	<i>upon the shoots</i>
11338	Jer	6	14	1) Or 
11339	Jer	6	14	<i>breach</i>
11340	Jer	6	14	 2) Another reading is 
11341	Jer	6	14	<i>the daughter of my people</i>
11342	Jer	6	14	 , as in Jer 8:11, 21
11343	Jer	6	15	1) Or 
11344	Jer	6	15	<i>They shall be put to shame because they have committed abomination: yea, they are not etc</i>
11345	Jer	6	15	 2) Or 
11346	Jer	6	15	<i>stumble</i>
11347	Jer	6	20	1) Or 
11348	Jer	6	20	<i>calamus</i>
11349	Jer	6	27	1) Or 
11350	Jer	6	27	<i>tower</i>
11351	Jer	6	29	1) Or 
11352	Jer	6	29	<i>are burned</i>
11353	Jer	7	10	1) Heb 
11354	Jer	7	10	<i>whereupon my name is called</i>
11355	Jer	7	24	1) Or 
11356	Jer	7	24	<i>turned their back, and not their face</i>
11357	Jer	7	28	1) Or 
11358	Jer	7	28	<i>correction</i>
11359	Jer	7	28	 2) Or 
11360	Jer	7	28	<i>faithfulness</i>
11361	Jer	7	29	1) Heb 
11362	Jer	7	29	<i>thy crown</i>
11363	Jer	7	31	1) Heb 
11364	Jer	7	31	<i>heart</i>
11365	Jer	7	32	1) Or 
11366	Jer	7	32	<i>because there shall be no place else</i>
11367	Jer	8	6	1) Or 
11368	Jer	8	6	<i>turneth away in his course</i>
11369	Jer	8	8	1) Or 
11370	Jer	8	8	<i>made</i>
11371	Jer	8	8	 of it 
11372	Jer	8	8	<i>falsehood</i>
11373	Jer	8	13	1) Or 
11374	Jer	8	13	<i>I have appointed them those that shall pass over them</i>
11375	Jer	8	14	1) Or 
11376	Jer	8	14	<i>perish</i>
11377	Jer	8	14	 2) Or 
11378	Jer	8	14	<i>caused us to perish</i>
11379	Jer	8	14	 3) Or 
11380	Jer	8	14	<i>poison</i>
11381	Jer	8	14	 ; See De 29:18
11382	Jer	8	19	1) Or 
11383	Jer	8	19	<i>because of</i>
11384	Jer	8	20	1) Or 
11385	Jer	8	20	<i>ingathering of summer fruits</i>
11386	Jer	8	22	1) Or 
11387	Jer	8	22	<i>healing</i>
11388	Jer	8	22	 2) Or 
11389	Jer	8	22	<i>perfected</i>
11390	Jer	8	22	 ; Heb 
11391	Jer	8	22	<i>gone up</i>
11392	Jer	9	2	1) Or 
11393	Jer	9	2	<i>Oh that I were in the wilderness, in etc</i>
11394	Jer	9	3	1) Or 
11395	Jer	9	3	<i>faithfulness</i>
11396	Jer	9	5	1) Or 
11397	Jer	9	5	<i>mock</i>
11398	Jer	9	15	1) Or 
11399	Jer	9	15	<i>poison</i>
11400	Jer	9	19	1) Or 
11401	Jer	9	19	<i>our dwellings have cast</i>
11402	Jer	9	19	 us 
11403	Jer	9	19	<i>out</i>
11404	Jer	10	3	1) Heb 
11405	Jer	10	3	<i>statutes</i>
11406	Jer	10	3	 2) Or, it is but 
11407	Jer	10	3	<i>a tree which one cutteth</i>
11408	Jer	10	5	1) Or 
11409	Jer	10	5	<i>pillar</i>
11410	Jer	10	7	1) Or 
11411	Jer	10	7	<i>it beseemeth thee</i>
11412	Jer	10	8	1) Or 
11413	Jer	10	8	<i>through one thing</i>
11414	Jer	10	8	 2) Or 
11415	Jer	10	8	<i>the stock</i>
11416	Jer	10	8	 is 
11417	Jer	10	8	<i>a doctrine of vanities</i>
11418	Jer	10	10	1) Or 
11419	Jer	10	10	<i>God in truth</i>
11420	Jer	10	11	1) This verse is in Aramaic. 2) Or 
11421	Jer	10	11	<i>they shall…under these heavens</i>
11422	Jer	10	13	1) Or 
11423	Jer	10	13	<i>at the sound of his giving an abundance of waters…when he causeth etc</i>
11424	Jer	10	13	 (or 
11425	Jer	10	13	<i>he causeth etc</i>
11426	Jer	10	13	 )
11427	Jer	10	14	1) Or 
11428	Jer	10	14	<i>is too brutish to know</i>
11429	Jer	10	15	1) Or 
11430	Jer	10	15	<i>mockery</i>
11431	Jer	10	17	1) Or 
11432	Jer	10	17	<i>thy bundle from the ground</i>
11433	Jer	10	17	 2) Or 
11434	Jer	10	17	<i>O inhabitant</i>
11435	Jer	10	17	 (Heb 
11436	Jer	10	17	<i>inhabitress</i>
11437	Jer	10	17	 ) 
11438	Jer	10	17	<i>of the fortress</i>
11439	Jer	10	18	1) Heb 
11440	Jer	10	18	<i>find</i>
11441	Jer	10	19	1) Or 
11442	Jer	10	19	<i>sickness</i>
11443	Jer	10	21	1) Or 
11444	Jer	10	21	<i>dealt wisely</i>
11445	Jer	10	24	1) Heb 
11446	Jer	10	24	<i>judgment</i>
11447	Jer	10	24	 2) Heb 
11448	Jer	10	24	<i>diminish me</i>
11449	Jer	10	25	1) Or 
11450	Jer	10	25	<i>pasture</i>
11451	Jer	11	12	1) Heb 
11452	Jer	11	12	<i>evil</i>
11453	Jer	11	13	1) Heb 
11454	Jer	11	13	<i>shame</i>
11455	Jer	11	14	1) Heb 
11456	Jer	11	14	<i>evil</i>
11457	Jer	11	15	1) The text is obscure. The Sept has 
11458	Jer	11	15	<i>Shall vows and holy flesh take away from thee they wickedness, or shalt thou escape by these?</i>
11459	Jer	11	15	 2) Or 
11460	Jer	11	15	<i>when thine evil</i>
11461	Jer	11	15	 cometh
11462	Jer	11	19	1) Heb 
11463	Jer	11	19	<i>bread</i>
11464	Jer	11	20	1) Heb 
11465	Jer	11	20	<i>reins</i>
11466	Jer	11	22	1) Heb 
11467	Jer	11	22	<i>visit upon</i>
11468	Jer	11	23	1) Or 
11469	Jer	11	23	<i>in the year</i>
11470	Jer	12	1	1) Heb 
11471	Jer	12	1	<i>speak of judgments</i>
11472	Jer	12	2	1) Heb 
11473	Jer	12	2	<i>reins</i>
11474	Jer	12	3	1) Heb 
11475	Jer	12	3	<i>sanctify</i>
11476	Jer	12	5	1) Or 
11477	Jer	12	5	<i>swelling</i>
11478	Jer	12	6	1) Heb 
11479	Jer	12	6	<i>good things</i>
11480	Jer	12	13	1) Or 
11481	Jer	12	13	<i>be ye ashamed</i>
11482	Jer	12	13	 ; Or 
11483	Jer	12	13	<i>they shall be ashamed</i>
11484	Jer	13	12	1) Or 
11485	Jer	13	12	<i>jar</i>
11486	Jer	13	13	1) Heb 
11487	Jer	13	13	<i>for David upon his throne</i>
11488	Jer	13	16	1) Or 
11489	Jer	13	16	<i>it grow dark</i>
11490	Jer	13	16	 2) Heb 
11491	Jer	13	16	<i>mountains of twilight</i>
11492	Jer	13	16	 3) Or 
11493	Jer	13	16	<i>deep darkness</i>
11494	Jer	13	18	1) Or 
11495	Jer	13	18	<i>Sit ye down low</i>
11496	Jer	13	18	 2) Or 
11497	Jer	13	18	<i>your beautiful crown</i>
11498	Jer	13	21	1) Or 
11499	Jer	13	21	<i>What wilt thou say, when he shall visit thee, seeing thou thyself hast instructed them against thee, even</i>
11500	Jer	13	21	 they 
11501	Jer	13	21	<i>friends to be head</i>
11502	Jer	13	21	 over thee?
11503	Jer	13	22	1) Or 
11504	Jer	13	22	<i>multitude</i>
11505	Jer	13	23	1) Heb 
11506	Jer	13	23	<i>taught</i>
11507	Jer	13	24	1) Or 
11508	Jer	13	24	<i>unto</i>
11509	Jer	13	26	1) Or 
11510	Jer	13	26	<i>before</i>
11511	Jer	14	3	1) Or 
11512	Jer	14	3	<i>inferiors</i>
11513	Jer	14	3	 2) Or 
11514	Jer	14	3	<i>for water</i>
11515	Jer	14	4	1) Or 
11516	Jer	14	4	<i>dismayed</i>
11517	Jer	14	6	1) Or 
11518	Jer	14	6	<i>the crocodile</i>
11519	Jer	14	8	1) Or 
11520	Jer	14	8	<i>spreadeth</i>
11521	Jer	14	8	 his tent
11522	Jer	14	13	1) Heb 
11523	Jer	14	13	<i>peace of truth</i>
11524	Jer	14	18	1) Heb 
11525	Jer	14	18	<i>the sicknesses of famine</i>
11526	Jer	14	18	 2) Or 
11527	Jer	14	18	<i>traffic</i>
11528	Jer	14	18	 3) Or 
11529	Jer	14	18	<i>into a land that they know not</i>
11530	Jer	14	20	1) Or 
11531	Jer	14	20	<i>know</i>
11532	Jer	14	21	1) Or 
11533	Jer	14	21	<i>contemn</i>
11534	Jer	14	22	1) Or 
11535	Jer	14	22	<i>done</i>
11536	Jer	15	3	1) Heb 
11537	Jer	15	3	<i>families</i>
11538	Jer	15	3	 2) Heb 
11539	Jer	15	3	<i>drag</i>
11540	Jer	15	8	1) Or 
11541	Jer	15	8	<i>against the mother</i>
11542	Jer	15	8	 and 
11543	Jer	15	8	<i>the young men</i>
11544	Jer	15	11	1) Another reading is 
11545	Jer	15	11	<i>release</i>
11546	Jer	15	11	 2) Or 
11547	Jer	15	11	<i>I will intercede for thee with the enemy</i>
11548	Jer	15	12	1) Or 
11549	Jer	15	12	<i>Can iron break iron from etc</i>
11550	Jer	15	14	1) Or 
11551	Jer	15	14	<i>I will make thine enemies to pass into etc</i>
11552	Jer	15	18	1) Heb 
11553	Jer	15	18	<i>are not sure</i>
11554	Jer	16	4	1) Heb 
11555	Jer	16	4	<i>deaths of sicknesses</i>
11556	Jer	16	13	1) Or 
11557	Jer	16	13	<i>where</i>
11558	Jer	16	18	1) Or 
11559	Jer	16	18	<i>because they have polluted my land: they have filled mine inheritance with the carcasses of their detestable things and their abominations</i>
11560	Jer	17	1	1) Another reading is 
11561	Jer	17	1	<i>their</i>
11562	Jer	17	6	1) Or 
11563	Jer	17	6	<i>a tamarisk</i>
11564	Jer	17	8	1) According to another reading 
11565	Jer	17	8	<i>see</i>
11566	Jer	17	10	1) Heb 
11567	Jer	17	10	<i>reins</i>
11568	Jer	17	11	1) Or 
11569	Jer	17	11	<i>gathereth</i>
11570	Jer	17	11	 young 
11571	Jer	17	11	<i>which she hath not brought forth</i>
11572	Jer	17	11	 2) Or 
11573	Jer	17	11	<i>he shall leave them</i>
11574	Jer	17	16	1) Some ancient versions read 
11575	Jer	17	16	<i>the judgment day of man</i>
11576	Jer	17	18	1) Heb 
11577	Jer	17	18	<i>break them with a double breach</i>
11578	Jer	17	19	1) Or 
11579	Jer	17	19	<i>the common people</i>
11580	Jer	17	19	 ; See Jer 26:23
11581	Jer	17	21	1) Or 
11582	Jer	17	21	<i>for your life’s sake</i>
11583	Jer	17	25	1) Or 
11584	Jer	17	25	<i>be inhabited</i>
11585	Jer	18	14	1) Or 
11586	Jer	18	14	<i>of strange lands that flow down be etc</i>
11587	Jer	18	14	 2) Or 
11588	Jer	18	14	<i>plucked up</i>
11589	Jer	18	23	1) Heb 
11590	Jer	18	23	<i>made to stumble</i>
11591	Jer	19	2	1) Or 
11592	Jer	19	2	<i>the gate of potsherds</i>
11593	Jer	19	5	1) Heb 
11594	Jer	19	5	<i>heart</i>
11595	Jer	19	7	1) Heb 
11596	Jer	19	7	<i>empty out</i>
11597	Jer	19	11	1) Or 
11598	Jer	19	11	<i>because there shall be no place else</i>
11599	Jer	20	3	1) That is 
11600	Jer	20	3	<i>Terror on every side</i>
11601	Jer	20	7	1) Or 
11602	Jer	20	7	<i>enticed</i>
11603	Jer	20	11	1) Or 
11604	Jer	20	11	<i>prospered</i>
11605	Jer	20	12	1) Heb 
11606	Jer	20	12	<i>reins</i>
11607	Jer	20	16	1) Or 
11608	Jer	20	16	<i>an alarm</i>
11609	Jer	21	12	1) Another reading is 
11610	Jer	21	12	<i>their</i>
11611	Jer	21	13	1) Heb 
11612	Jer	21	13	<i>inhabitress</i>
11613	Jer	21	13	 2) Or, and 
11614	Jer	21	13	<i>rock</i>
11615	Jer	22	4	1) Heb 
11616	Jer	22	4	<i>for David upon his throne</i>
11617	Jer	22	6	1) Or 
11618	Jer	22	6	<i>unto</i>
11619	Jer	22	7	1) Heb 
11620	Jer	22	7	<i>sanctify</i>
11621	Jer	22	11	1) In 2 Ki 23:30 
11622	Jer	22	11	<i>Jehoahaz</i>
11623	Jer	22	15	1) Or 
11624	Jer	22	15	<i>viest with the cedar</i>
11625	Jer	22	17	1) Or 
11626	Jer	22	17	<i>dishonest gain</i>
11627	Jer	22	22	1) Or 
11628	Jer	22	22	<i>feed upon</i>
11629	Jer	22	23	1) Heb 
11630	Jer	22	23	<i>inhabitress</i>
11631	Jer	22	24	1) In Jer 24:1 and 1 Ch 3:16 
11632	Jer	22	24	<i>Jeconiah</i>
11633	Jer	22	24	 ; In 2 Ki 24:6, 8 
11634	Jer	22	24	<i>Jehoiachin</i>
11635	Jer	22	27	1) Heb 
11636	Jer	22	27	<i>they lift up their soul</i>
11637	Jer	22	28	1) Or 
11638	Jer	22	28	<i>pot</i>
11639	Jer	22	29	1) Or 
11640	Jer	22	29	<i>land</i>
11641	Jer	23	5	1) Or 
11642	Jer	23	5	<i>Shoot</i>
11643	Jer	23	5	 ; Or 
11644	Jer	23	5	<i>Bud</i>
11645	Jer	23	5	 2) Or 
11646	Jer	23	5	<i>prosper</i>
11647	Jer	23	6	1) Or 
11648	Jer	23	6	<i>Jehovah is our righteousness</i>
11649	Jer	23	10	1) Or 
11650	Jer	23	10	<i>the curse</i>
11651	Jer	23	12	1) Or 
11652	Jer	23	12	<i>in the year</i>
11653	Jer	23	15	1) Or 
11654	Jer	23	15	<i>poison</i>
11655	Jer	23	18	1) Another reading is 
11656	Jer	23	18	<i>his</i>
11657	Jer	23	20	1) Or 
11658	Jer	23	20	<i>done</i>
11659	Jer	23	20	 it 2) Or 
11660	Jer	23	20	<i>consider</i>
11661	Jer	23	31	1) Heb 
11662	Jer	23	31	<i>take</i>
11663	Jer	23	33	1) Or 
11664	Jer	23	33	<i>tell them what the burden is</i>
11665	Jer	23	36	1) Or 
11666	Jer	23	36	<i>is his burden, and ye pervert etc</i>
11667	Jer	24	9	1) Or 
11668	Jer	24	9	<i>a terror unto</i>
11669	Jer	25	9	1) Heb 
11670	Jer	25	9	<i>devote</i>
11671	Jer	25	10	1) Heb 
11672	Jer	25	10	<i>cause to perish from them</i>
11673	Jer	25	12	1) Heb 
11674	Jer	25	12	<i>everlasting desolations</i>
11675	Jer	25	14	1) Or 
11676	Jer	25	14	<i>have made</i>
11677	Jer	25	22	1) Or 
11678	Jer	25	22	<i>coast-land</i>
11679	Jer	25	30	1) Or 
11680	Jer	25	30	<i>pasture</i>
11681	Jer	25	35	1) Heb 
11682	Jer	25	35	<i>flight shall perish from the shepherds, and escape from etc</i>
11683	Jer	26	18	1) Heb 
11684	Jer	26	18	<i>Micaiah</i>
11685	Jer	26	23	1) Heb 
11686	Jer	26	23	<i>sons of the people</i>
11687	Jer	27	1	1) Properly 
11688	Jer	27	1	<i>Zedekiah</i>
11689	Jer	27	1	 ; See Jer 27:3, 12, 20; 28:1
11690	Jer	28	9	1) Or 
11691	Jer	28	9	<i>whom Jehovah hath truly sent</i>
11692	Jer	29	8	1) Or 
11693	Jer	29	8	<i>dream</i>
11694	Jer	29	11	1) Heb 
11695	Jer	29	11	<i>a latter end and hope</i>
11696	Jer	29	14	1) Or 
11697	Jer	29	14	<i>return to</i>
11698	Jer	29	18	1) Or 
11699	Jer	29	18	<i>a terror unto</i>
11700	Jer	29	24	1) Or 
11701	Jer	29	24	<i>unto</i>
11702	Jer	29	26	1) Or 
11703	Jer	29	26	<i>the collar</i>
11704	Jer	30	3	1) Or 
11705	Jer	30	3	<i>return to</i>
11706	Jer	30	5	1) Or, there is 
11707	Jer	30	5	<i>fear, and no peace</i>
11708	Jer	30	11	1) Heb 
11709	Jer	30	11	<i>judgment</i>
11710	Jer	30	11	 2) Or 
11711	Jer	30	11	<i>hold thee guiltless</i>
11712	Jer	30	13	1) Or 
11713	Jer	30	13	<i>thy cause: for</i>
11714	Jer	30	13	 thy 
11715	Jer	30	13	<i>wound thou hast no medicines</i>
11716	Jer	30	13	  nor 
11717	Jer	30	13	<i>plaster</i>
11718	Jer	30	13	 2) Heb 
11719	Jer	30	13	<i>for closing up</i>
11720	Jer	30	13	 , or 
11721	Jer	30	13	<i>pressing</i>
11722	Jer	30	14	1) Or 
11723	Jer	30	14	<i>multitude</i>
11724	Jer	30	15	1) Or 
11725	Jer	30	15	<i>for thy hurt, because thy pain is incurable?</i>
11726	Jer	30	15	 2) Or 
11727	Jer	30	15	<i>multitude</i>
11728	Jer	30	17	1) Or 
11729	Jer	30	17	<i>careth for</i>
11730	Jer	30	18	1) Or 
11731	Jer	30	18	<i>return to</i>
11732	Jer	30	18	 2) Or 
11733	Jer	30	18	<i>mound</i>
11734	Jer	30	18	 ; Heb 
11735	Jer	30	18	<i>tel</i>
11736	Jer	30	18	 3) Or 
11737	Jer	30	18	<i>remain</i>
11738	Jer	30	21	1) Heb 
11739	Jer	30	21	<i>hath been surety for his heart</i>
11740	Jer	30	23	1) Or 
11741	Jer	30	23	<i>gathering</i>
11742	Jer	31	2	1) Or 
11743	Jer	31	2	<i>have found…when I go</i>
11744	Jer	31	2	 2) Or 
11745	Jer	31	2	<i>when he went to find him rest</i>
11746	Jer	31	3	1) Or 
11747	Jer	31	3	<i>from afar</i>
11748	Jer	31	3	 2) Or 
11749	Jer	31	3	<i>have I continued lovingkindness unto thee</i>
11750	Jer	31	5	1) Heb 
11751	Jer	31	5	<i>profane</i>
11752	Jer	31	5	 , or 
11753	Jer	31	5	<i>make common</i>
11754	Jer	31	5	 ; See Le 19:23-25; De 20:6; 28:30
11755	Jer	31	7	1) Or 
11756	Jer	31	7	<i>at the head</i>
11757	Jer	31	9	1) Or 
11758	Jer	31	9	<i>bring them unto</i>
11759	Jer	31	20	1) Heb 
11760	Jer	31	20	<i>soundeth</i>
11761	Jer	31	23	1) Or 
11762	Jer	31	23	<i>return to</i>
11763	Jer	31	32	1) Or 
11764	Jer	31	32	<i>forasmuch as they brake my covenant</i>
11765	Jer	31	32	 2) Or 
11766	Jer	31	32	<i>lord over them</i>
11767	Jer	31	35	1) Or 
11768	Jer	31	35	<i>stilleth the sea, when etc</i>
11769	Jer	31	35	 ; See Isa 51:15
11770	Jer	32	11	1) Or, containing 
11771	Jer	32	11	<i>the terms and conditions</i>
11772	Jer	32	17	1) Or 
11773	Jer	32	17	<i>wonderful</i>
11774	Jer	32	20	1) Or 
11775	Jer	32	20	<i>and</i>
11776	Jer	32	35	1) Heb 
11777	Jer	32	35	<i>heart</i>
11778	Jer	32	41	1) Heb 
11779	Jer	32	41	<i>in truth</i>
11780	Jer	33	3	1) Heb 
11781	Jer	33	3	<i>fortified</i>
11782	Jer	33	6	1) Heb 
11783	Jer	33	6	<i>a bandage</i>
11784	Jer	33	17	1) Heb 
11785	Jer	33	17	<i>There shall not be cut off from David</i>
11786	Jer	33	26	1) Or 
11787	Jer	33	26	<i>return to their captivity</i>
11788	Jer	34	13	1) Heb 
11789	Jer	34	13	<i>bondmen</i>
11790	Jer	34	14	1) Or 
11791	Jer	34	14	<i>hath sold himself</i>
11792	Jer	34	17	1) Or 
11793	Jer	34	17	<i>a terror unto</i>
11794	Jer	34	18	1) Heb 
11795	Jer	34	18	<i>the calf which they cut etc</i>
11796	Jer	36	5	1) Or 
11797	Jer	36	5	<i>restrained</i>
11798	Jer	36	6	1) Or 
11799	Jer	36	6	<i>a fast-day</i>
11800	Jer	36	7	1) Heb 
11801	Jer	36	7	<i>their supplication will fall</i>
11802	Jer	36	23	1) Or 
11803	Jer	36	23	<i>columns</i>
11804	Jer	36	26	1) Or 
11805	Jer	36	26	<i>the son of Hammelech</i>
11806	Jer	37	9	1) Heb 
11807	Jer	37	9	<i>your souls</i>
11808	Jer	37	10	1) Heb 
11809	Jer	37	10	<i>thrust through</i>
11810	Jer	37	12	1) Heb 
11811	Jer	37	12	<i>from thence</i>
11812	Jer	37	16	1) Or 
11813	Jer	37	16	<i>house of the pit</i>
11814	Jer	37	20	1) Heb 
11815	Jer	37	20	<i>fall</i>
11816	Jer	38	6	1) Or 
11817	Jer	38	6	<i>pit</i>
11818	Jer	38	6	 2) Or 
11819	Jer	38	6	<i>the son of Hammelech</i>
11820	Jer	38	9	1) Heb 
11821	Jer	38	9	<i>he is dead</i>
11822	Jer	38	22	1) Heb 
11823	Jer	38	22	<i>The men of thy peace</i>
11824	Jer	38	22	 2) Or 
11825	Jer	38	22	<i>deceived thee</i>
11826	Jer	38	23	1) Heb 
11827	Jer	38	23	<i>thou shalt burn etc</i>
11828	Jer	38	26	1) Heb 
11829	Jer	38	26	<i>caused to fall</i>
11830	Jer	38	27	1) Or 
11831	Jer	38	27	<i>reported</i>
11832	Jer	39	3	1) Title of an officer.
11833	Jer	39	5	1) Heb 
11834	Jer	39	5	<i>spake judgments with him</i>
11835	Jer	39	5	 ; See Jer 12:1 margin
11836	Jer	39	16	1) Or 
11837	Jer	39	16	<i>shall be before thee</i>
11838	Jer	40	5	1) Or 
11839	Jer	40	5	<i>an allowance</i>
11840	Jer	40	7	1) Or 
11841	Jer	40	7	<i>even</i>
11842	Jer	41	17	1) Or 
11843	Jer	41	17	<i>the lodging-place of Chimham</i>
11844	Jer	42	1	1) In Jer 43:2 
11845	Jer	42	1	<i>Azariah</i>
11846	Jer	42	1	 ; See 2 Ki 25:23
11847	Jer	42	2	1) Heb 
11848	Jer	42	2	<i>fall</i>
11849	Jer	42	5	1) Or 
11850	Jer	42	5	<i>against</i>
11851	Jer	42	9	1) Or 
11852	Jer	42	9	<i>lay</i>
11853	Jer	42	16	1) Heb 
11854	Jer	42	16	<i>shall cleave after you</i>
11855	Jer	42	20	1) Or 
11856	Jer	42	20	<i>in your souls</i>
11857	Jer	43	9	1) Or 
11858	Jer	43	9	<i>lay them with mortar in the pavement</i>
11859	Jer	43	9	 (or 
11860	Jer	43	9	<i>square</i>
11861	Jer	43	9	 )
11862	Jer	43	10	1) Or 
11863	Jer	43	10	<i>glittering</i>
11864	Jer	43	13	1) Or 
11865	Jer	43	13	<i>obelisks</i>
11866	Jer	43	13	 2) Or 
11867	Jer	43	13	<i>The house of the sun</i>
11868	Jer	43	13	 ; Probably 
11869	Jer	43	13	<i>Heliopolis</i>
11870	Jer	43	13	 , that is 
11871	Jer	43	13	<i>On</i>
11872	Jer	43	13	 ; See Ge 41:50
11873	Jer	44	14	1) Heb 
11874	Jer	44	14	<i>lift up their soul</i>
11875	Jer	44	17	1) Heb 
11876	Jer	44	17	<i>bread</i>
11877	Jer	44	19	1) Or 
11878	Jer	44	19	<i>portray</i>
11879	Jer	45	2	1) Or 
11880	Jer	45	2	<i>concerning</i>
11881	Jer	46	7	1) Or 
11882	Jer	46	7	<i>Who is like the Nile that riseth up, like the rivers whose waters toss themselves? Egypt is like the Nile that riseth up etc</i>
11883	Jer	46	15	1) Or 
11884	Jer	46	15	<i>thrust them down</i>
11885	Jer	46	17	1) Or 
11886	Jer	46	17	<i>destroyed</i>
11887	Jer	46	19	1) Or 
11888	Jer	46	19	<i>O thou that dwellest with the daughter of Egypt</i>
11889	Jer	46	19	 2) Heb 
11890	Jer	46	19	<i>make thee vessels of captivity</i>
11891	Jer	46	20	1) Or 
11892	Jer	46	20	<i>the gadfly</i>
11893	Jer	46	22	1) Or 
11894	Jer	46	22	<i>Her sound is like that of the serpent as it goeth</i>
11895	Jer	46	23	1) Or 
11896	Jer	46	23	<i>for</i>
11897	Jer	46	28	1) Heb 
11898	Jer	46	28	<i>judgment</i>
11899	Jer	46	28	 2) Or 
11900	Jer	46	28	<i>hold thee guiltless</i>
11901	Jer	47	4	1) Or 
11902	Jer	47	4	<i>sea-coast</i>
11903	Jer	47	7	1) Heb 
11904	Jer	47	7	<i>it</i>
11905	Jer	48	1	1) Or 
11906	Jer	48	1	<i>the high fort</i>
11907	Jer	48	1	 2) Or 
11908	Jer	48	1	<i>dismayed</i>
11909	Jer	48	9	1) Or 
11910	Jer	48	9	<i>for she must fly: and her cities etc</i>
11911	Jer	48	10	1) Or 
11912	Jer	48	10	<i>deceitfully</i>
11913	Jer	48	12	1) Heb 
11914	Jer	48	12	<i>tilt</i>
11915	Jer	48	12	 (a vessel) 2) Or 
11916	Jer	48	12	<i>jars</i>
11917	Jer	48	15	1) Or 
11918	Jer	48	15	<i>his cities are gone up</i>
11919	Jer	48	15	 in smoke
11920	Jer	48	17	1) Or 
11921	Jer	48	17	<i>sceptre</i>
11922	Jer	48	18	1) Or 
11923	Jer	48	18	<i>art seated</i>
11924	Jer	48	19	1) Heb 
11925	Jer	48	19	<i>inhabitress</i>
11926	Jer	48	20	1) Or 
11927	Jer	48	20	<i>dismayed</i>
11928	Jer	48	34	1) Or, as 
11929	Jer	48	34	<i>a heifer three years old</i>
11930	Jer	48	34	 2) Heb 
11931	Jer	48	34	<i>desolations</i>
11932	Jer	48	39	1) Or 
11933	Jer	48	39	<i>wail ye!</i>
11934	Jer	48	41	1) Or 
11935	Jer	48	41	<i>The cities are taken</i>
11936	Jer	48	45	1) Or 
11937	Jer	48	45	<i>Fleeing because of the force, they stand under</i>
11938	Jer	48	45	 2) Or 
11939	Jer	48	45	<i>but</i>
11940	Jer	48	47	1) Or 
11941	Jer	48	47	<i>return to</i>
11942	Jer	49	1	1) Or 
11943	Jer	49	1	<i>their king</i>
11944	Jer	49	1	 2) Or 
11945	Jer	49	1	<i>inherit</i>
11946	Jer	49	2	1) Or 
11947	Jer	49	2	<i>inherit</i>
11948	Jer	49	3	1) Or 
11949	Jer	49	3	<i>their king</i>
11950	Jer	49	4	1) Or 
11951	Jer	49	4	<i>Wherefore gloriest thou in the valleys? thy valley floweth away</i>
11952	Jer	49	9	1) Or 
11953	Jer	49	9	<i>they will leave no gleaning grapes; if thieves by night, they will destroy till they have enough. For etc</i>
11954	Jer	49	12	1) Or 
11955	Jer	49	12	<i>whose judgment was not</i>
11956	Jer	49	16	1) Or 
11957	Jer	49	16	<i>Sela</i>
11958	Jer	49	19	1) Or 
11959	Jer	49	19	<i>swelling</i>
11960	Jer	49	19	 2) Or 
11961	Jer	49	19	<i>unto the permanent pastures</i>
11962	Jer	49	20	1) Or 
11963	Jer	49	20	<i>the little ones of the flock shall drag them away</i>
11964	Jer	49	20	 2) Or 
11965	Jer	49	20	<i>pastures</i>
11966	Jer	49	20	 3) Or 
11967	Jer	49	20	<i>astonished at them</i>
11968	Jer	49	23	1) Or 
11969	Jer	49	23	<i>care</i>
11970	Jer	49	36	1) Another reading is 
11971	Jer	49	36	<i>the everlasting outcasts</i>
11972	Jer	49	39	1) Or 
11973	Jer	49	39	<i>return to</i>
11974	Jer	50	2	1) Or 
11975	Jer	50	2	<i>broken down</i>
11976	Jer	50	5	1) Heb 
11977	Jer	50	5	<i>hitherward</i>
11978	Jer	50	5	 2) Or 
11979	Jer	50	5	<i>they shall join themselves</i>
11980	Jer	50	9	1) Or according to another reading 
11981	Jer	50	9	<i>a mighty man that maketh childless</i>
11982	Jer	50	9	 2) Or 
11983	Jer	50	9	<i>that returneth not</i>
11984	Jer	50	11	1) Or 
11985	Jer	50	11	<i>at grass</i>
11986	Jer	50	15	1) Heb 
11987	Jer	50	15	<i>given her hand</i>
11988	Jer	50	17	1) Heb 
11989	Jer	50	17	<i>scattered</i>
11990	Jer	50	19	1) Or 
11991	Jer	50	19	<i>fold</i>
11992	Jer	50	21	1) That is 
11993	Jer	50	21	<i>Double rebellion</i>
11994	Jer	50	21	 2) That is 
11995	Jer	50	21	<i>Visitation</i>
11996	Jer	50	21	 3) Heb 
11997	Jer	50	21	<i>devote</i>
11998	Jer	50	26	1) Or 
11999	Jer	50	26	<i>from every quarter</i>
12000	Jer	50	26	 2) Or 
12001	Jer	50	26	<i>granaries</i>
12002	Jer	50	26	 3) Heb 
12003	Jer	50	26	<i>devote</i>
12004	Jer	50	29	1) Or 
12005	Jer	50	29	<i>many</i>
12006	Jer	50	31	1) Heb 
12007	Jer	50	31	<i>O Pride</i>
12008	Jer	50	32	1) Heb 
12009	Jer	50	32	<i>Pride</i>
12010	Jer	50	36	1) Heb 
12011	Jer	50	36	<i>boastings</i>
12012	Jer	50	38	1) Heb 
12013	Jer	50	38	<i>terrors</i>
12014	Jer	50	39	1) Heb 
12015	Jer	50	39	<i>howling creatures</i>
12016	Jer	51	1	1) That is 
12017	Jer	51	1	<i>The heart of them that rise up against me</i>
12018	Jer	51	2	1) Or 
12019	Jer	51	2	<i>winnowers</i>
12020	Jer	51	3	1) Or as otherwise read 
12021	Jer	51	3	<i>Let not the archer bend his bow, and let him not lift</i>
12022	Jer	51	3	 2) Heb 
12023	Jer	51	3	<i>devote ye all etc</i>
12024	Jer	51	5	1) Or 
12025	Jer	51	5	<i>widowed</i>
12026	Jer	51	11	1) Or 
12027	Jer	51	11	<i>bright</i>
12028	Jer	51	11	 ; Heb 
12029	Jer	51	11	<i>clean</i>
12030	Jer	51	11	 2) Heb 
12031	Jer	51	11	<i>fill</i>
12032	Jer	51	11	 3) Or 
12033	Jer	51	11	<i>suits of armor</i>
12034	Jer	51	13	1) Or 
12035	Jer	51	13	<i>dishonest gain</i>
12036	Jer	51	14	1) Or 
12037	Jer	51	14	<i>Though I have filled</i>
12038	Jer	51	14	 2) Or 
12039	Jer	51	14	<i>yet</i>
12040	Jer	51	20	1) Or 
12041	Jer	51	20	<i>maul</i>
12042	Jer	51	23	1) Or 
12043	Jer	51	23	<i>lieutenants</i>
12044	Jer	51	27	1) Heb 
12045	Jer	51	27	<i>sanctify</i>
12046	Jer	51	28	1) Heb 
12047	Jer	51	28	<i>Sanctify</i>
12048	Jer	51	32	1) Or 
12049	Jer	51	32	<i>fords</i>
12050	Jer	51	32	 2) Or 
12051	Jer	51	32	<i>marshes</i>
12052	Jer	51	32	 ; Heb 
12053	Jer	51	32	<i>pools</i>
12054	Jer	51	34	1) Another reading is 
12055	Jer	51	34	<i>us</i>
12056	Jer	51	35	1) Heb 
12057	Jer	51	35	<i>My wrong and my flesh</i>
12058	Jer	51	35	 2) Heb 
12059	Jer	51	35	<i>inhabitress</i>
12060	Jer	51	41	1) Or 
12061	Jer	51	41	<i>an astonishment</i>
12062	Jer	51	42	1) Or 
12063	Jer	51	42	<i>tumult</i>
12064	Jer	51	43	1) Or 
12065	Jer	51	43	<i>an astonishment</i>
12066	Jer	51	44	1) Heb 
12067	Jer	51	44	<i>visit upon</i>
12068	Jer	51	49	1) Or 
12069	Jer	51	49	<i>Both Babylon is to fall, O ye slain of Israel, and at etc</i>
12070	Jer	51	49	 2) Or 
12071	Jer	51	49	<i>earth</i>
12072	Jer	51	58	1) Or 
12073	Jer	51	58	<i>The walls of broad Babylon</i>
12074	Jer	51	58	 2) Or 
12075	Jer	51	58	<i>made bare</i>
12076	Jer	51	59	1) Or 
12077	Jer	51	59	<i>quartermaster</i>
12078	Jer	51	60	1) Or 
12079	Jer	51	60	<i>one book</i>
12080	Jer	51	61	1) Or 
12081	Jer	51	61	<i>and shalt see, and read…then shalt thou say etc</i>
12082	Jer	52	9	1) Heb 
12083	Jer	52	9	<i>spake judgments with him</i>
12084	Jer	52	13	1) Or 
12085	Jer	52	13	<i>every great man’s house</i>
12086	Jer	52	15	1) Or 
12087	Jer	52	15	<i>artificers</i>
12088	Jer	52	23	1) Or 
12089	Jer	52	23	<i>on the outside</i>
12090	Jer	52	23	 ; Heb 
12091	Jer	52	23	<i>towards the four winds</i>
12092	Jer	52	25	1) Or 
12093	Jer	52	25	<i>eunuch</i>
12094	Lam	1	3	1) Or 
12095	Lam	1	3	<i>exile</i>
12096	Lam	1	4	1) Or 
12097	Lam	1	4	<i>appointed feast</i>
12098	Lam	1	6	1) Or 
12099	Lam	1	6	<i>beauty</i>
12100	Lam	1	7	1) Or 
12101	Lam	1	7	<i>wanderings</i>
12102	Lam	1	7	 2) Heb 
12103	Lam	1	7	<i>ceasings</i>
12104	Lam	1	8	1) Or 
12105	Lam	1	8	<i>is removed</i>
12106	Lam	1	12	1) Or 
12107	Lam	1	12	<i>Whom Jehovah hath afflicted</i>
12108	Lam	1	14	1) Heb 
12109	Lam	1	14	<i>stumble</i>
12110	Lam	1	14	 2) Or 
12111	Lam	1	14	<i>from whom I am not able to rise up</i>
12112	Lam	2	3	1) Or 
12113	Lam	2	3	<i>every horn</i>
12114	Lam	2	4	1) Or 
12115	Lam	2	4	<i>On</i>
12116	Lam	2	6	1) Or 
12117	Lam	2	6	<i>booth</i>
12118	Lam	2	6	 ; Or 
12119	Lam	2	6	<i>hedge</i>
12120	Lam	2	6	 2) Or 
12121	Lam	2	6	<i>appointed feast</i>
12122	Lam	2	8	1) Heb 
12123	Lam	2	8	<i>swallowing up</i>
12124	Lam	2	11	1) Or 
12125	Lam	2	11	<i>breach</i>
12126	Lam	2	13	1) Or 
12127	Lam	2	13	<i>take to witness for thee</i>
12128	Lam	2	14	1) Heb 
12129	Lam	2	14	<i>burdens</i>
12130	Lam	2	14	 2) Or 
12131	Lam	2	14	<i>things to draw thee aside</i>
12132	Lam	2	17	1) Or 
12133	Lam	2	17	<i>finished</i>
12134	Lam	3	2	1) Or 
12135	Lam	3	2	<i>without light</i>
12136	Lam	3	4	1) Or 
12137	Lam	3	4	<i>worn out</i>
12138	Lam	3	13	1) Heb 
12139	Lam	3	13	<i>sons</i>
12140	Lam	3	17	1) Or 
12141	Lam	3	17	<i>cast off</i>
12142	Lam	3	19	1) Or 
12143	Lam	3	19	<i>wandering</i>
12144	Lam	3	19	 ; Or 
12145	Lam	3	19	<i>outcast state</i>
12146	Lam	3	28	1) Or 
12147	Lam	3	28	<i>He sitteth etc</i>
12148	Lam	3	28	 (so through verses 28-30)
12149	Lam	3	33	1) Heb 
12150	Lam	3	33	<i>from his heart</i>
12151	Lam	3	36	1) Heb 
12152	Lam	3	36	<i>seeth not</i>
12153	Lam	3	39	1) Or 
12154	Lam	3	39	<i>a man that is in his sins</i>
12155	Lam	3	43	1) Or 
12156	Lam	3	43	<i>covered</i>
12157	Lam	3	43	 thyself
12158	Lam	3	47	1) Or 
12159	Lam	3	47	<i>tumult</i>
12160	Lam	3	65	1) Or 
12161	Lam	3	65	<i>blindness</i>
12162	Lam	3	65	 ; Heb 
12163	Lam	3	65	<i>covering</i>
12164	Lam	4	2	1) Heb 
12165	Lam	4	2	<i>that may be weighed against</i>
12166	Lam	4	6	1) Or 
12167	Lam	4	6	<i>the punishment of the iniquity</i>
12168	Lam	4	6	 2) Or 
12169	Lam	4	6	<i>the punishment of the sin</i>
12170	Lam	4	6	 3) Or 
12171	Lam	4	6	<i>fell</i>
12172	Lam	4	6	 ; See 2 Sa 3:29
12173	Lam	4	7	1) Or 
12174	Lam	4	7	<i>Nazirites</i>
12175	Lam	4	7	 2) Or 
12176	Lam	4	7	<i>corals</i>
12177	Lam	4	8	1) Heb 
12178	Lam	4	8	<i>darker than blackness</i>
12179	Lam	4	9	1) Heb 
12180	Lam	4	9	<i>flow away</i>
12181	Lam	4	15	1) Or 
12182	Lam	4	15	<i>Yea</i>
12183	Lam	4	16	1) Heb 
12184	Lam	4	16	<i>face</i>
12185	Lam	4	22	1) Or 
12186	Lam	4	22	<i>Thine iniquity hath an end</i>
12187	Lam	5	4	1) Heb 
12188	Lam	5	4	<i>cometh for price</i>
12189	Lam	5	10	1) Or 
12190	Lam	5	10	<i>hot</i>
12191	Lam	5	18	1) Or 
12192	Lam	5	18	<i>jackals</i>
12193	Lam	5	19	1) Or 
12194	Lam	5	19	<i>sittest</i>
12195	Lam	5	19	 as King
12196	Lam	5	22	1) Or 
12197	Lam	5	22	<i>Unless thou…</i>
12198	Lam	5	22	 and 
12199	Lam	5	22	<i>art etc</i>
12200	Ezek	1	1	1) Heb 
12201	Ezek	1	1	<i>captivity</i>
12202	Ezek	1	4	1) Or 
12203	Ezek	1	4	<i>flashing continually</i>
12204	Ezek	1	4	 2) Or 
12205	Ezek	1	4	<i>as amber to look upon</i>
12206	Ezek	1	4	 3) Or 
12207	Ezek	1	4	<i>amber</i>
12208	Ezek	1	11	1) Or 
12209	Ezek	1	11	<i>And</i>
12210	Ezek	1	11	 thus were 
12211	Ezek	1	11	<i>their faces; and their wings were etc</i>
12212	Ezek	1	16	1) Heb 
12213	Ezek	1	16	<i>in the midst of</i>
12214	Ezek	1	17	1) Heb 
12215	Ezek	1	17	<i>on their four sides</i>
12216	Ezek	1	18	1) Or 
12217	Ezek	1	18	<i>felloes</i>
12218	Ezek	1	20	1) Or 
12219	Ezek	1	20	<i>over against</i>
12220	Ezek	1	20	 2) Or 
12221	Ezek	1	20	<i>of life</i>
12222	Ezek	1	21	1) Or 
12223	Ezek	1	21	<i>of life</i>
12224	Ezek	1	22	1) Or 
12225	Ezek	1	22	<i>ice</i>
12226	Ezek	1	23	1) Or 
12227	Ezek	1	23	<i>for them</i>
12228	Ezek	1	27	1) Or 
12229	Ezek	1	27	<i>it</i>
12230	Ezek	2	4	1) Or 
12231	Ezek	2	4	<i>unto whom I send thee</i>
12232	Ezek	3	5	1) Heb 
12233	Ezek	3	5	<i>deep of lip and heavy of tongue</i>
12234	Ezek	3	6	1) Heb 
12235	Ezek	3	6	<i>deep of lip and heavy of tongue</i>
12236	Ezek	3	13	1) Or 
12237	Ezek	3	13	<i>over against</i>
12238	Ezek	3	15	1) Or 
12239	Ezek	3	15	<i>sat</i>
12240	Ezek	3	15	 2) Another reading is 
12241	Ezek	3	15	<i>and I sat where they sat</i>
12242	Ezek	3	22	1) Or 
12243	Ezek	3	22	<i>valley</i>
12244	Ezek	3	23	1) Or 
12245	Ezek	3	23	<i>valley</i>
12246	Ezek	4	3	1) Or 
12247	Ezek	4	3	<i>flat plate</i>
12248	Ezek	5	1	1) Heb 
12249	Ezek	5	1	<i>divide them</i>
12250	Ezek	5	3	1) Heb 
12251	Ezek	5	3	<i>thence</i>
12252	Ezek	5	6	1) Or 
12253	Ezek	5	6	<i>changed mine ordinances into wickedness</i>
12254	Ezek	5	11	1) Or 
12255	Ezek	5	11	<i>withdraw mine eye that it shall not spare</i>
12256	Ezek	5	11	 ; Another reading is 
12257	Ezek	5	11	<i>hew</i>
12258	Ezek	5	11	 thee 
12259	Ezek	5	11	<i>down</i>
12260	Ezek	5	13	1) Or 
12261	Ezek	5	13	<i>cease</i>
12262	Ezek	6	2	1) Or 
12263	Ezek	6	2	<i>against</i>
12264	Ezek	6	3	1) Or 
12265	Ezek	6	3	<i>ravines</i>
12266	Ezek	6	6	1) Or 
12267	Ezek	6	6	<i>bear their guilt</i>
12268	Ezek	6	6	 2) Heb 
12269	Ezek	6	6	<i>blotted out</i>
12270	Ezek	6	9	1) Or 
12271	Ezek	6	9	<i>I have broken for myself their etc</i>
12272	Ezek	6	12	1) Or 
12273	Ezek	6	12	<i>preserved</i>
12274	Ezek	6	13	1) Or 
12275	Ezek	6	13	<i>terebinth</i>
12276	Ezek	6	14	1) Or 
12277	Ezek	6	14	<i>more than</i>
12278	Ezek	7	7	1) Or 
12279	Ezek	7	7	<i>The turn</i>
12280	Ezek	7	7	 ; Or 
12281	Ezek	7	7	<i>The crowning time</i>
12282	Ezek	7	7	 2) Or 
12283	Ezek	7	7	<i>from</i>
12284	Ezek	7	11	1) Or 
12285	Ezek	7	11	<i>not from them, nor from their multitude, nor from their wealth</i>
12286	Ezek	7	11	 2) Or 
12287	Ezek	7	11	<i>wailing for them</i>
12288	Ezek	7	13	1) Heb 
12289	Ezek	7	13	<i>though their life be yet among the living</i>
12290	Ezek	7	13	 2) Or 
12291	Ezek	7	13	<i>it shall not turn back</i>
12292	Ezek	7	13	 3) Or 
12293	Ezek	7	13	<i>whose life is in his iniquity</i>
12294	Ezek	7	20	1) Or 
12295	Ezek	7	20	<i>they turned it to pride; and they etc</i>
12296	Ezek	7	20	 2) Or 
12297	Ezek	7	20	<i>thereof</i>
12298	Ezek	7	22	1) Or 
12299	Ezek	7	22	<i>secret</i>
12300	Ezek	7	22	 treasure
12301	Ezek	7	23	1) Heb 
12302	Ezek	7	23	<i>judgment of blood</i>
12303	Ezek	7	24	1) Or 
12304	Ezek	7	24	<i>they that sanctify them</i>
12305	Ezek	7	25	1) Or 
12306	Ezek	7	25	<i>Distress</i>
12307	Ezek	8	2	1) Or 
12308	Ezek	8	2	<i>as amber to look upon</i>
12309	Ezek	8	4	1) Or 
12310	Ezek	8	4	<i>vision</i>
12311	Ezek	8	6	1) Or 
12312	Ezek	8	6	<i>to get them far off</i>
12313	Ezek	8	6	 2) Or 
12314	Ezek	8	6	<i>turn thee yet again, and thou shalt see greater abominations</i>
12315	Ezek	8	6	 ; So also in verses 13, 15
12316	Ezek	9	1	1) Or 
12317	Ezek	9	1	<i>Draw ye near that etc</i>
12318	Ezek	9	2	1) Or 
12319	Ezek	9	2	<i>battle-axe</i>
12320	Ezek	9	2	 2) Heb 
12321	Ezek	9	2	<i>upon his loins</i>
12322	Ezek	9	3	1) Heb 
12323	Ezek	9	3	<i>upon his loins</i>
12324	Ezek	9	6	1) Heb 
12325	Ezek	9	6	<i>to destruction</i>
12326	Ezek	9	6	 2) Or 
12327	Ezek	9	6	<i>elders</i>
12328	Ezek	9	9	1) Or 
12329	Ezek	9	9	<i>perverseness</i>
12330	Ezek	10	2	1) Or 
12331	Ezek	10	2	<i>sprinkle</i>
12332	Ezek	10	5	1) Heb 
12333	Ezek	10	5	<i>El Shaddai</i>
12334	Ezek	10	9	1) Or 
12335	Ezek	10	9	<i>stone of Tarshish</i>
12336	Ezek	10	10	1) Heb 
12337	Ezek	10	10	<i>in the midst of</i>
12338	Ezek	10	11	1) Heb 
12339	Ezek	10	11	<i>on their four sides</i>
12340	Ezek	10	17	1) Or 
12341	Ezek	10	17	<i>of life</i>
12342	Ezek	10	17	 ; See Eze 1:21
12343	Ezek	10	19	1) Or 
12344	Ezek	10	19	<i>over against</i>
12345	Ezek	11	3	1) Or 
12346	Ezek	11	3	<i>Is not</i>
12347	Ezek	11	3	 the time 
12348	Ezek	11	3	<i>near etc?</i>
12349	Ezek	11	7	1) Another reading is 
12350	Ezek	11	7	<i>I will bring you</i>
12351	Ezek	11	15	1) Heb 
12352	Ezek	11	15	<i>redemption</i>
12353	Ezek	11	15	 ; See Le 25:25, etc
12354	Ezek	11	16	1) Or 
12355	Ezek	11	16	<i>yet have I been</i>
12356	Ezek	11	16	 ; Or 
12357	Ezek	11	16	<i>and have been</i>
12358	Ezek	11	22	1) Or 
12359	Ezek	11	22	<i>over against</i>
12360	Ezek	12	3	1) Or 
12361	Ezek	12	3	<i>exile</i>
12362	Ezek	12	3	 2) Or 
12363	Ezek	12	3	<i>perceive that they are</i>
12364	Ezek	12	4	1) Or 
12365	Ezek	12	4	<i>exile</i>
12366	Ezek	12	10	1) Or 
12367	Ezek	12	10	<i>oracle</i>
12368	Ezek	12	10	 2) Or 
12369	Ezek	12	10	<i>that are among them</i>
12370	Ezek	12	19	1) Heb 
12371	Ezek	12	19	<i>the fulness thereof</i>
12372	Ezek	12	23	1) Heb 
12373	Ezek	12	23	<i>word</i>
12374	Ezek	13	3	1) Or 
12375	Ezek	13	3	<i>and</i>
12376	Ezek	13	3	 things which 
12377	Ezek	13	3	<i>they have not seen</i>
12378	Ezek	13	5	1) Or 
12379	Ezek	13	5	<i>breaches</i>
12380	Ezek	13	6	1) Or 
12381	Ezek	13	6	<i>have hoped</i>
12382	Ezek	13	9	1) Or 
12383	Ezek	13	9	<i>secret</i>
12384	Ezek	13	9	 2) Or 
12385	Ezek	13	9	<i>register</i>
12386	Ezek	13	10	1) Or 
12387	Ezek	13	10	<i>a slight wall</i>
12388	Ezek	13	10	 2) Or 
12389	Ezek	13	10	<i>whitewash</i>
12390	Ezek	13	10	 ; So in verses 11, 14, 15
12391	Ezek	13	18	1) Heb 
12392	Ezek	13	18	<i>joints of the hands</i>
12393	Ezek	13	18	 2) Or 
12394	Ezek	13	18	<i>Ye hunt…and ye save etc</i>
12395	Ezek	13	18	 3) Or 
12396	Ezek	13	18	<i>that are yours</i>
12397	Ezek	13	20	1) Or 
12398	Ezek	13	20	<i>where ye hunt</i>
12399	Ezek	13	20	 2) Or 
12400	Ezek	13	20	<i>as birds</i>
12401	Ezek	13	22	1) Or 
12402	Ezek	13	22	<i>by promising him life</i>
12403	Ezek	14	3	1) Heb 
12404	Ezek	14	3	<i>caused to come up</i>
12405	Ezek	14	4	1) Or 
12406	Ezek	14	4	<i>according thereto</i>
12407	Ezek	14	4	 ; Another reading is 
12408	Ezek	14	4	<i>he is come in the multitude etc</i>
12409	Ezek	14	7	1) Or 
12410	Ezek	14	7	<i>of him concerning me</i>
12411	Ezek	14	9	1) Or 
12412	Ezek	14	9	<i>enticed</i>
12413	Ezek	14	10	1) Or 
12414	Ezek	14	10	<i>the punishment of their iniquity</i>
12415	Ezek	14	15	1) Heb 
12416	Ezek	14	15	<i>bereave</i>
12417	Ezek	14	17	1) Or 
12418	Ezek	14	17	<i>Let the sword go</i>
12419	Ezek	14	22	1) Heb 
12420	Ezek	14	22	<i>they that escape</i>
12421	Ezek	14	23	1) Or 
12422	Ezek	14	23	<i>in vain</i>
12423	Ezek	15	2	1) Or 
12424	Ezek	15	2	<i>was</i>
12425	Ezek	15	5	1) Heb 
12426	Ezek	15	5	<i>made into</i>
12427	Ezek	15	6	1) Or 
12428	Ezek	15	6	<i>have I given</i>
12429	Ezek	15	7	1) Or 
12430	Ezek	15	7	<i>have gone forth</i>
12431	Ezek	16	3	1) Or 
12432	Ezek	16	3	<i>Thine origin</i>
12433	Ezek	16	7	1) Heb 
12434	Ezek	16	7	<i>made thee a myriad</i>
12435	Ezek	16	7	 2) Heb 
12436	Ezek	16	7	<i>ornament of ornaments</i>
12437	Ezek	16	10	1) Or 
12438	Ezek	16	10	<i>porpoise-skin</i>
12439	Ezek	16	10	  2) Or 
12440	Ezek	16	10	<i>bound thee with</i>
12441	Ezek	16	10	 attire of 
12442	Ezek	16	10	<i>fine linen</i>
12443	Ezek	16	17	1) Or 
12444	Ezek	16	17	<i>beautiful vessels</i>
12445	Ezek	16	17	 2) Or 
12446	Ezek	16	17	<i>male images</i>
12447	Ezek	16	21	1) Or 
12448	Ezek	16	21	<i>setting them apart</i>
12449	Ezek	16	21	 ; Heb 
12450	Ezek	16	21	<i>making them pass over</i>
12451	Ezek	16	27	1) Or 
12452	Ezek	16	27	<i>allowance</i>
12453	Ezek	16	29	1) Or 
12454	Ezek	16	29	<i>Canaan</i>
12455	Ezek	16	31	1) Or 
12456	Ezek	16	31	<i>that scoffeth at</i>
12457	Ezek	16	31	 her 
12458	Ezek	16	31	<i>hire</i>
12459	Ezek	16	36	1) Heb 
12460	Ezek	16	36	<i>brass</i>
12461	Ezek	16	43	1) Or 
12462	Ezek	16	43	<i>hast thou not committed etc?</i>
12463	Ezek	16	50	1) Or 
12464	Ezek	16	50	<i>when I saw</i>
12465	Ezek	16	50	 it
12466	Ezek	16	52	1) Or 
12467	Ezek	16	52	<i>sister</i>
12468	Ezek	16	53	1) Or 
12469	Ezek	16	53	<i>return to</i>
12470	Ezek	17	4	1) Or 
12471	Ezek	17	4	<i>the land of Canaan</i>
12472	Ezek	17	5	1) Heb 
12473	Ezek	17	5	<i>a field of seed</i>
12474	Ezek	17	5	 2) Or 
12475	Ezek	17	5	<i>great</i>
12476	Ezek	17	8	1) Heb 
12477	Ezek	17	8	<i>field</i>
12478	Ezek	17	8	 2) Or 
12479	Ezek	17	8	<i>great</i>
12480	Ezek	17	14	1) Heb 
12481	Ezek	17	14	<i>low</i>
12482	Ezek	18	2	1) Or 
12483	Ezek	18	2	<i>in</i>
12484	Ezek	18	10	1) Or 
12485	Ezek	18	10	<i>that doeth to a brother any of these</i>
12486	Ezek	18	13	1) Heb 
12487	Ezek	18	13	<i>be put to death</i>
12488	Ezek	18	14	1) Another reading is 
12489	Ezek	18	14	<i>seeth</i>
12490	Ezek	18	14	 , or 
12491	Ezek	18	14	<i>considereth</i>
12492	Ezek	18	18	1) Or 
12493	Ezek	18	18	<i>for</i>
12494	Ezek	18	26	1) Or 
12495	Ezek	18	26	<i>he shall die</i>
12496	Ezek	18	26	 2) Or 
12497	Ezek	18	26	<i>because of it</i>
12498	Ezek	18	26	 3) Or 
12499	Ezek	18	26	<i>for</i>
12500	Ezek	18	30	1) Or 
12501	Ezek	18	30	<i>so shall they not be a stumblingblock of iniquity unto you</i>
12502	Ezek	18	30	 2) Heb 
12503	Ezek	18	30	<i>stumblingblock</i>
12504	Ezek	19	7	1) Or 
12505	Ezek	19	7	<i>widows</i>
12506	Ezek	19	10	1) Or 
12507	Ezek	19	10	<i>in thy likeness</i>
12508	Ezek	19	11	1) Heb 
12509	Ezek	19	11	<i>his</i>
12510	Ezek	19	11	 2) Or 
12511	Ezek	19	11	<i>clouds</i>
12512	Ezek	19	11	 3) Heb 
12513	Ezek	19	11	<i>he was</i>
12514	Ezek	19	14	1) Or 
12515	Ezek	19	14	<i>a rod</i>
12516	Ezek	20	5	1) Heb 
12517	Ezek	20	5	<i>lifted up my hand</i>
12518	Ezek	20	6	1) Heb 
12519	Ezek	20	6	<i>lifted up my hand</i>
12520	Ezek	20	11	1) Heb 
12521	Ezek	20	11	<i>made them to know</i>
12522	Ezek	20	11	 2) Or 
12523	Ezek	20	11	<i>by</i>
12524	Ezek	20	12	1) Or 
12525	Ezek	20	12	<i>I, Jehovah, do sanctify them</i>
12526	Ezek	20	13	1) Or 
12527	Ezek	20	13	<i>by</i>
12528	Ezek	20	15	1) Heb 
12529	Ezek	20	15	<i>lifted up my hand</i>
12530	Ezek	20	21	1) Or 
12531	Ezek	20	21	<i>by</i>
12532	Ezek	20	23	1) Heb 
12533	Ezek	20	23	<i>lifted up my hand</i>
12534	Ezek	20	25	1) Or 
12535	Ezek	20	25	<i>whereby</i>
12536	Ezek	20	26	1) Or 
12537	Ezek	20	26	<i>set apart all</i>
12538	Ezek	20	26	 ; See Ex 13:12
12539	Ezek	20	28	1) Heb 
12540	Ezek	20	28	<i>lifted up my hand</i>
12541	Ezek	20	28	 2) Or 
12542	Ezek	20	28	<i>looked out for</i>
12543	Ezek	20	29	1) Or 
12663	Ezek	26	9	<i>swords</i>
12544	Ezek	20	29	<i>whereunto you go, and the name whereof…day?</i>
12545	Ezek	20	29	 2) That is 
12546	Ezek	20	29	<i>High place</i>
12547	Ezek	20	39	1) Or 
12548	Ezek	20	39	<i>but hereafter surely ye shall hearken unto me and etc</i>
12549	Ezek	20	40	1) Or 
12550	Ezek	20	40	<i>chief</i>
12551	Ezek	20	40	 2) Or 
12552	Ezek	20	40	<i>tribute</i>
12553	Ezek	20	41	1) Or 
12554	Ezek	20	41	<i>With</i>
12555	Ezek	20	42	1) Heb 
12556	Ezek	20	42	<i>lifted up my hand</i>
12557	Ezek	21	7	1) Or 
12558	Ezek	21	7	<i>be dim</i>
12559	Ezek	21	10	1) Or 
12560	Ezek	21	10	<i>it contemneth the rod of my son,</i>
12561	Ezek	21	10	 as 
12562	Ezek	21	10	<i>every tree</i>
12563	Ezek	21	12	1) Or 
12564	Ezek	21	12	<i>terrors by reason of the sword are upon my people</i>
12565	Ezek	21	13	1) Or 
12566	Ezek	21	13	<i>what if</i>
12567	Ezek	21	13	 the sword 
12568	Ezek	21	13	<i>contemn even the rod? it shall be no more etc</i>
12569	Ezek	21	14	1) Or 
12570	Ezek	21	14	<i>compasseth them about</i>
12571	Ezek	21	15	1) Or 
12572	Ezek	21	15	<i>glittering</i>
12573	Ezek	21	16	1) Heb 
12574	Ezek	21	16	<i>Make thyself one</i>
12575	Ezek	21	16	 2) Or 
12576	Ezek	21	16	<i>whither is thy face set?</i>
12577	Ezek	21	19	1) Heb 
12578	Ezek	21	19	<i>hand</i>
12579	Ezek	21	22	1) Or 
12580	Ezek	21	22	<i>for</i>
12581	Ezek	21	25	1) Or 
12582	Ezek	21	25	<i>punishment</i>
12583	Ezek	21	26	1) Or 
12584	Ezek	21	26	<i>I will remove etc</i>
12585	Ezek	21	26	 2) Heb 
12586	Ezek	21	26	<i>not this</i>
12587	Ezek	21	27	1) Heb 
12588	Ezek	21	27	<i>An overthrow, overthrow, overthrow, will I make it</i>
12589	Ezek	21	28	1) Or 
12590	Ezek	21	28	<i>to the uttermost</i>
12591	Ezek	21	29	1) Or 
12592	Ezek	21	29	<i>punishment</i>
12593	Ezek	21	30	1) Or 
12594	Ezek	21	30	<i>thine origin</i>
12595	Ezek	22	2	1) Or 
12596	Ezek	22	2	<i>and</i>
12597	Ezek	22	5	1) Heb 
12598	Ezek	22	5	<i>defiled of name</i>
12599	Ezek	22	6	1) Heb 
12600	Ezek	22	6	<i>arm</i>
12601	Ezek	22	28	1) Or 
12602	Ezek	22	28	<i>whitewash</i>
12603	Ezek	23	4	1) That is 
12604	Ezek	23	4	<i>Her tent</i>
12605	Ezek	23	4	 2) That is 
12606	Ezek	23	4	<i>My tent is in her</i>
12607	Ezek	23	6	1) Or 
12608	Ezek	23	6	<i>deputies</i>
12609	Ezek	23	6	 ; See Jer 51:23, etc
12610	Ezek	23	8	1) Or, brought 
12611	Ezek	23	8	<i>from Egypt</i>
12612	Ezek	23	10	1) Heb 
12613	Ezek	23	10	<i>name</i>
12614	Ezek	23	15	1) Or 
12615	Ezek	23	15	<i>the land of whose nativity is Chaldea</i>
12616	Ezek	23	16	1) Heb 
12617	Ezek	23	16	<i>at the sight of her eyes</i>
12618	Ezek	23	23	1) Or 
12619	Ezek	23	23	<i>counsellors</i>
12620	Ezek	23	23	 ; Heb 
12621	Ezek	23	23	<i>called</i>
12622	Ezek	23	24	1) Or 
12623	Ezek	23	24	<i>wheels</i>
12624	Ezek	23	32	1) Or 
12625	Ezek	23	32	<i>too much to endure</i>
12626	Ezek	23	40	1) Or 
12627	Ezek	23	40	<i>to come</i>
12628	Ezek	23	43	1) Or 
12629	Ezek	23	43	<i>She that is old will commit adulteries</i>
12630	Ezek	23	43	 2) Heb 
12631	Ezek	23	43	<i>her whoredoms</i>
12632	Ezek	23	43	 3) Or 
12633	Ezek	23	43	<i>even with her</i>
12634	Ezek	24	2	1) Heb 
12635	Ezek	24	2	<i>leaned upon</i>
12636	Ezek	24	5	1) Heb 
12637	Ezek	24	5	<i>it</i>
12638	Ezek	24	6	1) Or 
12639	Ezek	24	6	<i>scum</i>
12640	Ezek	24	12	1) Or, me 2) Or, is 
12641	Ezek	24	12	<i>in the fire</i>
12642	Ezek	24	13	1) Or 
12643	Ezek	24	13	<i>For thy filthy lewdness</i>
12644	Ezek	24	17	1) Heb 
12645	Ezek	24	17	<i>be silent</i>
12646	Ezek	24	21	1) Heb 
12647	Ezek	24	21	<i>the pity of your soul</i>
12648	Ezek	24	25	1) Or 
12649	Ezek	24	25	<i>stronghold</i>
12650	Ezek	24	25	 2) Or 
12651	Ezek	24	25	<i>beauty</i>
12652	Ezek	24	25	 3) Heb 
12653	Ezek	24	25	<i>the lifting up of their soul</i>
12654	Ezek	24	27	1) Or 
12655	Ezek	24	27	<i>together with</i>
12656	Ezek	25	2	1) Or 
12657	Ezek	25	2	<i>concerning</i>
12658	Ezek	25	9	1) Or 
12659	Ezek	25	9	<i>in every quarter</i>
12660	Ezek	25	10	1) Or 
12661	Ezek	25	10	<i>together with the children of Ammon, unto the children of the east</i>
12662	Ezek	26	9	1) Heb 
12664	Ezek	26	10	1) Or 
12665	Ezek	26	10	<i>wheels</i>
12666	Ezek	26	11	1) Or 
12667	Ezek	26	11	<i>obelisks</i>
12668	Ezek	26	16	1) Heb 
12669	Ezek	26	16	<i>tremblings</i>
12670	Ezek	26	17	1) Or, being won 
12671	Ezek	26	17	<i>from the seas</i>
12672	Ezek	26	17	 2) Or 
12673	Ezek	26	17	<i>inhabited her</i>
12674	Ezek	26	20	1) Another reading is 
12675	Ezek	26	20	<i>like</i>
12676	Ezek	26	20	 2) Or as otherwise read 
12677	Ezek	26	20	<i>nor set</i>
12678	Ezek	26	20	 thy 
12679	Ezek	26	20	<i>glory etc</i>
12680	Ezek	26	21	1) Or 
12681	Ezek	26	21	<i>a destruction</i>
12682	Ezek	26	21	 ; Heb 
12683	Ezek	26	21	<i>terrors</i>
12684	Ezek	27	3	1) Heb 
12685	Ezek	27	3	<i>entrances</i>
12686	Ezek	27	5	1) Heb 
12687	Ezek	27	5	<i>built</i>
12688	Ezek	27	6	1) Or 
12689	Ezek	27	6	<i>deck</i>
12690	Ezek	27	9	1) Or 
12691	Ezek	27	9	<i>elders</i>
12692	Ezek	27	9	 2) Or 
12693	Ezek	27	9	<i>exchange</i>
12694	Ezek	27	15	1) Or 
12695	Ezek	27	15	<i>for a present</i>
12696	Ezek	27	16	1) Or 
12697	Ezek	27	16	<i>carbuncles</i>
12698	Ezek	27	17	1) Perhaps, a kind of confection.
12699	Ezek	27	19	1) Or as otherwise read 
12700	Ezek	27	19	<i>from Uzal</i>
12701	Ezek	27	19	 2) Or 
12702	Ezek	27	19	<i>wrought</i>
12703	Ezek	27	24	1) Or 
12704	Ezek	27	24	<i>bales</i>
12705	Ezek	27	27	1) Or 
12706	Ezek	27	27	<i>exchangers</i>
12707	Ezek	27	27	 2) Or 
12708	Ezek	27	27	<i>and in</i>
12709	Ezek	27	28	1) Or 
12710	Ezek	27	28	<i>waves</i>
12711	Ezek	27	36	1) Or 
12712	Ezek	27	36	<i>a destruction</i>
12713	Ezek	27	36	 ; Heb 
12714	Ezek	27	36	<i>terrors</i>
12715	Ezek	28	2	1) Heb 
12716	Ezek	28	2	<i>heart</i>
12717	Ezek	28	4	1) Or 
12718	Ezek	28	4	<i>power</i>
12719	Ezek	28	5	1) Or 
12720	Ezek	28	5	<i>power</i>
12721	Ezek	28	7	1) Or 
12722	Ezek	28	7	<i>profane</i>
12723	Ezek	28	9	1) Or 
12724	Ezek	28	9	<i>profaneth</i>
12725	Ezek	28	12	1) Or 
12726	Ezek	28	12	<i>measure</i>
12727	Ezek	28	12	 ; Or 
12728	Ezek	28	12	<i>pattern</i>
12729	Ezek	28	13	1) Or 
12730	Ezek	28	13	<i>ruby</i>
12731	Ezek	28	13	 2) Or 
12732	Ezek	28	13	<i>carbuncle</i>
12733	Ezek	28	13	 3) Or 
12734	Ezek	28	13	<i>emerald</i>
12735	Ezek	28	19	1) Or 
12736	Ezek	28	19	<i>a destruction</i>
12737	Ezek	28	19	 ; Heb 
12738	Ezek	28	19	<i>terrors</i>
12739	Ezek	28	23	1) Or 
12740	Ezek	28	23	<i>be judged</i>
12741	Ezek	29	5	1) Heb 
12742	Ezek	29	5	<i>face of the field</i>
12743	Ezek	29	7	1) Or 
12744	Ezek	29	7	<i>by the handle</i>
12745	Ezek	29	7	 ; Another reading is 
12746	Ezek	29	7	<i>with the hand</i>
12747	Ezek	29	7	 2) Or as some read 
12748	Ezek	29	7	<i>shake</i>
12749	Ezek	29	7	 ; See Ps 69:23
12750	Ezek	29	10	1) Or 
12751	Ezek	29	10	<i>from Migdol to Syene, and even etc</i>
12752	Ezek	29	14	1) Or 
12753	Ezek	29	14	<i>return to</i>
12754	Ezek	29	14	 2) Or 
12755	Ezek	29	14	<i>origin</i>
12756	Ezek	29	14	 3) Heb 
12757	Ezek	29	14	<i>low</i>
12758	Ezek	29	20	1) Or, for 
12759	Ezek	29	20	<i>his labor wherewith he served</i>
12760	Ezek	30	5	1) Heb 
12761	Ezek	30	5	<i>Cush</i>
12762	Ezek	30	5	  2) Or 
12763	Ezek	30	5	<i>the land of the covenant</i>
12764	Ezek	30	6	1) Or 
12765	Ezek	30	6	<i>from Migdol to Syene</i>
12766	Ezek	30	8	1) Heb 
12767	Ezek	30	8	<i>broken</i>
12768	Ezek	30	12	1) Heb 
12769	Ezek	30	12	<i>the fulness thereof</i>
12770	Ezek	30	13	1) Or 
12771	Ezek	30	13	<i>things of nought</i>
12772	Ezek	30	13	 ; See Ps 96:5
12773	Ezek	30	16	1) Or 
12774	Ezek	30	16	<i>all the day</i>
12775	Ezek	30	18	1) Another reading is 
12776	Ezek	30	18	<i>be dark</i>
12777	Ezek	31	3	1) Or 
12778	Ezek	31	3	<i>clouds</i>
12779	Ezek	31	5	1) Or 
12780	Ezek	31	5	<i>great</i>
12781	Ezek	31	7	1) Or 
12782	Ezek	31	7	<i>great</i>
12783	Ezek	31	10	1) Or 
12784	Ezek	31	10	<i>saith</i>
12785	Ezek	31	10	 2) Or 
12786	Ezek	31	10	<i>clouds</i>
12787	Ezek	31	15	1) Heb 
12788	Ezek	31	15	<i>to be black</i>
12789	Ezek	32	2	1) Or 
12790	Ezek	32	2	<i>in</i>
12791	Ezek	32	5	1) Or as otherwise read 
12792	Ezek	32	5	<i>worms</i>
12793	Ezek	32	7	1) Or 
12794	Ezek	32	7	<i>to mourn</i>
12795	Ezek	32	8	1) Or 
12796	Ezek	32	8	<i>to mourn</i>
12797	Ezek	32	13	1) Or 
12798	Ezek	32	13	<i>great</i>
12799	Ezek	32	14	1) Heb 
12800	Ezek	32	14	<i>cause their waters to settle</i>
12801	Ezek	32	15	1) Heb 
12802	Ezek	32	15	<i>the fulness thereof</i>
12803	Ezek	32	20	1) Or 
12804	Ezek	32	20	<i>the sword is appointed</i>
12805	Ezek	32	27	1) Or 
12806	Ezek	32	27	<i>And shall they not lie etc?</i>
12807	Ezek	32	29	1) Or 
12808	Ezek	32	29	<i>for all their might</i>
12809	Ezek	32	30	1) Or 
12810	Ezek	32	30	<i>for all the terror</i>
12811	Ezek	32	31	1) Or 
12812	Ezek	32	31	<i>Pharaoh and all his army are slain etc</i>
12813	Ezek	32	32	1) Another reading is 
12814	Ezek	32	32	<i>my</i>
12815	Ezek	33	6	1) Or 
12816	Ezek	33	6	<i>for</i>
12817	Ezek	33	8	1) Or 
12818	Ezek	33	8	<i>for</i>
12819	Ezek	33	9	1) Or 
12820	Ezek	33	9	<i>for</i>
12821	Ezek	33	10	1) Or 
12822	Ezek	33	10	<i>Truly our transgressions etc</i>
12823	Ezek	33	10	 2) Or 
12824	Ezek	33	10	<i>for</i>
12825	Ezek	33	13	1) Or 
12826	Ezek	33	13	<i>for</i>
12827	Ezek	33	13	 2) Or 
12828	Ezek	33	13	<i>for it</i>
12829	Ezek	33	18	1) Or 
12830	Ezek	33	18	<i>for it</i>
12831	Ezek	33	18	 (Heb 
12832	Ezek	33	18	<i>them</i>
12833	Ezek	33	18	 )
12834	Ezek	33	32	1) Or 
12835	Ezek	33	32	<i>a love-song</i>
12836	Ezek	34	12	1) Heb 
12837	Ezek	34	12	<i>the day of clouds and thick darkness</i>
12838	Ezek	34	29	1) Or 
12839	Ezek	34	29	<i>plant</i>
12840	Ezek	34	29	 2) Heb 
12841	Ezek	34	29	<i>taken away</i>
12842	Ezek	35	5	1) Or 
12843	Ezek	35	5	<i>punishment</i>
12844	Ezek	35	9	1) Another reading is 
12845	Ezek	35	9	<i>return</i>
12846	Ezek	35	10	1) Or 
12847	Ezek	35	10	<i>though</i>
12848	Ezek	35	11	1) Or 
12849	Ezek	35	11	<i>according as</i>
12850	Ezek	35	12	1) Or 
12851	Ezek	35	12	<i>that I am Jehovah; I have heard etc</i>
12852	Ezek	35	12	 2) Or 
12853	Ezek	35	12	<i>It is</i>
12854	Ezek	36	7	1) Heb 
12855	Ezek	36	7	<i>lifted up my hand</i>
12856	Ezek	36	13	1) Another reading is 
12857	Ezek	36	13	<i>nations</i>
12858	Ezek	36	14	1) Another reading is 
12859	Ezek	36	14	<i>cause to stumble</i>
12860	Ezek	36	14	 2) Another reading is 
12861	Ezek	36	14	<i>nations</i>
12862	Ezek	36	15	1) Or 
12863	Ezek	36	15	<i>proclaim against thee</i>
12864	Ezek	36	15	 2) Another reading is 
12865	Ezek	36	15	<i>nations</i>
12866	Ezek	36	22	1) Or 
12867	Ezek	36	22	<i>I work not for etc</i>
12868	Ezek	36	23	1) Or according to another reading 
12869	Ezek	36	23	<i>your</i>
12870	Ezek	36	32	1) Or 
12871	Ezek	36	32	<i>do I work</i>
12872	Ezek	36	38	1) Heb 
12873	Ezek	36	38	<i>flock of holy things</i>
12874	Ezek	37	2	1) Heb 
12875	Ezek	37	2	<i>upon the face of the valley</i>
12876	Ezek	37	5	1) Or 
12877	Ezek	37	5	<i>spirit</i>
12878	Ezek	37	6	1) Or 
12879	Ezek	37	6	<i>spirit</i>
12880	Ezek	37	7	1) Or 
12881	Ezek	37	7	<i>thundering</i>
12882	Ezek	37	9	1) Or 
12883	Ezek	37	9	<i>breath</i>
12884	Ezek	37	9	 2) Or 
12885	Ezek	37	9	<i>wind</i>
12886	Ezek	37	9	 ; Or 
12887	Ezek	37	9	<i>spirit</i>
12888	Ezek	37	16	1) Or, of
12889	Ezek	37	19	1) Or 
12890	Ezek	37	19	<i>together with him unto</i>
12891	Ezek	37	19	 (or 
12892	Ezek	37	19	<i>to be</i>
12893	Ezek	37	19	 ) 
12894	Ezek	37	19	<i>the stick of Judah</i>
12895	Ezek	37	23	1) Or with a slight change of text 
12896	Ezek	37	23	<i>from all their backslidings</i>
12897	Ezek	37	26	1) Or 
12898	Ezek	37	26	<i>give</i>
12899	Ezek	37	26	 it 
12900	Ezek	37	26	<i>them</i>
12901	Ezek	37	27	1) Or 
12902	Ezek	37	27	<i>over</i>
12903	Ezek	37	28	1) Or 
12904	Ezek	37	28	<i>I, Jehovah, do sanctify Israel</i>
12905	Ezek	38	2	1) Or 
12906	Ezek	38	2	<i>chief prince of Meshech</i>
12907	Ezek	38	3	1) Or 
12908	Ezek	38	3	<i>chief prince of Meshech</i>
12909	Ezek	38	7	1) Or 
12910	Ezek	38	7	<i>commander</i>
12911	Ezek	38	8	1) Or 
12912	Ezek	38	8	<i>restored</i>
12913	Ezek	38	11	1) Or 
12914	Ezek	38	11	<i>an open country</i>
12915	Ezek	38	12	1) Heb 
12916	Ezek	38	12	<i>navel</i>
12917	Ezek	38	12	 ; See Jud 9:37
12918	Ezek	39	1	1) Or 
12919	Ezek	39	1	<i>chief prince of Meshech</i>
12920	Ezek	39	6	1) Or 
12921	Ezek	39	6	<i>coast-lands</i>
12922	Ezek	39	11	1) Or 
12923	Ezek	39	11	<i>in front of</i>
12924	Ezek	39	11	 2) That is 
12925	Ezek	39	11	<i>the multitude of Gog</i>
12926	Ezek	39	15	1) Heb 
12927	Ezek	39	15	<i>build</i>
12928	Ezek	39	16	1) That is 
12929	Ezek	39	16	<i>Multitude</i>
12930	Ezek	40	6	1) Or 
12931	Ezek	40	6	<i>even one threshold</i>
12932	Ezek	40	7	1) Or 
12933	Ezek	40	7	<i>guard chamber</i>
12934	Ezek	40	8	1) This verse is omitted in several Hebrew MSS.
12935	Ezek	40	9	1) Or 
12936	Ezek	40	9	<i>jambs</i>
12937	Ezek	40	9	 ; and so throughout this chapter, and Eze 41:1, 3
12938	Ezek	40	15	1) Or 
12939	Ezek	40	15	<i>porch of the inner gate</i>
12940	Ezek	40	16	1) Or 
12941	Ezek	40	16	<i>colonnade</i>
12942	Ezek	40	16	 ; The meaning of the Hebrew word is uncertain.
12943	Ezek	40	18	1) Heb 
12944	Ezek	40	18	<i>shoulder</i>
12945	Ezek	40	39	1) Or 
12946	Ezek	40	39	<i>by</i>
12947	Ezek	40	40	1) Or 
12948	Ezek	40	40	<i>at the stairs of the entry</i>
12949	Ezek	40	43	1) According to Vulg and Syr 
12950	Ezek	40	43	<i>ledges</i>
12951	Ezek	40	43	 2) Or 
12952	Ezek	40	43	<i>in the building</i>
12953	Ezek	40	44	1) The Sept has 
12954	Ezek	40	44	<i>two chambers in the inner court, one behind the gate that looketh toward the north, having its prospect toward the south, and one at the side of the gate toward the south, but looking toward the north</i>
12955	Ezek	40	49	1) The Sept has 
12956	Ezek	40	49	<i>and by ten steps they etc</i>
12957	Ezek	41	1	1) Heb 
12958	Ezek	41	1	<i>tent</i>
12959	Ezek	41	1	 ; See Ex 26:22-25
12960	Ezek	41	2	1) Heb 
12961	Ezek	41	2	<i>shoulders</i>
12962	Ezek	41	7	1) Or 
12963	Ezek	41	7	<i>there was an enlarging, and a winding about still upward to the side-chambers; for the winding about of the house went still upward round about the house</i>
12964	Ezek	41	8	1) Or 
12965	Ezek	41	8	<i>that the house was high round about</i>
12966	Ezek	41	8	 2) Heb 
12967	Ezek	41	8	<i>height</i>
12968	Ezek	41	8	 3) Or 
12969	Ezek	41	8	<i>of six cubits to the joining</i>
12970	Ezek	41	17	1) Heb 
12971	Ezek	41	17	<i>measures</i>
12972	Ezek	41	20	1) Another reading is 
12973	Ezek	41	20	<i>And as for the wall of the temple, the door-posts were squared</i>
12974	Ezek	41	21	1) Or 
12975	Ezek	41	21	<i>as the</i>
12976	Ezek	41	21	 former 
12977	Ezek	41	21	<i>appearance</i>
12978	Ezek	41	22	1) Or 
12979	Ezek	41	22	<i>it had its corners; and etc</i>
12980	Ezek	41	25	1) Or 
12981	Ezek	41	25	<i>before the porch</i>
12982	Ezek	42	3	1) Or 
12983	Ezek	42	3	<i>in three stories</i>
12984	Ezek	42	4	1) According to Sept and Syr 
12985	Ezek	42	4	<i>a hundred cubits</i>
12986	Ezek	42	7	1) Or 
12987	Ezek	42	7	<i>fence</i>
12988	Ezek	42	10	1) Or 
12989	Ezek	42	10	<i>fence</i>
12990	Ezek	42	11	1) Or 
12991	Ezek	42	11	<i>they were as long as they, and as broad as they</i>
12992	Ezek	42	12	1) Or 
12993	Ezek	42	12	<i>fence</i>
12994	Ezek	42	16	1) Heb 
12995	Ezek	42	16	<i>wind</i>
12996	Ezek	42	17	1) Heb 
12997	Ezek	42	17	<i>wind</i>
12998	Ezek	42	18	1) Heb 
12999	Ezek	42	18	<i>wind</i>
13000	Ezek	42	19	1) Heb 
13001	Ezek	42	19	<i>wind</i>
13002	Ezek	42	20	1) Heb 
13003	Ezek	42	20	<i>toward the four winds</i>
13004	Ezek	43	7	1) Or according to another reading 
13005	Ezek	43	7	<i>in their death</i>
13006	Ezek	43	10	1) Or 
13007	Ezek	43	10	<i>sum</i>
13008	Ezek	43	13	1) Or 
13009	Ezek	43	13	<i>hollow</i>
13010	Ezek	43	13	 ; Heb 
13011	Ezek	43	13	<i>bosom</i>
13012	Ezek	43	13	 2) Heb 
13013	Ezek	43	13	<i>back</i>
13014	Ezek	43	14	1) Or 
13015	Ezek	43	14	<i>at</i>
13016	Ezek	43	15	1) Heb 
13017	Ezek	43	15	<i>Harel</i>
13018	Ezek	43	15	 2) Heb 
13019	Ezek	43	15	<i>Ariel</i>
13020	Ezek	43	15	 ; See Isa 29:1
13021	Ezek	43	26	1) Heb 
13022	Ezek	43	26	<i>fill the hands thereof</i>
13023	Ezek	43	26	 ; See Ex 29:24
13024	Ezek	44	5	1) Heb 
13025	Ezek	44	5	<i>set thy heart upon</i>
13026	Ezek	44	7	1) Or 
13027	Ezek	44	7	<i>in all</i>
13028	Ezek	44	17	1) Or 
13029	Ezek	44	17	<i>in the house</i>
13030	Ezek	44	30	1) Or 
13031	Ezek	44	30	<i>heave-offering</i>
13032	Ezek	44	30	 2) Or 
13033	Ezek	44	30	<i>coarse meal</i>
13034	Ezek	45	1	1) Heb 
13035	Ezek	45	1	<i>holiness</i>
13036	Ezek	45	1	 2) The Sept has 
13037	Ezek	45	1	<i>twenty</i>
13038	Ezek	45	2	1) Or 
13039	Ezek	45	2	<i>open space</i>
13040	Ezek	45	5	1) The Sept has 
13041	Ezek	45	5	<i>cities to dwell in</i>
13042	Ezek	45	8	1) Or 
13043	Ezek	45	8	<i>As touching</i>
13044	Ezek	45	9	1) Heb 
13045	Ezek	45	9	<i>expulsions</i>
13046	Ezek	45	16	1) Heb 
13047	Ezek	45	16	<i>shall be for</i>
13048	Ezek	46	7	1) Heb 
13049	Ezek	46	7	<i>his hand shall attain unto</i>
13050	Ezek	46	11	1) Or 
13051	Ezek	46	11	<i>appointed feasts</i>
13052	Ezek	46	14	1) Or 
13053	Ezek	46	14	<i>mix with</i>
13054	Ezek	46	18	1) Heb 
13055	Ezek	46	18	<i>oppress</i>
13056	Ezek	46	22	1) Or 
13057	Ezek	46	22	<i>joined on</i>
13058	Ezek	46	23	1) Heb 
13059	Ezek	46	23	<i>row</i>
13060	Ezek	46	23	 2) Heb 
13061	Ezek	46	23	<i>rows</i>
13062	Ezek	47	2	1) Or 
13063	Ezek	47	2	<i>trickled forth</i>
13064	Ezek	47	9	1) Heb 
13065	Ezek	47	9	<i>two rivers</i>
13066	Ezek	47	9	 2) Or 
13067	Ezek	47	9	<i>that all things may be healed and live</i>
13068	Ezek	47	11	1) Or 
13069	Ezek	47	11	<i>given for salt</i>
13070	Ezek	47	12	1) Heb 
13071	Ezek	47	12	<i>first-fruits</i>
13072	Ezek	47	14	1) Heb 
13073	Ezek	47	14	<i>lifted up my hand</i>
13074	Ezek	47	16	1) Or 
13075	Ezek	47	16	<i>the middle Hazer</i>
13076	Ezek	48	11	1) Or 
13077	Ezek	48	11	<i>The sanctified</i>
13078	Ezek	48	11	 portion shall be 
13079	Ezek	48	11	<i>for the priests of the sons etc</i>
13080	Ezek	48	35	1) Heb 
13081	Ezek	48	35	<i>Jehovah-shammah</i>
13082	Dan	1	11	1) Heb 
13083	Dan	1	11	<i>Hammelzar</i>
13084	Dan	1	12	1) Or 
13085	Dan	1	12	<i>herbs</i>
13086	Dan	1	16	1) Heb 
13087	Dan	1	16	<i>Hammelzar</i>
13088	Dan	1	18	1) Heb 
13089	Dan	1	18	<i>said</i>
13090	Dan	2	4	1) Or 
13091	Dan	2	4	<i>in Aramaic</i>
13092	Dan	2	4	 2) Da 2:4-7:28 is in Aramaic.
13093	Dan	2	5	1) Or 
13094	Dan	2	5	<i>The word is gone forth from me</i>
13095	Dan	2	8	1) Aram 
13096	Dan	2	8	<i>buy the time</i>
13097	Dan	2	8	 2) Or 
13098	Dan	2	8	<i>the word is gone forth from me: that if etc</i>
13099	Dan	2	10	1) Or, be he never so 
13100	Dan	2	10	<i>great and powerful, hath etc</i>
13101	Dan	2	16	1) Or 
13102	Dan	2	16	<i>give him time</i>
13103	Dan	2	16	 2) Or 
13104	Dan	2	16	<i>that he might</i>
13105	Dan	2	35	1) Or 
13106	Dan	2	35	<i>rock</i>
13107	Dan	2	41	1) Or 
13108	Dan	2	41	<i>earthenware</i>
13109	Dan	2	42	1) Or 
13110	Dan	2	42	<i>brittle</i>
13111	Dan	2	43	1) Or 
13112	Dan	2	43	<i>earthenware</i>
13113	Dan	2	43	 2) Or 
13114	Dan	2	43	<i>by</i>
13115	Dan	2	49	1) Or 
13116	Dan	2	49	<i>at the king’s court</i>
13117	Dan	3	2	1) Or 
13118	Dan	3	2	<i>chief soothsayers</i>
13119	Dan	3	2	 2) Or 
13120	Dan	3	2	<i>lawyers</i>
13121	Dan	3	3	1) Or 
13122	Dan	3	3	<i>chief soothsayers</i>
13123	Dan	3	3	 2) Or 
13124	Dan	3	3	<i>lawyers</i>
13125	Dan	3	5	1) Or 
13126	Dan	3	5	<i>bagpipe</i>
13127	Dan	3	16	1) Or 
13128	Dan	3	16	<i>we are not careful</i>
13129	Dan	3	17	1) Or 
13130	Dan	3	17	<i>Behold, our God etc</i>
13131	Dan	3	17	 ; Or 
13132	Dan	3	17	<i>If our God whom we serve be able to deliver us, he will deliver us from…and out of thy hand, O king</i>
13133	Dan	3	21	1) Or 
13134	Dan	3	21	<i>turbans</i>
13135	Dan	3	26	1) Aram 
13136	Dan	3	26	<i>door</i>
13137	Dan	4	5	1) Or 
13138	Dan	4	5	<i>imaginations</i>
13139	Dan	4	17	1) Or 
13140	Dan	4	17	<i>matter</i>
13141	Dan	4	27	1) Or 
13142	Dan	4	27	<i>redeem</i>
13143	Dan	4	27	 2) Or as otherwise read 
13144	Dan	4	27	<i>a healing of thine error</i>
13145	Dan	4	29	1) Aram 
13146	Dan	4	29	<i>upon</i>
13147	Dan	4	35	1) Aram 
13148	Dan	4	35	<i>strike</i>
13149	Dan	5	6	1) Aram 
13150	Dan	5	6	<i>brightness</i>
13151	Dan	5	11	1) Or 
13152	Dan	5	11	<i>thy father, O king</i>
13153	Dan	5	25	1) That is 
13154	Dan	5	25	<i>Numbered, numbered, weighed, and divisions</i>
13155	Dan	5	28	1) That is 
13156	Dan	5	28	<i>Divided</i>
13157	Dan	6	6	1) Or 
13158	Dan	6	6	<i>came tumultuously</i>
13159	Dan	6	6	 (and so in verses 11, 15)
13160	Dan	6	7	1) Or 
13161	Dan	6	7	<i>that the king should establish a statute, and make etc</i>
13162	Dan	6	8	1) Aram 
13163	Dan	6	8	<i>passeth not away</i>
13164	Dan	6	12	1) Aram 
13165	Dan	6	12	<i>passeth not away</i>
13166	Dan	6	17	1) Or 
13167	Dan	6	17	<i>that there might be no change of purpose</i>
13168	Dan	6	18	1) Or 
13169	Dan	6	18	<i>dancing girls</i>
13170	Dan	7	1	1) Aram 
13171	Dan	7	1	<i>saw</i>
13172	Dan	7	5	1) Or as otherwise read 
13173	Dan	7	5	<i>it raised up one dominion</i>
13174	Dan	7	7	1) Or 
13175	Dan	7	7	<i>dreadful</i>
13176	Dan	7	9	1) Or 
13177	Dan	7	9	<i>cast down</i>
13178	Dan	7	11	1) Aram 
13179	Dan	7	11	<i>to the burning of fire</i>
13180	Dan	7	15	1) Aram 
13181	Dan	7	15	<i>the sheath</i>
13182	Dan	7	22	1) Or 
13183	Dan	7	22	<i>for</i>
13184	Dan	7	23	1) Or 
13185	Dan	7	23	<i>thresh it</i>
13186	Dan	7	28	1) Aram 
13187	Dan	7	28	<i>Hitherto</i>
13188	Dan	7	28	 2) Aram 
13189	Dan	7	28	<i>brightness</i>
13190	Dan	8	2	1) Or 
13191	Dan	8	2	<i>castle</i>
13192	Dan	8	5	1) Heb 
13193	Dan	8	5	<i>none touched the ground</i>
13194	Dan	8	11	1) Another reading is 
13195	Dan	8	11	<i>the continual</i>
13196	Dan	8	11	 burnt-offering 
13197	Dan	8	11	<i>was taken away from him</i>
13198	Dan	8	12	1) Or 
13199	Dan	8	12	<i>a host was given</i>
13200	Dan	8	12	 to it 
13201	Dan	8	12	<i>against the etc</i>
13202	Dan	8	12	 ; Or 
13203	Dan	8	12	<i>a host was set over the etc</i>
13204	Dan	8	14	1) Heb 
13205	Dan	8	14	<i>justified</i>
13206	Dan	8	15	1) Heb 
13207	Dan	8	15	<i>understanding</i>
13208	Dan	8	18	1) Or 
13209	Dan	8	18	<i>where I had stood</i>
13210	Dan	8	21	1) Heb 
13211	Dan	8	21	<i>Javan</i>
13212	Dan	8	24	1) Or 
13213	Dan	8	24	<i>with his power</i>
13214	Dan	8	24	 ; See verse 22. 2) Or 
13215	Dan	8	24	<i>corrupt</i>
13216	Dan	8	24	 3) Heb 
13217	Dan	8	24	<i>people of the saints</i>
13218	Dan	8	25	1) Or 
13219	Dan	8	25	<i>corrupt</i>
13220	Dan	8	27	1) Or 
13221	Dan	8	27	<i>but there was not to make it understood</i>
13222	Dan	9	3	1) Or 
13223	Dan	9	3	<i>to seek after prayer etc</i>
13224	Dan	9	9	1) Or 
13225	Dan	9	9	<i>though</i>
13226	Dan	9	13	1) Or 
13227	Dan	9	13	<i>deal wisely</i>
13228	Dan	9	16	1) Heb 
13229	Dan	9	16	<i>righteousnesses</i>
13230	Dan	9	18	1) Heb 
13231	Dan	9	18	<i>cause to fall</i>
13232	Dan	9	21	1) Or 
13233	Dan	9	21	<i>being sore wearied</i>
13234	Dan	9	21	 2) Or 
13235	Dan	9	21	<i>came near unto me</i>
13236	Dan	9	22	1) Or 
13237	Dan	9	22	<i>made me to understand</i>
13238	Dan	9	23	1) Or 
13239	Dan	9	23	<i>very precious</i>
13240	Dan	9	23	 ; Heb 
13241	Dan	9	23	<i>precious things</i>
13242	Dan	9	24	1) Or 
13243	Dan	9	24	<i>to restrain</i>
13244	Dan	9	24	 2) Or 
13245	Dan	9	24	<i>the transgression</i>
13246	Dan	9	24	 3) Another reading is 
13247	Dan	9	24	<i>to seal up</i>
13248	Dan	9	24	 4) Or 
13249	Dan	9	24	<i>purge away</i>
13250	Dan	9	24	 5) Heb 
13251	Dan	9	24	<i>prophet</i>
13252	Dan	9	24	 6) Or 
13253	Dan	9	24	<i>a most holy place</i>
13254	Dan	9	25	1) Heb 
13255	Dan	9	25	<i>Messiah</i>
13256	Dan	9	25	 2) Or 
13257	Dan	9	25	<i>seven weeks: and threescore and two weeks, it shall be etc</i>
13258	Dan	9	26	1) Or 
13259	Dan	9	26	<i>there shall be none belonging to him</i>
13260	Dan	9	27	1) Or 
13261	Dan	9	27	<i>meal-offering</i>
13262	Dan	9	27	 2) Or 
13263	Dan	9	27	<i>upon the pinnacle of abominations</i>
13264	Dan	9	27	 shall be 
13265	Dan	9	27	<i>etc</i>
13266	Dan	10	4	1) That is 
13267	Dan	10	4	<i>Tigris</i>
13268	Dan	10	10	1) Or 
13269	Dan	10	10	<i>set me tottering upon etc</i>
13270	Dan	10	13	1) Or 
13271	Dan	10	13	<i>was not needed</i>
13272	Dan	10	20	1) Heb 
13273	Dan	10	20	<i>Javan</i>
13274	Dan	10	21	1) Heb 
13275	Dan	10	21	<i>strengtheneth himself</i>
13276	Dan	10	21	 2) Or 
13277	Dan	10	21	<i>concerning these things</i>
13278	Dan	11	2	1) Or 
13279	Dan	11	2	<i>all this shall stir up the realm</i>
13280	Dan	11	2	 2) Heb 
13281	Dan	11	2	<i>Javan</i>
13282	Dan	11	5	1) Or 
13283	Dan	11	5	<i>shall be strong; but</i>
13284	Dan	11	5	 one 
13285	Dan	11	5	<i>of his princes shall be etc</i>
13286	Dan	11	6	1) Or 
13287	Dan	11	6	<i>equitable conditions</i>
13288	Dan	11	7	1) Or 
13289	Dan	11	7	<i>office</i>
13290	Dan	11	7	 2) Or 
13291	Dan	11	7	<i>against</i>
13292	Dan	11	8	1) Or 
13293	Dan	11	8	<i>princes</i>
13294	Dan	11	8	 2) Or 
13295	Dan	11	8	<i>continue more years than etc</i>
13296	Dan	11	10	1) Or 
13297	Dan	11	10	<i>and he</i>
13298	Dan	11	10	 2) Or 
13299	Dan	11	10	<i>he</i>
13300	Dan	11	12	1) Or 
13301	Dan	11	12	<i>be carried away</i>
13302	Dan	11	13	1) Or, for
13303	Dan	11	15	1) Or 
13304	Dan	11	15	<i>the fortified cities</i>
13305	Dan	11	17	1) Or 
13306	Dan	11	17	<i>upright ones</i>
13307	Dan	11	17	 2) Or 
13308	Dan	11	17	<i>to destroy it</i>
13309	Dan	11	17	 3) Or 
13310	Dan	11	17	<i>it</i>
13311	Dan	11	18	1) Or 
13312	Dan	11	18	<i>coast-lands</i>
13313	Dan	11	18	 2) Or 
13314	Dan	11	18	<i>captain</i>
13315	Dan	11	20	1) Heb 
13316	Dan	11	20	<i>broken</i>
13317	Dan	11	21	1) Or 
13318	Dan	11	21	<i>office</i>
13319	Dan	11	22	1) Or, his 
13320	Dan	11	22	<i>covenant</i>
13321	Dan	11	26	1) Heb 
13322	Dan	11	26	<i>break</i>
13323	Dan	11	32	1) Heb 
13324	Dan	11	32	<i>make profane</i>
13325	Dan	11	33	1) Or 
13326	Dan	11	33	<i>the teachers of the people</i>
13327	Dan	11	35	1) Or 
13328	Dan	11	35	<i>the teachers</i>
13329	Dan	11	38	1) Or 
13330	Dan	11	38	<i>office</i>
13331	Dan	11	39	1) Or 
13332	Dan	11	39	<i>whom he shall acknowledge</i>
13333	Dan	11	39	 and 
13334	Dan	11	39	<i>increase with glory</i>
13335	Dan	11	39	 2) Or 
13336	Dan	11	39	<i>shall increase glory</i>
13337	Dan	11	40	1) Heb 
13338	Dan	11	40	<i>push at</i>
13339	Dan	11	44	1) Heb 
13340	Dan	11	44	<i>to devote many</i>
13341	Dan	11	45	1) Or 
13342	Dan	11	45	<i>between the seas at</i>
13343	Dan	12	2	1) Or 
13344	Dan	12	2	<i>abhorrence</i>
13345	Dan	12	3	1) Or 
13346	Dan	12	3	<i>the teachers</i>
13347	Dan	12	8	1) Or 
13348	Dan	12	8	<i>latter end</i>
13349	Dan	12	10	1) Or 
13350	Dan	12	10	<i>the teachers</i>
13351	Hos	1	2	1) Or 
13352	Hos	1	2	<i>with</i>
13353	Hos	1	4	1) Heb 
13354	Hos	1	4	<i>visit</i>
13355	Hos	1	6	1) That is 
13356	Hos	1	6	<i>That hath not obtained mercy</i>
13357	Hos	1	9	1) That is 
13358	Hos	1	9	<i>Not my people</i>
13359	Hos	1	9	 2) Heb 
13360	Hos	1	9	<i>for you</i>
13361	Hos	1	10	1) Or 
13362	Hos	1	10	<i>instead of that which was said</i>
13363	Hos	2	1	1) That is 
13364	Hos	2	1	<i>My people</i>
13365	Hos	2	1	 2) That is 
13366	Hos	2	1	<i>That hath obtained mercy</i>
13367	Hos	2	5	1) Heb 
13368	Hos	2	5	<i>drinks</i>
13369	Hos	2	8	1) Or 
13370	Hos	2	8	<i>made into the</i>
13371	Hos	2	8	 image of 
13372	Hos	2	8	<i>Baal</i>
13373	Hos	2	9	1) Or 
13374	Hos	2	9	<i>return, and take away</i>
13375	Hos	2	10	1) Or 
13376	Hos	2	10	<i>shame</i>
13377	Hos	2	11	1) Or 
13378	Hos	2	11	<i>appointed feasts</i>
13379	Hos	2	13	1) Or 
13380	Hos	2	13	<i>wherein she burned incense to them</i>
13381	Hos	2	13	 2) Or 
13382	Hos	2	13	<i>nose-rings</i>
13383	Hos	2	14	1) Heb 
13384	Hos	2	14	<i>to her heart</i>
13385	Hos	2	15	1) That is 
13386	Hos	2	15	<i>Troubling</i>
13387	Hos	2	15	 2) Or 
13388	Hos	2	15	<i>sing</i>
13389	Hos	2	16	1) That is 
13390	Hos	2	16	<i>My husband</i>
13391	Hos	2	16	 2) That is 
13392	Hos	2	16	<i>My master</i>
13393	Hos	2	17	1) Or 
13394	Hos	2	17	<i>remembered</i>
13395	Hos	2	22	1) That is 
13396	Hos	2	22	<i>Whom God soweth</i>
13397	Hos	2	23	1) Or 
13398	Hos	2	23	<i>land</i>
13399	Hos	2	23	 2) Heb 
13400	Hos	2	23	<i>Lo-ruhamah</i>
13401	Hos	2	23	 ; See Ho 1:6. 3) Heb 
13402	Hos	2	23	<i>Lo-ammi</i>
13403	Hos	2	23	 ; See Ho 1:9, 10
13404	Hos	3	1	1) Or 
13405	Hos	3	1	<i>of</i>
13406	Hos	3	1	 her 
13407	Hos	3	1	<i>husband, yet an etc</i>
13408	Hos	3	1	 2) Or 
13409	Hos	3	1	<i>them that love</i>
13410	Hos	3	2	1) Heb 
13411	Hos	3	2	<i>lethech</i>
13412	Hos	3	4	1) Or 
13413	Hos	3	4	<i>obelisk</i>
13414	Hos	4	6	1) According to another reading 
13415	Hos	4	6	<i>I have rejected</i>
13416	Hos	4	11	1) Heb 
13417	Hos	4	11	<i>heart</i>
13418	Hos	4	14	1) Or 
13419	Hos	4	14	<i>daughters-in-law</i>
13420	Hos	4	15	1) Or 
13421	Hos	4	15	<i>become guilty</i>
13422	Hos	4	18	1) Or 
13423	Hos	4	18	<i>Their carouse is over</i>
13424	Hos	4	18	 2) Or 
13425	Hos	4	18	<i>they are given up to love; her rulers are a shame</i>
13426	Hos	4	18	 3) Heb 
13427	Hos	4	18	<i>shields</i>
13428	Hos	4	19	1) Or 
13429	Hos	4	19	<i>skirts</i>
13430	Hos	4	19	 2) Or as otherwise read 
13431	Hos	4	19	<i>their altars shall be put to shame</i>
13432	Hos	5	1	1) Or 
13433	Hos	5	1	<i>against you is the judgment</i>
13434	Hos	5	2	1) Or 
13435	Hos	5	2	<i>in corruption</i>
13436	Hos	5	2	 2) Heb 
13437	Hos	5	2	<i>rebuke</i>
13438	Hos	5	4	1) Or 
13439	Hos	5	4	<i>They will not frame their doings</i>
13440	Hos	5	4	 2) Or 
13441	Hos	5	4	<i>in the midst of</i>
13442	Hos	5	5	1) Or 
13443	Hos	5	5	<i>excellency</i>
13444	Hos	5	7	1) Or 
13445	Hos	5	7	<i>begotten</i>
13446	Hos	5	7	 2) Or 
13447	Hos	5	7	<i>a month</i>
13448	Hos	5	7	 3) Heb 
13449	Hos	5	7	<i>portions</i>
13450	Hos	5	8	1) Or 
13451	Hos	5	8	<i>After thee, Benjamin!</i>
13452	Hos	5	12	1) Or 
13453	Hos	5	12	<i>And I was</i>
13454	Hos	5	13	1) Or 
13455	Hos	5	13	<i>a king that should contend</i>
13456	Hos	5	15	1) Or 
13457	Hos	5	15	<i>have borne their guilt</i>
13458	Hos	5	15	 2) Or 
13459	Hos	5	15	<i>earnestly,</i>
13460	Hos	5	15	 saying
13461	Hos	6	4	1) Or 
13462	Hos	6	4	<i>kindness</i>
13463	Hos	6	5	1) Or according to another reading 
13464	Hos	6	5	<i>my</i>
13465	Hos	6	6	1) Or 
13466	Hos	6	6	<i>kindness</i>
13467	Hos	6	7	1) Or 
13468	Hos	6	7	<i>are as men that have transgressed a covenant</i>
13469	Hos	6	7	 2) Or 
13470	Hos	6	7	<i>men</i>
13471	Hos	6	9	1) Or 
13472	Hos	6	9	<i>And as robbers lying in wait, so etc</i>
13473	Hos	6	11	1) Or 
13474	Hos	6	11	<i>return to</i>
13475	Hos	7	1	1) Or 
13476	Hos	7	1	<i>maketh a raid</i>
13477	Hos	7	5	1) Or 
13478	Hos	7	5	<i>him</i>
13479	Hos	7	6	1) Heb 
13480	Hos	7	6	<i>brought near</i>
13481	Hos	7	9	1) Heb 
13482	Hos	7	9	<i>sprinkled</i>
13483	Hos	7	10	1) Or 
13484	Hos	7	10	<i>excellency</i>
13485	Hos	7	11	1) Heb 
13486	Hos	7	11	<i>heart</i>
13487	Hos	7	12	1) Or 
13488	Hos	7	12	<i>when the report cometh to their congregation</i>
13489	Hos	7	15	1) Or 
13490	Hos	7	15	<i>chastened</i>
13491	Hos	7	15	 them
13492	Hos	8	1	1) Or 
13493	Hos	8	1	<i>The trumpet to thy mouth! As an eagle against the house of Jehovah!</i>
13494	Hos	8	4	1) Or 
13495	Hos	8	4	<i>they have removed</i>
13496	Hos	8	4	  them
13497	Hos	8	7	1) Or 
13498	Hos	8	7	<i>it hath no stalk</i>
13499	Hos	8	9	1) Heb 
13500	Hos	8	9	<i>loves</i>
13501	Hos	8	10	1) Or as otherwise read 
13502	Hos	8	10	<i>shall sorrow a little</i>
13503	Hos	8	10	 (or 
13504	Hos	8	10	<i>for a little while</i>
13505	Hos	8	10	 )
13506	Hos	8	14	1) Or 
13507	Hos	8	14	<i>temples</i>
13508	Hos	8	14	 2) Or 
13509	Hos	8	14	<i>palaces</i>
13510	Hos	9	1	1) Or 
13511	Hos	9	1	<i>unto exultation</i>
13512	Hos	9	1	 2) Or 
13513	Hos	9	1	<i>that</i>
13514	Hos	9	4	1) Or 
13515	Hos	9	4	<i>neither shall their sacrifices be pleasing unto him:</i>
13516	Hos	9	4	 their bread 
13517	Hos	9	4	<i>shall be unto them etc</i>
13518	Hos	9	8	1) Or 
13519	Hos	9	8	<i>watcheth against</i>
13520	Hos	9	10	1) Or 
13521	Hos	9	10	<i>separated</i>
13522	Hos	9	10	 2) Heb 
13523	Hos	9	10	<i>shame</i>
13524	Hos	9	13	1) Or 
13525	Hos	9	13	<i>as I have seen, is like Tyre, that is planted etc</i>
13526	Hos	10	1	1) Or 
13527	Hos	10	1	<i>prosperity</i>
13528	Hos	10	1	 2) Or 
13529	Hos	10	1	<i>obelisks</i>
13530	Hos	10	2	1) Or 
13531	Hos	10	2	<i>He hath divided their heart</i>
13532	Hos	10	2	 2) Or 
13533	Hos	10	2	<i>smooth</i>
13534	Hos	10	2	 3) Or 
13535	Hos	10	2	<i>obelisks</i>
13536	Hos	10	4	1) Or 
13537	Hos	10	4	<i>they swear falsely, they make covenants</i>
13538	Hos	10	4	 2) Or 
13539	Hos	10	4	<i>shall spring up</i>
13540	Hos	10	4	 3) Heb 
13541	Hos	10	4	<i>rosh</i>
13542	Hos	10	4	 ; See De 29:18
13543	Hos	10	5	1) Heb 
13544	Hos	10	5	<i>Chemarim</i>
13545	Hos	10	5	 ; See 2 Ki 23:5
13546	Hos	10	7	1) Or 
13547	Hos	10	7	<i>Samaria is cut off</i>
13548	Hos	10	7	 with 
13549	Hos	10	7	<i>her king</i>
13550	Hos	10	7	 2) Or 
13551	Hos	10	7	<i>twigs</i>
13552	Hos	10	9	1) Or 
13553	Hos	10	9	<i>more than in the days</i>
13554	Hos	10	9	 2) Or 
13555	Hos	10	9	<i>there have they continued</i>
13556	Hos	10	9	 3) Or 
13557	Hos	10	9	<i>shall not the battle…Gibeah?</i>
13558	Hos	10	10	1) Or 
13559	Hos	10	10	<i>yoked</i>
13560	Hos	10	10	 2) Or 
13561	Hos	10	10	<i>for</i>
13562	Hos	10	12	1) Or 
13563	Hos	10	12	<i>teach you righteousness</i>
13564	Hos	10	13	1) Or 
13565	Hos	10	13	<i>faithlessness</i>
13566	Hos	10	14	1) Or 
13567	Hos	10	14	<i>against</i>
13568	Hos	10	14	 2) Heb 
13569	Hos	10	14	<i>peoples</i>
13570	Hos	10	15	1) Or 
13571	Hos	10	15	<i>So shall it be done unto you at Beth-el</i>
13572	Hos	11	3	1) Heb 
13573	Hos	11	3	<i>he took them on his arms</i>
13574	Hos	11	6	1) Or 
13575	Hos	11	6	<i>rage against</i>
13576	Hos	11	7	1) Or 
13577	Hos	11	7	<i>lift</i>
13578	Hos	11	7	 himself 
13579	Hos	11	7	<i>up</i>
13580	Hos	11	9	1) Or 
13581	Hos	11	9	<i>enter into the city</i>
13582	Hos	11	12	1) Or 
13583	Hos	11	12	<i>and Judah is yet unstedfast with God, and with the Holy One who is faithful</i>
13584	Hos	12	2	1) Heb 
13585	Hos	12	2	<i>visit upon</i>
13586	Hos	12	3	1) Or 
13587	Hos	12	3	<i>strength</i>
13588	Hos	12	3	 2) Or 
13589	Hos	12	3	<i>strove</i>
13590	Hos	12	5	1) Or 
13591	Hos	12	5	<i>for Jehovah is the God of hosts</i>
13592	Hos	12	7	1) Or, As for 
13593	Hos	12	7	<i>Canaan, the etc</i>
13594	Hos	12	7	 2) Or 
13595	Hos	12	7	<i>a Canaanite</i>
13596	Hos	12	7	 ; Heb 
13597	Hos	12	7	<i>Canaan</i>
13598	Hos	12	7	 3) Or 
13599	Hos	12	7	<i>defraud</i>
13600	Hos	12	10	1) Heb 
13601	Hos	12	10	<i>by the hand</i>
13602	Hos	12	11	1) Or 
13603	Hos	12	11	<i>shall be</i>
13604	Hos	12	13	1) Or 
13605	Hos	12	13	<i>kept</i>
13606	Hos	13	1	1) Or 
13607	Hos	13	1	<i>spake with trembling etc</i>
13608	Hos	13	1	 2) Or 
13609	Hos	13	1	<i>became guilty</i>
13610	Hos	13	2	1) Or 
13611	Hos	13	2	<i>the sacrificers of men</i>
13612	Hos	13	4	1) Or 
13613	Hos	13	4	<i>knowest</i>
13614	Hos	13	9	1) Or 
13615	Hos	13	9	<i>Thou art destroyed, O Israel; for</i>
13616	Hos	13	9	 thou 
13617	Hos	13	9	<i>etc</i>
13618	Hos	13	9	 2) Or 
13619	Hos	13	9	<i>for in me, in thy help</i>
13620	Hos	13	9	 ; Or 
13621	Hos	13	9	<i>but in me is thy help</i>
13622	Hos	13	13	1) Or 
13623	Hos	13	13	<i>when it is time, he standeth not in etc</i>
13624	Hos	13	14	1) Heb 
13625	Hos	13	14	<i>hand</i>
13626	Hos	13	14	 2) Or 
13627	Hos	13	14	<i>I will be</i>
13628	Hos	13	15	1) Or 
13629	Hos	13	15	<i>wind</i>
13630	Hos	13	15	 2) Or 
13631	Hos	13	15	<i>it</i>
13632	Hos	13	16	1) Or 
13633	Hos	13	16	<i>become desolate</i>
13634	Hos	14	2	1) Or 
13635	Hos	14	2	<i>receive</i>
13636	Hos	14	2	 us 
13637	Hos	14	2	<i>graciously</i>
13638	Hos	14	7	1) Or 
13639	Hos	14	7	<i>his memorial</i>
13640	Hos	14	8	1) Or 
13641	Hos	14	8	<i>O Ephraim, what etc</i>
13642	Joel	1	4	1) Probably, different kinds of locusts, or locusts in different stages of growth.
13643	Joel	1	7	1) Or 
13644	Joel	1	7	<i>broken</i>
13645	Joel	1	7	 2) Or 
13646	Joel	1	7	<i>down</i>
13647	Joel	1	10	1) Or 
13648	Joel	1	10	<i>ashamed</i>
13649	Joel	1	11	1) Or 
13650	Joel	1	11	<i>The husbandmen are confounded, the vinedressers wail</i>
13651	Joel	1	12	1) Or 
13652	Joel	1	12	<i>ashamed</i>
13653	Joel	1	14	1) Or 
13654	Joel	1	14	<i>elders</i>
13655	Joel	1	15	1) Heb 
13656	Joel	1	15	<i>Shaddai</i>
13657	Joel	1	17	1) Or 
13658	Joel	1	17	<i>shrivel</i>
13659	Joel	1	17	 2) Or 
13660	Joel	1	17	<i>ashamed</i>
13661	Joel	1	18	1) Or 
13662	Joel	1	18	<i>suffer punishment</i>
13663	Joel	1	19	1) Or 
13664	Joel	1	19	<i>folds</i>
13665	Joel	1	20	1) Or 
13666	Joel	1	20	<i>folds</i>
13667	Joel	2	4	1) Or 
13668	Joel	2	4	<i>war-horses</i>
13669	Joel	2	8	1) Or 
13670	Joel	2	8	<i>when they fall around the weapons, they etc</i>
13671	Joel	2	8	 2) Or 
13672	Joel	2	8	<i>are not wounded</i>
13673	Joel	2	16	1) Or 
13674	Joel	2	16	<i>elders</i>
13675	Joel	2	17	1) Or 
13676	Joel	2	17	<i>use a byword against them</i>
13677	Joel	2	20	1) Or 
13678	Joel	2	20	<i>with its forepart</i>
13679	Joel	2	20	 2) Or 
13680	Joel	2	20	<i>towards</i>
13681	Joel	2	23	1) Or 
13682	Joel	2	23	<i>in</i>
13683	Joel	2	23	 (or 
13684	Joel	2	23	<i>for</i>
13685	Joel	2	23	 ) 
13686	Joel	2	23	<i>righteousness</i>
13687	Joel	2	23	 2) Or 
13688	Joel	2	23	<i>at the first</i>
13689	Joel	2	32	1) Or 
13690	Joel	2	32	<i>in the remnant whom etc</i>
13691	Joel	3	1	1) Or 
13692	Joel	3	1	<i>return to</i>
13693	Joel	3	4	1) Or 
13694	Joel	3	4	<i>will ye repay a deed of mine, or will ye do aught unto me? swiftly etc</i>
13695	Joel	3	4	 2) Or 
13696	Joel	3	4	<i>deed</i>
13697	Joel	3	7	1) Or 
13698	Joel	3	7	<i>deed</i>
13699	Joel	3	9	1) Heb 
13700	Joel	3	9	<i>sanctify</i>
13701	Joel	3	11	1) Or 
13702	Joel	3	11	<i>Assemble yourselves</i>
13703	Joel	3	12	1) That is 
13704	Joel	3	12	<i>Jehovah judgeth</i>
13705	Joel	3	13	1) Or 
13706	Joel	3	13	<i>vintage</i>
13707	Joel	3	13	 2) Or 
13708	Joel	3	13	<i>get you down</i>
13709	Joel	3	18	1) That is 
13710	Joel	3	18	<i>the valley of accacias</i>
13711	Joel	3	20	1) Or 
13712	Joel	3	20	<i>be inhabited</i>
13713	Joel	3	21	1) Or 
13714	Joel	3	21	<i>hold as innocent</i>
13715	Amos	1	2	1) Or 
13716	Amos	1	2	<i>habitations</i>
13717	Amos	1	3	1) Or 
13718	Amos	1	3	<i>revoke my word</i>
13719	Amos	1	3	 2) Heb 
13720	Amos	1	3	<i>it</i>
13721	Amos	1	3	 (and so in verses 6, 9, etc)
13722	Amos	1	5	1) Or 
13723	Amos	1	5	<i>him that sitteth</i>
13724	Amos	1	5	 on the throne (and so in verse 8) 2) That is 
13725	Amos	1	5	<i>Vanity</i>
13726	Amos	1	5	 3) Or 
13727	Amos	1	5	<i>Beth-eden</i>
13728	Amos	1	6	1) Heb 
13729	Amos	1	6	<i>an entire captivity</i>
13730	Amos	1	9	1) Heb 
13731	Amos	1	9	<i>an entire captivity</i>
13732	Amos	1	9	 2) Heb 
13733	Amos	1	9	<i>the covenant of brethren</i>
13734	Amos	1	11	1) Heb 
13735	Amos	1	11	<i>corrupted his compassions</i>
13736	Amos	2	13	1) Or 
13737	Amos	2	13	<i>I am pressed under you, as a cart is pressed that is full of sheaves</i>
13738	Amos	2	14	1) Or 
13739	Amos	2	14	<i>refuge shall fail the swift</i>
13740	Amos	2	14	 2) Heb 
13741	Amos	2	14	<i>his soul</i>
13742	Amos	2	14	 (or 
13743	Amos	2	14	<i>life</i>
13744	Amos	2	14	 )
13745	Amos	2	15	1) Heb 
13746	Amos	2	15	<i>his soul</i>
13747	Amos	2	15	 (or 
13748	Amos	2	15	<i>life</i>
13749	Amos	2	15	 )
13750	Amos	3	3	1) Or 
13751	Amos	3	3	<i>made an appointment</i>
13752	Amos	3	9	1) Or 
13753	Amos	3	9	<i>upon</i>
13754	Amos	3	12	1) According to some MSS 
13755	Amos	3	12	<i>in Damascus on a bed</i>
13756	Amos	3	15	1) Or 
13757	Amos	3	15	<i>many houses</i>
13758	Amos	4	3	1) The text is obscure.
13759	Amos	4	5	1) Heb 
13760	Amos	4	5	<i>offer by burning</i>
13761	Amos	4	10	1) Heb 
13762	Amos	4	10	<i>with the captivity of your horses</i>
13763	Amos	5	2	1) Or 
13764	Amos	5	2	<i>lieth forsaken</i>
13765	Amos	5	5	1) Or 
13766	Amos	5	5	<i>become vanity</i>
13767	Amos	5	5	 (Heb 
13768	Amos	5	5	<i>Aven</i>
13769	Amos	5	5	 )
13770	Amos	5	8	1) Or 
13771	Amos	5	8	<i>deep darkness</i>
13772	Amos	5	9	1) Or 
13773	Amos	5	9	<i>causeth destruction to flash forth</i>
13774	Amos	5	16	1) Heb 
13775	Amos	5	16	<i>and</i>
13776	Amos	5	16	 proclaim 
13777	Amos	5	16	<i>wailing to such as are skilful in lamentation</i>
13778	Amos	5	19	1) Or 
13779	Amos	5	19	<i>and</i>
13780	Amos	5	21	1) Heb 
13781	Amos	5	21	<i>will not smell</i>
13782	Amos	5	21	 a savor
13783	Amos	5	22	1) Or 
13784	Amos	5	22	<i>burnt-offerings with your meal-offerings</i>
13785	Amos	5	22	 2) Or 
13786	Amos	5	22	<i>thank-offerings</i>
13787	Amos	5	24	1) Or 
13788	Amos	5	24	<i>ever-flowing</i>
13789	Amos	5	25	1) Or 
13790	Amos	5	25	<i>meal-offerings</i>
13791	Amos	5	26	1) Or 
13792	Amos	5	26	<i>shall take up…And I will cause etc</i>
13793	Amos	6	3	1) Or 
13794	Amos	6	3	<i>sitting</i>
13795	Amos	6	5	1) Or 
13796	Amos	6	5	<i>like David’s</i>
13797	Amos	6	6	1) Heb 
13798	Amos	6	6	<i>in bowls of wine</i>
13799	Amos	6	8	1) Or 
13800	Amos	6	8	<i>pride</i>
13801	Amos	6	10	1) Or 
13802	Amos	6	10	<i>kinsman</i>
13803	Amos	6	11	1) Or 
13804	Amos	6	11	<i>he will smite the great house</i>
13805	Amos	7	4	1) Heb 
13806	Amos	7	4	<i>portion</i>
13807	Amos	7	7	1) Or 
13808	Amos	7	7	<i>upon</i>
13809	Amos	7	14	1) Or 
13810	Amos	7	14	<i>am</i>
13811	Amos	7	14	 2) Or 
13812	Amos	7	14	<i>one of the sons of the prophets</i>
13813	Amos	7	14	 ; See 1 Ki 20:35
13814	Amos	8	3	1) Or 
13815	Amos	8	3	<i>palace</i>
13816	Amos	8	3	 2) Or 
13817	Amos	8	3	<i>have they cast them forth: be silent!</i>
13818	Amos	8	5	1) Heb 
13819	Amos	8	5	<i>open</i>
13820	Amos	8	14	1) Or 
13821	Amos	8	14	<i>manner</i>
13822	Amos	9	1	1) Or 
13823	Amos	9	1	<i>upon</i>
13824	Amos	9	1	 2) Or 
13825	Amos	9	1	<i>he that fleeth of them shall not flee away, and he that escapeth of them shall not be delivered</i>
13826	Amos	9	9	1) Heb 
13827	Amos	9	9	<i>cause to move to and fro</i>
13828	Amos	9	12	1) Or 
13829	Amos	9	12	<i>were</i>
13830	Amos	9	14	1) Or 
13831	Amos	9	14	<i>return to</i>
13832	Obad	1	3	1) Or 
13833	Obad	1	3	<i>Sela</i>
13834	Obad	1	6	1) Or, the men
13835	Obad	1	7	1) Or 
13836	Obad	1	7	<i>driven thee out</i>
13837	Obad	1	7	 2) Or 
13838	Obad	1	7	<i>thy bread they make etc</i>
13839	Obad	1	7	 3) Or 
13840	Obad	1	7	<i>wound</i>
13841	Obad	1	7	 4) Or 
13842	Obad	1	7	<i>of it</i>
13843	Obad	1	11	1) Or 
13844	Obad	1	11	<i>aloof</i>
13845	Obad	1	11	 2) Or 
13846	Obad	1	11	<i>forces</i>
13847	Obad	1	12	1) Or 
13848	Obad	1	12	<i>the day that he was made a stranger</i>
13849	Obad	1	15	1) Or 
13850	Obad	1	15	<i>recompense</i>
13851	Obad	1	16	1) Or 
13852	Obad	1	16	<i>talk foolishly</i>
13853	Obad	1	20	1) Or 
13854	Obad	1	20	<i>fortress</i>
13855	Obad	1	20	 2) Or, shall possess 
13856	Obad	1	20	<i>that which</i>
13857	Obad	1	20	 belongeth to 
13858	Obad	1	20	<i>the Canaanites, even etc</i>
13859	Obad	1	20	 ; Or 
13860	Obad	1	20	<i>that are</i>
13861	Obad	1	20	 among 
13862	Obad	1	20	<i>the Canaanites, even unto Zarephath, and etc</i>
13863	Jonah	1	4	1) Or 
13864	Jonah	1	4	<i>hurled</i>
13865	Jonah	2	2	1) Or 
13866	Jonah	2	2	<i>out of mine affliction</i>
13867	Jonah	2	6	1) Or 
13868	Jonah	2	6	<i>corruption</i>
13869	Jonah	3	2	1) Or 
13870	Jonah	3	2	<i>cry</i>
13871	Jonah	3	3	1) Heb 
13872	Jonah	3	3	<i>a city great unto God</i>
13873	Jonah	3	6	1) Or 
13874	Jonah	3	6	<i>For word came unto the king etc</i>
13875	Jonah	3	7	1) Heb 
13876	Jonah	3	7	<i>said</i>
13877	Jonah	4	2	1) Or 
13878	Jonah	4	2	<i>was beforehand in fleeing</i>
13879	Jonah	4	4	1) Or 
13880	Jonah	4	4	<i>Art thou greatly angry?</i>
13881	Jonah	4	6	1) Or 
13882	Jonah	4	6	<i>Palma Christi</i>
13883	Jonah	4	6	 ; Heb 
13884	Jonah	4	6	<i>kikayon</i>
13885	Mic	1	2	1) Heb 
13886	Mic	1	2	<i>the fulness thereof</i>
13887	Mic	1	2	 2) Or 
13888	Mic	1	2	<i>among</i>
13889	Mic	1	10	1) That is 
13890	Mic	1	10	<i>A house of dust</i>
13891	Mic	1	10	 2) Another reading is 
13892	Mic	1	10	<i>roll thyself</i>
13893	Mic	1	11	1) Heb 
13894	Mic	1	11	<i>inhabitress</i>
13895	Mic	1	11	 2) Or 
13896	Mic	1	11	<i>standing-place</i>
13897	Mic	1	12	1) Heb 
13898	Mic	1	12	<i>inhabitress</i>
13899	Mic	1	12	 2) Or 
13900	Mic	1	12	<i>is in travail for</i>
13901	Mic	1	13	1) Heb 
13902	Mic	1	13	<i>inhabitress</i>
13903	Mic	1	14	1) Heb 
13904	Mic	1	14	<i>achzab</i>
13905	Mic	1	15	1) Heb 
13906	Mic	1	15	<i>inhabitress</i>
13907	Mic	1	16	1) Or 
13908	Mic	1	16	<i>vulture</i>
13909	Mic	2	4	1) Or 
13910	Mic	2	4	<i>with the lamentation, It is done;</i>
13911	Mic	2	4	 and 
13912	Mic	2	4	<i>say etc</i>
13913	Mic	2	4	 2) Or 
13914	Mic	2	4	<i>depart from</i>
13915	Mic	2	6	1) Or 
13916	Mic	2	6	<i>Prophesy ye not, they are</i>
13917	Mic	2	6	 ever 
13918	Mic	2	6	<i>prophesying,</i>
13919	Mic	2	6	 say they; Heb 
13920	Mic	2	6	<i>Drop etc</i>
13921	Mic	2	6	 ; See Am 7:16. 2) Or 
13922	Mic	2	6	<i>of these things: their reproaches never cease</i>
13923	Mic	2	7	1) Or 
13924	Mic	2	7	<i>O</i>
13925	Mic	2	7	 thou that art 
13926	Mic	2	7	<i>named the house of Jacob</i>
13927	Mic	2	7	 2) Or 
13928	Mic	2	7	<i>impatient</i>
13929	Mic	2	7	 Heb 
13930	Mic	2	7	<i>shortened</i>
13931	Mic	2	8	1) Heb 
13932	Mic	2	8	<i>yesterday</i>
13933	Mic	2	11	1) Or 
13934	Mic	2	11	<i>in wind and falsehood</i>
13935	Mic	3	5	1) Heb 
13936	Mic	3	5	<i>sanctify</i>
13937	Mic	3	8	1) Or 
13938	Mic	3	8	<i>even the Spirit</i>
13939	Mic	4	1	1) Or 
13940	Mic	4	1	<i>at the head</i>
13941	Mic	4	2	1) Or 
13942	Mic	4	2	<i>instruction</i>
13943	Mic	4	3	1) Or 
13944	Mic	4	3	<i>among</i>
13945	Mic	4	3	 2) Or 
13946	Mic	4	3	<i>great</i>
13947	Mic	4	8	1) Or 
13948	Mic	4	8	<i>Eder</i>
13949	Mic	4	8	 ; See Ge 35:21. 2) Heb 
13950	Mic	4	8	<i>Ophel</i>
13951	Mic	4	11	1) Or 
13952	Mic	4	11	<i>gaze upon</i>
13953	Mic	5	2	1) Or 
13954	Mic	5	2	<i>families</i>
13955	Mic	5	2	 ; See Jud 6:15. 2) Or 
13956	Mic	5	2	<i>from ancient days</i>
13957	Mic	5	3	1) Or 
13958	Mic	5	3	<i>with</i>
13959	Mic	5	5	1) Or 
13960	Mic	5	5	<i>princes among men</i>
13961	Mic	5	13	1) Or 
13962	Mic	5	13	<i>obelisks</i>
13963	Mic	5	14	1) Or 
13964	Mic	5	14	<i>enemies</i>
13965	Mic	5	15	1) Or 
13966	Mic	5	15	<i>such as they have not heard</i>
13967	Mic	6	9	1) According to Sept, Vulg, and Syr 
13968	Mic	6	9	<i>fear</i>
13969	Mic	6	10	1) Heb 
13970	Mic	6	10	<i>ephah</i>
13971	Mic	6	14	1) Or 
13972	Mic	6	14	<i>emptiness</i>
13973	Mic	6	16	1) Or 
13974	Mic	6	16	<i>an astonishment</i>
13975	Mic	7	1	1) Or 
13976	Mic	7	1	<i>nor first-ripe fig which my soul desired</i>
13977	Mic	7	3	1) Or 
13978	Mic	7	3	<i>Both hands</i>
13979	Mic	7	3	 are put forth 
13980	Mic	7	3	<i>for evil to do it etc</i>
13981	Mic	7	4	1) Or 
13982	Mic	7	4	<i>the straightest is</i>
13983	Mic	7	4	 as it were taken 
13984	Mic	7	4	<i>from etc</i>
13985	Mic	7	5	1) Or 
13986	Mic	7	5	<i>confidant</i>
13987	Mic	7	7	1) Or 
13988	Mic	7	7	<i>in Jehovah will I keep watch</i>
13989	Mic	7	11	1) Or 
13990	Mic	7	11	<i>In the day that thy walls are to be built</i>
13991	Mic	7	11	 2) Or 
13992	Mic	7	11	<i>boundary</i>
13993	Mic	7	12	1) Heb 
13994	Mic	7	12	<i>Mazor</i>
13995	Mic	7	14	1) Or 
13996	Mic	7	14	<i>Rule</i>
13997	Mic	7	19	1) Or 
13998	Mic	7	19	<i>subdue our iniquities</i>
13999	Mic	7	20	1) Or 
14000	Mic	7	20	<i>Thou wilt show</i>
14001	Mic	7	20	 thy 
14002	Mic	7	20	<i>faithfulness etc</i>
14003	Mic	7	20	 2) Heb 
14004	Mic	7	20	<i>give</i>
14005	Nah	1	1	1) Or 
14006	Nah	1	1	<i>oracle concerning</i>
14007	Nah	1	10	1) Or 
14008	Nah	1	10	<i>as stubble fully dry</i>
14009	Nah	1	11	1) Or 
14010	Nah	1	11	<i>a wicked counsellor</i>
14011	Nah	1	11	 2) Or 
14012	Nah	1	11	<i>worthlessness</i>
14013	Nah	1	11	 ; Heb 
14014	Nah	1	11	<i>Belial</i>
14015	Nah	1	12	1) Or 
14016	Nah	1	12	<i>So will I afflict thee, that I shall afflict etc</i>
14017	Nah	1	15	1) Or, the man of 
14018	Nah	1	15	<i>worthlessness</i>
14019	Nah	1	15	 ; Heb 
14020	Nah	1	15	<i>Belial</i>
14021	Nah	2	3	1) Heb 
14022	Nah	2	3	<i>are with fire of steel</i>
14023	Nah	2	3	 2) Heb 
14024	Nah	2	3	<i>cypress-trees</i>
14025	Nah	2	7	1) Or 
14026	Nah	2	7	<i>Huzzab is uncovered etc</i>
14027	Nah	2	7	 2) Or 
14028	Nah	2	7	<i>lead</i>
14029	Nah	2	7	 her 3) Heb 
14030	Nah	2	7	<i>hearts</i>
14031	Nah	2	8	1) Or 
14032	Nah	2	8	<i>from the days</i>
14033	Nah	2	8	 that 
14034	Nah	2	8	<i>she</i>
14035	Nah	2	8	 hath been 2) Or 
14036	Nah	2	8	<i>causeth</i>
14037	Nah	2	8	 them 
14038	Nah	2	8	<i>to turn</i>
14039	Nah	2	9	1) Or 
14040	Nah	2	9	<i>wealth</i>
14041	Nah	3	3	1) Or 
14042	Nah	3	3	<i>charging</i>
14043	Nah	3	5	1) Or 
14044	Nah	3	5	<i>before</i>
14045	Nah	3	8	1) Or 
14046	Nah	3	8	<i>canals</i>
14047	Nah	3	8	 ; See Ex 7:19. 2) That is, the Nile
14048	Nah	3	11	1) Or 
14049	Nah	3	11	<i>a defence against</i>
14050	Nah	3	14	1) Or 
14051	Nah	3	14	<i>lay hold of the brick-mould</i>
14052	Nah	3	16	1) Or 
14053	Nah	3	16	<i>spreadeth himself</i>
14054	Nah	3	17	1) Or 
14055	Nah	3	17	<i>scribes</i>
14056	Nah	3	17	 2) Or 
14057	Nah	3	17	<i>walls</i>
14058	Hab	1	1	1) Or 
14059	Hab	1	1	<i>oracle</i>
14060	Hab	1	3	1) Or 
14061	Hab	1	3	<i>cause</i>
14062	Hab	1	3	 me 
14063	Hab	1	3	<i>to look</i>
14064	Hab	1	4	1) Or 
14065	Hab	1	4	<i>goeth not forth unto victory</i>
14066	Hab	1	5	1) Or 
14067	Hab	1	5	<i>one worketh</i>
14068	Hab	1	7	1) Heb 
14069	Hab	1	7	<i>He</i>
14070	Hab	1	7	 ; and so in verses 8, 9
14071	Hab	1	8	1) Or 
14072	Hab	1	8	<i>spread themselves</i>
14073	Hab	1	9	1) Heb 
14074	Hab	1	9	<i>the eagerness</i>
14075	Hab	1	9	 (or 
14076	Hab	1	9	<i>assembling</i>
14077	Hab	1	9	 ) 
14078	Hab	1	9	<i>of their faces is etc</i>
14079	Hab	1	9	 2) Or 
14080	Hab	1	9	<i>towards the east</i>
14081	Hab	1	10	1) Or 
14082	Hab	1	10	<i>And they scoff etc</i>
14083	Hab	1	11	1) Or 
14084	Hab	1	11	<i>Then shall the wind sweep by, and he shall pass away</i>
14085	Hab	1	11	 2) Or 
14086	Hab	1	11	<i>transgress</i>
14087	Hab	1	16	1) Heb 
14088	Hab	1	16	<i>fat</i>
14089	Hab	2	1	1) Or 
14090	Hab	2	1	<i>fortress</i>
14091	Hab	2	1	 2) Or 
14092	Hab	2	1	<i>by</i>
14093	Hab	2	3	1) Heb 
14094	Hab	2	3	<i>panteth</i>
14095	Hab	2	4	1) Or 
14096	Hab	2	4	<i>straight</i>
14097	Hab	2	4	 2) Or 
14098	Hab	2	4	<i>in his faithfulness</i>
14099	Hab	2	5	1) Or 
14100	Hab	2	5	<i>And also because his wine…he is a haughty man</i>
14101	Hab	2	5	 2) Or 
14102	Hab	2	5	<i>he shall not abide</i>
14103	Hab	2	6	1) Or 
14104	Hab	2	6	<i>riddle</i>
14105	Hab	2	7	1) Or 
14106	Hab	2	7	<i>exact usury of thee</i>
14107	Hab	2	7	 2) Or 
14108	Hab	2	7	<i>toss thee to and fro</i>
14109	Hab	2	15	1) Or 
14110	Hab	2	15	<i>pourest</i>
14111	Hab	2	15	 2) Or 
14112	Hab	2	15	<i>fury</i>
14113	Hab	2	16	1) Or 
14114	Hab	2	16	<i>let thy foreskin be uncovered</i>
14115	Hab	2	20	1) Heb 
14116	Hab	2	20	<i>be silent before him, all the earth</i>
14117	Hab	3	2	1) Or 
14118	Hab	3	2	<i>thy fame</i>
14119	Hab	3	2	 2) Or 
14120	Hab	3	2	<i>was</i>
14121	Hab	3	3	1) Or 
14122	Hab	3	3	<i>cometh</i>
14123	Hab	3	3	 (and similarly to the end of verse 15)
14124	Hab	3	4	1) Heb 
14125	Hab	3	4	<i>horns</i>
14126	Hab	3	4	 2) Or 
14127	Hab	3	4	<i>at his side</i>
14128	Hab	3	5	1) Or 
14129	Hab	3	5	<i>burning coals</i>
14130	Hab	3	6	1) Or 
14131	Hab	3	6	<i>shook</i>
14132	Hab	3	6	 2) Or 
14133	Hab	3	6	<i>His ways are everlasting</i>
14134	Hab	3	9	1) Or 
14135	Hab	3	9	<i>Sworn were the chastisements</i>
14136	Hab	3	9	 (Heb 
14137	Hab	3	9	<i>rods</i>
14138	Hab	3	9	 ) 
14139	Hab	3	9	<i>of</i>
14140	Hab	3	9	 thy 
14141	Hab	3	9	<i>word</i>
14142	Hab	3	10	1) Or 
14143	Hab	3	10	<i>were in pain</i>
14144	Hab	3	13	1) Or 
14145	Hab	3	13	<i>art come</i>
14146	Hab	3	13	 2) Or 
14147	Hab	3	13	<i>For salvation</i>
14148	Hab	3	13	 (or 
14149	Hab	3	13	<i>victory</i>
14150	Hab	3	13	 ) 
14151	Hab	3	13	<i>with thine anointed</i>
14152	Hab	3	13	 3) Or 
14153	Hab	3	13	<i>Thou didst smite off the head from the house etc</i>
14154	Hab	3	13	 4) Or 
14155	Hab	3	13	<i>hast wounded</i>
14156	Hab	3	14	1) Or 
14157	Hab	3	14	<i>hast pierced</i>
14158	Hab	3	14	 2) Or 
14159	Hab	3	14	<i>hordes</i>
14160	Hab	3	14	 ; Or 
14161	Hab	3	14	<i>villages</i>
14162	Hab	3	15	1) Or 
14163	Hab	3	15	<i>hast trodden</i>
14164	Hab	3	15	 2) Or 
14165	Hab	3	15	<i>surge</i>
14166	Hab	3	16	1) Or 
14167	Hab	3	16	<i>When there shall come up against the people he that invadeth them</i>
14168	Zeph	1	5	1) Or 
14169	Zeph	1	5	<i>their king</i>
14170	Zeph	1	9	1) Heb 
14171	Zeph	1	9	<i>visit upon</i>
14172	Zeph	1	10	1) Heb 
14173	Zeph	1	10	<i>Mishneh</i>
14174	Zeph	1	11	1) Or 
14175	Zeph	1	11	<i>The mortar</i>
14176	Zeph	1	11	 2) Or 
14177	Zeph	1	11	<i>the merchant people</i>
14178	Zeph	1	12	1) Heb 
14179	Zeph	1	12	<i>visit upon</i>
14180	Zeph	1	12	 2) Or 
14181	Zeph	1	12	<i>thickened</i>
14182	Zeph	1	16	1) Or 
14183	Zeph	1	16	<i>corner towers</i>
14184	Zeph	1	18	1) Or 
14185	Zeph	1	18	<i>speedy</i>
14186	Zeph	2	1	1) Or 
14187	Zeph	2	1	<i>longing</i>
14188	Zeph	2	2	1) Or (
14189	Zeph	2	2	<i> the day passeth as the chaff</i>
14190	Zeph	2	2	 )
14191	Zeph	2	5	1) Or 
14192	Zeph	2	5	<i>the region of the sea</i>
14193	Zeph	2	6	1) Or 
14194	Zeph	2	6	<i>caves</i>
14195	Zeph	2	7	1) Or 
14196	Zeph	2	7	<i>return to</i>
14197	Zeph	2	9	1) Or 
14198	Zeph	2	9	<i>wild vetches</i>
14199	Zeph	2	11	1) Or 
14200	Zeph	2	11	<i>coast-lands</i>
14201	Zeph	2	14	1) Or 
14202	Zeph	2	14	<i>all beasts of</i>
14203	Zeph	2	14	 every 
14204	Zeph	2	14	<i>kind</i>
14205	Zeph	2	14	 2) Or 
14206	Zeph	2	14	<i>drought</i>
14207	Zeph	3	2	1) Or 
14208	Zeph	3	2	<i>instruction</i>
14209	Zeph	3	3	1) Or 
14210	Zeph	3	3	<i>gnaw not the bones on the morrow</i>
14211	Zeph	3	5	1) Heb 
14212	Zeph	3	5	<i>morning by morning</i>
14213	Zeph	3	6	1) Or 
14214	Zeph	3	6	<i>corner towers</i>
14215	Zeph	3	7	1) Or 
14216	Zeph	3	7	<i>instruction</i>
14217	Zeph	3	7	 2) Or 
14218	Zeph	3	7	<i>howsoever I have punished her</i>
14219	Zeph	3	8	1) Heb 
14220	Zeph	3	8	<i>judgment</i>
14221	Zeph	3	9	1) Heb 
14222	Zeph	3	9	<i>lip</i>
14223	Zeph	3	9	 2) Heb 
14224	Zeph	3	9	<i>shoulder</i>
14225	Zeph	3	10	1) Or 
14226	Zeph	3	10	<i>shall they bring my suppliants, even the daughter of my dispersed, for an offering unto me</i>
14227	Zeph	3	11	1) Or 
14228	Zeph	3	11	<i>them that exult in thy majesty</i>
14229	Zeph	3	15	1) Another reading is 
14230	Zeph	3	15	<i>see</i>
14231	Zeph	3	16	1) Or, and to 
14232	Zeph	3	16	<i>Zion</i>
14233	Zeph	3	17	1) Heb 
14234	Zeph	3	17	<i>be silent</i>
14235	Zeph	3	18	1) Or 
14236	Zeph	3	18	<i>They have been sorrowful for the solemn assembly which I took away from thee,</i>
14237	Zeph	3	18	 for 
14238	Zeph	3	18	<i>the lifting up of reproach against her.</i>
14239	Zeph	3	18	 2) According to another reading 
14240	Zeph	3	18	<i>thee</i>
14241	Zeph	3	20	1) Or 
14242	Zeph	3	20	<i>return to</i>
14243	Hag	1	2	1) Or as otherwise read 
14244	Hag	1	2	<i>The time is not come for Jehovah’s house etc</i>
14245	Hag	1	5	1) Heb 
14246	Hag	1	5	<i>Set your heart on your ways</i>
14247	Hag	1	8	1) Or 
14248	Hag	1	8	<i>hill-country</i>
14249	Hag	1	9	1) Or 
14250	Hag	1	9	<i>blow it away</i>
14251	Hag	1	10	1) Or 
14252	Hag	1	10	<i>over your</i>
14253	Hag	2	5	1) Or, Remember 
14254	Hag	2	5	<i>the word etc</i>
14255	Hag	2	5	 2) Or 
14256	Hag	2	5	<i>abideth</i>
14257	Hag	2	7	1) Or 
14258	Hag	2	7	<i>the things desired</i>
14259	Hag	2	7	 (Heb 
14260	Hag	2	7	<i>desire</i>
14261	Hag	2	7	 ) 
14262	Hag	2	7	<i>of all nations shall come</i>
14263	Hag	2	16	1) Heb 
14264	Hag	2	16	<i>since those</i>
14265	Hag	2	16	 days 
14266	Hag	2	16	<i>were</i>
14267	Zech	1	8	1) Or 
14268	Zech	1	8	<i>shady place</i>
14269	Zech	1	15	1) Or 
14270	Zech	1	15	<i>helped for evil</i>
14271	Zech	1	17	1) Or 
14272	Zech	1	17	<i>through prosperity shall yet be spread abroad</i>
14273	Zech	2	4	1) Or 
14274	Zech	2	4	<i>dwell</i>
14275	Zech	2	8	1) Or 
14276	Zech	2	8	<i>After the glory, he hath etc</i>
14277	Zech	3	1	1) That is 
14278	Zech	3	1	<i>the Adversary</i>
14279	Zech	3	5	1) Or 
14280	Zech	3	5	<i>turban</i>
14281	Zech	3	7	1) Or 
14282	Zech	3	7	<i>places to walk</i>
14283	Zech	3	8	1) Or 
14284	Zech	3	8	<i>wonder</i>
14285	Zech	3	8	 2) Or 
14286	Zech	3	8	<i>Shoot</i>
14287	Zech	3	8	 ; Or 
14288	Zech	3	8	<i>Sprout</i>
14289	Zech	4	2	1) The Sept and Vulg have 
14290	Zech	4	2	<i>and seven pipes to the lamps</i>
14291	Zech	4	6	1) Or 
14292	Zech	4	6	<i>an army</i>
14293	Zech	4	12	1) Or 
14294	Zech	4	12	<i>which by means of the two golden sprouts empty</i>
14295	Zech	4	12	 2) Heb 
14296	Zech	4	12	<i>the gold</i>
14297	Zech	5	3	1) Or 
14298	Zech	5	3	<i>from hence</i>
14299	Zech	5	6	1) Heb 
14300	Zech	5	6	<i>eye</i>
14301	Zech	5	7	1) Or 
14302	Zech	5	7	<i>round piece</i>
14303	Zech	5	11	1) Or 
14304	Zech	5	11	<i>established</i>
14305	Zech	5	11	 2) Or 
14306	Zech	5	11	<i>upon her own base</i>
14307	Zech	6	1	1) Or 
14308	Zech	6	1	<i>the two</i>
14309	Zech	6	5	1) Or 
14310	Zech	6	5	<i>spirits</i>
14311	Zech	6	5	 2) Or 
14312	Zech	6	5	<i>presenting themselves</i>
14313	Zech	6	7	1) The Syr and Aquila have 
14314	Zech	6	7	<i>red</i>
14315	Zech	6	11	1) Or 
14316	Zech	6	11	<i>a crown, and set it</i>
14317	Zech	6	12	1) Or 
14318	Zech	6	12	<i>whose name is the Bud; and it</i>
14319	Zech	6	12	 (or 
14320	Zech	6	12	<i>they</i>
14321	Zech	6	12	 ) 
14322	Zech	6	12	<i>shall bud forth under him</i>
14323	Zech	6	12	 2) Or 
14324	Zech	6	12	<i>Shoot</i>
14325	Zech	6	12	 ; Or 
14326	Zech	6	12	<i>Sprout</i>
14327	Zech	6	12	 3) Or 
14328	Zech	6	12	<i>shoot</i>
14329	Zech	6	13	1) Or 
14330	Zech	6	13	<i>there shall be</i>
14331	Zech	6	14	1) Or 
14332	Zech	6	14	<i>crown</i>
14333	Zech	6	14	 2) Or 
14334	Zech	6	14	<i>for the kindness of the son etc</i>
14335	Zech	7	2	1) Or 
14336	Zech	7	2	<i>Now</i>
14337	Zech	7	2	 they of 
14338	Zech	7	2	<i>Beth-el, even Sharezer…had sent</i>
14339	Zech	7	6	1) Or 
14340	Zech	7	6	<i>are not ye they that eat etc</i>
14341	Zech	7	11	1) Or 
14342	Zech	7	11	<i>turned a stubborn shoulder</i>
14343	Zech	7	11	 2) Or 
14344	Zech	7	11	<i>made their ears heavy</i>
14345	Zech	7	11	 ; See Isa 6:10
14346	Zech	7	14	1) Heb 
14347	Zech	7	14	<i>land of desire</i>
14348	Zech	8	4	1) Or 
14349	Zech	8	4	<i>sit</i>
14350	Zech	8	4	 2) Heb 
14351	Zech	8	4	<i>for multitude of days</i>
14352	Zech	8	16	1) Heb 
14353	Zech	8	16	<i>judge truth and the judgment of peace</i>
14354	Zech	8	20	1) Or 
14355	Zech	8	20	<i>great</i>
14356	Zech	9	1	1) Or 
14357	Zech	9	1	<i>oracle</i>
14358	Zech	9	1	 2) Or 
14359	Zech	9	1	<i>Jehovah hath an eye upon men and upon all the tribe of Israel</i>
14360	Zech	9	2	1) Or 
14361	Zech	9	2	<i>though</i>
14362	Zech	9	4	1) Or 
14363	Zech	9	4	<i>the sea which is her rampart</i>
14364	Zech	9	4	 ; Or 
14365	Zech	9	4	<i>her rampart into the sea</i>
14366	Zech	9	6	1) Or 
14367	Zech	9	6	<i>a bastard race</i>
14368	Zech	9	6	 2) Or 
14369	Zech	9	6	<i>sit</i>
14370	Zech	9	6	 as king
14371	Zech	9	8	1) Or as otherwise read 
14372	Zech	9	8	<i>as a garrison</i>
14373	Zech	9	8	 2) Or 
14374	Zech	9	8	<i>exactor</i>
14375	Zech	9	9	1) Heb 
14376	Zech	9	9	<i>saved</i>
14377	Zech	9	9	 2) Or 
14378	Zech	9	9	<i>victory</i>
14379	Zech	9	12	1) Or 
14380	Zech	9	12	<i>Return</i>
14381	Zech	9	13	1) Heb 
14382	Zech	9	13	<i>Javan</i>
14383	Zech	9	16	1) Or 
14384	Zech	9	16	<i>glittering upon etc</i>
14385	Zech	9	17	1) Or 
14386	Zech	9	17	<i>their</i>
14387	Zech	9	17	 2) Or 
14388	Zech	9	17	<i>prosperity</i>
14389	Zech	10	2	1) Or 
14390	Zech	10	2	<i>the dreamers speak falsely</i>
14391	Zech	10	4	1) Or 
14392	Zech	10	4	<i>exactor</i>
14393	Zech	10	6	1) Or 
14394	Zech	10	6	<i>cause them to dwell</i>
14395	Zech	10	9	1) Or 
14396	Zech	10	9	<i>And though I sow them…they shall remember etc</i>
14397	Zech	10	11	1) Or 
14398	Zech	10	11	<i>the sea of waves</i>
14399	Zech	11	2	1) Or 
14400	Zech	11	2	<i>glorious</i>
14401	Zech	11	2	  2) Or 
14402	Zech	11	2	<i>fortified</i>
14403	Zech	11	5	1) Or 
14404	Zech	11	5	<i>buyers</i>
14405	Zech	11	5	 2) Or 
14406	Zech	11	5	<i>their shepherd pitieth</i>
14407	Zech	11	7	1) Or 
14408	Zech	11	7	<i>the most miserable of sheep</i>
14409	Zech	11	7	 2) Or 
14410	Zech	11	7	<i>Graciousness</i>
14411	Zech	11	7	 3) Or 
14412	Zech	11	7	<i>Binders</i>
14413	Zech	11	7	 ; Or 
14414	Zech	11	7	<i>Union</i>
14415	Zech	11	9	1) Or 
14416	Zech	11	9	<i>that which is lost, let it be lost</i>
14417	Zech	11	11	1) Or 
14418	Zech	11	11	<i>the poor of the flock…knew of a truth</i>
14419	Zech	11	11	 2) Or 
14420	Zech	11	11	<i>the most miserable of sheep</i>
14421	Zech	11	16	1) Or 
14422	Zech	11	16	<i>miss</i>
14423	Zech	11	16	 2) Or 
14424	Zech	11	16	<i>lost</i>
14425	Zech	11	16	 3) Or 
14426	Zech	11	16	<i>the young</i>
14427	Zech	11	16	 4) Heb 
14428	Zech	11	16	<i>standeth</i>
14429	Zech	12	1	1) Or 
14430	Zech	12	1	<i>oracle</i>
14431	Zech	12	2	1) Or 
14432	Zech	12	2	<i>against</i>
14433	Zech	12	2	  2) Or 
14434	Zech	12	2	<i>shall it fall</i>
14435	Zech	12	2	 to be
14436	Zech	12	6	1) Heb 
14437	Zech	12	6	<i>her</i>
14438	Zech	12	8	1) Or 
14439	Zech	12	8	<i>that stumbleth</i>
14440	Zech	12	10	1) According to some MSS 
14441	Zech	12	10	<i>him</i>
14442	Zech	13	6	1) Heb 
14443	Zech	13	6	<i>hands</i>
14444	Zech	13	6	 2) Or 
14445	Zech	13	6	<i>lovers</i>
14446	Zech	14	5	1) Or as otherwise read 
14447	Zech	14	5	<i>the valley of my mountains shall be stopped</i>
14448	Zech	14	5	 2) Or 
14449	Zech	14	5	<i>to</i>
14450	Zech	14	5	 3) Or 
14451	Zech	14	5	<i>the</i>
14452	Zech	14	6	1) Or 
14453	Zech	14	6	<i>the light shall not be bright nor dark</i>
14454	Zech	14	11	1) Or 
14455	Zech	14	11	<i>ban</i>
14456	Zech	14	11	 ; Or 
14457	Zech	14	11	<i>devoting to destruction</i>
14458	Zech	14	13	1) Or 
14459	Zech	14	13	<i>discomfiture</i>
14460	Zech	14	19	1) Or 
14461	Zech	14	19	<i>sin</i>
14462	Mal	1	1	1) Or 
14463	Mal	1	1	<i>oracle</i>
14464	Mal	1	1	 2) Or 
14465	Mal	1	1	<i>my messenger</i>
14466	Mal	1	2	1) Or 
14467	Mal	1	2	<i>Is not Esau…yet I have loved etc</i>
14468	Mal	1	4	1) Or 
14469	Mal	1	4	<i>Though Edom say</i>
14470	Mal	1	4	 2) Or as otherwise read 
14471	Mal	1	4	<i>impoverished</i>
14472	Mal	1	5	1) Or 
14473	Mal	1	5	<i>is great</i>
14474	Mal	1	5	 2) Or 
14475	Mal	1	5	<i>over</i>
14476	Mal	1	9	1) Heb 
14477	Mal	1	9	<i>from your hand</i>
14478	Mal	1	9	 2) Or 
14479	Mal	1	9	<i>accept any because of you</i>
14480	Mal	1	11	1) Or 
14481	Mal	1	11	<i>is</i>
14482	Mal	1	11	 2) Or 
14483	Mal	1	11	<i>incense and a pure oblation are offered</i>
14484	Mal	2	3	1) Or as otherwise read 
14485	Mal	2	3	<i>your arm</i>
14486	Mal	2	3	 2) Or 
14487	Mal	2	3	<i>unto</i>
14488	Mal	2	11	1) Or 
14489	Mal	2	11	<i>sanctuary</i>
14490	Mal	2	13	1) Or 
14491	Mal	2	13	<i>a second time</i>
14492	Mal	2	15	1) Or 
14493	Mal	2	15	<i>And not one hath done so who had a residue of the spirit. Or what? is there one that seeketh a godly seed?</i>
14494	Mal	2	16	1) Heb 
14495	Mal	2	16	<i>he hateth</i>
14496	Mal	3	1	1) Or 
14497	Mal	3	1	<i>even</i>
14498	Mal	3	1	 2) Or 
14499	Mal	3	1	<i>angel</i>
14500	Mal	3	8	1) Heb 
14501	Mal	3	8	<i>heave-offerings</i>
14502	Mal	3	14	1) Or 
14503	Mal	3	14	<i>in mourning apparel</i>
14504	Mal	3	17	1) Or 
14505	Mal	3	17	<i>do</i>
14506	Mal	3	17	  this
14507	Mal	4	2	1) Or 
14508	Mal	4	2	<i>beams</i>
14509	Mal	4	3	1) Or 
14510	Mal	4	3	<i>do</i>
14511	Mal	4	3	 this
14512	Mal	4	6	1) Or 
14513	Mal	4	6	<i>with</i>
14514	Mal	4	6	 2) Or 
14515	Mal	4	6	<i>land</i>
14516	Mal	4	6	 3) Or 
14517	Mal	4	6	<i>ban</i>
14518	Mal	4	6	 ; Or 
14519	Mal	4	6	<i>devoting to destruction</i>
14520	Matt	1	1	1) Or 
14521	Matt	1	1	<i>The genealogy of Jesus Christ</i>
14522	Matt	1	1	 2) Or 
14523	Matt	1	1	<i>birth</i>
14524	Matt	1	1	 ; as in verse 18
14525	Matt	1	3	1) Gr 
14526	Matt	1	3	<i>Aram</i>
14527	Matt	1	4	1) Gr 
14528	Matt	1	4	<i>Aram</i>
14529	Matt	1	7	1) Gr 
14530	Matt	1	7	<i>Asaph</i>
14531	Matt	1	8	1) Gr 
14532	Matt	1	8	<i>Asaph</i>
14533	Matt	1	10	1) Gr 
14534	Matt	1	10	<i>Amos</i>
14535	Matt	1	11	1) Or 
14536	Matt	1	11	<i>removal to Babylon</i>
14537	Matt	1	12	1) Or 
14538	Matt	1	12	<i>removal to Babylon</i>
14539	Matt	1	12	 2) Gr 
14540	Matt	1	12	<i>Salathiel</i>
14541	Matt	1	17	1) Or 
14542	Matt	1	17	<i>removal to Babylon</i>
14543	Matt	1	18	1) Or 
14544	Matt	1	18	<i>generation</i>
14545	Matt	1	18	 ; as in verse 1. 2) Some ancient authorities read 
14546	Matt	1	18	<i>of the Christ</i>
14547	Matt	1	20	1) Gr 
14548	Matt	1	20	<i>begotten</i>
14549	Matt	1	23	1) Isa 7:14. 2) Gr 
14550	Matt	1	23	<i>Emmanuel</i>
14551	Matt	2	1	1) Gr 
14552	Matt	2	1	<i>Magi</i>
14553	Matt	2	1	 ; Compare Es 1:13; Da 2:12; Ac 13:6, 8
14554	Matt	2	2	1) Or 
14555	Matt	2	2	<i>Where is the King of the Jews that is born?</i>
14556	Matt	2	2	 2) The Greek word denotes an act of reverence whether paid to a creature (see Mt 4:9; 18:26), or to the Creator (see Mt 4:10)
14557	Matt	2	6	1) Mic 5:2
14558	Matt	2	7	1) Gr 
14559	Matt	2	7	<i>Magi</i>
14560	Matt	2	7	 ; Compare Es 1:13; Da 2:12; Ac 13:6, 8. 2) Or 
14561	Matt	2	7	<i>the time of the star that appeared</i>
14562	Matt	2	8	1) The Greek word denotes an act of reverence whether paid to a creature (see Mt 4:9; 18:26), or to the Creator (see Mt 4:10)
14563	Matt	2	15	1) Ho 11:1
14564	Matt	2	16	1) Gr 
14565	Matt	2	16	<i>Magi</i>
14566	Matt	2	16	 ; Compare Es 1:13; Da 2:12; Ac 13:6, 8
14567	Matt	2	18	1) Jer 31:15
14568	Matt	2	23	1) Isa 11:1 in the Hebrew?
14569	Matt	3	3	1) Isa 40:3
14570	Matt	3	7	1) Or 
14571	Matt	3	7	<i>for baptism</i>
14572	Matt	3	8	1) Or 
14573	Matt	3	8	<i>your repentance</i>
14574	Matt	3	11	1) Or 
14575	Matt	3	11	<i>with</i>
14576	Matt	3	11	 2) Gr 
14577	Matt	3	11	<i>sufficient</i>
14578	Matt	3	15	1) Or 
14579	Matt	3	15	<i>me</i>
14580	Matt	3	16	1) Some ancient authorities omit 
14581	Matt	3	16	<i>unto him</i>
14582	Matt	3	17	1) Or 
14583	Matt	3	17	<i>This is my Son; my beloved in whom I am well pleased.</i>
14584	Matt	3	17	 See Mt 12:18
14585	Matt	4	3	1) Gr 
14586	Matt	4	3	<i>loaves</i>
14587	Matt	4	4	1) De 8:3
14588	Matt	4	5	1) Gr 
14589	Matt	4	5	<i>wing</i>
14590	Matt	4	6	1) Ps 91:11, 12
14591	Matt	4	7	1) De 6:16
14592	Matt	4	9	1) See marginal note on Mt 2:2
14593	Matt	4	10	1) De 6:13
14594	Matt	4	15	1) Isa 9:1, 2. 2) Gr 
14595	Matt	4	15	<i>The way of the sea</i>
14596	Matt	4	15	 3) Gr 
14597	Matt	4	15	<i>nations</i>
14598	Matt	4	15	 ; and so elsewhere
14599	Matt	4	21	1) Or 
14600	Matt	4	21	<i>Jacob</i>
14601	Matt	4	23	1) Some ancient authorities read 
14602	Matt	4	23	<i>he</i>
14603	Matt	4	23	 2) Or 
14604	Matt	4	23	<i>good tidings</i>
14605	Matt	4	23	 ; and so elsewhere
14606	Matt	4	24	1) Or 
14607	Matt	4	24	<i>demoniacs</i>
14608	Matt	5	4	1) Some ancient authorities transpose verses 4 and 5
14609	Matt	5	21	1) Ex 20:13; De 5:17
14610	Matt	5	22	1) Many ancient authorities insert 
14611	Matt	5	22	<i>without cause</i>
14612	Matt	5	22	 2) An expression of contempt 3) Or 
14613	Matt	5	22	<i>Moreh</i>
14614	Matt	5	22	 , a Hebrew expression of condemnation 4) Gr 
14615	Matt	5	22	<i>unto</i>
14616	Matt	5	22	 or 
14617	Matt	5	22	<i>into</i>
14618	Matt	5	22	 5) Gr 
14619	Matt	5	22	<i>Gehenna of fire</i>
14620	Matt	5	25	1) Some ancient authorities omit 
14621	Matt	5	25	<i>deliver thee</i>
14622	Matt	5	27	1) Ex 20:14; De 5:18
14623	Matt	5	29	1) Gr 
14624	Matt	5	29	<i>Gehenna</i>
14625	Matt	5	30	1) Gr 
14626	Matt	5	30	<i>Gehenna</i>
14627	Matt	5	31	1) De 24:1, 3
14628	Matt	5	33	1) Le 19:12; Nu 30:2; De 23:21
14629	Matt	5	35	1) Or 
14630	Matt	5	35	<i>toward</i>
14631	Matt	5	37	1) Some ancient authorities read 
14632	Matt	5	37	<i>But your speech shall be</i>
14633	Matt	5	37	 2) Or 
14634	Matt	5	37	<i>evil</i>
14635	Matt	5	37	 as in Mt 5:39; 6:13
14636	Matt	5	38	1) Ex 21:24; Le 24:20; De 19:21
14637	Matt	5	39	1) Or 
14638	Matt	5	39	<i>evil</i>
14639	Matt	5	41	1) Gr 
14640	Matt	5	41	<i>impress</i>
14641	Matt	5	43	1) Le 19:18
14642	Matt	5	46	1) That is 
14643	Matt	5	46	<i>collectors or renters of Roman taxes</i>
14644	Matt	6	8	1) Some ancient authorities read 
14645	Matt	6	8	<i>God your Father</i>
14646	Matt	6	11	1) Gr 
14647	Matt	6	11	<i>our bread for the coming day</i>
14648	Matt	6	11	 ; Or 
14649	Matt	6	11	<i>our needful bread</i>
14650	Matt	6	13	1) Or 
14651	Matt	6	13	<i>evil</i>
14652	Matt	6	13	 2) Many authorities, some ancient, but with variations, add 
14653	Matt	6	13	<i>For thine is the kingdom, and the power, and the glory, for ever. Amen.</i>
14654	Matt	6	20	1) Gr 
14655	Matt	6	20	<i>dig through</i>
14656	Matt	6	27	1) Or 
14657	Matt	6	27	<i>his stature</i>
14658	Matt	7	13	1) Some ancient authorities omit 
14659	Matt	7	13	<i>is the gate</i>
14660	Matt	7	14	1) Many ancient authorities read 
14661	Matt	7	14	<i>How narrow is the gate, etc</i>
14662	Matt	7	22	1) Gr 
14663	Matt	7	22	<i>powers</i>
14664	Matt	8	2	1) See marginal note on Mt 2:2
14665	Matt	8	4	1) Le 13:49; 14:2 ff
14666	Matt	8	6	1) Or 
14667	Matt	8	6	<i>boy</i>
14668	Matt	8	8	1) Gr 
14669	Matt	8	8	<i>sufficient</i>
14670	Matt	8	8	 2) Gr 
14671	Matt	8	8	<i>with a word</i>
14672	Matt	8	8	 3) Or 
14673	Matt	8	8	<i>boy</i>
14674	Matt	8	9	1) Some ancient authorities insert 
14675	Matt	8	9	<i>set</i>
14676	Matt	8	9	 as in Lu 7:8. 2) Gr 
14677	Matt	8	9	<i>bondservant</i>
14678	Matt	8	10	1) Many ancient authorities read 
14679	Matt	8	10	<i>With no man in Israel have I found so great faith.</i>
14680	Matt	8	11	1) Gr 
14681	Matt	8	11	<i>recline</i>
14682	Matt	8	13	1) Or 
14683	Matt	8	13	<i>boy</i>
14684	Matt	8	16	1) Or 
14685	Matt	8	16	<i>demoniacs</i>
14686	Matt	8	17	1) Isa 53:4
14687	Matt	8	19	1) Gr 
14688	Matt	8	19	<i>one scribe</i>
14689	Matt	8	20	1) Gr 
14690	Matt	8	20	<i>lodging-places</i>
14691	Matt	8	28	1) Or 
14692	Matt	8	28	<i>demoniacs</i>
14693	Matt	8	33	1) Or 
14694	Matt	8	33	<i>demoniacs</i>
14695	Matt	9	2	1) Gr 
14696	Matt	9	2	<i>Child</i>
14697	Matt	9	4	1) Many ancient authorities read 
14698	Matt	9	4	<i>seeing</i>
14699	Matt	9	10	1) Gr 
14700	Matt	9	10	<i>reclined</i>
14701	Matt	9	10	 ; and so always 2) See marginal note on Mt 5:46
14702	Matt	9	11	1) See marginal note on Mt 5:46
14703	Matt	9	12	1) Gr 
14704	Matt	9	12	<i>strong</i>
14705	Matt	9	13	1) Ho 6:6
14706	Matt	9	14	1) Some ancient authorities omit 
14707	Matt	9	14	<i>oft</i>
14708	Matt	9	15	1) That is 
14709	Matt	9	15	<i>companions of the bridegroom</i>
14710	Matt	9	17	1) That is 
14711	Matt	9	17	<i>skins used as bottles</i>
14712	Matt	9	18	1) Gr 
14713	Matt	9	18	<i>one ruler</i>
14714	Matt	9	18	 ; Compare Mr 5:22. 2) See marginal note on Mt 2:2
14715	Matt	9	21	1) Or 
14716	Matt	9	21	<i>saved</i>
14717	Matt	9	22	1) Or 
14718	Matt	9	22	<i>saved thee</i>
14719	Matt	9	22	  2) Or 
14720	Matt	9	22	<i>saved</i>
14721	Matt	9	26	1) Gr 
14722	Matt	9	26	<i>this fame</i>
14723	Matt	9	30	1) Or 
14724	Matt	9	30	<i>sternly</i>
14725	Matt	9	34	1) Or 
14726	Matt	9	34	<i>In</i>
14727	Matt	9	35	1) See marginal note on Mt 4:23
14728	Matt	10	2	1) Or 
14729	Matt	10	2	<i>Jacob</i>
14730	Matt	10	3	1) See marginal note on Mt 5:46. 2) Or 
14731	Matt	10	3	<i>Jacob</i>
14732	Matt	10	4	1) Or 
14733	Matt	10	4	<i>Zealot</i>
14734	Matt	10	4	 ; See Lu 6:15; Ac 1:13. 2) Or 
14735	Matt	10	4	<i>delivered him up</i>
14736	Matt	10	9	1) Gr 
14737	Matt	10	9	<i>girdles</i>
14738	Matt	10	16	1) Or 
14739	Matt	10	16	<i>simple</i>
14740	Matt	10	21	1) Or 
14741	Matt	10	21	<i>put them to death</i>
14742	Matt	10	24	1) Gr 
14743	Matt	10	24	<i>bondservant</i>
14744	Matt	10	25	1) Gr 
14745	Matt	10	25	<i>bondservant</i>
14746	Matt	10	25	 2) Gr 
14747	Matt	10	25	<i>Beelzebul</i>
14748	Matt	10	28	1) Gr 
14749	Matt	10	28	<i>Gehenna</i>
14750	Matt	10	32	1) Gr 
14751	Matt	10	32	<i>in me</i>
14752	Matt	10	32	 2) Gr 
14753	Matt	10	32	<i>in him</i>
14754	Matt	10	34	1) Gr 
14755	Matt	10	34	<i>cast</i>
14756	Matt	10	39	1) Or 
14757	Matt	10	39	<i>found</i>
14758	Matt	10	39	 2) Or 
14759	Matt	10	39	<i>lost</i>
14760	Matt	11	5	1) Or 
14761	Matt	11	5	<i>the gospel</i>
14762	Matt	11	9	1) Many ancient authorities read 
14763	Matt	11	9	<i>But what went ye out to see? a prophet?</i>
14764	Matt	11	10	1) Mal 3:1
14765	Matt	11	11	1) Gr 
14766	Matt	11	11	<i>lesser</i>
14767	Matt	11	14	1) Or, him
14768	Matt	11	15	1) Some ancient authorities omit 
14769	Matt	11	15	<i>to hear</i>
14770	Matt	11	17	1) Gr 
14771	Matt	11	17	<i>beat the breast</i>
14772	Matt	11	19	1) See marginal note on Mt 5:46. 2) Or 
14773	Matt	11	19	<i>was</i>
14774	Matt	11	19	 3) Many ancient authorities read 
14775	Matt	11	19	<i>children</i>
14776	Matt	11	19	 ; as in Lu 7:35
14777	Matt	11	20	1) Gr 
14778	Matt	11	20	<i>powers</i>
14779	Matt	11	21	1) Gr 
14780	Matt	11	21	<i>powers</i>
14781	Matt	11	23	1) Many ancient authorities read 
14782	Matt	11	23	<i>be brought down</i>
14783	Matt	11	23	 2) Gr 
14784	Matt	11	23	<i>powers</i>
14785	Matt	11	25	1) Or 
14786	Matt	11	25	<i>praise</i>
14787	Matt	11	26	1) Or 
14788	Matt	11	26	<i>that</i>
14789	Matt	12	3	1) 1 Sa 21:6
14790	Matt	12	4	1) Some ancient authorities read 
14791	Matt	12	4	<i>they ate</i>
14792	Matt	12	5	1) Nu 28:9, 10
14793	Matt	12	6	1) Gr 
14794	Matt	12	6	<i>a greater thing</i>
14795	Matt	12	7	1) Ho 6:6
14796	Matt	12	18	1) Isa 42:1 ff 2) See marginal note on Ac 3:13. 3) See marginal note on Mt 4:15
14797	Matt	12	21	1) See marginal note on Mt 4:15
14798	Matt	12	22	1) Or 
14799	Matt	12	22	<i>a demoniac</i>
14800	Matt	12	24	1) Or 
14801	Matt	12	24	<i>in</i>
14802	Matt	12	24	 2) Gr 
14803	Matt	12	24	<i>Beelzebul</i>
14804	Matt	12	27	1) Or 
14805	Matt	12	27	<i>in</i>
14806	Matt	12	27	 2) Gr 
14807	Matt	12	27	<i>Beelzebul</i>
14808	Matt	12	28	1) Or 
14809	Matt	12	28	<i>in</i>
14810	Matt	12	32	1) Or 
14811	Matt	12	32	<i>age</i>
14812	Matt	12	40	1) Gr 
14813	Matt	12	40	<i>sea-monster</i>
14814	Matt	12	41	1) Gr 
14815	Matt	12	41	<i>more than</i>
14816	Matt	12	42	1) Gr 
14817	Matt	12	42	<i>more than</i>
14818	Matt	12	43	1) Or 
14819	Matt	12	43	<i>it</i>
14820	Matt	12	44	1) Or 
14821	Matt	12	44	<i>it</i>
14822	Matt	12	45	1) Or 
14823	Matt	12	45	<i>it</i>
14824	Matt	12	45	 2) Or 
14825	Matt	12	45	<i>itself</i>
14826	Matt	12	47	1) Some ancient authorities omit verse 47
14827	Matt	13	9	1) Some ancient authorities add here, and in verse 43, 
14828	Matt	13	9	<i>to hear</i>
14829	Matt	13	9	 ; as in Mr 4:9; Lu 8:8
14830	Matt	13	14	1) Isa 6:9, 10
14831	Matt	13	22	1) Or 
14832	Matt	13	22	<i>age</i>
14833	Matt	13	25	1) Or 
14834	Matt	13	25	<i>darnel</i>
14835	Matt	13	27	1) Gr 
14836	Matt	13	27	<i>bondservants</i>
14837	Matt	13	28	1) Gr 
14838	Matt	13	28	<i>A man</i>
14839	Matt	13	28	 that is 
14840	Matt	13	28	<i>an enemy</i>
14841	Matt	13	28	  2) Gr 
14842	Matt	13	28	<i>bondservants</i>
14843	Matt	13	33	1) The word in the Greek denotes the Hebrew seah, a measure containing nearly a peck and a half.
14844	Matt	13	35	1) Ps 78:2. 2) Many ancient authorities omit 
14845	Matt	13	35	<i>of the world</i>
14846	Matt	13	39	1) Or 
14847	Matt	13	39	<i>the consummation of the age</i>
14848	Matt	13	40	1) Or 
14849	Matt	13	40	<i>the consummation of the age</i>
14850	Matt	13	43	1) See verse 9
14851	Matt	13	44	1) Or 
14852	Matt	13	44	<i>for joy thereof</i>
14853	Matt	13	47	1) Gr 
14854	Matt	13	47	<i>drag-net</i>
14855	Matt	13	49	1) Or 
14856	Matt	13	49	<i>the consummation of the age</i>
14857	Matt	13	54	1) Gr 
14858	Matt	13	54	<i>powers</i>
14859	Matt	13	55	1) Or 
14860	Matt	13	55	<i>Jacob</i>
14861	Matt	13	57	1) Gr 
14862	Matt	13	57	<i>caused to stumble</i>
14863	Matt	13	58	1) Gr 
14864	Matt	13	58	<i>powers</i>
14865	Matt	14	13	1) Or 
14866	Matt	14	13	<i>by land</i>
14867	Matt	14	19	1) Gr 
14868	Matt	14	19	<i>recline</i>
14869	Matt	14	24	1) Some ancient authorities read 
14870	Matt	14	24	<i>was many furlongs distant from the land</i>
14871	Matt	14	29	1) Some ancient authorities read 
14872	Matt	14	29	<i>and came</i>
14873	Matt	14	30	1) Many ancient authorities add 
14874	Matt	14	30	<i>strong</i>
14875	Matt	14	33	1) See marginal note on Mt 2:2
14876	Matt	15	4	1) Ex 20:12; De 5:16. 2) Ex 21:17; Le 20:9. 3) Or 
14877	Matt	15	4	<i>surely die</i>
14878	Matt	15	6	1) Some ancient authorities add 
14879	Matt	15	6	<i>or his mother</i>
14880	Matt	15	6	 2) Some ancient authorities read 
14881	Matt	15	6	<i>law</i>
14882	Matt	15	8	1) Isa 29:13
14883	Matt	15	12	1) Gr 
14884	Matt	15	12	<i>caused to stumble</i>
14885	Matt	15	13	1) Gr 
14886	Matt	15	13	<i>planting</i>
14887	Matt	15	25	1) See marginal note on Mt 2:2
14888	Matt	15	26	1) Or 
14889	Matt	15	26	<i>loaf</i>
15114	Matt	24	26	<i>them</i>
14890	Matt	16	2	1) The following words, to the end of verse 3, are omitted by some of the most ancient and other important authorities.
14891	Matt	16	5	1) Gr 
14892	Matt	16	5	<i>loaves</i>
14893	Matt	16	7	1) Or, It is 
14894	Matt	16	7	<i>because we took no bread.</i>
14895	Matt	16	7	 2) Gr 
14896	Matt	16	7	<i>loaves</i>
14897	Matt	16	8	1) Gr 
14898	Matt	16	8	<i>loaves</i>
14899	Matt	16	9	1) 
14900	Matt	16	9	<i>Basket</i>
14901	Matt	16	9	 in verses 9 and 10 represents different Greek words.
14902	Matt	16	10	1) 
14903	Matt	16	10	<i>Basket</i>
14904	Matt	16	10	 in verses 9 and 10 represents different Greek words.
14905	Matt	16	11	1) Gr 
14906	Matt	16	11	<i>loaves</i>
14907	Matt	16	12	1) Gr 
14908	Matt	16	12	<i>loaves</i>
14909	Matt	16	13	1) Many ancient authorities read 
14910	Matt	16	13	<i>that I the Son of man am</i>
14911	Matt	16	13	 ; See Mr 8:27; Lu 9:18
14912	Matt	16	18	1) Gr 
14913	Matt	16	18	<i>Petros</i>
14914	Matt	16	18	 2) Gr 
14915	Matt	16	18	<i>petra</i>
14916	Matt	16	21	1) Some ancient authorities read 
14917	Matt	16	21	<i>Jesus Christ</i>
14918	Matt	16	22	1) Or, God 
14919	Matt	16	22	<i>have mercy on thee</i>
14920	Matt	16	27	1) Gr 
14921	Matt	16	27	<i>doing</i>
14922	Matt	17	1	1) Or 
14923	Matt	17	1	<i>Jacob</i>
14924	Matt	17	4	1) Or 
14925	Matt	17	4	<i>booths</i>
14926	Matt	17	21	Many authorities, some ancient, insert verse 21 
14927	Matt	17	21	<i>But this kind goeth not out save by prayer and fasting.</i>
14928	Matt	17	21	 See Mr 9:29
14929	Matt	17	22	1) Some ancient authorities read 
14930	Matt	17	22	<i>were gathering themselves together</i>
14931	Matt	17	22	 2) See Mt 10:4
14932	Matt	17	24	1) Gr 
14933	Matt	17	24	<i>didrachma</i>
14934	Matt	17	24	 ; Compare marginal note on Lu 15:8
14935	Matt	17	27	1) Gr 
14936	Matt	17	27	<i>stater</i>
14937	Matt	18	1	1) Gr 
14938	Matt	18	1	<i>greater</i>
14939	Matt	18	4	1) Gr 
14940	Matt	18	4	<i>greater</i>
14941	Matt	18	6	1) Gr 
14942	Matt	18	6	<i>a millstone turned by an ass</i>
14943	Matt	18	9	1) Gr 
14944	Matt	18	9	<i>Gehenna of fire</i>
14945	Matt	18	11	Many authorities, some ancient, insert verse 11 
14946	Matt	18	11	<i>For the Son of man came to save that which was lost.</i>
14947	Matt	18	11	 See Lu 19:10
14948	Matt	18	14	1) Gr 
14949	Matt	18	14	<i>a thing willed before your Father</i>
14950	Matt	18	14	 2) Some ancient authorities read 
14951	Matt	18	14	<i>my</i>
14952	Matt	18	15	1) Some ancient authorities omit 
14953	Matt	18	15	<i>against thee</i>
14954	Matt	18	17	1) Or 
14955	Matt	18	17	<i>congregation</i>
14956	Matt	18	17	 2) See marginal note on Mt 5:46
14957	Matt	18	19	1) Gr 
14958	Matt	18	19	<i>shall become</i>
14959	Matt	18	22	1) Or 
14960	Matt	18	22	<i>seventy times and seven</i>
14961	Matt	18	23	1) Gr 
14962	Matt	18	23	<i>bondservants</i>
14963	Matt	18	24	1) This talent was probably worth about £200, or $1000.
14964	Matt	18	26	1) Gr 
14965	Matt	18	26	<i>bondservant</i>
14966	Matt	18	26	 2) See marginal note on Mt 2:2
14967	Matt	18	27	1) Gr 
14968	Matt	18	27	<i>bondservant</i>
14969	Matt	18	27	 2) Gr 
14970	Matt	18	27	<i>loan</i>
14971	Matt	18	28	1) Gr 
14972	Matt	18	28	<i>bondservant</i>
14973	Matt	18	28	 2) The word in the Greek denotes a coin worth about eight pence half-penny, or nearly seventeen cents.
14974	Matt	18	32	1) Gr 
14975	Matt	18	32	<i>bondservant</i>
14976	Matt	19	3	1) Many authorities, some ancient, insert 
14977	Matt	19	3	<i>the</i>
14978	Matt	19	4	1) Ge 1:27; 5:2. 2) Some ancient authorities read 
14979	Matt	19	4	<i>created</i>
14980	Matt	19	5	1) Ge 2:24
14981	Matt	19	7	1) De 24:1-4
14982	Matt	19	9	1) Some ancient authorities read 
14983	Matt	19	9	<i>saving for the cause of fornication, maketh her an adulteress</i>
14984	Matt	19	9	 as in Mt 5:32. 2) The following words, to the end of the verse, are omitted by some ancient authorities.
14985	Matt	19	14	1) Or 
14986	Matt	19	14	<i>of such is</i>
14987	Matt	19	16	1) Some ancient authorities read 
14988	Matt	19	16	<i>Good Teacher</i>
14989	Matt	19	16	 ; See Mr 10:17; Lu 18:18
14990	Matt	19	17	1) Some ancient authorities read 
14991	Matt	19	17	<i>Why callest thou me good? None is good save one,</i>
14992	Matt	19	17	 even 
14993	Matt	19	17	<i>God.</i>
14994	Matt	19	17	 See Mr 10:18; Lu 18:19
14995	Matt	19	18	1) Ex 20:12-16; De 5:16-20
14996	Matt	19	19	1) Le 19:18
14997	Matt	19	29	1) Many ancient authorities add 
14998	Matt	19	29	<i>or wife</i>
14999	Matt	19	29	 ; as in Lu 18:29. 2) Some ancient authorities read 
15000	Matt	19	29	<i>manifold</i>
15001	Matt	20	2	1) See marginal note on Mt 18:28
15002	Matt	20	9	1) See marginal note on Mt 18:28
15003	Matt	20	10	1) See marginal note on Mt 18:28
15004	Matt	20	12	1) Or 
15005	Matt	20	12	<i>hot wind</i>
15006	Matt	20	13	1) See marginal note on Mt 18:28
15007	Matt	20	18	1) See Mt 10:4
15008	Matt	20	20	1) See marginal note on Mt 2:2
15009	Matt	20	26	1) Or 
15010	Matt	20	26	<i>servant</i>
15011	Matt	20	27	1) Gr 
15012	Matt	20	27	<i>bondservant</i>
15013	Matt	21	5	1) Isa 62:11; Zec 9:9
15014	Matt	21	12	1) Many ancient authorities omit 
15015	Matt	21	12	<i>of God</i>
15016	Matt	21	13	1) Isa 56:7. 2) Jer 7:11
15017	Matt	21	16	1) Ps 8:2
15018	Matt	21	19	1) Or 
15019	Matt	21	19	<i>a single</i>
15020	Matt	21	24	1) Gr 
15021	Matt	21	24	<i>word</i>
15022	Matt	21	28	1) Gr 
15023	Matt	21	28	<i>children</i>
15024	Matt	21	28	 2) Gr 
15025	Matt	21	28	<i>Child</i>
15026	Matt	21	31	1) See marginal note on Mt 5:46
15027	Matt	21	32	1) See marginal note on Mt 5:46
15028	Matt	21	34	1) Gr 
15029	Matt	21	34	<i>bondservants</i>
15030	Matt	21	34	 2) Or 
15031	Matt	21	34	<i>the fruits of it</i>
15032	Matt	21	35	1) Gr 
15033	Matt	21	35	<i>bondservants</i>
15034	Matt	21	36	1) Gr 
15035	Matt	21	36	<i>bondservants</i>
15036	Matt	21	42	1) Ps 118:22 f
15037	Matt	21	44	1) Some ancient authorities omit verse 44
15038	Matt	22	3	1) Gr 
15039	Matt	22	3	<i>bondservants</i>
15040	Matt	22	4	1) Gr 
15041	Matt	22	4	<i>bondservants</i>
15042	Matt	22	6	1) Gr 
15043	Matt	22	6	<i>bondservants</i>
15044	Matt	22	8	1) Gr 
15045	Matt	22	8	<i>bondservants</i>
15046	Matt	22	10	1) Gr 
15047	Matt	22	10	<i>bondservants</i>
15048	Matt	22	13	1) Or 
15049	Matt	22	13	<i>ministers</i>
15050	Matt	22	19	1) See marginal note on Mt 18:28
15051	Matt	22	23	1) Many ancient authorities read 
15052	Matt	22	23	<i>saying</i>
15053	Matt	22	24	1) De 25:5. 2) Gr 
15054	Matt	22	24	<i>shall perform the duty of a husband’s brother to his wife</i>
15055	Matt	22	26	1) Gr 
15056	Matt	22	26	<i>seven</i>
15057	Matt	22	30	1) Many ancient authorities add 
15058	Matt	22	30	<i>of God</i>
15059	Matt	22	32	1) Ex 3:6
15060	Matt	22	37	1) De 6:5
15061	Matt	22	39	1) Or 
15062	Matt	22	39	<i>And a second is like unto it, Thou shalt love etc</i>
15063	Matt	22	39	 2) Le 19:18
15064	Matt	22	44	1) Ps 110:1
15065	Matt	23	4	1) Many ancient authorities omit 
15066	Matt	23	4	<i>and grievous to be borne</i>
15067	Matt	23	9	1) Gr 
15068	Matt	23	9	<i>the heavenly</i>
15069	Matt	23	11	1) Gr 
15070	Matt	23	11	<i>greater</i>
15071	Matt	23	11	 2) Or 
15072	Matt	23	11	<i>minister</i>
15073	Matt	23	13	1) Gr 
15074	Matt	23	13	<i>before</i>
15075	Matt	23	14	Some authorities insert here, or after verse 12, verse 14 
15076	Matt	23	14	<i>Woe unto you, scribes and Pharisees, hypocrites! for ye devour widows’ houses, even while for a pretence ye make long prayers: therefore ye shall receive greater condemnation.</i>
15077	Matt	23	14	 See Mr 12:40; Lu 20:47
15078	Matt	23	15	1) Gr 
15079	Matt	23	15	<i>Gehenna</i>
15080	Matt	23	16	1) Or 
15081	Matt	23	16	<i>sanctuary</i>
15082	Matt	23	16	 ; as in verse 35. 2) Or 
15083	Matt	23	16	<i>bound</i>
15084	Matt	23	16	 by his oath
15085	Matt	23	17	1) Or 
15086	Matt	23	17	<i>sanctuary</i>
15087	Matt	23	17	 as in verse 35
15088	Matt	23	18	1) Or 
15089	Matt	23	18	<i>bound</i>
15090	Matt	23	18	 by his oath
15091	Matt	23	21	1) Or 
15092	Matt	23	21	<i>sanctuary</i>
15093	Matt	23	21	 as in verse 35
15094	Matt	23	23	1) Or 
15095	Matt	23	23	<i>dill</i>
15096	Matt	23	33	1) Gr 
15097	Matt	23	33	<i>Gehenna</i>
15098	Matt	23	38	1) Some ancient authorities omit 
15099	Matt	23	38	<i>desolate</i>
15100	Matt	24	3	1) Gr 
15101	Matt	24	3	<i>presence</i>
15102	Matt	24	3	 2) Or 
15103	Matt	24	3	<i>the consummation of the age</i>
15104	Matt	24	10	1) See Mt 10:4
15105	Matt	24	14	1) Or 
15106	Matt	24	14	<i>these good tidings</i>
15107	Matt	24	14	  2) Gr 
15108	Matt	24	14	<i>inhabited earth</i>
15109	Matt	24	15	1) Da 9:27; 11:31; 12:11. 2) Or 
15110	Matt	24	15	<i>a holy place</i>
15111	Matt	24	23	1) Or 
15112	Matt	24	23	<i>him</i>
15113	Matt	24	26	1) Or 
15115	Matt	24	27	1 Gr 
15116	Matt	24	27	<i>presence</i>
15117	Matt	24	28	1) Or 
15118	Matt	24	28	<i>vultures</i>
15119	Matt	24	31	1) Many ancient authorities read 
15120	Matt	24	31	<i>with a great trumpet, and they shall gather etc</i>
15121	Matt	24	31	 2) Or 
15122	Matt	24	31	<i>a trumpet of great sound</i>
15123	Matt	24	33	1) Or 
15124	Matt	24	33	<i>it</i>
15125	Matt	24	36	1) Many authorities, some ancient, omit 
15126	Matt	24	36	<i>neither the Son</i>
15127	Matt	24	37	1) Gr 
15128	Matt	24	37	<i>presence</i>
15129	Matt	24	39	1) Gr 
15130	Matt	24	39	<i>presence</i>
15131	Matt	24	43	1) Or 
15132	Matt	24	43	<i>But this ye know</i>
15133	Matt	24	43	 2) Gr 
15134	Matt	24	43	<i>digged through</i>
15135	Matt	24	45	1) Gr 
15136	Matt	24	45	<i>bondservant</i>
15137	Matt	24	46	1) Gr 
15138	Matt	24	46	<i>bondservant</i>
15139	Matt	24	48	1) Gr 
15140	Matt	24	48	<i>bondservant</i>
15141	Matt	24	50	1) Gr 
15142	Matt	24	50	<i>bondservant</i>
15143	Matt	24	51	1) Or 
15144	Matt	24	51	<i>severely scourge him</i>
15145	Matt	25	1	1) Or 
15146	Matt	25	1	<i>torches</i>
15147	Matt	25	3	1) Or 
15148	Matt	25	3	<i>torches</i>
15149	Matt	25	4	1) Or 
15150	Matt	25	4	<i>torches</i>
15151	Matt	25	7	1) Or 
15152	Matt	25	7	<i>torches</i>
15153	Matt	25	8	1) Or 
15154	Matt	25	8	<i>torches</i>
15155	Matt	25	14	1) Gr 
15156	Matt	25	14	<i>bondservants</i>
15157	Matt	25	19	1) Gr 
15158	Matt	25	19	<i>bondservants</i>
15159	Matt	25	21	1) Gr 
15160	Matt	25	21	<i>bondservant</i>
15161	Matt	25	23	1) Gr 
15162	Matt	25	23	<i>bondservant</i>
15163	Matt	25	26	1) Gr 
15164	Matt	25	26	<i>bondservant</i>
15165	Matt	25	30	1) Gr 
15166	Matt	25	30	<i>bondservant</i>
15167	Matt	25	41	1) Or 
15168	Matt	25	41	<i>Depart from me under a curse</i>
15169	Matt	26	2	1) See Mt 10:4
15170	Matt	26	7	1) Or 
15171	Matt	26	7	<i>a flask</i>
15172	Matt	26	7	 2) Or 
15173	Matt	26	7	<i>reclined at table</i>
15174	Matt	26	12	1) Gr 
15175	Matt	26	12	<i>cast</i>
15176	Matt	26	13	1) Or 
15177	Matt	26	13	<i>these good tidings</i>
15178	Matt	26	15	1) See Mt 10:4
15179	Matt	26	16	1) See Mt 10:4
15180	Matt	26	20	1) Or 
15181	Matt	26	20	<i>reclining</i>
15182	Matt	26	20	 2) Many authorities, some ancient, omit 
15183	Matt	26	20	<i>disciples</i>
15184	Matt	26	21	1) See marginal note on Mt 10:4
15185	Matt	26	23	1) See marginal note on Mt 10:4
15186	Matt	26	24	1) See marginal note on Mt 10:4. 2) Gr 
15187	Matt	26	24	<i>for him if that man</i>
15188	Matt	26	25	1) See marginal note on Mt 10:4
15189	Matt	26	26	1) Or 
15190	Matt	26	26	<i>a loaf</i>
15191	Matt	26	27	1) Some ancient authorities read 
15192	Matt	26	27	<i>the cup</i>
15193	Matt	26	28	1) Many ancient authorities insert 
15194	Matt	26	28	<i>new</i>
15195	Matt	26	31	1) Zec 13:7
15196	Matt	26	33	1) Gr 
15197	Matt	26	33	<i>caused to stumble</i>
15198	Matt	26	36	1) Gr 
15199	Matt	26	36	<i>an enclosed piece of ground</i>
15200	Matt	26	41	1) Or 
15201	Matt	26	41	<i>Watch ye, and pray that ye enter not</i>
15202	Matt	26	45	1) Or 
15203	Matt	26	45	<i>Do ye sleep on, then, and take your rest?</i>
15204	Matt	26	45	 2) See marginal note on Mt 10:4
15205	Matt	26	46	1) See marginal note on Mt 10:4
15206	Matt	26	48	1) See marginal note on Mt 10:4
15207	Matt	26	49	1) Gr 
15208	Matt	26	49	<i>kissed him much</i>
15209	Matt	26	51	1) Gr 
15210	Matt	26	51	<i>bondservant</i>
15211	Matt	26	61	1) Or 
15212	Matt	26	61	<i>sanctuary</i>
15213	Matt	26	61	 ; as in Mt 23:35; 27:5
15214	Matt	26	66	1) Gr 
15215	Matt	26	66	<i>liable to</i>
15216	Matt	26	67	1) Or 
15217	Matt	26	67	<i>with rods</i>
15218	Matt	27	3	1) See marginal note on Mt 10:4
15219	Matt	27	4	1) See marginal note on Mt 10:4. 2) Many ancient authorities read 
15220	Matt	27	4	<i>righteous</i>
15221	Matt	27	6	1) Gr 
15222	Matt	27	6	<i>corbanas</i>
15223	Matt	27	6	 , that is 
15224	Matt	27	6	<i>sacred treasury</i>
15225	Matt	27	6	 ; Compare Mr 7:11
15226	Matt	27	9	1) Zec 11:12, 13. 2) Or 
15227	Matt	27	9	<i>I took</i>
15228	Matt	27	9	 3) Or 
15229	Matt	27	9	<i>whom they priced on the part of the sons of Israel</i>
15230	Matt	27	10	1) Some ancient authorities read 
15231	Matt	27	10	<i>I gave</i>
15232	Matt	27	15	1) Or 
15233	Matt	27	15	<i>a feast</i>
15234	Matt	27	24	1) Some ancient authorities read 
15235	Matt	27	24	<i>of this blood: see ye etc</i>
15236	Matt	27	27	1) Or 
15237	Matt	27	27	<i>palace</i>
15238	Matt	27	27	 See Mr 15:16. 2) Or 
15239	Matt	27	27	<i>cohort</i>
15240	Matt	27	28	1) Some ancient authorities read 
15241	Matt	27	28	<i>clothed</i>
15242	Matt	27	32	1) Gr 
15243	Matt	27	32	<i>impressed</i>
15244	Matt	27	40	1) Or 
15245	Matt	27	40	<i>sanctuary</i>
15246	Matt	27	42	1) Or 
15247	Matt	27	42	<i>can he not save himself?</i>
15248	Matt	27	45	1) Or 
15249	Matt	27	45	<i>earth</i>
15250	Matt	27	46	1) Ps 22:1. 2) Or 
15251	Matt	27	46	<i>why didst thou forsake me?</i>
15252	Matt	27	49	Many ancient authorities add 
15253	Matt	27	49	<i>And another took a spear and pierced his side, and there came out water and blood.</i>
15254	Matt	27	49	 See Joh 19:34
15255	Matt	27	51	1) Or 
15256	Matt	27	51	<i>sanctuary</i>
15257	Matt	27	54	1) Or 
15258	Matt	27	54	<i>a son of God</i>
15259	Matt	27	56	1) Or 
15260	Matt	27	56	<i>Jacob</i>
15261	Matt	27	65	1) Or 
15262	Matt	27	65	<i>Take a guard</i>
15263	Matt	27	65	 2) Gr 
15264	Matt	27	65	<i>make it sure, as ye know</i>
15265	Matt	28	6	1) Many ancient authorities read 
15266	Matt	28	6	<i>where he lay</i>
15267	Matt	28	9	1) See marginal note on Mt 2:2
15268	Matt	28	14	1) Or 
15269	Matt	28	14	<i>come to a hearing before the governor</i>
15270	Matt	28	17	1) See marginal note on Mt 2:2
15271	Matt	28	20	1) Gr 
15272	Matt	28	20	<i>all the days</i>
15273	Matt	28	20	 2) Or 
15274	Matt	28	20	<i>the consummation of the age</i>
15275	Mark	1	1	1) Or 
15276	Mark	1	1	<i>good tidings</i>
15277	Mark	1	1	 ; and so elsewhere 2) Some Ancient authorities omit 
15278	Mark	1	1	<i>the Son of God</i>
15279	Mark	1	2	1) Some ancient authorities read 
15280	Mark	1	2	<i>in the prophets</i>
15281	Mark	1	2	 2) Mal 3:1
15282	Mark	1	3	1) Isa 40:3
15283	Mark	1	7	1) Gr 
15284	Mark	1	7	<i>sufficient</i>
15285	Mark	1	8	1) Or 
15286	Mark	1	8	<i>with</i>
15287	Mark	1	9	1 Gr 
15288	Mark	1	9	<i>into</i>
15289	Mark	1	14	1) Or 
15290	Mark	1	14	<i>good tidings</i>
15291	Mark	1	15	1) Or 
15292	Mark	1	15	<i>good tidings</i>
15293	Mark	1	19	1) Or 
15294	Mark	1	19	<i>Jacob</i>
15295	Mark	1	25	1) Or 
15296	Mark	1	25	<i>it</i>
15297	Mark	1	26	1) Or 
15298	Mark	1	26	<i>convulsing</i>
15299	Mark	1	29	1) Some ancient authorities read 
15300	Mark	1	29	<i>when he was come out of the synagogue, he came etc</i>
15301	Mark	1	29	 2) Or 
15302	Mark	1	29	<i>Jacob</i>
15303	Mark	1	32	1) Or 
15304	Mark	1	32	<i>demoniacs</i>
15305	Mark	1	34	Many ancient authorities add 
15306	Mark	1	34	<i>to be Christ</i>
15307	Mark	1	34	 ; See Lu 4:41
15308	Mark	1	40	1) Some ancient authorities omit 
15309	Mark	1	40	<i>and kneeling down to him</i>
15310	Mark	1	43	1) Or 
15311	Mark	1	43	<i>sternly</i>
15312	Mark	1	44	1) Le 13:49; 14:2 ff
15313	Mark	1	45	1) Gr 
15314	Mark	1	45	<i>word</i>
15315	Mark	1	45	 2) Gr 
15316	Mark	1	45	<i>he</i>
15317	Mark	1	45	 3) Or 
15318	Mark	1	45	<i>the city</i>
15319	Mark	2	1	1) Or 
15320	Mark	2	1	<i>at home</i>
15321	Mark	2	4	1) Many ancient authorities read 
15322	Mark	2	4	<i>bring him unto him</i>
15323	Mark	2	4	 2) Or 
15324	Mark	2	4	<i>pallet</i>
15325	Mark	2	5	1) Gr 
15326	Mark	2	5	<i>Child</i>
15327	Mark	2	9	1) Or 
15328	Mark	2	9	<i>pallet</i>
15329	Mark	2	11	1) Or 
15330	Mark	2	11	<i>pallet</i>
15331	Mark	2	12	1) Or 
15332	Mark	2	12	<i>pallet</i>
15333	Mark	2	15	1) That is 
15334	Mark	2	15	<i>collectors or renters of Roman taxes</i>
15335	Mark	2	16	1) Some ancient authorities read 
15336	Mark	2	16	<i>and the Pharisees</i>
15337	Mark	2	16	 2) That is 
15338	Mark	2	16	<i>collectors or renters of Roman taxes</i>
15339	Mark	2	16	 3) Or 
15340	Mark	2	16	<i>He eateth…sinners</i>
15341	Mark	2	16	 4) Some ancient authorities omit 
15342	Mark	2	16	<i>and drinketh</i>
15343	Mark	2	17	1) Gr 
15344	Mark	2	17	<i>strong</i>
15345	Mark	2	19	1) That is 
15346	Mark	2	19	<i>companions of the bridegroom</i>
15347	Mark	2	22	1) That is 
15348	Mark	2	22	<i>skins used as bottles</i>
15349	Mark	2	23	1) Gr 
15350	Mark	2	23	<i>began to make</i>
15351	Mark	2	23	 their 
15352	Mark	2	23	<i>way plucking</i>
15353	Mark	2	25	1) 1 Sa 21:6
15354	Mark	2	26	1) Some ancient authorities read 
15355	Mark	2	26	<i>in the days of Abiathar the high priest</i>
15356	Mark	3	3	1) Gr 
15357	Mark	3	3	<i>Arise into the midst</i>
15358	Mark	3	8	1) Or 
15359	Mark	3	8	<i>all the things that he did</i>
15360	Mark	3	10	1) Gr 
15361	Mark	3	10	<i>scourges</i>
15362	Mark	3	10	 2) Gr 
15363	Mark	3	10	<i>fell</i>
15364	Mark	3	14	1) Some ancient authorities add 
15365	Mark	3	14	<i>whom also he named apostles</i>
15366	Mark	3	14	 ; See Lu 6:13; compare Mr 6:30
15367	Mark	3	16	1) Some ancient authorities insert 
15368	Mark	3	16	<i>and he appointed tweleve</i>
15369	Mark	3	17	1) Or 
15370	Mark	3	17	<i>Jacob</i>
15371	Mark	3	18	1) Or 
15372	Mark	3	18	<i>Jacob</i>
15373	Mark	3	18	 2) Or 
15374	Mark	3	18	<i>Zealot</i>
15375	Mark	3	18	 ; See Lu 6:15; Ac 1:13
15376	Mark	3	19	1) Or 
15377	Mark	3	19	<i>delivered him up</i>
15378	Mark	3	19	 2) Or 
15379	Mark	3	19	<i>home</i>
15380	Mark	3	22	1) Gr 
15381	Mark	3	22	<i>Beelzebul</i>
15382	Mark	3	22	 2) Or 
15383	Mark	3	22	<i>In</i>
15384	Mark	4	19	1) Or 
15385	Mark	4	19	<i>age</i>
15386	Mark	4	28	1) Or 
15387	Mark	4	28	<i>yieldeth</i>
15388	Mark	4	29	1) Or 
15389	Mark	4	29	<i>alloweth</i>
15390	Mark	4	29	 2) Or 
15391	Mark	4	29	<i>sendeth forth</i>
15392	Mark	4	31	1) Gr 
15393	Mark	4	31	<i>As unto</i>
15394	Mark	5	6	1) The Greek word denotes an act of reverence, whether paid to a creature (see Mt 4:9; 18:26) or to the Creator (see Mt 4:10)
15395	Mark	5	15	1) Or 
15396	Mark	5	15	<i>the demoniac</i>
15397	Mark	5	16	1) Or 
15398	Mark	5	16	<i>the demoniac</i>
15399	Mark	5	18	1) Or 
15400	Mark	5	18	<i>the demoniac</i>
15401	Mark	5	23	1) Or 
15402	Mark	5	23	<i>saved</i>
15403	Mark	5	28	1) Or 
15404	Mark	5	28	<i>saved</i>
15405	Mark	5	29	1) Gr 
15406	Mark	5	29	<i>scourge</i>
15407	Mark	5	34	1) Or 
15408	Mark	5	34	<i>saved thee</i>
15409	Mark	5	34	 2) Gr 
15410	Mark	5	34	<i>scourge</i>
15411	Mark	5	36	1) Or 
15412	Mark	5	36	<i>overhearing</i>
15413	Mark	5	37	1) Or 
15414	Mark	5	37	<i>Jacob</i>
15415	Mark	6	2	1) Some ancient authorities insert 
15416	Mark	6	2	<i>the</i>
15417	Mark	6	2	 2) Gr 
15418	Mark	6	2	<i>powers</i>
15419	Mark	6	3	1) Or 
15420	Mark	6	3	<i>Jacob</i>
15421	Mark	6	3	 2) Gr 
15422	Mark	6	3	<i>caused to stumble</i>
15423	Mark	6	5	1) Gr 
15424	Mark	6	5	<i>power</i>
15425	Mark	6	8	1) Gr 
15426	Mark	6	8	<i>brass</i>
15427	Mark	6	8	 2) Gr 
15428	Mark	6	8	<i>girdle</i>
15429	Mark	6	14	1) Some ancient authorities read 
15430	Mark	6	14	<i>they</i>
15431	Mark	6	20	1) Many ancient authorities read 
15432	Mark	6	20	<i>did many things</i>
15433	Mark	6	21	1) Or 
15434	Mark	6	21	<i>military tribunes</i>
15435	Mark	6	21	 ; Gr 
15436	Mark	6	21	<i>chiliarchs</i>
15437	Mark	6	22	1) Some ancient authorities read 
15438	Mark	6	22	<i>his daughter Herodias</i>
15439	Mark	6	22	 2) Or 
15440	Mark	6	22	<i>it</i>
15441	Mark	6	33	1) Or 
15442	Mark	6	33	<i>by land</i>
15443	Mark	6	37	1) The word in the Greek denotes a coin worth about eight pence half-penny, or nearly seventeen cents.
15444	Mark	6	39	1) Gr 
15445	Mark	6	39	<i>recline</i>
15446	Mark	6	53	1) Or 
15447	Mark	6	53	<i>crossed over to the land, they came unto Gennesaret</i>
15448	Mark	6	55	1) Or 
15449	Mark	6	55	<i>pallets</i>
15450	Mark	6	56	1) Or 
15451	Mark	6	56	<i>it</i>
15452	Mark	7	2	1) Or 
15453	Mark	7	2	<i>common</i>
15454	Mark	7	3	1) Or 
15455	Mark	7	3	<i>up to the elbow</i>
15456	Mark	7	3	 ; Gr 
15457	Mark	7	3	<i>with the fist</i>
15458	Mark	7	4	1) Gr 
15459	Mark	7	4	<i>baptize</i>
15460	Mark	7	4	 ; Some ancient authorities read 
15461	Mark	7	4	<i>sprinkle themselves</i>
15462	Mark	7	4	 2) Gr 
15463	Mark	7	4	<i>baptizings</i>
15464	Mark	7	4	 3) Many ancient authorities add 
15465	Mark	7	4	<i>and couches</i>
15466	Mark	7	5	1) Or 
15467	Mark	7	5	<i>common</i>
15468	Mark	7	6	1) Isa 29:13
15469	Mark	7	10	1) Ex 20:12; De 5:16; Ex 21:17; Le 20:9. 2) Or 
15470	Mark	7	10	<i>surely die</i>
15471	Mark	7	16	Many ancient authorities insert verse 16 
15472	Mark	7	16	<i>If any man hath ears to hear, let him hear.</i>
15473	Mark	7	16	 See Mr 4:9, 23
15474	Mark	7	21	1) Gr 
15475	Mark	7	21	<i>thoughts that are evil</i>
15476	Mark	7	24	1) Some ancient authorities omit 
15477	Mark	7	24	<i>and Sidon</i>
15478	Mark	7	26	1) Or 
15479	Mark	7	26	<i>Gentile</i>
15480	Mark	7	27	1) Or 
15481	Mark	7	27	<i>loaf</i>
15482	Mark	8	4	1) Gr 
15483	Mark	8	4	<i>loaves</i>
15484	Mark	8	16	1) Some ancient authorities read 
15485	Mark	8	16	<i>because they had no bread</i>
15486	Mark	8	16	 2) Or, It is 
15487	Mark	8	16	<i>because we have no bread</i>
15488	Mark	8	19	1) 
15489	Mark	8	19	<i>Basket</i>
15490	Mark	8	19	 in verses 19 and 20 represent different Greek words.
15491	Mark	8	20	1) 
15492	Mark	8	20	<i>Basket</i>
15493	Mark	8	20	 in verses 19 and 20 represent different Greek words.
15494	Mark	8	35	1) See marginal note on Mr 1:1
15495	Mark	9	2	1) Or 
15496	Mark	9	2	<i>Jacob</i>
15497	Mark	9	5	1) Or 
15498	Mark	9	5	<i>booths</i>
15499	Mark	9	11	1) Or 
15500	Mark	9	11	<i>The scribes say…come</i>
15501	Mark	9	18	1) Or 
15502	Mark	9	18	<i>rendeth him</i>
15503	Mark	9	18	 ; See Mt 7:6
15504	Mark	9	20	1) Or 
15505	Mark	9	20	<i>convulsed</i>
15506	Mark	9	20	 ; See Mr 1:26
15507	Mark	9	24	1) Many ancient authorities add 
15508	Mark	9	24	<i>with tears</i>
15509	Mark	9	26	1) Or 
15510	Mark	9	26	<i>convulsed</i>
15511	Mark	9	26	 ; See Mr 1:26
15512	Mark	9	28	1) Or, saying, 
15513	Mark	9	28	<i>We could not cast it out</i>
15514	Mark	9	29	Many ancient authorities add 
15515	Mark	9	29	<i>and fasting</i>
15516	Mark	9	31	1) See Mr 3:19
15517	Mark	9	34	1) Gr 
15518	Mark	9	34	<i>greater</i>
15519	Mark	9	35	1) Or 
15520	Mark	9	35	<i>minister</i>
15521	Mark	9	39	1) Gr 
15522	Mark	9	39	<i>power</i>
15523	Mark	9	41	1) Gr 
15524	Mark	9	41	<i>in name that ye are</i>
15525	Mark	9	42	1) Many ancient authorities omit 
15526	Mark	9	42	<i>on me</i>
15527	Mark	9	42	 2) Gr 
15528	Mark	9	42	<i>a millstone turned by an ass</i>
15529	Mark	9	43	1) Gr 
15530	Mark	9	43	<i>Gehenna</i>
15531	Mark	9	44	Verses 44 and 46 (which are identical with verse 48) are omitted by the best ancient authorities. 
15532	Mark	9	44	<i>where their worm dieth not, and the fire is not quenched.</i>
15533	Mark	9	45	1) Gr 
15534	Mark	9	45	<i>Gehenna</i>
15535	Mark	9	46	Verses 44 and 46 (which are identical with verse 48) are omitted by the best ancient authorities. 
15536	Mark	9	46	<i>where their worm dieth not, and the fire is not quenched.</i>
15537	Mark	9	47	1) Gr 
15538	Mark	9	47	<i>Gehenna</i>
15539	Mark	9	49	Many ancient authorities add 
15540	Mark	9	49	<i>and every sacrifice shall be salted with salt</i>
15541	Mark	9	49	 ; See Le 2:13
15542	Mark	10	3	1) De 24:1, 3
15543	Mark	10	7	1) Some ancient authorities omit 
15544	Mark	10	7	<i>and shall cleave to his wife</i>
15545	Mark	10	14	1) Or 
15546	Mark	10	14	<i>of such is</i>
15547	Mark	10	17	1) Or 
15548	Mark	10	17	<i>on his way</i>
15549	Mark	10	19	1) Ex 20:12-16; De 5:16-20
15550	Mark	10	24	1) Some ancient authorities omit 
15551	Mark	10	24	<i>for them that trust in riches</i>
15552	Mark	10	26	1) Many ancient authorities read 
15553	Mark	10	26	<i>among themselves</i>
15554	Mark	10	29	1) See marginal note on Mr 1:1
15555	Mark	10	30	1) Or 
15556	Mark	10	30	<i>age</i>
15557	Mark	10	35	1) Or 
15558	Mark	10	35	<i>Jacob</i>
15559	Mark	10	41	1) Or 
15560	Mark	10	41	<i>Jacob</i>
15561	Mark	10	43	1) Or 
15562	Mark	10	43	<i>servant</i>
15563	Mark	10	44	1) Gr 
15564	Mark	10	44	<i>bondservant</i>
15565	Mark	10	51	1) See Joh 20:16
15566	Mark	10	52	1) Or 
15567	Mark	10	52	<i>saved thee</i>
15568	Mark	11	3	1) Gr 
15569	Mark	11	3	<i>sendeth</i>
15570	Mark	11	3	 2) Or 
15571	Mark	11	3	<i>again</i>
15572	Mark	11	8	1) Gr 
15573	Mark	11	8	<i>layers of leaves</i>
15574	Mark	11	17	1) Isa 56:7. 2) Jer 7:11
15575	Mark	11	19	1) Gr 
15576	Mark	11	19	<i>whenever evening came</i>
15577	Mark	11	19	 2) Some ancient authorities read 
15578	Mark	11	19	<i>they</i>
15579	Mark	11	24	1) Gr 
15580	Mark	11	24	<i>received</i>
15581	Mark	11	26	Many ancient authorities add verse 26 
15582	Mark	11	26	<i>But if ye do not forgive, neither will your Father who is in heaven forgive your trespasses.</i>
15583	Mark	11	26	 Compare Mt 6:15; 18:35
15584	Mark	11	29	1) Gr 
15585	Mark	11	29	<i>word</i>
15586	Mark	11	32	1) Or 
15587	Mark	11	32	<i>But shall we say, From men?</i>
15588	Mark	11	32	 2) Or 
15589	Mark	11	32	<i>for all held John to be a prophet indeed</i>
15590	Mark	12	2	1) Gr 
15591	Mark	12	2	<i>bondservant</i>
15592	Mark	12	4	1) Gr 
15593	Mark	12	4	<i>bondservant</i>
15594	Mark	12	10	1) Ps 118:22 f
15595	Mark	12	15	1) See marginal note on Mr 6:37
15596	Mark	12	19	1) De 25:5
15597	Mark	12	26	1) Ex 3:6
15598	Mark	12	29	1) De 6:4 ff 2) Or 
15599	Mark	12	29	<i>The Lord is our God; the Lord is one</i>
15600	Mark	12	30	1) Gr 
15601	Mark	12	30	<i>from</i>
15602	Mark	12	31	1) Le 19:18
15603	Mark	12	36	1) Ps 105:1. 2) Some ancient authorities read 
15604	Mark	12	36	<i>underneath thy feet</i>
15605	Mark	12	37	1) Or 
15606	Mark	12	37	<i>the great multitude</i>
15607	Mark	12	40	1) Or 
15608	Mark	12	40	<i>even while for a pretence they make</i>
15609	Mark	12	41	1) Gr 
15610	Mark	12	41	<i>brass</i>
15611	Mark	12	42	1) Gr 
15612	Mark	12	42	<i>one</i>
15613	Mark	13	3	1) Or 
15614	Mark	13	3	<i>Jacob</i>
15615	Mark	13	10	1) See marginal note on Mr 1:1
15616	Mark	13	12	1) See Mr 3:19. 2) Or 
15617	Mark	13	12	<i>put them to death</i>
15618	Mark	13	21	1) Or, him
15619	Mark	13	29	1) Or 
15620	Mark	13	29	<i>it</i>
15621	Mark	13	33	1) Some ancient authorities omit 
15622	Mark	13	33	<i>and pray</i>
15623	Mark	13	34	1) Gr 
15624	Mark	13	34	<i>bondservants</i>
15625	Mark	14	3	1) Or 
15626	Mark	14	3	<i>a flask</i>
15627	Mark	14	3	 2) Or 
15628	Mark	14	3	<i>liquid nard</i>
15629	Mark	14	5	1) See marginal note on Mr 6:37
15630	Mark	14	9	1) See marginal note on Mr 1:1
15631	Mark	14	10	1) Gr 
15632	Mark	14	10	<i>the one of the twelve</i>
15633	Mark	14	10	 2) See Mr 3:19
15634	Mark	14	11	1) See Mr 3:19
15635	Mark	14	18	1) Gr 
15636	Mark	14	18	<i>reclined</i>
15637	Mark	14	18	 2) See marginal note on Mr 3:19
15638	Mark	14	21	1) See marginal note on Mr 3:19. 2) Gr 
15639	Mark	14	21	<i>for him if that man</i>
15640	Mark	14	22	1) Or 
15641	Mark	14	22	<i>a loaf</i>
15642	Mark	14	24	1) Some ancient authorities insert 
15643	Mark	14	24	<i>new</i>
15644	Mark	14	27	1) Gr 
15645	Mark	14	27	<i>caused to stumble</i>
15646	Mark	14	27	 2) Zec 13:7
15647	Mark	14	29	1) Gr 
15648	Mark	14	29	<i>caused to stumble</i>
15649	Mark	14	32	1) Gr 
15650	Mark	14	32	<i>an enclosed piece of ground</i>
15651	Mark	14	33	1) Or 
15652	Mark	14	33	<i>Jacob</i>
15653	Mark	14	38	1) Or 
15654	Mark	14	38	<i>Watch ye, and pray that ye enter not</i>
15655	Mark	14	41	1) Or 
15656	Mark	14	41	<i>Do ye sleep on, then, and take your rest?</i>
15657	Mark	14	41	 2) See marginal note on Mr 3:19
15658	Mark	14	42	1) See marginal note on Mr 3:19
15659	Mark	14	44	1) See marginal note on Mr 3:19
15660	Mark	14	45	1) Gr 
15661	Mark	14	45	<i>kissed him much</i>
15662	Mark	14	47	1) Gr 
15663	Mark	14	47	<i>bondservant</i>
15664	Mark	14	58	1) Or 
15665	Mark	14	58	<i>sanctuary</i>
15666	Mark	14	64	1) Gr 
15667	Mark	14	64	<i>liable to</i>
15668	Mark	14	65	1) Or 
15669	Mark	14	65	<i>strokes of rods</i>
15670	Mark	14	68	1) Or 
15671	Mark	14	68	<i>I neither know, nor understand: thou, what sayest thou?</i>
15672	Mark	14	68	 2) Gr 
15673	Mark	14	68	<i>forecourt</i>
15674	Mark	14	68	 3) Many ancient authorities omit 
15675	Mark	14	68	<i>and the cock crew</i>
15676	Mark	14	72	1) Or 
15677	Mark	14	72	<i>And he began to weep</i>
15678	Mark	15	6	1) Or 
15679	Mark	15	6	<i>a feast</i>
15680	Mark	15	16	1) Or 
15681	Mark	15	16	<i>palace</i>
15682	Mark	15	16	 2) Or 
15683	Mark	15	16	<i>cohort</i>
15684	Mark	15	19	1) See marginal note on Mr 5:6
15685	Mark	15	21	1) Gr 
15686	Mark	15	21	<i>impress</i>
15687	Mark	15	28	Many ancient authorities insert verse 28 
15688	Mark	15	28	<i>And the scripture was fulfilled, which saith, And he was reckoned with transgressors.</i>
15689	Mark	15	28	 See Lu 22:37
15690	Mark	15	29	1) Or 
15691	Mark	15	29	<i>sanctuary</i>
15692	Mark	15	31	1) Or 
15693	Mark	15	31	<i>can he not save himself?</i>
15694	Mark	15	33	1) Or 
15695	Mark	15	33	<i>earth</i>
15696	Mark	15	34	1) Ps 22:1. 2) Or 
15697	Mark	15	34	<i>why didst thou forsake me?</i>
15698	Mark	15	38	1) Or 
15699	Mark	15	38	<i>sanctuary</i>
15700	Mark	15	39	1) Many ancient authorities read 
15701	Mark	15	39	<i>so cried out, and gave up the ghost</i>
15702	Mark	15	39	 2) Or 
15703	Mark	15	39	<i>a son of God</i>
15704	Mark	15	40	1) Or 
15705	Mark	15	40	<i>Jacob</i>
15706	Mark	15	40	 2) Gr 
15707	Mark	15	40	<i>little</i>
15708	Mark	15	44	1) Many ancient authorities read 
15709	Mark	15	44	<i>were already dead</i>
15710	Mark	16	1	1) Or 
15711	Mark	16	1	<i>Jacob</i>
15712	Mark	16	9	1) The two oldest Greek manuscripts, and some other authorities, omit from verse 9 to the end. Some other authorities have a different ending to the Gospel.
15713	Mark	16	15	1) See marginal note on Mr 1:1
15714	Mark	16	17	1) Some ancient authorities omit 
15715	Mark	16	17	<i>new</i>
15716	Luke	1	1	1) Or 
15717	Luke	1	1	<i>fully established</i>
15718	Luke	1	4	1) Gr 
15719	Luke	1	4	<i>words</i>
15720	Luke	1	4	 2) Or 
15721	Luke	1	4	<i>which thou wast taught by word of mouth</i>
15722	Luke	1	7	1) Gr 
15723	Luke	1	7	<i>advanced in their days</i>
15724	Luke	1	9	1) Or 
15725	Luke	1	9	<i>sanctuary</i>
15726	Luke	1	15	1) Gr 
15727	Luke	1	15	<i>sikera</i>
15728	Luke	1	17	1) Some ancient authorities read 
15729	Luke	1	17	<i>come nigh before his face</i>
15730	Luke	1	18	1) Gr 
15731	Luke	1	18	<i>advanced in her days</i>
15732	Luke	1	21	1) Or 
15733	Luke	1	21	<i>at his tarrying</i>
15734	Luke	1	21	 2) Or 
15735	Luke	1	21	<i>sanctuary</i>
15736	Luke	1	22	1) Or 
15737	Luke	1	22	<i>sanctuary</i>
15738	Luke	1	28	1) Or 
15739	Luke	1	28	<i>endued with grace</i>
15740	Luke	1	28	 2) Many ancient authorities add 
15741	Luke	1	28	<i>blessed</i>
15742	Luke	1	28	 art 
15743	Luke	1	28	<i>thou among women</i>
15744	Luke	1	28	 ; See verse 42
15745	Luke	1	30	1) Or 
15746	Luke	1	30	<i>grace</i>
15747	Luke	1	33	1) Gr 
15748	Luke	1	33	<i>unto the ages</i>
15749	Luke	1	35	1) Or 
15750	Luke	1	35	<i>that which is to be born shall be called holy, the Son of God</i>
15751	Luke	1	35	 2) Some ancient authorities insert 
15752	Luke	1	35	<i>of thee</i>
15753	Luke	1	36	1) Or 
15754	Luke	1	36	<i>is</i>
15755	Luke	1	38	1) Gr 
15756	Luke	1	38	<i>bondmaid</i>
15757	Luke	1	45	1) Or 
15758	Luke	1	45	<i>believed that there shall be</i>
15759	Luke	1	48	1) Gr 
15760	Luke	1	48	<i>bondmaid</i>
15761	Luke	1	51	1) Or 
15762	Luke	1	51	<i>by</i>
15763	Luke	1	78	1) Or 
15764	Luke	1	78	<i>heart of mercy</i>
15765	Luke	1	78	 2) Or 
15766	Luke	1	78	<i>Wherein</i>
15767	Luke	1	78	  3) Many ancient authorities read 
15768	Luke	1	78	<i>hath visited us</i>
15769	Luke	2	1	1) Gr 
15770	Luke	2	1	<i>the inhabited earth</i>
15771	Luke	2	8	1) Or 
15772	Luke	2	8	<i>night-watches</i>
15773	Luke	2	11	1) Or 
15774	Luke	2	11	<i>Anointed Lord</i>
15775	Luke	2	14	1) Many ancient authorities read 
15776	Luke	2	14	<i>peace, good pleasure among men</i>
15777	Luke	2	14	 2) Gr 
15778	Luke	2	14	<i>men of good pleasure</i>
15779	Luke	2	15	1) Or 
15780	Luke	2	15	<i>saying</i>
15781	Luke	2	19	1) Or 
15782	Luke	2	19	<i>things</i>
15783	Luke	2	22	1) Le 12:2-6
15784	Luke	2	23	1) Ex 13:2, 12
15785	Luke	2	24	1) Le 12:8; 5:11
15786	Luke	2	29	1) Gr 
15787	Luke	2	29	<i>bondservant</i>
15788	Luke	2	29	 2) Gr 
15789	Luke	2	29	<i>Master</i>
15790	Luke	2	32	1) Or 
15791	Luke	2	32	<i>the unveiling of the Gentiles</i>
15792	Luke	2	36	1) Gr 
15793	Luke	2	36	<i>advanced in many days</i>
15794	Luke	2	40	1) Gr 
15795	Luke	2	40	<i>becoming full of wisdom</i>
15796	Luke	2	46	1) Or 
15797	Luke	2	46	<i>doctors</i>
15798	Luke	2	46	 ; See Lu 5:17; Ac 5:34
15799	Luke	2	48	1) Gr 
15800	Luke	2	48	<i>Child</i>
15801	Luke	2	49	1) Or 
15802	Luke	2	49	<i>about my Father’s business</i>
15803	Luke	2	49	 ; Gr 
15804	Luke	2	49	<i>in the things of my Father</i>
15805	Luke	2	51	1) Or 
15806	Luke	2	51	<i>things</i>
15807	Luke	2	52	1) Or 
15808	Luke	2	52	<i>age</i>
15809	Luke	2	52	 2) Or 
15810	Luke	2	52	<i>grace</i>
15811	Luke	3	4	1) Isa 40:3 ff
15812	Luke	3	8	1) Or 
15813	Luke	3	8	<i>your repentance</i>
15814	Luke	3	12	1) That is 
15815	Luke	3	12	<i>collectors or renters of Roman taxes</i>
15816	Luke	3	14	1) Gr 
15817	Luke	3	14	<i>soldiers on service</i>
15818	Luke	3	16	1) Gr 
15819	Luke	3	16	<i>sufficient</i>
15820	Luke	3	16	 2) Or 
15821	Luke	3	16	<i>with</i>
15822	Luke	3	18	1) Or 
15823	Luke	3	18	<i>the gospel</i>
15824	Luke	3	27	1) Gr 
15825	Luke	3	27	<i>Salathiel</i>
15826	Luke	3	32	1) Some ancient authorities write 
15827	Luke	3	32	<i>Sala</i>
15828	Luke	3	33	1) Many ancient authorities insert 
15829	Luke	3	33	<i>the</i>
15830	Luke	3	33	 son 
15831	Luke	3	33	<i>of Admin</i>
15832	Luke	3	33	 ; and one writes 
15833	Luke	3	33	<i>Admin</i>
15834	Luke	3	33	 for 
15835	Luke	3	33	<i>Amminadab</i>
15836	Luke	3	33	 2) Some ancient authorities write 
15837	Luke	3	33	<i>Aram</i>
15838	Luke	4	3	1) Or 
15839	Luke	4	3	<i>a loaf</i>
15840	Luke	4	4	1) De 8:3
15841	Luke	4	5	1) Gr 
15842	Luke	4	5	<i>the inhabited earth</i>
15843	Luke	4	7	1) The Greek word denotes an act of reverence, whether paid to a creature, or to the Creator (compare marginal note on Mt 2:2)
15844	Luke	4	9	1) Gr 
15845	Luke	4	9	<i>wing</i>
15846	Luke	4	10	1) Ps 91:11, 12
15847	Luke	4	12	1) De 6:16
15848	Luke	4	13	1) Or 
15849	Luke	4	13	<i>until</i>
15850	Luke	4	17	1) Or 
15851	Luke	4	17	<i>a roll</i>
15852	Luke	4	17	 2) Or 
15853	Luke	4	17	<i>roll</i>
15854	Luke	4	18	1) Isa 61:1 f 2) Or 
15855	Luke	4	18	<i>Wherefore</i>
15856	Luke	4	18	 3) Or 
15857	Luke	4	18	<i>the gospel</i>
15858	Luke	4	20	1) Or 
15859	Luke	4	20	<i>roll</i>
15860	Luke	4	26	1) Gr 
15861	Luke	4	26	<i>Sarepta</i>
15862	Luke	4	34	1) Or 
15863	Luke	4	34	<i>Let alone</i>
15864	Luke	4	36	1) Or 
15865	Luke	4	36	<i>this word, that with authority…come out?</i>
15866	Luke	4	43	1) Or 
15867	Luke	4	43	<i>the gospel</i>
15868	Luke	4	44	1) Very many ancient authorities read 
15869	Luke	4	44	<i>Judaea</i>
15870	Luke	5	10	1) Or 
15871	Luke	5	10	<i>Jacob</i>
15872	Luke	5	10	 2) Gr 
15873	Luke	5	10	<i>take alive</i>
15874	Luke	5	14	1) Le 13:49; 14:2 ff
15875	Luke	5	17	1) Gr 
15876	Luke	5	17	<i>that he should heal</i>
15877	Luke	5	17	 ; Many ancient authorities read 
15878	Luke	5	17	<i>that</i>
15879	Luke	5	17	 he 
15880	Luke	5	17	<i>should heal them</i>
15881	Luke	5	22	1) Or 
15882	Luke	5	22	<i>questionings</i>
15883	Luke	5	22	 2) Or 
15884	Luke	5	22	<i>What</i>
15885	Luke	5	27	1) See marginal note on Lu 3:12
15886	Luke	5	29	1) See marginal note on Lu 3:12
15887	Luke	5	30	1) Or 
15888	Luke	5	30	<i>the Pharisees and the scribes among them</i>
15889	Luke	5	30	 2) See marginal note on Lu 3:12
15890	Luke	5	31	1) Gr 
15891	Luke	5	31	<i>sound</i>
15892	Luke	5	34	1) That is 
15893	Luke	5	34	<i>companions of the bridegroom</i>
15894	Luke	5	37	1) That is 
15895	Luke	5	37	<i>skins used as bottles</i>
15896	Luke	5	39	1) Many ancient authorities read 
15897	Luke	5	39	<i>better</i>
15898	Luke	6	1	1) Many ancient authorities insert 
15899	Luke	6	1	<i>second-first</i>
15900	Luke	6	3	1) 1 Sa 21:6
15901	Luke	6	11	1) Or 
15902	Luke	6	11	<i>foolishness</i>
15903	Luke	6	14	1) Or 
15904	Luke	6	14	<i>Jacob</i>
15905	Luke	6	15	1) Or 
15906	Luke	6	15	<i>Jacob</i>
15907	Luke	6	16	1) Or, brother; See Jude 1. 2) Or 
15908	Luke	6	16	<i>Jacob</i>
15909	Luke	6	35	1) Some ancient authorities read 
15910	Luke	6	35	<i>despairing of no man</i>
15911	Luke	6	48	1) Many ancient authorities read 
15912	Luke	6	48	<i>for it had been founded upon the rock</i>
15913	Luke	6	48	 ; as in Mt 7:25
15914	Luke	6	49	1) Gr 
15915	Luke	6	49	<i>heard</i>
15916	Luke	6	49	 2) Gr 
15917	Luke	6	49	<i>did not</i>
15918	Luke	7	2	1) Gr 
15919	Luke	7	2	<i>bondservant</i>
15920	Luke	7	2	 2) Or 
15921	Luke	7	2	<i>precious to him</i>
15922	Luke	7	2	 ; Or 
15923	Luke	7	2	<i>honorable with him</i>
15924	Luke	7	3	1) Gr 
15925	Luke	7	3	<i>bondservant</i>
15926	Luke	7	6	1) Gr 
15927	Luke	7	6	<i>sufficient</i>
15928	Luke	7	7	1) Gr 
15929	Luke	7	7	<i>with a word</i>
15930	Luke	7	7	 2) Or 
15931	Luke	7	7	<i>boy</i>
15932	Luke	7	8	1) Gr 
15933	Luke	7	8	<i>bondservant</i>
15934	Luke	7	10	1) Gr 
15935	Luke	7	10	<i>bondservant</i>
15936	Luke	7	11	1) Many ancient authorities read 
15937	Luke	7	11	<i>on the next day</i>
15938	Luke	7	19	1) Gr 
15939	Luke	7	19	<i>certain two</i>
15940	Luke	7	21	1) Gr 
15941	Luke	7	21	<i>scourges</i>
15942	Luke	7	22	1) Or 
15943	Luke	7	22	<i>the gospel</i>
15944	Luke	7	27	1) Mal 3:1
15945	Luke	7	28	1) Gr 
15946	Luke	7	28	<i>lesser</i>
15947	Luke	7	29	1) See marginal note on Lu 3:12. 2) Or 
15948	Luke	7	29	<i>having been</i>
15949	Luke	7	30	1) Or 
15950	Luke	7	30	<i>not having been</i>
15951	Luke	7	34	1) See marginal note on Lu 3:12
15952	Luke	7	35	1) Or 
15953	Luke	7	35	<i>was</i>
15954	Luke	7	36	1) Or 
15955	Luke	7	36	<i>reclined at table</i>
15956	Luke	7	37	1) Or 
15957	Luke	7	37	<i>reclining at table</i>
15958	Luke	7	37	 2) Or 
15959	Luke	7	37	<i>a flask</i>
15960	Luke	7	38	1) Gr 
15961	Luke	7	38	<i>kissed much</i>
15962	Luke	7	39	1) Some ancient authorities read 
15963	Luke	7	39	<i>the prophet</i>
15964	Luke	7	39	 ; See Joh 1:21, 25
15965	Luke	7	41	1) The word in the Greek denotes a coin worth about eight pence half-penny, or nearly seventeen cents.
15966	Luke	7	45	1) Gr 
15967	Luke	7	45	<i>kiss much</i>
15968	Luke	7	49	1) Gr 
15969	Luke	7	49	<i>reclined</i>
15970	Luke	7	49	 2) Or 
15971	Luke	7	49	<i>among</i>
15972	Luke	8	1	1) Or 
15973	Luke	8	1	<i>gospel</i>
15974	Luke	8	3	1) Many ancient authorities read 
15975	Luke	8	3	<i>him</i>
15976	Luke	8	15	1) Or 
15977	Luke	8	15	<i>stedfastness</i>
15978	Luke	8	18	1) Or 
15979	Luke	8	18	<i>seemeth to have</i>
15980	Luke	8	26	1) Many ancient authorities read 
15981	Luke	8	26	<i>Gergesenes</i>
15982	Luke	8	26	 others 
15983	Luke	8	26	<i>Gadarenes</i>
15984	Luke	8	26	 ; and so in verse 37
15985	Luke	8	29	1) Or 
15986	Luke	8	29	<i>of a long time</i>
15987	Luke	8	36	1) Or 
15988	Luke	8	36	<i>saved</i>
15989	Luke	8	43	1) Some ancient authorities omit 
15990	Luke	8	43	<i>had spent all her living upon physicians, and</i>
15991	Luke	8	45	1) Some ancient authorities omit 
15992	Luke	8	45	<i>and they that were with him</i>
15993	Luke	8	48	1) Or 
15994	Luke	8	48	<i>saved thee</i>
15995	Luke	8	50	1) Or 
15996	Luke	8	50	<i>saved</i>
15997	Luke	9	2	1) Some ancient authorities omit 
15998	Luke	9	2	<i>the sick</i>
15999	Luke	9	6	1) Or 
16000	Luke	9	6	<i>good tidings</i>
16001	Luke	9	14	1) Gr 
16002	Luke	9	14	<i>recline</i>
16003	Luke	9	31	1) Or 
16004	Luke	9	31	<i>departure</i>
16005	Luke	9	32	1) Or 
16006	Luke	9	32	<i>having remained awake</i>
16007	Luke	9	33	1) Or 
16008	Luke	9	33	<i>booths</i>
16009	Luke	9	35	1) Many ancient authorities read 
16010	Luke	9	35	<i>my beloved Son</i>
16011	Luke	9	35	 ; See Mt 17:5; Mr 9:7
16012	Luke	9	36	1) Or 
16013	Luke	9	36	<i>was past</i>
16014	Luke	9	39	1) Or 
16015	Luke	9	39	<i>convulseth</i>
16016	Luke	9	42	1) Or 
16017	Luke	9	42	<i>rent him</i>
16018	Luke	9	42	 2) Or 
16019	Luke	9	42	<i>convulsed</i>
16020	Luke	9	44	1) Or 
16021	Luke	9	44	<i>betrayed</i>
16022	Luke	9	46	1) Or 
16023	Luke	9	46	<i>questioning</i>
16024	Luke	9	46	 2) Gr 
16025	Luke	9	46	<i>greater</i>
16026	Luke	9	47	1) Or 
16027	Luke	9	47	<i>questioning</i>
16028	Luke	9	48	1) Gr 
16029	Luke	9	48	<i>lesser</i>
16030	Luke	9	51	1) Gr 
16031	Luke	9	51	<i>were being fulfilled</i>
16032	Luke	9	54	1) Many ancient authorities add 
16033	Luke	9	54	<i>even as Elijah did</i>
16034	Luke	9	54	 ; Compare 2 Ki 1:10-12
16035	Luke	9	55	Some ancient authorities add 
16036	Luke	9	55	<i>and said. Ye know not what manner of spirit ye are of.</i>
16037	Luke	9	55	 Some, but fewer, add also 
16038	Luke	9	55	<i>For the Son of man came not to destroy men’s lives but to save</i>
16039	Luke	9	55	 them. Compare Lu 19:10; Joh 3:17; 12:47
16040	Luke	9	58	1) Gr 
16041	Luke	9	58	<i>lodging-places</i>
16042	Luke	10	1	1) Many ancient authorities add 
16043	Luke	10	1	<i>and two</i>
16044	Luke	10	1	 ; and so in verse 17
16045	Luke	10	5	1) Or 
16046	Luke	10	5	<i>enter first, say</i>
16047	Luke	10	6	1) Or 
16048	Luke	10	6	<i>it</i>
16049	Luke	10	13	1) Gr 
16050	Luke	10	13	<i>powers</i>
16051	Luke	10	21	1) Or 
16052	Luke	10	21	<i>by</i>
16053	Luke	10	21	 2) Or 
16054	Luke	10	21	<i>praise</i>
16055	Luke	10	21	 3) Or 
16056	Luke	10	21	<i>that</i>
16057	Luke	10	27	1) De 6:5. 2) Gr 
16058	Luke	10	27	<i>from</i>
16059	Luke	10	27	 3) Le 19:18
16060	Luke	10	35	1) See marginal note on Lu 7:41
16061	Luke	10	40	1) Gr 
16062	Luke	10	40	<i>distracted</i>
16063	Luke	10	41	1) A few ancient authorities read 
16064	Luke	10	41	<i>Martha, Martha, thou art troubled; Mary hath chosen etc</i>
16065	Luke	10	42	1) Many ancient authorities read 
16066	Luke	10	42	<i>but few things are needful, or one</i>
16067	Luke	11	2	1) Many ancient authorities read 
16068	Luke	11	2	<i>Our Father, who art in heaven</i>
16069	Luke	11	2	 ; See Mt 6:9. 2) Many ancient authorities add 
16070	Luke	11	2	<i>Thy will be done, as in heaven, so on earth.</i>
16071	Luke	11	2	 See Mt 6:10
16072	Luke	11	3	1) Gr 
16073	Luke	11	3	<i>our bread for the coming day</i>
16074	Luke	11	3	 ; Or 
16075	Luke	11	3	<i>our needful bread</i>
16076	Luke	11	3	 ; as in Mt 6:11
16077	Luke	11	4	Many ancient authorities add 
16078	Luke	11	4	<i>but deliver us from the evil</i>
16079	Luke	11	4	 one (or 
16080	Luke	11	4	<i>from evil</i>
16081	Luke	11	4	 ); See Mt 6:13
16082	Luke	11	8	1) Or 
16083	Luke	11	8	<i>whatsoever things</i>
16084	Luke	11	11	1) Some ancient authorities omit 
16085	Luke	11	11	<i>a loaf, and he give him a stone? or</i>
16086	Luke	11	15	1) Or 
16087	Luke	11	15	<i>In</i>
16088	Luke	11	15	 2) Gr 
16089	Luke	11	15	<i>Beelzebul</i>
16090	Luke	11	17	1) Or 
16091	Luke	11	17	<i>and house falleth upon house</i>
16092	Luke	11	18	1) Or 
16093	Luke	11	18	<i>In</i>
16094	Luke	11	18	 2) Gr 
16095	Luke	11	18	<i>Beelzebul</i>
16096	Luke	11	19	1) Or 
16097	Luke	11	19	<i>In</i>
16098	Luke	11	19	 2) Gr 
16099	Luke	11	19	<i>Beelzebul</i>
16100	Luke	11	24	1) Or 
16101	Luke	11	24	<i>it</i>
16102	Luke	11	25	1) Or 
16103	Luke	11	25	<i>it</i>
16104	Luke	11	26	1) Or 
16105	Luke	11	26	<i>it</i>
16106	Luke	11	26	 2) Or 
16107	Luke	11	26	<i>itself</i>
16108	Luke	11	31	1) Gr 
16109	Luke	11	31	<i>more than</i>
16110	Luke	11	32	1) Gr 
16111	Luke	11	32	<i>more than</i>
16112	Luke	11	37	1) Gr 
16113	Luke	11	37	<i>breakfast</i>
16114	Luke	11	38	1) Gr 
16115	Luke	11	38	<i>breakfast</i>
16116	Luke	11	41	1) Or 
16117	Luke	11	41	<i>ye can</i>
16118	Luke	11	51	1) Gr 
16119	Luke	11	51	<i>house</i>
16120	Luke	11	53	1) Or 
16121	Luke	11	53	<i>set themselves vehemently against</i>
16122	Luke	11	53	 him 2) Or 
16123	Luke	11	53	<i>more</i>
16124	Luke	12	1	1) Gr 
16125	Luke	12	1	<i>the myriads of</i>
16126	Luke	12	1	 2) Or 
16127	Luke	12	1	<i>say unto his disciples, First of all beware ye</i>
16128	Luke	12	5	1) Or 
16129	Luke	12	5	<i>authority</i>
16130	Luke	12	5	 2) Gr 
16131	Luke	12	5	<i>Gehenna</i>
16132	Luke	12	8	1) Gr 
16133	Luke	12	8	<i>in me</i>
16134	Luke	12	8	 2) Gr 
16135	Luke	12	8	<i>in him</i>
16136	Luke	12	15	1) Or 
16137	Luke	12	15	<i>for</i>
16138	Luke	12	15	 even 
16139	Luke	12	15	<i>in a man’s abundance his life is not from the things which he possesseth</i>
16140	Luke	12	19	1) Or 
16141	Luke	12	19	<i>life</i>
16142	Luke	12	20	1) Gr 
16143	Luke	12	20	<i>they require thy soul</i>
16144	Luke	12	20	 2) Or 
16145	Luke	12	20	<i>life</i>
16146	Luke	12	22	1) Or 
16147	Luke	12	22	<i>soul</i>
16148	Luke	12	23	1) Or 
16149	Luke	12	23	<i>soul</i>
16150	Luke	12	25	1) Or 
16151	Luke	12	25	<i>his stature</i>
16152	Luke	12	31	1) Many ancient authorities read 
16153	Luke	12	31	<i>the kingdom of God</i>
16154	Luke	12	37	1) Gr 
16155	Luke	12	37	<i>bondservants</i>
16156	Luke	12	39	1) Or 
16157	Luke	12	39	<i>But this ye know</i>
16158	Luke	12	39	 2) Gr 
16159	Luke	12	39	<i>digged through</i>
16160	Luke	12	42	1) Or 
16161	Luke	12	42	<i>the faithful steward, the wise</i>
16162	Luke	12	42	 man 
16163	Luke	12	42	<i>whom etc</i>
16164	Luke	12	43	1) Gr 
16165	Luke	12	43	<i>bondservant</i>
16166	Luke	12	45	1) Gr 
16167	Luke	12	45	<i>bondservant</i>
16168	Luke	12	46	1) Gr 
16169	Luke	12	46	<i>bondservant</i>
16170	Luke	12	46	 2) Or 
16171	Luke	12	46	<i>severely scourge him</i>
16172	Luke	12	47	1) Gr 
16173	Luke	12	47	<i>bondservant</i>
16174	Luke	12	49	1) Or 
16175	Luke	12	49	<i>how would I that it were already kindled!</i>
16176	Luke	12	55	1) Or 
16177	Luke	12	55	<i>hot wind</i>
16178	Luke	12	56	1) Gr 
16179	Luke	12	56	<i>prove</i>
16180	Luke	12	58	1) Gr 
16181	Luke	12	58	<i>exactor</i>
16182	Luke	13	4	1) Gr 
16183	Luke	13	4	<i>debtors</i>
16184	Luke	13	15	1) Gr 
16185	Luke	13	15	<i>manger</i>
16186	Luke	13	21	1) See marginal note on Mt 13:33
16187	Luke	13	24	1) Or 
16188	Luke	13	24	<i>able, when once</i>
16189	Luke	13	29	1) Gr 
16190	Luke	13	29	<i>recline</i>
16191	Luke	13	32	1) Or 
16192	Luke	13	32	<i>end my course</i>
16193	Luke	14	5	1) Many ancient authorities read 
16194	Luke	14	5	<i>a son</i>
16195	Luke	14	5	 ; See Lu 13:15
16196	Luke	14	8	1) Gr 
16197	Luke	14	8	<i>recline not</i>
16198	Luke	14	10	1) Gr 
16199	Luke	14	10	<i>recline</i>
16200	Luke	14	10	 ; Compare Lu 7:36, 37 margin
16201	Luke	14	15	1) Gr 
16202	Luke	14	15	<i>reclined</i>
16203	Luke	14	15	 ; Compare Lu 7:36, 37 margin
16204	Luke	14	17	1) Gr 
16205	Luke	14	17	<i>bondservant</i>
16206	Luke	14	21	1) Gr 
16207	Luke	14	21	<i>bondservant</i>
16208	Luke	14	22	1) Gr 
16209	Luke	14	22	<i>bondservant</i>
16210	Luke	14	23	1) Gr 
16211	Luke	14	23	<i>bondservant</i>
16212	Luke	15	1	1) See marginal note on Lu 3:12
16213	Luke	15	8	1) Gr 
16214	Luke	15	8	<i>drachma</i>
16215	Luke	15	8	 , a coin worth about eight pence, or sixteen cents
16216	Luke	15	12	1) Gr 
16217	Luke	15	12	<i>the</i>
16218	Luke	15	16	1) Many ancient authorities read 
16219	Luke	15	16	<i>have been filled</i>
16220	Luke	15	16	 2) Gr 
16221	Luke	15	16	<i>the pods of the carob tree</i>
16222	Luke	15	20	1) Gr 
16223	Luke	15	20	<i>kissed him much</i>
16224	Luke	15	20	 ; See Lu 7:38, 45
16225	Luke	15	21	Some ancient authorities add 
16226	Luke	15	21	<i>make me as one of thy hired servants</i>
16227	Luke	15	21	 ; See verse 19
16228	Luke	15	22	1) Gr 
16229	Luke	15	22	<i>bondservants</i>
16230	Luke	15	31	1) Gr 
16231	Luke	15	31	<i>Child</i>
16232	Luke	16	6	1) Gr 
16233	Luke	16	6	<i>baths</i>
16234	Luke	16	6	 , the bath being a Hebrew measure. See Eze 45:10, 11, 14. 2) Gr 
16235	Luke	16	6	<i>writings</i>
16236	Luke	16	7	1) Gr 
16237	Luke	16	7	<i>cors</i>
16238	Luke	16	7	 , the cor being a Hebrew measure; See Eze 45:14. 2) Gr 
16239	Luke	16	7	<i>writings</i>
16240	Luke	16	8	1) Gr 
16241	Luke	16	8	<i>the steward of unrighteousness</i>
16242	Luke	16	8	 2) Or 
16243	Luke	16	8	<i>age</i>
16244	Luke	16	9	1) Gr 
16245	Luke	16	9	<i>out of</i>
16246	Luke	16	12	1) Some ancient authorities read 
16247	Luke	16	12	<i>our own</i>
16248	Luke	16	13	1) Gr 
16249	Luke	16	13	<i>household-servant</i>
16250	Luke	16	16	1) Or 
16251	Luke	16	16	<i>good tidings</i>
16252	Luke	16	16	 ; compare Lu 3:18
16253	Luke	16	19	1) Or 
16254	Luke	16	19	<i>living in mirth and splendor every day</i>
16255	Luke	16	25	1) Gr 
16256	Luke	16	25	<i>Child</i>
16257	Luke	16	26	1) Or 
16258	Luke	16	26	<i>in all these things</i>
16259	Luke	17	7	1) Gr 
16260	Luke	17	7	<i>bondservant</i>
16261	Luke	17	9	1) Gr 
16262	Luke	17	9	<i>bondservant</i>
16263	Luke	17	10	1) Gr 
16264	Luke	17	10	<i>bondservants</i>
16265	Luke	17	11	1) Or 
16266	Luke	17	11	<i>as he was</i>
16267	Luke	17	11	 2) Or 
16268	Luke	17	11	<i>through the midst of etc</i>
16269	Luke	17	18	1) Or 
16270	Luke	17	18	<i>There were none found…save this stranger.</i>
16271	Luke	17	18	 2) Or 
16272	Luke	17	18	<i>alien</i>
16273	Luke	17	19	1) Or 
16274	Luke	17	19	<i>saved thee</i>
16275	Luke	17	21	1) Or 
16276	Luke	17	21	<i>in the midst of you</i>
16277	Luke	17	24	1) Some ancient authorities omit 
16278	Luke	17	24	<i>in his day</i>
16279	Luke	17	33	1) Gr 
16280	Luke	17	33	<i>save it alive</i>
16281	Luke	17	36	Some ancient authorities add verse 36 
16282	Luke	17	36	<i>There shall be two men in the field; the one shall be taken, and the other shall be left.</i>
16283	Luke	17	36	 See Mt 24:40
16284	Luke	17	37	1) Or 
16285	Luke	17	37	<i>vultures</i>
16286	Luke	18	3	1) Or 
16287	Luke	18	3	<i>Do me justice of</i>
16288	Luke	18	3	 ; and so in verses 5, 7, 8
16289	Luke	18	5	1) Or 
16290	Luke	18	5	<i>lest at last by her coming she wear me out</i>
16291	Luke	18	5	 2) Gr 
16292	Luke	18	5	<i>bruise</i>
16293	Luke	18	6	1) Gr 
16294	Luke	18	6	<i>the judge of unrighteousness</i>
16295	Luke	18	7	1) Or 
16296	Luke	18	7	<i>and is he slow to punish on their behalf?</i>
16297	Luke	18	8	1) Or 
16298	Luke	18	8	<i>the faith</i>
16299	Luke	18	9	1) Gr 
16300	Luke	18	9	<i>the rest</i>
16301	Luke	18	10	1) See marginal note on Lu 3:12
16302	Luke	18	11	1) See marginal note on Lu 3:12
16303	Luke	18	13	1) See marginal note on Lu 3:12. 2) Or 
16304	Luke	18	13	<i>be thou propitiated</i>
16305	Luke	18	13	 3) Or 
16306	Luke	18	13	<i>the sinner</i>
16307	Luke	18	16	1) Or 
16308	Luke	18	16	<i>of such is</i>
16309	Luke	18	20	1) Ex 20:12-16; De 5:16-20
16310	Luke	18	28	1) Or 
16311	Luke	18	28	<i>our own</i>
16312	Luke	18	28	 homes; See Joh 19:27
16313	Luke	18	30	1) Or 
16314	Luke	18	30	<i>age</i>
16315	Luke	18	32	1) Or 
16316	Luke	18	32	<i>betrayed</i>
16317	Luke	18	42	1) Or 
16318	Luke	18	42	<i>saved thee</i>
16319	Luke	19	13	1) Gr 
16320	Luke	19	13	<i>bondservants</i>
16321	Luke	19	13	 2) 
16322	Luke	19	13	<i>Mina</i>
16323	Luke	19	13	 , here translated a pound, is equal to one hundred drachmas; See Lu 15:8
16324	Luke	19	15	1) Gr 
16325	Luke	19	15	<i>bondservants</i>
16326	Luke	19	17	1) Gr 
16327	Luke	19	17	<i>bondservant</i>
16328	Luke	19	20	1) Gr 
16329	Luke	19	20	<i>the other</i>
16330	Luke	19	22	1) Gr 
16331	Luke	19	22	<i>bondservant</i>
16332	Luke	19	23	1) Or 
16333	Luke	19	23	<i>I should have gone and required</i>
16334	Luke	19	37	1) Gr 
16335	Luke	19	37	<i>powers</i>
16336	Luke	19	42	1) Or 
16337	Luke	19	42	<i>O that thou hadst known</i>
16338	Luke	19	42	 2) Some ancient authorities read 
16339	Luke	19	42	<i>this thy day</i>
16340	Luke	19	42	 3) Some ancient authorities read 
16341	Luke	19	42	<i>thy peace</i>
16342	Luke	19	43	1) Gr 
16343	Luke	19	43	<i>palisade</i>
16344	Luke	19	46	1) Isa 56:7. 2) Jer 7:11
16345	Luke	20	1	1) Or 
16346	Luke	20	1	<i>good tidings</i>
16347	Luke	20	1	 ; compare Lu 3:18
16348	Luke	20	3	1) Gr 
16349	Luke	20	3	<i>word</i>
16350	Luke	20	10	1) Gr 
16351	Luke	20	10	<i>bondservant</i>
16352	Luke	20	11	1) Gr 
16353	Luke	20	11	<i>bondservant</i>
16354	Luke	20	16	1) Gr 
16355	Luke	20	16	<i>Be it not so</i>
16356	Luke	20	17	1) Ps 118:22
16357	Luke	20	20	1) Or 
16358	Luke	20	20	<i>ruling power</i>
16359	Luke	20	24	1) See marginal note on Lu 7:41
16360	Luke	20	28	1) De 25:5
16361	Luke	20	34	1) Or 
16362	Luke	20	34	<i>age</i>
16363	Luke	20	35	1) Or 
16364	Luke	20	35	<i>age</i>
16365	Luke	20	37	1) Ex 3:6
16366	Luke	20	42	1) Ps 110:1
16367	Luke	21	1	1) Or 
16368	Luke	21	1	<i>and saw them that…treasury, and they were rich</i>
16369	Luke	21	12	1) Gr 
16370	Luke	21	12	<i>you being brought</i>
16371	Luke	21	16	1) Or 
16372	Luke	21	16	<i>betrayed</i>
16373	Luke	21	16	  2) Or 
16374	Luke	21	16	<i>shall they put to death</i>
16375	Luke	21	19	1) Or 
16376	Luke	21	19	<i>stedfastness</i>
16377	Luke	21	19	 2) Or 
16378	Luke	21	19	<i>lives</i>
16379	Luke	21	23	1) Or 
16380	Luke	21	23	<i>earth</i>
16381	Luke	21	26	1) Or 
16382	Luke	21	26	<i>expiring</i>
16383	Luke	21	26	 2) Gr 
16384	Luke	21	26	<i>the inhabited earth</i>
16385	Luke	22	4	1) Or 
16386	Luke	22	4	<i>betray</i>
16387	Luke	22	6	1) Or 
16388	Luke	22	6	<i>betray</i>
16389	Luke	22	6	 2) Or 
16390	Luke	22	6	<i>without tumult</i>
16391	Luke	22	19	1) Or 
16392	Luke	22	19	<i>a loaf</i>
16393	Luke	22	19	 2) Some ancient authorities omit 
16499	John	1	15	 ) 2) Gr 
16394	Luke	22	19	<i>which is given for you…which is pouted out for you</i>
16395	Luke	22	21	1) See verse 4
16396	Luke	22	22	1) See verse 4
16397	Luke	22	24	1) Gr 
16398	Luke	22	24	<i>greater</i>
16399	Luke	22	27	1) Gr 
16400	Luke	22	27	<i>reclineth</i>
16401	Luke	22	29	1) Or 
16402	Luke	22	29	<i>I appoint unto you, even as my Father appointed unto me a kingdom, that ye may eat and drink etc</i>
16403	Luke	22	31	1) Or 
16404	Luke	22	31	<i>obtained you by asking</i>
16405	Luke	22	36	1) Or 
16406	Luke	22	36	<i>and he that hath no sword, let him sell his cloak, and buy one</i>
16407	Luke	22	37	1) Isa 53:12. 2) Gr 
16408	Luke	22	37	<i>end</i>
16409	Luke	22	43	1) Many ancient authorities omit verses 43, 44
16410	Luke	22	48	1) See verse 4
16411	Luke	22	50	1) Gr 
16412	Luke	22	50	<i>bondservant</i>
16413	Luke	22	63	1) Gr 
16414	Luke	22	63	<i>him</i>
16415	Luke	22	70	1) Or 
16416	Luke	22	70	<i>Ye say</i>
16417	Luke	22	70	 it, 
16418	Luke	22	70	<i>because I am</i>
16419	Luke	23	8	1) Gr 
16420	Luke	23	8	<i>sign</i>
16421	Luke	23	15	1) Many ancient authorities read 
16422	Luke	23	15	<i>I sent you to him</i>
16423	Luke	23	17	Many ancient authorities insert verse 17 
16424	Luke	23	17	<i>Now he must needs release unto them at the feast one</i>
16425	Luke	23	17	 prisoner. Compare Mt 27:15; Mr 15:6; Joh 18:39. Others add the same words after verse 19.
16426	Luke	23	33	1) According to the Latin 
16427	Luke	23	33	<i>Calvary</i>
16428	Luke	23	33	 , which has the same meaning.
16429	Luke	23	34	1) Some ancient authorities omit 
16430	Luke	23	34	<i>And Jesus said, Father, forgive them; for they know not what they do.</i>
16431	Luke	23	42	1) Some ancient authorities read 
16432	Luke	23	42	<i>into thy kingdom</i>
16433	Luke	23	44	1) Or 
16434	Luke	23	44	<i>earth</i>
16435	Luke	23	45	1) Gr 
16436	Luke	23	45	<i>the sun failing</i>
16437	Luke	23	45	 2) Or 
16438	Luke	23	45	<i>sanctuary</i>
16439	Luke	23	46	1) Or 
16440	Luke	23	46	<i>And when Jesus had cried with a loud voice, he said</i>
16441	Luke	23	54	1) Gr 
16442	Luke	23	54	<i>began to dawn</i>
16443	Luke	24	3	1) Some ancient authorities omit 
16444	Luke	24	3	<i>of the Lord Jesus</i>
16445	Luke	24	5	1) Gr 
16446	Luke	24	5	<i>him that liveth</i>
16447	Luke	24	6	1) Some ancient authorities omit 
16448	Luke	24	6	<i>He is not here, but is risen</i>
16449	Luke	24	9	1) Some ancient authorities omit 
16450	Luke	24	9	<i>from the tomb</i>
16451	Luke	24	12	1) Some ancient authorities omit verse 12. 2) Or 
16452	Luke	24	12	<i>departed, wondering with himself</i>
16453	Luke	24	17	1) Gr 
16454	Luke	24	17	<i>What words are these that ye exchange one with another</i>
16455	Luke	24	18	1) Or 
16456	Luke	24	18	<i>Dost thou sojourn alone in Jerusalem, and knowest thou not the things</i>
16457	Luke	24	25	1) Or 
16458	Luke	24	25	<i>after</i>
16459	Luke	24	30	1) Or 
16460	Luke	24	30	<i>loaf</i>
16461	Luke	24	36	1) Some ancient authorities omit 
16462	Luke	24	36	<i>and saith unto them, Peace</i>
16463	Luke	24	36	 be 
16464	Luke	24	36	<i>unto you</i>
16465	Luke	24	40	1) Some ancient authorities omit verse 40
16466	Luke	24	42	Many ancient authorities add 
16467	Luke	24	42	<i>and a honeycomb</i>
16468	Luke	24	47	1) Some ancient authorities read 
16469	Luke	24	47	<i>unto</i>
16470	Luke	24	47	  2) Or 
16471	Luke	24	47	<i>nations. Beginning from Jerusalem, ye are witnesses</i>
16472	Luke	24	51	1) Some ancient authorities omit 
16473	Luke	24	51	<i>and was carried up into heaven</i>
16474	Luke	24	52	1) Some ancient authorities omit 
16475	Luke	24	52	<i>worshiped him, and</i>
16476	Luke	24	52	 ; See marginal note on Lu 4:7
16477	John	1	3	1) Or 
16478	John	1	3	<i>was not anything made. That which hath been made was life in him; and the life etc</i>
16479	John	1	5	1) Or 
16480	John	1	5	<i>overcame</i>
16481	John	1	5	 ; See Joh 12:35 (Gr)
16482	John	1	9	1) Or 
16483	John	1	9	<i>the true light, which lighteth every man, was coming</i>
16484	John	1	9	 2) Or 
16485	John	1	9	<i>every man as he cometh</i>
16486	John	1	11	1) Gr 
16487	John	1	11	<i>his own things</i>
16488	John	1	13	1) Or 
16489	John	1	13	<i>begotten</i>
16490	John	1	13	 2) Gr 
16491	John	1	13	<i>bloods</i>
16492	John	1	14	1) Gr 
16493	John	1	14	<i>tabernacled</i>
16494	John	1	14	  2) Or 
16495	John	1	14	<i>an only begotten from a father</i>
16496	John	1	14	 ; Compare Heb 11:17
16497	John	1	15	1) Some ancient authorities read (
16498	John	1	15	<i> this was he that said</i>
16500	John	1	15	<i>first in regard of me</i>
16501	John	1	16	1) Or 
16502	John	1	16	<i>grace upon grace</i>
16503	John	1	18	1) Many very ancient authorities read 
16504	John	1	18	<i>God only begotten</i>
16505	John	1	23	1) Isa 40:3
16506	John	1	24	1) Or 
16507	John	1	24	<i>And</i>
16508	John	1	24	 certain 
16509	John	1	24	<i>had been sent from among the Pharisees.</i>
16510	John	1	26	1) Or 
16511	John	1	26	<i>with</i>
16512	John	1	28	1) Many ancient authorities read 
16513	John	1	28	<i>Bethabarah</i>
16514	John	1	28	 , some 
16515	John	1	28	<i>Betharabah</i>
16516	John	1	28	 ; Compare Jos 15:6, 61; 18:22
16517	John	1	29	1) Or 
16518	John	1	29	<i>beareth the sin</i>
16519	John	1	30	1) Gr 
16520	John	1	30	<i>first in regard of me</i>
16521	John	1	31	1) Or 
16522	John	1	31	<i>with</i>
16523	John	1	33	1) Or 
16524	John	1	33	<i>with</i>
16525	John	1	41	1) That is 
16526	John	1	41	<i>Anointed</i>
16527	John	1	41	 ; Compare Ps 2:2
16528	John	1	42	1) Gr 
16529	John	1	42	<i>Joanes</i>
16530	John	1	42	 ; called in Mt 16:17 
16531	John	1	42	<i>Jonah</i>
16532	John	1	42	 2) That is 
16533	John	1	42	<i>Rock</i>
16534	John	1	42	 or 
16535	John	1	42	<i>Stone</i>
16536	John	2	8	1) Or 
16537	John	2	8	<i>steward</i>
16538	John	2	9	1) Or 
16539	John	2	9	<i>that it had become</i>
16540	John	2	17	1) Ps 69:9
16541	John	2	19	1) Or 
16542	John	2	19	<i>sanctuary</i>
16543	John	2	20	1) Or 
16544	John	2	20	<i>sanctuary</i>
16545	John	2	21	1) Or 
16546	John	2	21	<i>sanctuary</i>
16547	John	2	25	1) Or 
16548	John	2	25	<i>a man; for…the man</i>
16549	John	3	3	1) Or 
16550	John	3	3	<i>from above</i>
16551	John	3	3	 ; See Joh 3:31; 19:11; Jas 1:17; 3:15, 17
16552	John	3	7	1) Or 
16553	John	3	7	<i>from above</i>
16554	John	3	7	 ; See Joh 3:31; 19:11; Jas 1:17; 3:15, 17
16555	John	3	8	1) Or 
16556	John	3	8	<i>The Spirit breatheth</i>
16557	John	3	13	1) Man ancient authorities omit 
16558	John	3	13	<i>who is in heaven</i>
16559	John	3	15	1) Or 
16560	John	3	15	<i>believeth in him may have</i>
16561	John	3	20	1) Or 
16562	John	3	20	<i>practiseth</i>
16563	John	3	20	 2) Or 
16564	John	3	20	<i>convicted</i>
16565	John	3	21	1) Or 
16566	John	3	21	<i>because</i>
16567	John	3	23	1) Gr 
16568	John	3	23	<i>were many waters</i>
16569	John	3	31	1) Some ancient authorities read 
16570	John	3	31	<i>he that cometh from heaven beareth witness of what he hath seen and heard</i>
16571	John	3	36	1) Or 
16572	John	3	36	<i>believeth not</i>
16573	John	4	6	1) Gr 
16574	John	4	6	<i>spring</i>
16575	John	4	6	 ; and so in verse 14; but not in verses 11, 12. 2) Or 
16576	John	4	6	<i>as he was</i>
16577	John	4	6	 ; Compare Joh 13:25
16578	John	4	9	1) Some ancient authorities omit 
16579	John	4	9	<i>For the Jews have no dealings with Samaritans.</i>
16580	John	4	11	1) Or 
16581	John	4	11	<i>Lord</i>
16582	John	4	15	1) Or 
16583	John	4	15	<i>Lord</i>
16584	John	4	23	1) Or 
16585	John	4	23	<i>for such the Father also seeketh</i>
16586	John	4	24	1) Or 
16587	John	4	24	<i>God is spirit</i>
16588	John	4	35	1) Or 
16589	John	4	35	<i>white unto harvest. Already he that reapeth etc</i>
16590	John	4	46	1) Or 
16591	John	4	46	<i>king’s officer</i>
16592	John	4	49	1) Or 
16593	John	4	49	<i>king’s officer</i>
16594	John	4	49	 2) Or 
16595	John	4	49	<i>Lord</i>
16596	John	4	51	1) Gr 
16597	John	4	51	<i>bondservants</i>
16598	John	5	1	1) Many ancient authorities read 
16599	John	5	1	<i>the feast</i>
16600	John	5	1	 (Compare Joh 2:13?)
16601	John	5	2	1) Some ancient authorities read 
16602	John	5	2	<i>Bethsaida</i>
16603	John	5	2	 , others 
16604	John	5	2	<i>Bethzatha</i>
16605	John	5	3	Man ancient authorities insert wholly or in part 
16606	John	5	3	<i>waiting for the moving of the water:</i>
16607	John	5	4	<i> for an angel of the Lord went down at certain seasons into the pool, and troubled the water: whosoever then first after the troubling of the water stepped in was made whole, with whatsoever disease he was holden.</i>
16608	John	5	7	1) Or 
16609	John	5	7	<i>Lord</i>
16610	John	5	8	1) Or 
16611	John	5	8	<i>pallet</i>
16612	John	5	9	1) Or 
16613	John	5	9	<i>pallet</i>
16614	John	5	10	1) Or 
16615	John	5	10	<i>pallet</i>
16616	John	5	11	1) Or 
16617	John	5	11	<i>pallet</i>
16618	John	5	12	1) Or, pallet
16619	John	5	25	1) Or 
16620	John	5	25	<i>hearken</i>
16621	John	5	29	1) Or 
16622	John	5	29	<i>practised</i>
16623	John	5	39	1) Or 
16624	John	5	39	<i>Search the scriptures</i>
16625	John	5	44	1) Some ancient authorities read 
16626	John	5	44	<i>the only</i>
16627	John	5	44	 one
16628	John	6	5	1) Gr 
16629	John	6	5	<i>loaves</i>
16630	John	6	7	1) The word in the Greek denotes a coin worth about eight pence halfpenny, or nearly seventeen cents. 2) Gr 
16631	John	6	7	<i>loaves</i>
16632	John	6	14	1) Some ancient authorities read 
16633	John	6	14	<i>signs</i>
16634	John	6	22	1) Gr 
16635	John	6	22	<i>little boat</i>
16636	John	6	23	1) Gr 
16637	John	6	23	<i>little boats</i>
16638	John	6	24	1) Gr 
16639	John	6	24	<i>little boats</i>
16640	John	6	29	1) Or 
16641	John	6	29	<i>he sent</i>
16642	John	6	31	1) Ne 9:15; Ex 16:4, 15; Ps 78:24; 105:40
16643	John	6	40	1) Or 
16644	John	6	40	<i>that I should raise him up</i>
16645	John	6	45	1) Isa 54:13; (Jer 31:34?)
16646	John	6	55	1) Gr 
16647	John	6	55	<i>true meat</i>
16648	John	6	55	 2) Gr 
16649	John	6	55	<i>true drink</i>
16650	John	6	59	1) Or 
16651	John	6	59	<i>a synagogue</i>
16652	John	6	60	1) Or 
16653	John	6	60	<i>him</i>
16654	John	6	64	1) Or 
16655	John	6	64	<i>deliver him up</i>
16656	John	6	68	1) Or 
16657	John	6	68	<i>hast words</i>
16658	John	6	71	1) Or 
16659	John	6	71	<i>deliver him up</i>
16660	John	7	4	1) Some ancient authorities read 
16661	John	7	4	<i>and seeketh it to be known openly</i>
16662	John	7	8	1) Many ancient authorities add 
16663	John	7	8	<i>yet</i>
16664	John	7	23	1) Gr 
16665	John	7	23	<i>a whole man sound</i>
16666	John	7	35	1) Gr 
16667	John	7	35	<i>of</i>
16668	John	7	38	1) Gr 
16669	John	7	38	<i>out of his belly</i>
16670	John	7	39	1) Some ancient authorities read 
16671	John	7	39	<i>for the Holy Spirit was not yet given</i>
16672	John	7	42	1) 2 Sa 7:12 ff; Mic 5:2
16673	John	7	52	1) Or 
16674	John	7	52	<i>see: for out of Galilee etc</i>
16675	John	7	53	1) Most of the ancient authorities omit Joh 7:53-8:11. Those which contain it vary much from each other.
16676	John	8	5	1) Le 20:10; De 22:22 f
16677	John	8	17	1) Compare De 19:15; 17:6
16678	John	8	25	1) Or 
16679	John	8	25	<i>Altogether that which I also speak unto you</i>
16680	John	8	28	1) Or 
16681	John	8	28	<i>I am</i>
16682	John	8	28	 he: 
16683	John	8	28	<i>and I do</i>
16684	John	8	37	1) Or 
16685	John	8	37	<i>hath no place in you</i>
16686	John	8	38	1) Or 
16687	John	8	38	<i>the Father: do ye also therefore the things which ye heard from the Father</i>
16688	John	8	39	1) Gr 
16689	John	8	39	<i>are</i>
16690	John	8	39	 2) Some ancient authorities read 
16691	John	8	39	<i>ye do the works of Abraham</i>
16692	John	8	43	1) Or 
16693	John	8	43	<i>know</i>
16694	John	8	44	1) Or 
16695	John	8	44	<i>When</i>
16696	John	8	44	 one 
16697	John	8	44	<i>speaketh a lie, he speaketh of his own: for his father also is a liar.</i>
16698	John	8	56	1) Or 
16699	John	8	56	<i>that he should see</i>
16700	John	8	59	1) Or 
16701	John	8	59	<i>was hidden, and went etc</i>
16702	John	8	59	 2) Many ancient authorities add 
16703	John	8	59	<i>and going through the midst of them went his way and so passed by</i>
16704	John	9	6	1) Or 
16705	John	9	6	<i>and with the clay thereof anointed</i>
16706	John	9	6	 his 
16707	John	9	6	<i>eyes</i>
16708	John	9	35	1) Many ancient authorities read 
16709	John	9	35	<i>the Son of Man</i>
16710	John	9	38	1) The Greek word denotes an act of reverence, whether paid to a creature (as here) or to the Creator (see Joh 4:20)
16711	John	10	2	1) Or 
16712	John	10	2	<i>a shepherd</i>
16713	John	10	6	1) Or 
16714	John	10	6	<i>proverb</i>
16715	John	10	8	1) Some ancient authorities omit 
16716	John	10	8	<i>before me</i>
16717	John	10	10	1) Or 
16718	John	10	10	<i>have abundance</i>
16719	John	10	16	1) Or 
16720	John	10	16	<i>lead</i>
16721	John	10	16	 2) Or 
16722	John	10	16	<i>there shall be one flock</i>
16723	John	10	18	1) Some ancient authorities read 
16724	John	10	18	<i>took it away</i>
16725	John	10	18	 2) Or 
16726	John	10	18	<i>right</i>
16727	John	10	22	1) Some ancient authorities read 
16728	John	10	22	<i>At that time was the feast</i>
16729	John	10	23	1) Or 
16730	John	10	23	<i>portico</i>
16731	John	10	29	1) Some ancient authorities read 
16732	John	10	29	<i>That which my Father hath given unto me</i>
16733	John	10	29	 2) Or, aught
16734	John	10	34	1) Ps 82:6
16735	John	10	36	1) Or 
16736	John	10	36	<i>consecrated</i>
16737	John	11	12	1) Gr 
16738	John	11	12	<i>be saved</i>
16739	John	11	16	1) That is 
16740	John	11	16	<i>Twin</i>
16741	John	11	28	1) Or 
16742	John	11	28	<i>her sister, saying secretly</i>
16743	John	11	31	1) Gr 
16744	John	11	31	<i>wail</i>
16745	John	11	33	1) Gr 
16746	John	11	33	<i>wailing</i>
16747	John	11	33	 2) Or 
16748	John	11	33	<i>was moved with indignation in the spirit</i>
16749	John	11	33	 3) Gr 
16750	John	11	33	<i>troubled himself</i>
16751	John	11	38	1) Or 
16752	John	11	38	<i>being moved with indignation in himself</i>
16753	John	11	38	 2) Or 
16754	John	11	38	<i>upon</i>
16755	John	11	39	1) Gr 
16756	John	11	39	<i>he stinketh</i>
16757	John	11	44	1) Or 
16758	John	11	44	<i>grave-bands</i>
16759	John	11	45	1) Many ancient authorities read 
16760	John	11	45	<i>the things which he did</i>
16761	John	12	2	1) Gr 
16762	John	12	2	<i>reclined</i>
16763	John	12	3	1) Or 
16764	John	12	3	<i>liquid nard</i>
16765	John	12	4	1) Or 
16766	John	12	4	<i>deliver him up</i>
16767	John	12	5	1) See marginal note on Joh 6:7
16768	John	12	6	1) Or 
16769	John	12	6	<i>box</i>
16770	John	12	6	 2) Or 
16771	John	12	6	<i>carried what was put therein</i>
16772	John	12	7	1) Or 
16773	John	12	7	<i>Let her alone:</i>
16774	John	12	7	 it was 
16775	John	12	7	<i>that she might keep it</i>
16776	John	12	12	1) Some ancient authorities read 
16777	John	12	12	<i>the common people</i>
16778	John	12	12	 ; See verse 9
16779	John	12	15	1) Zec 9:9
16780	John	12	19	1) Or 
16781	John	12	19	<i>Ye behold</i>
16782	John	12	25	1) 2) 
16783	John	12	25	<i>life</i>
16784	John	12	25	 in these places represents two different Greek words
16785	John	12	27	1) Or 
16786	John	12	27	<i>hour?</i>
16787	John	12	31	1) Or 
16788	John	12	31	<i>a judgment</i>
16789	John	12	32	1) Or 
16790	John	12	32	<i>out of</i>
16791	John	12	35	1) Or 
16792	John	12	35	<i>in</i>
16793	John	12	36	1) Or 
16794	John	12	36	<i>was hidden from them</i>
16795	John	12	38	1) Isa 53:1
16796	John	12	40	1) Isa 6:10
16797	John	12	42	1) Or, him
16798	John	13	1	1) Or 
16799	John	13	1	<i>to the uttermost</i>
16800	John	13	2	1) Or 
16801	John	13	2	<i>deliver him up</i>
16802	John	13	10	1) Some ancient authorities omit 
16803	John	13	10	<i>save</i>
16804	John	13	10	 , and 
16805	John	13	10	<i>his feet</i>
16806	John	13	11	1) Or 
16807	John	13	11	<i>deliver him up</i>
16808	John	13	12	1) Gr 
16809	John	13	12	<i>reclined</i>
16810	John	13	16	1) Gr 
16811	John	13	16	<i>bondservant</i>
16812	John	13	16	 2) Gr 
16813	John	13	16	<i>an apostle</i>
16814	John	13	18	1) Or 
16815	John	13	18	<i>chose</i>
16816	John	13	18	 2) Ps 41:9. 3) Many ancient authorities read 
16817	John	13	18	<i>his bread with me</i>
16818	John	13	21	1) Or 
16819	John	13	21	<i>deliver me up</i>
16820	John	13	29	1) Or 
16821	John	13	29	<i>box</i>
16822	John	13	31	1) Or 
16823	John	13	31	<i>was</i>
16824	John	13	34	1) Or 
16825	John	13	34	<i>even as I loved you, that ye also may love one another</i>
16826	John	14	1	1) Or 
16827	John	14	1	<i>ye believe in God</i>
16828	John	14	2	1) Or 
16829	John	14	2	<i>abiding-places</i>
16830	John	14	4	1) Many ancient authorities read 
16831	John	14	4	<i>And whither I go ye know, and the way ye know.</i>
16832	John	14	6	1) Or 
16833	John	14	6	<i>through</i>
16834	John	14	14	1) Many ancient authorities add 
16835	John	14	14	<i>me</i>
16836	John	14	16	1) Gr 
16837	John	14	16	<i>make request of</i>
16838	John	14	16	 2) Or 
16839	John	14	16	<i>Advocate</i>
16840	John	14	16	 ; Or 
16841	John	14	16	<i>Helper</i>
16842	John	14	16	 ; Gr 
16843	John	14	16	<i>Paraclete</i>
16844	John	14	18	1) Or 
16845	John	14	18	<i>orphans</i>
16846	John	14	19	1) Or 
16847	John	14	19	<i>and ye shall live</i>
16848	John	14	26	1) Or 
16849	John	14	26	<i>Advocate</i>
16850	John	14	26	 ; Or 
16851	John	14	26	<i>Helper</i>
16852	John	14	26	 ; Gr 
16853	John	14	26	<i>Paraclete</i>
16854	John	14	30	1) Or 
16855	John	14	30	<i>in me. But that…I do, arise etc</i>
16856	John	15	8	1) Or 
16857	John	15	8	<i>was</i>
16858	John	15	8	 2) Many ancient authorities read 
16859	John	15	8	<i>that ye bear much fruit, and be my disciples</i>
16860	John	15	15	1) Gr 
16861	John	15	15	<i>bondservants</i>
16862	John	15	15	 2) Gr 
16863	John	15	15	<i>bondservant</i>
16864	John	15	18	1) Or 
16865	John	15	18	<i>know ye</i>
16866	John	15	20	1) Gr 
16867	John	15	20	<i>bondservant</i>
16868	John	15	25	1) Ps 35:19; 69:4
16869	John	15	26	1) Or 
16870	John	15	26	<i>Advocate</i>
16871	John	15	26	 ; Or 
16872	John	15	26	<i>Helper</i>
16873	John	15	26	 ; Gr 
16874	John	15	26	<i>Paraclete</i>
16875	John	15	26	 2) Or 
16876	John	15	26	<i>goeth forth from</i>
16877	John	15	27	1) Or 
16878	John	15	27	<i>and bear ye also witness</i>
16879	John	16	7	1) Or 
16880	John	16	7	<i>Advocate</i>
16881	John	16	7	 ; Or 
16882	John	16	7	<i>Helper</i>
16883	John	16	7	 ; Gr 
16884	John	16	7	<i>Paraclete</i>
16885	John	16	23	1) Or 
16886	John	16	23	<i>ask me nothing</i>
16887	John	16	23	 ; Compare Joh 16:26; 14:13, 20
16888	John	16	25	1) Or 
16889	John	16	25	<i>parables</i>
16890	John	16	26	1) Gr 
16891	John	16	26	<i>make request of</i>
16892	John	16	29	1) Or 
16893	John	16	29	<i>parable</i>
16894	John	17	2	1) Gr 
16895	John	17	2	<i>whatsoever thou hast given him, to them he etc</i>
16896	John	17	9	1) Gr 
16897	John	17	9	<i>make request</i>
16898	John	17	12	1) Ps 41:9?
16899	John	17	15	1) Gr 
16900	John	17	15	<i>make request</i>
16901	John	17	15	 2) Gr 
16902	John	17	15	<i>out of</i>
16903	John	17	15	 3) Or 
16904	John	17	15	<i>evil</i>
16905	John	17	17	1) Or 
16906	John	17	17	<i>Consecrate</i>
16907	John	17	19	1) Or 
16908	John	17	19	<i>consecrate</i>
16909	John	17	20	1) Gr 
16910	John	17	20	<i>make request</i>
16911	John	17	24	1) Gr 
16912	John	17	24	<i>that which thou hast given me, I desire that where I am, they also may be with me, that etc</i>
16913	John	18	1	1) Or 
16914	John	18	1	<i>ravine</i>
16915	John	18	1	 ; Gr 
16916	John	18	1	<i>winter-torrent</i>
16917	John	18	1	 2) Or 
16918	John	18	1	<i>of the Cedars</i>
16919	John	18	2	1) Or 
16920	John	18	2	<i>delivered him up</i>
16921	John	18	3	1) Or 
16922	John	18	3	<i>cohort</i>
16923	John	18	5	1) Or 
16924	John	18	5	<i>delivered him up</i>
16925	John	18	10	1) Gr 
16926	John	18	10	<i>bondservant</i>
16927	John	18	12	1) Or 
16928	John	18	12	<i>cohort</i>
16929	John	18	12	 2) Or 
16930	John	18	12	<i>military tribune</i>
16931	John	18	12	 ; Gr 
16932	John	18	12	<i>chiliarch</i>
16933	John	18	18	1) Or 
16934	John	18	18	<i>bondservants</i>
16935	John	18	18	 2) Gr 
16936	John	18	18	<i>a fire of charcoal</i>
16937	John	18	20	1) Gr 
16938	John	18	20	<i>synagogue</i>
16939	John	18	22	1) Or 
16940	John	18	22	<i>with a rod</i>
16941	John	18	26	1) Gr 
16942	John	18	26	<i>bondservants</i>
16943	John	18	28	1) Or 
16944	John	18	28	<i>palace</i>
16945	John	18	33	1) Or 
16946	John	18	33	<i>palace</i>
16947	John	18	36	1) Or 
16948	John	18	36	<i>officers</i>
16949	John	18	36	 ; as in verses 3, 12, 18, 22
16950	John	18	37	1) Or 
16951	John	18	37	<i>Thou sayest</i>
16952	John	18	37	 it, 
16953	John	18	37	<i>because I am a king</i>
16954	John	19	3	1) Or 
16955	John	19	3	<i>with rods</i>
16956	John	19	9	1) Or 
16957	John	19	9	<i>palace</i>
16958	John	19	10	1) Or 
16959	John	19	10	<i>authority</i>
16960	John	19	11	1) Or 
16961	John	19	11	<i>authority</i>
16962	John	19	12	1) Or 
16963	John	19	12	<i>opposeth Caesar</i>
16964	John	19	20	1) Or 
16965	John	19	20	<i>for the place of the city where Jesus was crucified was nigh at hand</i>
16966	John	19	23	1) Or 
16967	John	19	23	<i>tunic</i>
16968	John	19	24	1) Ps 22:18
16969	John	19	28	1) Ps 69:21
16970	John	19	36	1) Ex 12:46; Nu 9:12; Ps 34:20. 2) Or 
16971	John	19	36	<i>crushed</i>
16972	John	19	37	1) Zec 12:10
16973	John	19	39	1) Some ancient authorities read 
16974	John	19	39	<i>roll</i>
16975	John	20	17	1) Or 
16976	John	20	17	<i>Take not hold on me</i>
16977	John	20	24	1) That is 
16978	John	20	24	<i>Twin</i>
16979	John	20	29	1) Or 
16980	John	20	29	<i>hast thou believed?</i>
16981	John	21	2	1) That is 
16982	John	21	2	<i>Twin</i>
16983	John	21	7	1) Or 
16984	John	21	7	<i>had on his undergarment only</i>
16985	John	21	7	 ; Compare Joh 13:4; Isa 20:2; Mic 1:8, 11
16986	John	21	9	1) Gr 
16987	John	21	9	<i>a fire of charcoal</i>
16988	John	21	9	 2) Or 
16989	John	21	9	<i>a fish</i>
16990	John	21	9	 3) Or 
16991	John	21	9	<i>a loaf</i>
16992	John	21	11	1) Or 
16993	John	21	11	<i>aboard</i>
16994	John	21	13	1) Or 
16995	John	21	13	<i>loaf</i>
16996	John	21	15	1) Gr 
16997	John	21	15	<i>Joanes</i>
16998	John	21	15	 ; See Joh 1:42 margin 2) 3) 
16999	John	21	15	<i>Love</i>
17000	John	21	15	 in these places represents two different Greek words
17001	John	21	16	1) Gr 
17002	John	21	16	<i>Joanes</i>
17003	John	21	16	 ; See Joh 1:42 margin 2) 3) 
17004	John	21	16	<i>Love</i>
17005	John	21	16	 in these places represents two different Greek words
17006	John	21	17	1) Gr 
17007	John	21	17	<i>Joanes</i>
17008	John	21	17	 ; See Joh 1:42 margin 2) 3) 
17009	John	21	17	<i>Love</i>
17010	John	21	17	  in these places represents two different Greek words 4) Or 
17011	John	21	17	<i>perceivest</i>
17012	John	21	20	1) Or 
17013	John	21	20	<i>delivereth thee up</i>
17014	John	21	21	1) Gr 
17015	John	21	21	<i>and this man, what?</i>
17016	Acts	1	1	1) Gr 
17017	Acts	1	1	<i>first</i>
17018	Acts	1	3	1) Gr 
17019	Acts	1	3	<i>presented</i>
17020	Acts	1	4	1) Or 
17021	Acts	1	4	<i>eating with them</i>
17022	Acts	1	5	1) Or 
17023	Acts	1	5	<i>with</i>
17024	Acts	1	7	1) Or 
17025	Acts	1	7	<i>appointed by</i>
17026	Acts	1	13	1) Or 
17027	Acts	1	13	<i>Jacob</i>
17028	Acts	1	13	 2) Or, brother; See Jude 1
17029	Acts	1	14	1) Or 
17030	Acts	1	14	<i>with</i>
17031	Acts	1	14	 certain 
17032	Acts	1	14	<i>women</i>
17033	Acts	1	15	1) Gr 
17034	Acts	1	15	<i>names</i>
17035	Acts	1	15	 ; See Re 3:4
17036	Acts	1	17	1) Or 
17037	Acts	1	17	<i>lot</i>
17038	Acts	1	20	1) Ps 69:25. 2) Ps 109:8. 3) Gr 
17039	Acts	1	20	<i>overseership</i>
17040	Acts	1	21	1) Or 
17041	Acts	1	21	<i>over</i>
17042	Acts	1	26	1) Or 
17043	Acts	1	26	<i>unto</i>
17044	Acts	2	1	1) Gr 
17045	Acts	2	1	<i>was being fulfilled</i>
17046	Acts	2	3	1) Or 
17047	Acts	2	3	<i>parting among them</i>
17048	Acts	2	3	 ; Or 
17049	Acts	2	3	<i>distributing themselves</i>
17050	Acts	2	17	1) Joe 2:28 ff
17051	Acts	2	18	1) Gr 
17052	Acts	2	18	<i>bondmen</i>
17053	Acts	2	18	 2) Gr 
17054	Acts	2	18	<i>bondmaidens</i>
17055	Acts	2	22	1) Gr 
17056	Acts	2	22	<i>powers</i>
17057	Acts	2	23	1) Or 
17058	Acts	2	23	<i>men without the law</i>
17059	Acts	2	23	 ; See Ro 2:12
17060	Acts	2	25	1) Ps 16:8 ff
17061	Acts	2	26	1) Or 
17062	Acts	2	26	<i>tabernacle</i>
17063	Acts	2	28	1) Or 
17064	Acts	2	28	<i>in thy presence</i>
17065	Acts	2	30	1) Or, one 
17066	Acts	2	30	<i>should sit</i>
17067	Acts	2	32	1) Or 
17068	Acts	2	32	<i>of whom</i>
17069	Acts	2	33	1) Or 
17070	Acts	2	33	<i>at</i>
17071	Acts	2	34	1) Ps 110:1
17072	Acts	2	36	1) Or 
17073	Acts	2	36	<i>every house</i>
17074	Acts	2	41	1) Or 
17075	Acts	2	41	<i>having received</i>
17076	Acts	2	42	1) Or 
17077	Acts	2	42	<i>in fellowship</i>
17078	Acts	2	43	1) Many ancient authorities add 
17079	Acts	2	43	<i>in Jerusalem; and great fear was upon all</i>
17080	Acts	2	47	1) Gr 
17081	Acts	2	47	<i>together</i>
17082	Acts	2	47	 2) Or 
17083	Acts	2	47	<i>were being saved</i>
17084	Acts	3	11	1) Or 
17085	Acts	3	11	<i>portico</i>
17086	Acts	3	12	1) Or 
17087	Acts	3	12	<i>thing</i>
17088	Acts	3	13	1) Or 
17089	Acts	3	13	<i>Child</i>
17090	Acts	3	13	 ; See Mt 12:18; Isa 42:1; 52:13; 53:11
17091	Acts	3	15	1) Or 
17092	Acts	3	15	<i>Author</i>
17093	Acts	3	15	 2) Or 
17094	Acts	3	15	<i>of whom</i>
17095	Acts	3	16	1) Or 
17096	Acts	3	16	<i>on the ground of</i>
17097	Acts	3	22	1) De 18:15. 2) Or 
17098	Acts	3	22	<i>as</i>
17099	Acts	3	22	 he raised up 
17100	Acts	3	22	<i>me</i>
17101	Acts	3	23	1) De 18:19
17102	Acts	3	25	1) Gr 
17103	Acts	3	25	<i>covenanted</i>
17104	Acts	3	25	 2) Ge 12:3; 22:18; 26:4; 28:14
17105	Acts	3	26	1) Or 
17106	Acts	3	26	<i>Child</i>
17107	Acts	3	26	 ; See Mt 12:18; Isa 42:1; 52:13; 53:11
17108	Acts	4	1	1) Some ancient authorities read 
17109	Acts	4	1	<i>the chief priests</i>
17110	Acts	4	9	1) Or 
17111	Acts	4	9	<i>in whom</i>
17112	Acts	4	10	1) Or 
17113	Acts	4	10	<i>this</i>
17114	Acts	4	10	 name
17115	Acts	4	11	1) Ps 118:22
17116	Acts	4	16	1) Gr 
17117	Acts	4	16	<i>sign</i>
17118	Acts	4	22	1) Gr 
17119	Acts	4	22	<i>sign</i>
17120	Acts	4	24	1) Gr 
17121	Acts	4	24	<i>Master</i>
17122	Acts	4	24	 2) Or 
17123	Acts	4	24	<i>thou</i>
17124	Acts	4	24	 art 
17125	Acts	4	24	<i>he that did make</i>
17126	Acts	4	25	1) The Greek text in this clause is somewhat uncertain. 2) Ps 2:1, 2. 3) Gr 
17127	Acts	4	25	<i>nations</i>
17128	Acts	4	25	 4) Or 
17129	Acts	4	25	<i>meditate</i>
17130	Acts	4	26	1) Gr 
17131	Acts	4	26	<i>Christ</i>
17132	Acts	4	27	1) Or 
17133	Acts	4	27	<i>Child</i>
17134	Acts	4	27	 ; See marginal note on Ac 3:13. 2) Gr 
17135	Acts	4	27	<i>nations</i>
17136	Acts	4	29	1) Gr 
17137	Acts	4	29	<i>bondservants</i>
17138	Acts	4	30	1) Or 
17139	Acts	4	30	<i>Child</i>
17140	Acts	4	30	 ; See marginal note on Ac 3:13
17141	Acts	4	33	1) Some ancient authorities add 
17142	Acts	4	33	<i>Christ</i>
17143	Acts	4	36	1) Or 
17144	Acts	4	36	<i>consolation</i>
17145	Acts	4	36	 ; See Lu 2:25; Ac 9:31; 15:31; 2 Co 1:3-7 in the Gr
17146	Acts	5	3	1) Or 
17147	Acts	5	3	<i>deceive</i>
17148	Acts	5	6	1) Gr 
17149	Acts	5	6	<i>younger</i>
17150	Acts	5	12	1) Or 
17151	Acts	5	12	<i>portico</i>
17152	Acts	5	14	1) Or 
17153	Acts	5	14	<i>and there were the more added</i>
17154	Acts	5	14	 to them, 
17155	Acts	5	14	<i>believing on the Lord</i>
17156	Acts	5	15	1) Or 
17157	Acts	5	15	<i>pallets</i>
17158	Acts	5	31	1) Or 
17159	Acts	5	31	<i>at</i>
17160	Acts	5	32	1) Some ancient authorities add 
17161	Acts	5	32	<i>in him</i>
17162	Acts	5	32	 2) Gr 
17163	Acts	5	32	<i>sayings</i>
17164	Acts	5	32	 3) Some ancient authorities read 
17165	Acts	5	32	<i>and God hath given the Holy Spirit to them that obey him</i>
17166	Acts	5	42	1) Gr 
17167	Acts	5	42	<i>bring good tidings of</i>
17168	Acts	5	42	 ; See Ac 13:32; 14:15
17169	Acts	6	1	1) Gr 
17170	Acts	6	1	<i>Hellenists</i>
17171	Acts	6	2	1) Gr 
17172	Acts	6	2	<i>pleasing</i>
17173	Acts	6	2	  2) Or 
17174	Acts	6	2	<i>minister to tables</i>
17175	Acts	6	3	1) Some ancient authorities read 
17176	Acts	6	3	<i>But, brethren, look ye out from among you</i>
17177	Acts	6	9	1) Or 
17178	Acts	6	9	<i>Freedmen</i>
17179	Acts	7	16	1) Gr 
17180	Acts	7	16	<i>Emmor</i>
17181	Acts	7	19	1) Or 
17182	Acts	7	19	<i>he</i>
17183	Acts	7	19	 2) Gr 
17184	Acts	7	19	<i>be preserved alive</i>
17185	Acts	7	20	1) Or 
17186	Acts	7	20	<i>fair unto God</i>
17187	Acts	7	20	 ; Compare 2 Co 10:4
17188	Acts	7	25	1) Or 
17189	Acts	7	25	<i>salvation</i>
17190	Acts	7	35	1) Gr 
17191	Acts	7	35	<i>redeemer</i>
17192	Acts	7	37	1) De 18:15. 2) Or 
17193	Acts	7	37	<i>as</i>
17194	Acts	7	37	  he raised up 
17195	Acts	7	37	<i>me</i>
17196	Acts	7	38	1) Or 
17197	Acts	7	38	<i>congregation</i>
17198	Acts	7	42	1) Am 5:25 ff
17199	Acts	7	45	1) Gr 
17200	Acts	7	45	<i>Jesus</i>
17201	Acts	7	45	 ; Compare Heb 4:8. 2) Or 
17202	Acts	7	45	<i>Gentiles</i>
17203	Acts	7	45	 ; Compare Ac 4:25
17204	Acts	7	49	1) Isa 66:1 f
17205	Acts	7	53	1) Or 
17206	Acts	7	53	<i>as the ordinance of angels</i>
17207	Acts	7	53	 ; Gr 
17208	Acts	7	53	<i>unto ordinances of angels</i>
17209	Acts	8	4	1) Compare marginal note on Ac 5:42
17210	Acts	8	7	1) Or 
17211	Acts	8	7	<i>For many of those that had unclean spirits that cried with a loud voice came forth</i>
17212	Acts	8	9	1) Gr 
17213	Acts	8	9	<i>nation</i>
17214	Acts	8	13	1) Gr 
17215	Acts	8	13	<i>powers</i>
17216	Acts	8	18	1) Some ancient authorities omit 
17217	Acts	8	18	<i>Holy</i>
17218	Acts	8	21	1) Gr 
17219	Acts	8	21	<i>word</i>
17220	Acts	8	23	1) Or 
17221	Acts	8	23	<i>wilt become gall</i>
17222	Acts	8	23	 (or 
17223	Acts	8	23	<i>a gall root</i>
17224	Acts	8	23	 ) 
17225	Acts	8	23	<i>of bitterness and a bond of iniquity</i>
17226	Acts	8	23	 ; Compare De 29:18; Heb 12:15
17227	Acts	8	25	1) Gr 
17228	Acts	8	25	<i>brought good tidings</i>
17229	Acts	8	25	 ; Compare Ac 5:42
17230	Acts	8	26	1) Or 
17231	Acts	8	26	<i>at noon</i>
17232	Acts	8	26	 ; Compare Ac 22:6
17233	Acts	8	32	1) Isa 53:7 f
17234	Acts	8	35	1) See marginal note on Ac 5:42
17235	Acts	8	37	Some ancient authorities insert, wholly or in part, verse 37 
17236	Acts	8	37	<i>And Philip said, If thou believest with all thy heart, thou mayest. And he answered and said, I believe that Jesus Christ is the Son of God.</i>
17237	Acts	8	40	1) See marginal note on Ac 5:42
17238	Acts	9	7	1) Or 
17239	Acts	9	7	<i>sound</i>
17240	Acts	9	15	1) Gr 
17241	Acts	9	15	<i>vessel of election</i>
17242	Acts	9	29	1) Gr 
17243	Acts	9	29	<i>Hellenists</i>
17244	Acts	9	31	1) Gr 
17245	Acts	9	31	<i>builded up</i>
17246	Acts	9	31	 2) Or 
17247	Acts	9	31	<i>by</i>
17248	Acts	9	36	1) That is 
17249	Acts	9	36	<i>Gazelle</i>
17250	Acts	10	1	1) Or 
17251	Acts	10	1	<i>cohort</i>
17252	Acts	10	24	1) Some ancient authorities read 
17253	Acts	10	24	<i>he</i>
17254	Acts	10	25	1) The Greek word denotes an act of reverence, whether paid to a creature or to the Creator.
17255	Acts	10	28	1) Or 
17256	Acts	10	28	<i>how unlawful it is for a man etc</i>
17257	Acts	10	36	1) Many ancient authorities read 
17258	Acts	10	36	<i>He sent the word into</i>
17259	Acts	10	36	 2) Or 
17260	Acts	10	36	<i>the gospel</i>
17261	Acts	11	16	1) Or 
17262	Acts	11	16	<i>with</i>
17263	Acts	11	20	1) Many ancient authorities read 
17264	Acts	11	20	<i>Grecian Jews</i>
17265	Acts	11	20	 ; See Ac 6:1. 2) See marginal note on Ac 5:42
17266	Acts	11	23	1) Some ancient authorities read 
17267	Acts	11	23	<i>that they would cleave unto the purpose of their heart in the Lord</i>
17268	Acts	11	26	1) Gr 
17269	Acts	11	26	<i>in</i>
17270	Acts	11	28	1) Gr 
17271	Acts	11	28	<i>the inhabited earth</i>
17272	Acts	11	29	1) Gr 
17273	Acts	11	29	<i>for ministry</i>
17274	Acts	11	29	 ; Compare Ac 6:1
17275	Acts	12	9	1) Gr 
17276	Acts	12	9	<i>through</i>
17277	Acts	12	19	1) Gr 
17278	Acts	12	19	<i>led away to death</i>
17279	Acts	12	21	1) Or 
17280	Acts	12	21	<i>judgment-seat</i>
17281	Acts	12	21	 ; See Mt 27:19
17282	Acts	12	25	1) Many ancient authorities read 
17283	Acts	12	25	<i>to Jerusalem</i>
17284	Acts	13	6	1) Gr 
17285	Acts	13	6	<i>Magus</i>
17286	Acts	13	6	 ; as in Mt 2:1, 7, 16
17287	Acts	13	8	1) Gr 
17288	Acts	13	8	<i>Magus</i>
17289	Acts	13	8	 ; as in Mt 2:1, 7, 16
17290	Acts	13	11	1) Or 
17291	Acts	13	11	<i>until</i>
17292	Acts	13	18	1) Many ancient authorities read 
17293	Acts	13	18	<i>suffered he their manners in the wilderness</i>
17294	Acts	13	18	 ; See De 9:7
17295	Acts	13	22	1) 1 Sa 13:14; Ps 89:20. 2) Gr 
17296	Acts	13	22	<i>wills</i>
17297	Acts	13	24	1) Gr 
17298	Acts	13	24	<i>before the face of his entering in</i>
17299	Acts	13	33	1) Ps 2:7
17300	Acts	13	34	1) Isa 55:3
17301	Acts	13	35	1) Ps 16:10
17302	Acts	13	36	1) Or 
17303	Acts	13	36	<i>served his own generation by the counsel of God, fell asleep</i>
17304	Acts	13	36	 ; Or 
17305	Acts	13	36	<i>served his own generation, fell asleep by the counsel of God</i>
17306	Acts	13	41	1) Hab 1:5. 2) Or 
17307	Acts	13	41	<i>vanish away</i>
17308	Acts	13	41	 ; Jas 4:14
17309	Acts	13	44	1) Many ancient authorities read 
17310	Acts	13	44	<i>the Lord</i>
17311	Acts	13	45	1) Or 
17312	Acts	13	45	<i>railed</i>
17313	Acts	13	47	1) Isa 49:6
17314	Acts	13	48	1) Many ancient authorities read 
17315	Acts	13	48	<i>the Lord</i>
17316	Acts	14	7	1) See marginal note on Ac 5:42
17317	Acts	14	12	1) Gr 
17318	Acts	14	12	<i>Zeus</i>
17319	Acts	14	12	 2) Gr 
17320	Acts	14	12	<i>Hermes</i>
17321	Acts	14	15	1) Or 
17322	Acts	14	15	<i>nature</i>
17323	Acts	14	16	1) Or 
17324	Acts	14	16	<i>Gentiles</i>
17325	Acts	14	16	 ; See Ac 4:25
17326	Acts	14	21	1) Gr 
17327	Acts	14	21	<i>brought the good tidings</i>
17328	Acts	14	21	 ; Compare Ac 5:42
17329	Acts	15	7	1) Gr 
17330	Acts	15	7	<i>from early days</i>
17331	Acts	15	7	 2) Or 
17332	Acts	15	7	<i>good tidings</i>
17333	Acts	15	14	1) See marginal note on Ac 4:25
17334	Acts	15	16	1) Am 9:11, 12
17335	Acts	15	17	1) See marginal note on Ac 4:25
17336	Acts	15	18	1) Or 
17337	Acts	15	18	<i>who doeth these things</i>
17338	Acts	15	18	 where were 
17339	Acts	15	18	<i>known etc</i>
17340	Acts	15	20	1) Or 
17341	Acts	15	20	<i>enjoin them</i>
17342	Acts	15	23	1) Or 
17343	Acts	15	23	<i>The apostles and the elder brethren</i>
17344	Acts	15	24	1) Some ancient authorities omit 
17345	Acts	15	24	<i>who went out</i>
17346	Acts	15	31	1) Or 
17347	Acts	15	31	<i>exhortation</i>
17348	Acts	15	32	1) Or 
17349	Acts	15	32	<i>comforted</i>
17350	Acts	15	34	Some ancient authorities insert, with variations, verse 34 
17351	Acts	15	34	<i>But it seemed good unto Silas to abide there.</i>
17352	Acts	15	35	1) Compare marginal note on Ac 5:42
17353	Acts	16	5	1) Or 
17354	Acts	16	5	<i>in faith</i>
17355	Acts	16	6	1) Or 
17356	Acts	16	6	<i>Phrygia and the region of Galatia</i>
17357	Acts	16	10	1) Gr 
17358	Acts	16	10	<i>bring the good tidings</i>
17359	Acts	16	10	 ; See Ac 5:42
17360	Acts	16	13	1) Many authorities read 
17361	Acts	16	13	<i>where was wont to be etc</i>
17362	Acts	16	16	1) Gr 
17363	Acts	16	16	<i>a spirit, a Python</i>
17364	Acts	16	17	1) Gr 
17365	Acts	16	17	<i>bondservants</i>
17366	Acts	16	17	  2) Or 
17367	Acts	16	17	<i>a way</i>
17368	Acts	16	19	1) Gr 
17369	Acts	16	19	<i>come out</i>
17370	Acts	16	20	1) Gr 
17371	Acts	16	20	<i>praetors</i>
17372	Acts	16	20	 ; compare verses 22, 35, 36, 38
17373	Acts	16	22	1) Gr 
17374	Acts	16	22	<i>praetors</i>
17375	Acts	16	22	 ; See verse 20
17376	Acts	16	32	1) Some ancient authorities read 
17377	Acts	16	32	<i>God</i>
17378	Acts	16	34	1) Gr 
17379	Acts	16	34	<i>a table</i>
17380	Acts	16	34	 2) Or 
17381	Acts	16	34	<i>having believed God</i>
17382	Acts	16	35	1) Gr 
17383	Acts	16	35	<i>praetors</i>
17384	Acts	16	35	 ; See verse 20. 2) Gr 
17385	Acts	16	35	<i>lictors</i>
17386	Acts	16	36	1) Gr 
17387	Acts	16	36	<i>praetors</i>
17388	Acts	16	36	 ; See verses 20
17389	Acts	16	38	1) Gr 
17390	Acts	16	38	<i>lictors</i>
17391	Acts	16	38	 2) Gr 
17392	Acts	16	38	<i>praetors</i>
17393	Acts	16	38	 ; See verses 20
17394	Acts	16	40	1) Or 
17395	Acts	16	40	<i>exhorted</i>
17396	Acts	17	2	1) Or 
17397	Acts	17	2	<i>weeks</i>
17398	Acts	17	6	1) Gr 
17399	Acts	17	6	<i>the inhabited earth</i>
17400	Acts	17	18	1) Or 
17401	Acts	17	18	<i>foreign divinities</i>
17402	Acts	17	18	 2) Gr 
17403	Acts	17	18	<i>demons</i>
17404	Acts	17	18	 3) See marginal note on Ac 5:42
17405	Acts	17	19	1) Or 
17406	Acts	17	19	<i>before</i>
17407	Acts	17	19	 2) Or 
17408	Acts	17	19	<i>the hill of Mars</i>
17409	Acts	17	21	1) Or 
17410	Acts	17	21	<i>had leisure for nothing else</i>
17411	Acts	17	22	1) Or 
17412	Acts	17	22	<i>somewhat superstitious</i>
17413	Acts	17	24	1) Or 
17414	Acts	17	24	<i>sanctuaries</i>
17415	Acts	17	29	1) Or 
17416	Acts	17	29	<i>that which is divine</i>
17417	Acts	17	30	1) Some ancient authorities read 
17418	Acts	17	30	<i>declareth to men</i>
17419	Acts	17	31	1) Gr 
17420	Acts	17	31	<i>the inhabited earth</i>
17421	Acts	17	31	 2) Gr 
17422	Acts	17	31	<i>in</i>
17423	Acts	17	31	 3) Or 
17424	Acts	17	31	<i>a man</i>
17425	Acts	18	4	1) Gr 
17426	Acts	18	4	<i>sought to persuade</i>
17427	Acts	18	6	1) Or 
17428	Acts	18	6	<i>railed</i>
17429	Acts	18	8	1) Gr 
17430	Acts	18	8	<i>believed the Lord</i>
17431	Acts	18	24	1) Or 
17432	Acts	18	24	<i>a learned man</i>
17433	Acts	18	25	1) Gr 
17434	Acts	18	25	<i>taught by word of mouth</i>
17435	Acts	18	27	1) Or 
17436	Acts	18	27	<i>helped much through grace them that had believed</i>
17437	Acts	18	28	1) Or 
17438	Acts	18	28	<i>showing publicly</i>
17439	Acts	19	2	1) Or 
17440	Acts	19	2	<i>there is a Holy Spirit</i>
17441	Acts	19	11	1) Gr 
17442	Acts	19	11	<i>powers</i>
17443	Acts	19	15	1) Or 
17444	Acts	19	15	<i>recognize</i>
17445	Acts	19	24	1) Gr 
17446	Acts	19	24	<i>Artemis</i>
17447	Acts	19	27	1) Gr 
17448	Acts	19	27	<i>Artemis</i>
17449	Acts	19	27	 2) Gr 
17450	Acts	19	27	<i>the inhabited earth</i>
17451	Acts	19	28	1) Gr 
17452	Acts	19	28	<i>Artemis</i>
17453	Acts	19	31	1) That is, officers having charge of festivals etc in the Roman province of Asia.
17454	Acts	19	33	1) Or 
17455	Acts	19	33	<i>And</i>
17456	Acts	19	33	 some 
17457	Acts	19	33	<i>of the multitude instructed Alexander</i>
17458	Acts	19	34	1) Gr 
17459	Acts	19	34	<i>Artemis</i>
17460	Acts	19	35	1) Gr 
17461	Acts	19	35	<i>Artemis</i>
17462	Acts	19	35	 2) Or 
17463	Acts	19	35	<i>heaven</i>
17464	Acts	19	38	1) Or 
17465	Acts	19	38	<i>court</i>
17466	Acts	19	38	 days 
17467	Acts	19	38	<i>are kept</i>
17468	Acts	19	40	1) Or 
17469	Acts	19	40	<i>accused of riot concerning this day</i>
17470	Acts	20	4	1) Many ancient authorities omit 
17471	Acts	20	4	<i>as far as Asia</i>
17472	Acts	20	5	1) Many ancient authorities read 
17473	Acts	20	5	<i>came, and were waiting</i>
17474	Acts	20	13	1) Or 
17475	Acts	20	13	<i>on foot</i>
17476	Acts	20	15	1) Many ancient authorities insert 
17477	Acts	20	15	<i>having tarried at Trogyllium</i>
17478	Acts	20	17	1) Or 
17479	Acts	20	17	<i>presbyters</i>
17480	Acts	20	21	1) Many ancient authorities omit 
17481	Acts	20	21	<i>Christ</i>
17482	Acts	20	24	1) Or 
17483	Acts	20	24	<i>in comparison of accomplishing my course</i>
17484	Acts	20	24	 2) Or 
17485	Acts	20	24	<i>good tidings</i>
17486	Acts	20	28	1) Or 
17487	Acts	20	28	<i>overseers</i>
17488	Acts	20	28	 2) Some ancient authorities, including the two oldest manuscripts, read 
17489	Acts	20	28	<i>God</i>
17490	Acts	20	28	 3) Gr 
17491	Acts	20	28	<i>acquired</i>
17492	Acts	20	32	1) Some ancient authorities read 
17493	Acts	20	32	<i>the Lord</i>
17494	Acts	21	15	1) Or 
17495	Acts	21	15	<i>made ready</i>
17496	Acts	21	16	1) Or 
17497	Acts	21	16	<i>bringing</i>
17498	Acts	21	16	  us to 
17499	Acts	21	16	<i>one Mnason etc</i>
17500	Acts	21	20	1) Gr 
17501	Acts	21	20	<i>myriads</i>
17502	Acts	21	25	1) Or 
17503	Acts	21	25	<i>enjoined</i>
17504	Acts	21	25	 ; Many ancient authorities read 
17505	Acts	21	25	<i>sent</i>
17506	Acts	21	26	1) Or 
17507	Acts	21	26	<i>took the men the next day, and purifying himself etc</i>
17508	Acts	21	31	1) Or 
17509	Acts	21	31	<i>military tribune</i>
17510	Acts	21	31	 ; Gr 
17511	Acts	21	31	<i>chiliarch</i>
17512	Acts	21	31	 2) Or 
17513	Acts	21	31	<i>cohort</i>
17514	Acts	21	32	1) Or 
17515	Acts	21	32	<i>military tribune</i>
17516	Acts	21	32	 ; Gr 
17517	Acts	21	32	<i>chiliarch</i>
17518	Acts	21	33	1) Or 
17519	Acts	21	33	<i>military tribune</i>
17520	Acts	21	33	 ; Gr 
17521	Acts	21	33	<i>chiliarch</i>
17522	Acts	21	37	1) Or 
17523	Acts	21	37	<i>military tribune</i>
17524	Acts	21	37	 ; Gr 
17525	Acts	21	37	<i>chiliarch</i>
17526	Acts	22	13	1) Or 
17527	Acts	22	13	<i>received my sight</i>
17528	Acts	22	13	 and looked 
17529	Acts	22	13	<i>upon him</i>
17530	Acts	22	24	1) Or 
17531	Acts	22	24	<i>military tribune</i>
17532	Acts	22	24	 ; Gr 
17533	Acts	22	24	<i>chiliarch</i>
17534	Acts	22	25	1) Or 
17535	Acts	22	25	<i>for</i>
17536	Acts	22	26	1) Or 
17537	Acts	22	26	<i>military tribune</i>
17538	Acts	22	26	 ; Gr 
17539	Acts	22	26	<i>chiliarch</i>
17540	Acts	22	27	1) Or 
17541	Acts	22	27	<i>military tribune</i>
17542	Acts	22	27	 ; Gr 
17543	Acts	22	27	<i>chiliarch</i>
17544	Acts	22	28	1) Or 
17545	Acts	22	28	<i>military tribune</i>
17546	Acts	22	28	 ; Gr 
17547	Acts	22	28	<i>chiliarch</i>
17548	Acts	22	29	1) Or 
17549	Acts	22	29	<i>military tribune</i>
17550	Acts	22	29	 ; Gr 
17551	Acts	22	29	<i>chiliarch</i>
17552	Acts	23	5	1) Ex 22:28
17553	Acts	23	10	1) Or 
17554	Acts	23	10	<i>military tribune</i>
17555	Acts	23	10	 ; Gr 
17556	Acts	23	10	<i>chiliarch</i>
17557	Acts	23	15	1) Or 
17558	Acts	23	15	<i>military tribune</i>
17559	Acts	23	15	 ; Gr 
17560	Acts	23	15	<i>chiliarch</i>
17561	Acts	23	16	1) Or 
17562	Acts	23	16	<i>having come in</i>
17563	Acts	23	16	 upon them, 
17564	Acts	23	16	<i>and he entered etc</i>
17565	Acts	23	17	1) Or 
17566	Acts	23	17	<i>military tribune</i>
17567	Acts	23	17	 ; Gr 
17568	Acts	23	17	<i>chiliarch</i>
17569	Acts	23	18	1) Or 
17570	Acts	23	18	<i>military tribune</i>
17571	Acts	23	18	 ; Gr 
17572	Acts	23	18	<i>chiliarch</i>
17573	Acts	23	19	1) Or 
17574	Acts	23	19	<i>military tribune</i>
17575	Acts	23	19	 ; Gr 
17576	Acts	23	19	<i>chiliarch</i>
17577	Acts	23	22	1) Or 
17578	Acts	23	22	<i>military tribune</i>
17579	Acts	23	22	 ; Gr 
17580	Acts	23	22	<i>chiliarch</i>
17581	Acts	23	28	1) Some ancient authorities omit 
17582	Acts	23	28	<i>I brought him down unto their council</i>
17583	Acts	23	30	1) Many ancient authorities read 
17584	Acts	23	30	<i>against the man on their part, I sent him to thee, charging etc</i>
17585	Acts	23	30	 2) Many ancient authorities add 
17586	Acts	23	30	<i>Farewell.</i>
17587	Acts	23	35	1) Gr 
17588	Acts	23	35	<i>Praetorium</i>
17589	Acts	24	5	1) Gr 
17590	Acts	24	5	<i>the inhabited earth</i>
17591	Acts	24	6	Some ancient authorities insert 
17592	Acts	24	6	<i>and we would have judged him according to our law.</i>
17593	Acts	24	7	<i> But the chief captain Lysias came, and with great violence took him away out of our hands,</i>
17594	Acts	24	8	<i> commanding his accusers to come before thee.</i>
17595	Acts	24	15	1) Or 
17596	Acts	24	15	<i>accept</i>
17597	Acts	24	16	1) Or 
17598	Acts	24	16	<i>On this account</i>
17599	Acts	24	18	1) Or 
17600	Acts	24	18	<i>in</i>
17601	Acts	24	18	 presenting 
17602	Acts	24	18	<i>which</i>
17603	Acts	24	22	1) Or 
17604	Acts	24	22	<i>military tribune</i>
17605	Acts	24	22	 ; Gr 
17606	Acts	24	22	<i>chiliarch</i>
17607	Acts	24	24	1) Gr 
17608	Acts	24	24	<i>his own wife</i>
17609	Acts	25	1	1) Or 
17610	Acts	25	1	<i>having entered upon his province</i>
17611	Acts	25	11	1) Gr 
17612	Acts	25	11	<i>grant me by favor</i>
17613	Acts	25	13	1) Or 
17614	Acts	25	13	<i>having saluted</i>
17615	Acts	25	16	1) Gr 
17616	Acts	25	16	<i>grant me by favor</i>
17617	Acts	25	19	1) Or 
17618	Acts	25	19	<i>superstition</i>
17619	Acts	25	21	1) Gr 
17620	Acts	25	21	<i>the Augustus</i>
17621	Acts	25	22	1) Or 
17622	Acts	25	22	<i>was wishing</i>
17623	Acts	25	23	1) Or 
17624	Acts	25	23	<i>military tribunes</i>
17625	Acts	25	23	 ; Gr 
17626	Acts	25	23	<i>chiliarchs</i>
17627	Acts	25	25	1) Gr 
17628	Acts	25	25	<i>the Augustus</i>
17629	Acts	26	3	1) Or 
17630	Acts	26	3	<i>because thou art especially expert</i>
17631	Acts	26	12	1) Or 
17632	Acts	26	12	<i>On which errand</i>
17633	Acts	26	14	1) Gr 
17634	Acts	26	14	<i>goads</i>
17635	Acts	26	16	1) Many ancient authorities read 
17636	Acts	26	16	<i>which thou hast seen</i>
17637	Acts	26	18	1) Or 
17638	Acts	26	18	<i>to turn them</i>
17639	Acts	26	20	1) Or 
17640	Acts	26	20	<i>their repentance</i>
17641	Acts	26	23	1) Or 
17642	Acts	26	23	<i>if</i>
17643	Acts	26	23	 ; Or 
17644	Acts	26	23	<i>whether</i>
17645	Acts	26	23	 2) Or 
17646	Acts	26	23	<i>is subject to suffering</i>
17647	Acts	26	24	1) Gr 
17648	Acts	26	24	<i>turneth thee to madness</i>
17649	Acts	26	28	1) Or 
17650	Acts	26	28	<i>In a little</i>
17651	Acts	26	28	 time 
17652	Acts	26	28	<i>thou etc</i>
17653	Acts	26	29	1) Or 
17654	Acts	26	29	<i>both in little and in great</i>
17655	Acts	26	29	 , i.e., in all respects
17656	Acts	27	1	1) Or 
17657	Acts	27	1	<i>cohort</i>
17658	Acts	27	3	1) Gr 
17659	Acts	27	3	<i>receive attention</i>
17660	Acts	27	7	1) Or 
17661	Acts	27	7	<i>suffering us to get there</i>
17662	Acts	27	12	1) Gr 
17663	Acts	27	12	<i>down the south-west wind and down the north-west wind</i>
17664	Acts	27	16	1) Many ancient authorities read 
17665	Acts	27	16	<i>Clauda</i>
17666	Acts	27	19	1) Of 
17667	Acts	27	19	<i>furniture</i>
17668	Acts	27	29	1) Or 
17669	Acts	27	29	<i>prayed</i>
17670	Acts	27	39	1) Some ancient authorities read 
17671	Acts	27	39	<i>bring the ship safe to shore</i>
17672	Acts	28	1	1) Some ancient authorities read 
17673	Acts	28	1	<i>Melitene</i>
17674	Acts	28	3	1) Or 
17675	Acts	28	3	<i>from the heat</i>
17676	Acts	28	11	1) Gr 
17677	Acts	28	11	<i>Dioscuri</i>
17678	Acts	28	13	1) Some ancient authorities read 
17679	Acts	28	13	<i>cast loose</i>
17680	Acts	28	16	1) Some ancient authorities insert 
17681	Acts	28	16	<i>the centurion delivered the prisoners to the Chief of the camp: but etc</i>
17682	Acts	28	17	1) Or 
17683	Acts	28	17	<i>those that were of the Jews first</i>
17684	Acts	28	20	1) Or 
17685	Acts	28	20	<i>call for you, to see and to speak with</i>
17686	Acts	28	20	  you
17687	Acts	28	26	1) Isa 6:9, 10
17688	Acts	28	29	Some ancient authorities insert verse 29 
17689	Acts	28	29	<i>And when he had said these words, the Jews departed, having much disputing among themselves.</i>
17690	Rom	1	1	1) Gr 
17691	Rom	1	1	<i>bondservant</i>
17692	Rom	1	1	 2) Gr 
17693	Rom	1	1	<i>good tidings</i>
17694	Rom	1	1	 ; and so elsewhere; See marginal note on Mt 4:23
17695	Rom	1	4	1) Gr 
17696	Rom	1	4	<i>determined</i>
17697	Rom	1	4	 2) Or 
17698	Rom	1	4	<i>in</i>
17699	Rom	1	4	 3) Or 
17700	Rom	1	4	<i>of the dead</i>
17701	Rom	1	5	1) Or 
17702	Rom	1	5	<i>to the faith</i>
17703	Rom	1	5	 2) Or 
17704	Rom	1	5	<i>Gentiles</i>
17705	Rom	1	8	1) Or 
17706	Rom	1	8	<i>because</i>
17707	Rom	1	9	1) Gr 
17708	Rom	1	9	<i>good tidings</i>
17709	Rom	1	9	 ; See verse 1
17710	Rom	1	10	1) Gr 
17711	Rom	1	10	<i>in</i>
17712	Rom	1	12	1) Or 
17713	Rom	1	12	<i>among</i>
17714	Rom	1	13	1) Or 
17715	Rom	1	13	<i>among</i>
17716	Rom	1	15	1) Gr 
17717	Rom	1	15	<i>bring good tidings</i>
17718	Rom	1	15	 ; Compare Ro 10:15 f
17719	Rom	1	16	1) Gr 
17720	Rom	1	16	<i>good tidings</i>
17721	Rom	1	16	 ; See verse 1
17722	Rom	1	17	1) Hab 2:4. 2) Gr 
17723	Rom	1	17	<i>from</i>
17724	Rom	1	18	1) Or 
17725	Rom	1	18	<i>a wrath</i>
17726	Rom	1	18	 2) Or 
17727	Rom	1	18	<i>hold the truth</i>
17728	Rom	1	18	 ; Compare 1 Co 7:30 (Gr)
17729	Rom	1	20	1) Or 
17730	Rom	1	20	<i>so that they are</i>
17731	Rom	1	25	1) Gr 
17732	Rom	1	25	<i>unto the ages</i>
17733	Rom	1	26	1) Gr 
17734	Rom	1	26	<i>passions of dishonor</i>
17735	Rom	1	28	1) Gr 
17736	Rom	1	28	<i>did not approve</i>
17737	Rom	1	30	1) Or 
17738	Rom	1	30	<i>haters of God</i>
17739	Rom	2	1	1) Gr 
17740	Rom	2	1	<i>the other</i>
17741	Rom	2	2	1) Many ancient authorities read 
17742	Rom	2	2	<i>For</i>
17743	Rom	2	7	1) Or 
17744	Rom	2	7	<i>stedfastness</i>
17745	Rom	2	12	1) Gr 
17746	Rom	2	12	<i>sinned</i>
17747	Rom	2	13	1) Or 
17748	Rom	2	13	<i>righteous</i>
17749	Rom	2	13	 2) Or 
17750	Rom	2	13	<i>accounted righteous</i>
17751	Rom	2	13	 ; and so elsewhere
17752	Rom	2	15	1) Or 
17753	Rom	2	15	<i>their thoughts accusing or else excusing</i>
17754	Rom	2	15	 them 
17755	Rom	2	15	<i>one with another</i>
17756	Rom	2	15	 2) Or 
17757	Rom	2	15	<i>reasonings</i>
17758	Rom	2	15	 ; 2 Co 10:5
17759	Rom	2	16	1) Or 
17760	Rom	2	16	<i>judgeth</i>
17761	Rom	2	16	 2) See marginal note on Ro 1:1
17762	Rom	2	18	1) Or 
17763	Rom	2	18	<i>the Will</i>
17764	Rom	2	18	 2) Or 
17765	Rom	2	18	<i>dost distinguish the things that differ</i>
17766	Rom	2	20	1) Or 
17767	Rom	2	20	<i>an instructor</i>
17768	Rom	2	24	1) Isa 52:5
17769	Rom	3	4	1) Gr 
17770	Rom	3	4	<i>Be it not so</i>
17771	Rom	3	4	 ; and so elsewhere 2) Ps 51:4
17772	Rom	3	6	1) Gr 
17773	Rom	3	6	<i>Be it not so</i>
17774	Rom	3	6	 ; and so elsewhere
17775	Rom	3	7	1) Many ancient authorities read 
17776	Rom	3	7	<i>For</i>
17777	Rom	3	10	1) Ps 14:1 ff; 53:1 ff
17778	Rom	3	13	1) Ps 5:9. 2) Ps 140:3
17779	Rom	3	14	1) Ps 10:7
17780	Rom	3	15	1) Isa 59:7 f
17781	Rom	3	18	1) Ps 36:1
17782	Rom	3	20	1) Gr 
17783	Rom	3	20	<i>out of</i>
17784	Rom	3	20	 2) Or 
17785	Rom	3	20	<i>works of law</i>
17786	Rom	3	20	 3) Or 
17787	Rom	3	20	<i>accounted righteous</i>
17788	Rom	3	20	 4) Or 
17789	Rom	3	20	<i>through law</i>
17790	Rom	3	22	1) Or 
17791	Rom	3	22	<i>of</i>
17792	Rom	3	22	 2) Some ancient authorities add 
17793	Rom	3	22	<i>and upon all</i>
17794	Rom	3	23	1) Gr 
17795	Rom	3	23	<i>sinned</i>
17796	Rom	3	25	1) Or, to be 
17797	Rom	3	25	<i>propitiatory</i>
17798	Rom	3	26	1) See Ro 2:13 margin 2) Gr 
17799	Rom	3	26	<i>is of faith</i>
17800	Rom	3	26	 3) Or 
17801	Rom	3	26	<i>of</i>
17802	Rom	3	28	1) Many ancient authorities read 
17803	Rom	3	28	<i>For we reckon</i>
17804	Rom	3	28	 2) Or 
17805	Rom	3	28	<i>works of law</i>
17806	Rom	3	30	1) Gr 
17807	Rom	3	30	<i>out of</i>
17808	Rom	3	30	 ; Ga 3:8. 2) Or 
17809	Rom	3	30	<i>through the faith</i>
17810	Rom	3	30	 ; Ga 2:16
17811	Rom	3	31	1) Or 
17812	Rom	3	31	<i>law</i>
17813	Rom	3	31	 2) Or 
17814	Rom	3	31	<i>through the faith</i>
17815	Rom	3	31	 ; Ga 2:16
17816	Rom	4	1	1) Some ancient authorities read 
17817	Rom	4	1	<i>of Abraham, our forefather according to the flesh?</i>
17818	Rom	4	1	 2) Or 
17819	Rom	4	1	<i>our forefather according to the flesh hath found?</i>
17820	Rom	4	2	1) Gr 
17821	Rom	4	2	<i>out of</i>
17822	Rom	4	2	 ; Ga 3:8
17823	Rom	4	3	1) Ge 15:6
17824	Rom	4	7	1) Ps 32:1 f
17825	Rom	4	13	1) Or 
17826	Rom	4	13	<i>through law</i>
17827	Rom	4	17	1) Ge 17:5
17828	Rom	4	18	1) Ge 15:5
17829	Rom	4	19	1) Many ancient authorities omit 
17830	Rom	4	19	<i>now</i>
17831	Rom	4	19	 2) Or 
17832	Rom	4	19	<i>womb: yea, etc</i>
17833	Rom	5	1	1) Gr 
17834	Rom	5	1	<i>out of</i>
17835	Rom	5	1	 2) Many ancient authorities read 
17836	Rom	5	1	<i>let us have</i>
17837	Rom	5	2	1) Some ancient authorities omit 
17838	Rom	5	2	<i>by faith</i>
17839	Rom	5	2	 2) Or 
17840	Rom	5	2	<i>let us rejoice</i>
17841	Rom	5	2	 3) Gr 
17842	Rom	5	2	<i>glory</i>
17843	Rom	5	2	 ; Ro 5:11; Heb 3:6
17844	Rom	5	3	1) Or 
17845	Rom	5	3	<i>let us also rejoice</i>
17846	Rom	5	3	 2) Gr 
17847	Rom	5	3	<i>glory</i>
17848	Rom	5	3	 ; Ro 5:11; Heb 3:6
17849	Rom	5	5	1) Gr 
17850	Rom	5	5	<i>poured out</i>
17851	Rom	5	9	1) Gr 
17852	Rom	5	9	<i>in</i>
17853	Rom	5	10	1) Gr 
17854	Rom	5	10	<i>in</i>
17855	Rom	5	11	1) Gr 
17856	Rom	5	11	<i>but also glorying</i>
17857	Rom	5	11	 ; Compare verse 2
17858	Rom	5	16	1) Gr 
17859	Rom	5	16	<i>an act of righteousness</i>
17860	Rom	5	16	 ; Re 15:4; 19:8
17861	Rom	5	17	1) Some ancient authorities omit 
17862	Rom	5	17	<i>of the gift</i>
17863	Rom	5	20	1) Or 
17864	Rom	5	20	<i>law</i>
17865	Rom	6	5	1) Or 
17866	Rom	6	5	<i>united with the likeness</i>
17867	Rom	6	5	 …with the likeness
17868	Rom	6	7	1) Or 
17869	Rom	6	7	<i>released</i>
17870	Rom	6	7	 ; Compare Sir 26:29 (Gr); Ro 7:1
17871	Rom	6	10	1) Or 
17872	Rom	6	10	<i>in that</i>
17873	Rom	6	10	 2) Gr 
17874	Rom	6	10	<i>once for all</i>
17875	Rom	6	10	 ; Heb 7:27
17876	Rom	6	13	1) Or 
17877	Rom	6	13	<i>weapons</i>
17878	Rom	6	13	 ; Compare 2 Co 10:4
17879	Rom	6	16	1) Gr 
17880	Rom	6	16	<i>bondservants</i>
17881	Rom	6	17	1) Or 
17882	Rom	6	17	<i>that ye were…but ye became</i>
17883	Rom	6	17	 2) Gr 
17884	Rom	6	17	<i>bondservants</i>
17885	Rom	6	17	 3) Or 
17886	Rom	6	17	<i>pattern</i>
17887	Rom	6	18	1) Gr 
17888	Rom	6	18	<i>bondservents</i>
17889	Rom	6	20	1) Gr 
17890	Rom	6	20	<i>bondservants</i>
17891	Rom	7	1	1) Or 
17892	Rom	7	1	<i>law</i>
17893	Rom	7	5	1) Gr 
17894	Rom	7	5	<i>passions of sins</i>
17895	Rom	7	7	1) Or 
17896	Rom	7	7	<i>law</i>
17897	Rom	7	7	 2) Or 
17898	Rom	7	7	<i>lust</i>
17899	Rom	7	7	 3) Ex 20:17; De 5:21
17900	Rom	7	8	1) Or 
17901	Rom	7	8	<i>lust</i>
17902	Rom	7	8	 2) Or 
17903	Rom	7	8	<i>law</i>
17904	Rom	7	9	1) Or 
17905	Rom	7	9	<i>law</i>
17906	Rom	7	15	1) Gr 
17907	Rom	7	15	<i>work</i>
17908	Rom	7	17	1) Gr 
17909	Rom	7	17	<i>work</i>
17910	Rom	7	18	1) Gr 
17911	Rom	7	18	<i>work</i>
17912	Rom	7	20	1) Gr 
17913	Rom	7	20	<i>work</i>
17914	Rom	7	21	1) Or 
17915	Rom	7	21	<i>in regard of the law</i>
17916	Rom	7	21	 ; Compare verses 12, 14
17917	Rom	7	22	1) Gr 
17918	Rom	7	22	<i>with</i>
17919	Rom	7	23	1) Gr 
17920	Rom	7	23	<i>in</i>
17921	Rom	7	23	 ; Many ancient authorities read 
17922	Rom	7	23	<i>to</i>
17923	Rom	7	24	1) Or 
17924	Rom	7	24	<i>this body of death</i>
17925	Rom	7	25	1) Many ancient authorities read 
17926	Rom	7	25	<i>But thanks be to God</i>
17927	Rom	7	25	 ; Compare Ro 6:17
17928	Rom	8	3	1) Or 
17929	Rom	8	3	<i>wherein</i>
17930	Rom	8	3	 2) Gr 
17931	Rom	8	3	<i>flesh of sin</i>
17932	Rom	8	3	 3) Or 
17933	Rom	8	3	<i>and</i>
17934	Rom	8	3	 as an offering 
17935	Rom	8	3	<i>for sin</i>
17936	Rom	8	3	 ; Le 7:37; Heb 10:6; etc
17937	Rom	8	4	1) Or 
17938	Rom	8	4	<i>requirement</i>
17939	Rom	8	11	1) Many ancient authorities read 
17940	Rom	8	11	<i>because of</i>
17941	Rom	8	13	1) Gr 
17942	Rom	8	13	<i>doings</i>
17943	Rom	8	20	1) Or 
17944	Rom	8	20	<i>in hope; because the creation etc</i>
17945	Rom	8	22	1) Or 
17946	Rom	8	22	<i>with</i>
17947	Rom	8	22	 us
17948	Rom	8	24	1) Or 
17949	Rom	8	24	<i>by</i>
17950	Rom	8	24	 2) Many ancient authorities read 
17951	Rom	8	24	<i>for what a man seeth, why doth he yet hope for?</i>
17952	Rom	8	24	 3) Some ancient authorities read 
17953	Rom	8	24	<i>awaiteth</i>
17954	Rom	8	25	1) Or 
17955	Rom	8	25	<i>stedfastness</i>
17956	Rom	8	27	1) Or 
17957	Rom	8	27	<i>that</i>
17958	Rom	8	28	1) Some ancient authorities read 
17959	Rom	8	28	<i>God worketh all things with them for good</i>
17960	Rom	8	33	1) Or 
17961	Rom	8	33	<i>Shall God that justifieth?</i>
17962	Rom	8	34	1) Or 
17963	Rom	8	34	<i>Shall Christ Jesus that died, …us?</i>
17964	Rom	8	35	1) Some ancient authorities read 
17965	Rom	8	35	<i>of God</i>
17966	Rom	8	36	1) Ps 44:22
17967	Rom	8	39	1) Or 
17968	Rom	8	39	<i>creation</i>
17969	Rom	9	3	1) Or 
17970	Rom	9	3	<i>pray</i>
17971	Rom	9	5	1) Or 
17972	Rom	9	5	<i>flesh; he who is over all, God,</i>
17973	Rom	9	5	 be 
17974	Rom	9	5	<i>blessed for ever</i>
17975	Rom	9	5	 2) Gr 
17976	Rom	9	5	<i>unto the ages</i>
17977	Rom	9	7	1) Ge 21:12
17978	Rom	9	9	1) Ge 18:10
17979	Rom	9	12	1) Ge 25:23
17980	Rom	9	13	1) Mal 1:2 f
17981	Rom	9	15	1) Ex 33:19
17982	Rom	9	17	1) Ex 9:16
17983	Rom	9	22	1) Or 
17984	Rom	9	22	<i>although willing</i>
17985	Rom	9	23	1) Some ancient authorities omit 
17986	Rom	9	23	<i>and</i>
17987	Rom	9	25	1) Ho 2:23
17988	Rom	9	26	1) Ho 1:10
17989	Rom	9	27	1) Isa 10:22 f
17990	Rom	9	29	1) Isa 1:9
17991	Rom	9	32	1) Or 
17992	Rom	9	32	<i>Because,</i>
17993	Rom	9	32	 doing it 
17994	Rom	9	32	<i>not by faith, but as it were by works, they stumbled</i>
17995	Rom	9	33	1) Isa 28:16. 2) Or 
17996	Rom	9	33	<i>it</i>
17997	Rom	10	1	1) Gr 
17998	Rom	10	1	<i>good pleasure</i>
17999	Rom	10	5	1) Le 18:5
18000	Rom	10	6	1) De 30:12 f
18001	Rom	10	8	1) De 30:14
18002	Rom	10	9	1) Or 
18003	Rom	10	9	<i>that</i>
18004	Rom	10	9	 2) Some ancient authorities read 
18005	Rom	10	9	<i>confess the word with thy mouth, that Jesus</i>
18006	Rom	10	9	 is 
18007	Rom	10	9	<i>Lord</i>
18008	Rom	10	11	1) Isa 28:16
18009	Rom	10	13	1) Joe 2:32
18010	Rom	10	15	1) Isa 52:7. 2) Or 
18011	Rom	10	15	<i>a gospel</i>
18012	Rom	10	16	1) Or 
18013	Rom	10	16	<i>gospel</i>
18014	Rom	10	16	 2) Isa 53:1
18015	Rom	10	18	1) Ps 19:4. 2) Gr 
18016	Rom	10	18	<i>the inhabited earth</i>
18017	Rom	10	19	1) De 32:21
18018	Rom	10	20	1) Isa 65:1
18019	Rom	10	21	1) Isa 65:2
18020	Rom	11	2	1) 1 Ki 19:10. 2) Or 
18021	Rom	11	2	<i>in</i>
18022	Rom	11	2	 ; Compare Mr 12:26
18023	Rom	11	4	1) 1 Ki 19:18
18024	Rom	11	8	1) Isa 29:10; De 29:4
18025	Rom	11	9	1) Ps 69:22 f
18026	Rom	11	11	1) Or 
18027	Rom	11	11	<i>trespass</i>
18028	Rom	11	11	 ; Compare Ro 5:15 ff
18029	Rom	11	17	1) Many ancient authorities read 
18030	Rom	11	17	<i>of the root and of the fatness</i>
18031	Rom	11	26	1) Isa 59:20 f. 2) Gr 
18032	Rom	11	26	<i>ungodlinesses</i>
18033	Rom	11	27	1) Isa 27:9. 2) Gr 
18034	Rom	11	27	<i>the covenant from me</i>
18035	Rom	11	28	1) See Ro 10:15, 16 and marginal note on Ro 1:1
18036	Rom	11	33	1) Or 
18037	Rom	11	33	<i>of the riches and the wisdom etc</i>
18038	Rom	11	33	 2) Or 
18039	Rom	11	33	<i>both of wisdom etc</i>
18040	Rom	11	36	1) Gr 
18041	Rom	11	36	<i>unto the ages</i>
18042	Rom	12	1	1) Gr 
18043	Rom	12	1	<i>well-pleasing</i>
18044	Rom	12	1	 2) Gr 
18045	Rom	12	1	<i>belonging to the reason</i>
18046	Rom	12	1	 3) Or 
18047	Rom	12	1	<i>worship</i>
18048	Rom	12	2	1) Or 
18049	Rom	12	2	<i>age</i>
18050	Rom	12	2	 2) Or 
18051	Rom	12	2	<i>the will of God,</i>
18052	Rom	12	2	 even 
18053	Rom	12	2	<i>the thing which is good and acceptable and perfect</i>
18054	Rom	12	2	 3) Gr 
18055	Rom	12	2	<i>well-pleasing</i>
18056	Rom	12	8	1) Gr 
18057	Rom	12	8	<i>singleness</i>
18058	Rom	12	11	1) Some ancient authorities read 
18059	Rom	12	11	<i>the opportunity</i>
18060	Rom	12	13	1) Gr 
18061	Rom	12	13	<i>pursuing</i>
18062	Rom	12	16	1) Gr 
18063	Rom	12	16	<i>be carried away with</i>
18064	Rom	12	16	 2) Or 
18065	Rom	12	16	<i>them</i>
18066	Rom	12	19	1) Or 
18067	Rom	12	19	<i>wrath</i>
18068	Rom	12	19	 2) De 32:35
18069	Rom	12	20	1) (Pr 25:21 f)
18070	Rom	13	4	1) Or 
18071	Rom	13	4	<i>it</i>
18072	Rom	13	8	1) Gr 
18073	Rom	13	8	<i>the other</i>
18074	Rom	13	8	 ; Compare 1 Co 6:1; 10:24; Ga 6:4
18075	Rom	13	9	1) Ex 20:13 ff; De 5:17 ff
18076	Rom	13	11	1) Or 
18077	Rom	13	11	<i>our salvation nearer than when etc</i>
18078	Rom	14	1	1) Or 
18079	Rom	14	1	<i>to doubtful disputations</i>
18080	Rom	14	4	1) Gr 
18081	Rom	14	4	<i>household-servant</i>
18082	Rom	14	11	1) Isa 45:23. 2) Or 
18083	Rom	14	11	<i>give praise</i>
18084	Rom	14	19	1) Many ancient authorities read 
18085	Rom	14	19	<i>we follow</i>
18086	Rom	14	21	1) Many ancient authorities add 
18087	Rom	14	21	<i>or is offended, or is weak</i>
18088	Rom	14	22	1) Or 
18089	Rom	14	22	<i>putteth to the test</i>
18090	Rom	14	23	Many authorities, some ancient, insert here Ro 16:25-27
18091	Rom	15	3	1) Ps 69:9
18092	Rom	15	4	1) Or 
18093	Rom	15	4	<i>stedfastness</i>
18094	Rom	15	5	1) Or 
18095	Rom	15	5	<i>stedfastness</i>
18096	Rom	15	6	1) Or 
18097	Rom	15	6	<i>God and the Father</i>
18098	Rom	15	6	 ; So 2 Co 1:3; 11:31; Eph 1:3; 1 Pe 1:3
18099	Rom	15	7	1) Some ancient authorities read 
18100	Rom	15	7	<i>us</i>
18101	Rom	15	9	1) Ps 18:49 (or 2 Sa 22:50) 2) Or 
18102	Rom	15	9	<i>confess</i>
18103	Rom	15	9	 3) Gr 
18104	Rom	15	9	<i>nations</i>
18105	Rom	15	9	 ; Compare Mt 4:15
18106	Rom	15	10	1) De 32:43. 2) Gr 
18107	Rom	15	10	<i>nations</i>
18108	Rom	15	11	1) Ps 117:1. 2) Gr 
18109	Rom	15	11	<i>nations</i>
18110	Rom	15	12	1) Isa 11:10. 2) Gr 
18111	Rom	15	12	<i>nations</i>
18112	Rom	15	16	1) Gr 
18113	Rom	15	16	<i>nations</i>
18114	Rom	15	16	 2) Gr 
18115	Rom	15	16	<i>ministering in sacrifice</i>
18116	Rom	15	16	 3) See marginal note on Ro 1:1
18117	Rom	15	18	1) Gr 
18118	Rom	15	18	<i>of those things which Christ wrought not through me</i>
18119	Rom	15	18	 2) Gr 
18120	Rom	15	18	<i>nations</i>
18121	Rom	15	19	1) Many ancient authorities read 
18122	Rom	15	19	<i>the Spirit of God</i>
18123	Rom	15	19	 ; One reads 
18124	Rom	15	19	<i>the Spirit</i>
18125	Rom	15	19	 2) Gr 
18126	Rom	15	19	<i>fulfilled</i>
18127	Rom	15	19	 ; Compare Col 1:25. 3) See marginal note on Ro 1:1
18128	Rom	15	20	1) Gr 
18129	Rom	15	20	<i>being ambitious</i>
18130	Rom	15	20	 ; 2 Co 5:9; 1 Th 4:11. 2) See marginal note on Ro 1:15
18131	Rom	15	21	1) Isa 52:15
18132	Rom	16	1	1) Or 
18133	Rom	16	1	<i>deaconess</i>
18134	Rom	16	7	1) Or 
18135	Rom	16	7	<i>Junia</i>
18136	Rom	16	17	1) Or 
18137	Rom	16	17	<i>teaching</i>
18138	Rom	16	22	1) Or 
18139	Rom	16	22	<i>who write the epistle in the Lord, salute you</i>
18140	Rom	16	24	Some ancient authorities insert here verse 24 
18141	Rom	16	24	<i>The grace of our Lord Jesus Christ be with you all. Amen</i>
18142	Rom	16	24	 , and omit the like words in verse 20
18143	Rom	16	25	1) Some ancient authorities omit verses 25-27; Compare the end of Ro 14:23. 2) See marginal note on Ro 1:1
18144	Rom	16	26	1) Gr 
18145	Rom	16	26	<i>through</i>
18146	Rom	16	26	 2) Or 
18147	Rom	16	26	<i>Gentiles</i>
18148	Rom	16	26	 3) Or 
18149	Rom	16	26	<i>to the faith</i>
18150	Rom	16	27	1) Some ancient authorities omit 
18151	Rom	16	27	<i>to whom</i>
18152	Rom	16	27	 2) Gr 
18153	Rom	16	27	<i>unto the ages</i>
18878	Gal	4	9	<i>elements</i>
18787	Gal	1	1	1) Or 
18788	Gal	1	1	<i>a man</i>
18789	Gal	1	3	1) Some ancient authorities read 
18790	Gal	1	3	<i>from God our Father, and the Lord Jesus Christ</i>
18791	Gal	1	4	1) Or 
18792	Gal	1	4	<i>age</i>
18793	Gal	1	4	 2) Or 
18794	Gal	1	4	<i>God and our Father</i>
18795	Gal	1	5	1) Gr 
18796	Gal	1	5	<i>unto the ages of the ages</i>
18797	Gal	1	6	1) Gr 
18798	Gal	1	6	<i>good tidings</i>
18799	Gal	1	6	 ; See marginal note on Mt 4:23
18800	Gal	1	7	1) Or 
18801	Gal	1	7	<i>which is nothing else save that there etc</i>
18802	Gal	1	7	  2) Gr 
18803	Gal	1	7	<i>good tidings</i>
18804	Gal	1	7	 ; See verse 6
18805	Gal	1	8	1) See marginal note on Mt 11:5. 2) Some ancient authorities omit 
18806	Gal	1	8	<i>unto you</i>
18807	Gal	1	8	 3) Or 
18808	Gal	1	8	<i>contrary to that</i>
18809	Gal	1	9	1) See marginal note on Mt 11:5. 2) Or 
18810	Gal	1	9	<i>contrary to that</i>
18811	Gal	1	10	1) Gr 
18812	Gal	1	10	<i>bondservant</i>
18813	Gal	1	11	1) Gr 
18814	Gal	1	11	<i>good tidings</i>
18815	Gal	1	11	 ; See verse 6. 2) See marginal note on Mt 11:5
18816	Gal	1	12	1) Or 
18817	Gal	1	12	<i>a man</i>
18818	Gal	1	14	1) Gr 
18819	Gal	1	14	<i>in my race</i>
18820	Gal	1	14	 ; Compare 2 Co 11:26
18821	Gal	1	16	1) See marginal note on Mt 11:5
18822	Gal	1	18	1) Or 
18823	Gal	1	18	<i>become acquainted with</i>
18824	Gal	1	19	1) Or 
18825	Gal	1	19	<i>but only</i>
18826	Gal	1	19	 2) Or 
18827	Gal	1	19	<i>Jacob</i>
18828	Gal	1	23	1) See marginal note on Mt 11:5
18829	Gal	2	2	1) See marginal note on Ga 1:6. 2) Or 
18830	Gal	2	2	<i>are</i>
18831	Gal	2	4	1) Or 
18832	Gal	2	4	<i>but</i>
18833	Gal	2	4	 it was 
18834	Gal	2	4	<i>because of</i>
18835	Gal	2	5	1) See marginal note on Ga 1:6
18836	Gal	2	6	1) Or 
18837	Gal	2	6	<i>are</i>
18838	Gal	2	6	 2) Or 
18839	Gal	2	6	<i>what they once were</i>
18840	Gal	2	7	1) See marginal note on Ga 1:6
18841	Gal	2	9	1) Or 
18842	Gal	2	9	<i>Jacob</i>
18843	Gal	2	9	 2) Or 
18844	Gal	2	9	<i>are</i>
18845	Gal	2	14	1) See marginal note on Ga 1:6
18846	Gal	2	16	1) Or 
18847	Gal	2	16	<i>accounted righteous</i>
18848	Gal	2	16	 ; and so elsewhere; Compare Ro 2:13
18849	Gal	3	2	1) Or 
18850	Gal	3	2	<i>message</i>
18851	Gal	3	3	1) Or 
18852	Gal	3	3	<i>do ye now make an end in the flesh?</i>
18853	Gal	3	5	1) Gr 
18854	Gal	3	5	<i>powers</i>
18855	Gal	3	5	 2) Or 
18856	Gal	3	5	<i>in</i>
18857	Gal	3	5	 3) Or 
18858	Gal	3	5	<i>message</i>
18859	Gal	3	6	1) Ge 15:6
18860	Gal	3	7	1) Or 
18861	Gal	3	7	<i>Ye perceive</i>
18862	Gal	3	8	1) Gr 
18863	Gal	3	8	<i>justifieth</i>
18864	Gal	3	8	 2) Gr 
18865	Gal	3	8	<i>nations</i>
18866	Gal	3	8	 3) Ge 12:3
18867	Gal	3	10	1) De 27:26
18868	Gal	3	11	1) Gr 
18869	Gal	3	11	<i>in</i>
18870	Gal	3	11	 2) Hab 2:4
18871	Gal	3	12	1) Le 18:5
18872	Gal	3	13	1) De 21:23
18873	Gal	3	16	1) Ge 13:15; 17:8
18874	Gal	4	3	1) Or 
18875	Gal	4	3	<i>elements</i>
18876	Gal	4	3	 ; 2 Pe 3:10, 12
18877	Gal	4	9	1) Or 
18879	Gal	4	9	 ; See verse 3
18880	Gal	4	13	1) See marginal note on Ga 1:8. 2) Gr 
18881	Gal	4	13	<i>former</i>
18882	Gal	4	14	1) Gr 
18883	Gal	4	14	<i>spat out</i>
18884	Gal	4	15	1) Or 
18885	Gal	4	15	<i>of yours</i>
18886	Gal	4	16	1) Or 
18887	Gal	4	16	<i>by dealing truly with you</i>
18888	Gal	4	22	1) Ge 16:15
18889	Gal	4	23	1) Ge 21:2
18890	Gal	4	25	1) Many ancient authorities read 
18891	Gal	4	25	<i>For Sinai is a mountain in Arabia</i>
18892	Gal	4	27	1) Isa 54:1
18893	Gal	4	28	1) Many ancient authorities read 
18894	Gal	4	28	<i>ye</i>
18895	Gal	4	30	1) Ge 21:10, 12
18896	Gal	5	4	1) Gr 
18897	Gal	5	4	<i>brought to nought</i>
18898	Gal	5	4	 ; Compare Ro 7:2, 6 (in the Greek)
18899	Gal	5	6	1) Or 
18900	Gal	5	6	<i>wrought</i>
18901	Gal	5	12	1) Gr 
18902	Gal	5	12	<i>mutilate themselves</i>
18903	Gal	5	14	1) Le 19:18
18904	Gal	5	20	1) Gr 
18905	Gal	5	20	<i>heresies</i>
18906	Gal	5	21	1) Or 
18907	Gal	5	21	<i>tell you plainly</i>
18908	Gal	5	26	1) Or 
18909	Gal	5	26	<i>challenging</i>
18910	Gal	6	1	1) Or 
18911	Gal	6	1	<i>by</i>
18912	Gal	6	4	1) Gr 
18913	Gal	6	4	<i>the other</i>
18914	Gal	6	4	 ; See Ro 13:8
18915	Gal	6	5	1) Or 
18916	Gal	6	5	<i>load</i>
18917	Gal	6	10	1) Or 
18918	Gal	6	10	<i>while</i>
18919	Gal	6	11	1) Or 
18920	Gal	6	11	<i>have written</i>
18921	Gal	6	12	1) Or 
18922	Gal	6	12	<i>by reason of</i>
18923	Gal	6	13	1) Some ancient authorities read 
18924	Gal	6	13	<i>have been circumcised</i>
18925	Gal	6	14	1) Or 
18926	Gal	6	14	<i>whom</i>
18927	Gal	6	15	1) Or 
18928	Gal	6	15	<i>creation</i>
18929	Eph	1	1	1) Some very ancient authorities omit 
18930	Eph	1	1	<i>at Ephesus</i>
18931	Eph	1	3	1) Or 
18932	Eph	1	3	<i>God and the Father</i>
18933	Eph	1	3	 ; See Ro 15:6 margin
18934	Eph	1	4	1) Or 
18935	Eph	1	4	<i>him: having in love foreordained us</i>
18936	Eph	1	6	1) Or 
18937	Eph	1	6	<i>wherewith he endued us</i>
18938	Eph	1	8	1) Or 
18939	Eph	1	8	<i>wherewith he abounded</i>
18940	Eph	1	10	1) Gr 
18941	Eph	1	10	<i>seasons</i>
18942	Eph	1	10	 2) Gr 
18943	Eph	1	10	<i>upon</i>
18944	Eph	1	12	1) Or 
18945	Eph	1	12	<i>have</i>
18946	Eph	1	13	1) Gr 
18947	Eph	1	13	<i>good tidings</i>
18948	Eph	1	13	 ; See marginal note on Mt 4:23
18949	Eph	1	15	1) Or 
18950	Eph	1	15	<i>in</i>
18951	Eph	1	15	 2) Many ancient authorities omit 
18952	Eph	1	15	<i>the love</i>
18953	Eph	1	21	1) Or 
18954	Eph	1	21	<i>age</i>
18955	Eph	2	2	1) Gr 
18956	Eph	2	2	<i>age</i>
18957	Eph	2	2	 2) Gr 
18958	Eph	2	2	<i>power</i>
18959	Eph	2	3	1) Gr 
18960	Eph	2	3	<i>thoughts</i>
18961	Eph	2	5	1) Some ancient authorities read 
18962	Eph	2	5	<i>in Christ</i>
18963	Eph	2	17	1) Gr 
18964	Eph	2	17	<i>brought good tidings of peace</i>
18965	Eph	2	17	 ; Compare Mt 11:5
18966	Eph	2	21	1) Gr 
18967	Eph	2	21	<i>every building</i>
18968	Eph	2	21	 2) Or 
18969	Eph	2	21	<i>sanctuary</i>
18970	Eph	2	22	1) Gr 
18971	Eph	2	22	<i>into</i>
18972	Eph	3	2	1) Or 
18973	Eph	3	2	<i>stewardship</i>
18974	Eph	3	6	1) Gr 
18975	Eph	3	6	<i>good tidings</i>
18976	Eph	3	6	 ; See Mt 4:23 margin
18977	Eph	3	8	1) Gr 
18978	Eph	3	8	<i>bring good tidings of the etc</i>
18979	Eph	3	8	 ; Compare Eph 2:17
18980	Eph	3	9	1) Some ancient authorities read 
18981	Eph	3	9	<i>bring to light what is</i>
18982	Eph	3	11	1) Gr 
18983	Eph	3	11	<i>purpose of the ages</i>
18984	Eph	3	12	1) Or 
18985	Eph	3	12	<i>the faith of him</i>
18986	Eph	3	13	1) Or 
18987	Eph	3	13	<i>I</i>
18988	Eph	3	13	 2) Or 
18989	Eph	3	13	<i>is</i>
18990	Eph	3	15	1) Gr 
18991	Eph	3	15	<i>fatherhood</i>
18992	Eph	3	21	1) Gr 
18993	Eph	3	21	<i>all the generations of the age of the ages</i>
18994	Eph	4	8	1) Ps 68:18
18995	Eph	4	9	1) Some ancient authorities insert 
18996	Eph	4	9	<i>first</i>
18997	Eph	4	15	1) Or 
18998	Eph	4	15	<i>dealing truly</i>
18999	Eph	4	16	1) Gr 
19000	Eph	4	16	<i>through every joint of the supply</i>
19001	Eph	4	19	1) Or 
19002	Eph	4	19	<i>to make a trade of</i>
19003	Eph	4	19	 2) Or 
19004	Eph	4	19	<i>covetousness</i>
19005	Eph	4	19	 ; Compare Eph 5:3 Col 3:5
19006	Eph	4	24	1) Or 
19007	Eph	4	24	<i>that is after God, created etc</i>
19008	Eph	4	25	1) Zec 8:16
19009	Eph	4	26	1) Ps 4:4. 2) Gr 
19010	Eph	4	26	<i>provocation</i>
19011	Eph	4	29	1) Gr 
19012	Eph	4	29	<i>the building up of the need</i>
19013	Eph	4	32	1) Many ancient authorities read 
19014	Eph	4	32	<i>us</i>
19015	Eph	5	2	1) Some ancient authorities read 
19016	Eph	5	2	<i>you</i>
19017	Eph	5	11	1) Or 
19018	Eph	5	11	<i>convict</i>
19019	Eph	5	13	1) Or 
19020	Eph	5	13	<i>convicted</i>
19021	Eph	5	14	1) (?)Compare 1 Ti 3:16
19022	Eph	5	16	1) Gr 
19023	Eph	5	16	<i>buying up the opportunity</i>
19024	Eph	5	18	1) Or 
19025	Eph	5	18	<i>in spirit</i>
19026	Eph	5	19	1) Or 
19027	Eph	5	19	<i>to yourselves</i>
19028	Eph	5	20	1) Gr 
19029	Eph	5	20	<i>the God and Father</i>
19030	Eph	5	24	1) Or 
19031	Eph	5	24	<i>so</i>
19032	Eph	5	24	 are 
19033	Eph	5	24	<i>the wives also</i>
19034	Eph	5	26	1) Gr 
19035	Eph	5	26	<i>laver</i>
19036	Eph	5	31	1) Ge 2:24
19037	Eph	6	2	1) Ex 20:12; De 5:16
19038	Eph	6	3	1) Or 
19039	Eph	6	3	<i>shalt</i>
19040	Eph	6	3	 2) Or 
19041	Eph	6	3	<i>land</i>
19042	Eph	6	5	1) Gr 
19043	Eph	6	5	<i>Bondservants</i>
19044	Eph	6	5	 2) Gr 
19045	Eph	6	5	<i>lords</i>
19046	Eph	6	6	1) Gr 
19047	Eph	6	6	<i>Bondservants</i>
19048	Eph	6	6	 2) Gr 
19049	Eph	6	6	<i>soul</i>
19050	Eph	6	9	1) Gr 
19051	Eph	6	9	<i>lords</i>
19052	Eph	6	10	1) Or 
19053	Eph	6	10	<i>Henceforth</i>
19054	Eph	6	10	 2) Gr 
19055	Eph	6	10	<i>be made powerful</i>
19056	Eph	6	12	1) Gr 
19057	Eph	6	12	<i>blood and flesh</i>
19058	Eph	6	15	1) Gr 
19059	Eph	6	15	<i>good tidings</i>
19060	Eph	6	15	 ; See Mt 4:23 margin
19061	Eph	6	19	1) Or 
19062	Eph	6	19	<i>in opening my mouth with boldness, to make known</i>
19063	Eph	6	19	 2) Gr 
19064	Eph	6	19	<i>good tidings</i>
19065	Eph	6	19	 ; See Mt 4:23 margin
19066	Eph	6	20	1) Gr 
19067	Eph	6	20	<i>a chain</i>
19068	Eph	6	24	1) Or 
19069	Eph	6	24	<i>in incorruption</i>
19070	Eph	6	24	 ; See Ro 2:7
19071	Phil	1	1	1) Gr 
19072	Phil	1	1	<i>bondservants</i>
19073	Phil	1	1	 2) Or 
19074	Phil	1	1	<i>overseers</i>
19075	Phil	1	5	1) Gr 
19076	Phil	1	5	<i>good tidings</i>
19077	Phil	1	5	 ; and so elsewhere; See marginal note on Mt 4:23
19078	Phil	1	7	1) Or 
19079	Phil	1	7	<i>ye have me in your heart</i>
19080	Phil	1	7	 2) Gr 
19081	Phil	1	7	<i>good tidings</i>
19082	Phil	1	7	 ; See verse 5
19083	Phil	1	10	1) Or 
19084	Phil	1	10	<i>distinguish the things that differ</i>
19085	Phil	1	11	1) Gr 
19086	Phil	1	11	<i>fruit</i>
19087	Phil	1	12	1) Gr 
19088	Phil	1	12	<i>good tidings</i>
19089	Phil	1	12	 ; See verse 5
19090	Phil	1	13	1) Gr 
19091	Phil	1	13	<i>in the whole Praetorium</i>
19092	Phil	1	14	1) Gr 
19093	Phil	1	14	<i>trusting in my bonds</i>
19094	Phil	1	16	1) Or 
19095	Phil	1	16	<i>they that are moved by love</i>
19096	Phil	1	16	 do it, 
19097	Phil	1	16	<i>knowing etc</i>
19098	Phil	1	16	 ; 2) Gr 
19099	Phil	1	16	<i>good tidings</i>
19100	Phil	1	16	 ; See verse 5
19101	Phil	1	17	1) Or 
19102	Phil	1	17	<i>but they that are factious proclaim Christ, not etc</i>
19103	Phil	1	22	1) Or 
19104	Phil	1	22	<i>But if to live in the flesh</i>
19105	Phil	1	22	 be my lot, 
19106	Phil	1	22	<i>this is the fruit of my work: and what I shall choose I know not.</i>
19107	Phil	1	22	 2) Gr 
19108	Phil	1	22	<i>this is for me fruit of work</i>
19109	Phil	1	22	 3) Or 
19110	Phil	1	22	<i>what shall I choose?</i>
19111	Phil	1	25	1) Or 
19112	Phil	1	25	<i>of faith</i>
19113	Phil	1	27	1) Gr 
19114	Phil	1	27	<i>behave as citizens worthily</i>
19115	Phil	1	27	 ; Compare Php 3:20. 2) Gr 
19116	Phil	1	27	<i>good tidings</i>
19117	Phil	1	27	 ; See verse 5. 3) Gr 
19118	Phil	1	27	<i>with</i>
19119	Phil	2	1	1) Or 
19120	Phil	2	1	<i>persuasion</i>
19121	Phil	2	2	1) Some ancient authorities read 
19122	Phil	2	2	<i>of the same mind</i>
19123	Phil	2	7	1) Gr 
19124	Phil	2	7	<i>bondservant</i>
19125	Phil	2	7	 2) Gr 
19126	Phil	2	7	<i>becoming in</i>
19127	Phil	2	10	1) Or, things 
19128	Phil	2	10	<i>of the world below</i>
19129	Phil	2	12	1) Some ancient authorities omit 
19130	Phil	2	12	<i>as</i>
19131	Phil	2	15	1) Gr 
19132	Phil	2	15	<i>luminaries</i>
19133	Phil	2	15	 ; Wis 13:2; compare Re 21:11
19134	Phil	2	17	1) Gr 
19135	Phil	2	17	<i>poured out as a drink-offering</i>
19136	Phil	2	20	1) Gr 
19137	Phil	2	20	<i>genuinely</i>
19138	Phil	2	22	1) Gr 
19139	Phil	2	22	<i>good tidings</i>
19140	Phil	2	22	 ; See Php 1:5
19141	Phil	2	25	1) Gr 
19142	Phil	2	25	<i>apostle</i>
19143	Phil	2	26	1) Many ancient authorities read 
19144	Phil	2	26	<i>to see you all</i>
19145	Phil	2	30	1) Many ancient authorities read 
19146	Phil	2	30	<i>the Lord</i>
19147	Phil	3	4	1) Or 
19148	Phil	3	4	<i>seemeth</i>
19149	Phil	3	7	1) Gr 
19150	Phil	3	7	<i>gains</i>
19151	Phil	3	9	1) Or 
19152	Phil	3	9	<i>not having</i>
19153	Phil	3	9	 as 
19154	Phil	3	9	<i>my righteousness that which is of the law</i>
19155	Phil	3	9	 2) Gr 
19156	Phil	3	9	<i>upon</i>
19157	Phil	3	12	1) Or 
19158	Phil	3	12	<i>lay hold, seeing that also I was laid hold on</i>
19159	Phil	3	13	1) Many ancient authorities omit 
19160	Phil	3	13	<i>yet</i>
19161	Phil	3	14	1) Or 
19162	Phil	3	14	<i>upward</i>
19163	Phil	3	15	1) Or 
19164	Phil	3	15	<i>full-grown</i>
19165	Phil	3	15	 ; 1 Co 2:6
19166	Phil	3	20	1) Or 
19167	Phil	3	20	<i>commonwealth</i>
19168	Phil	4	3	1) Gr 
19169	Phil	4	3	<i>good tidings</i>
19170	Phil	4	3	 ; See Php 1:5
19171	Phil	4	5	1) Or 
19172	Phil	4	5	<i>gentleness</i>
19173	Phil	4	5	 ; Compare 2 Co 10:1
19174	Phil	4	8	1) Gr 
19175	Phil	4	8	<i>reverend</i>
19176	Phil	4	8	 2) Or 
19177	Phil	4	8	<i>gracious</i>
19178	Phil	4	8	 3) Gr 
19179	Phil	4	8	<i>take account of</i>
19180	Phil	4	10	1) Gr 
19181	Phil	4	10	<i>rejoiced</i>
19182	Phil	4	10	 2) Or 
19183	Phil	4	10	<i>seeing that</i>
19184	Phil	4	15	1) Gr 
19185	Phil	4	15	<i>good tidings</i>
19186	Phil	4	15	 ; See Php 1:5
19187	Phil	4	20	1) Or 
19188	Phil	4	20	<i>God and our Father</i>
19189	Phil	4	20	 2) Gr 
19190	Phil	4	20	<i>unto the ages of the ages</i>
19191	Col	1	1	1) Gr 
19192	Col	1	1	<i>the brother</i>
19193	Col	1	2	1) Or 
19194	Col	1	2	<i>to those that are at Colossae, holy and faithful brethren in Christ</i>
19195	Col	1	5	1) Gr 
19196	Col	1	5	<i>good tidings</i>
19197	Col	1	5	 ; and so elsewhere; See marginal note on Mt 4:32
19198	Col	1	7	1) Many ancient authorities read 
19199	Col	1	7	<i>your</i>
19200	Col	1	10	1) Or 
19201	Col	1	10	<i>unto all pleasing, in every good work, bearing fruit and increasing etc</i>
19202	Col	1	10	 2) Or 
19203	Col	1	10	<i>by</i>
19204	Col	1	11	1) Gr 
19205	Col	1	11	<i>made powerful</i>
19206	Col	1	11	  2) Or 
19207	Col	1	11	<i>in</i>
19208	Col	1	11	 3) Or 
19209	Col	1	11	<i>stedfastness</i>
19210	Col	1	12	1) Some ancient authorities read 
19211	Col	1	12	<i>you</i>
19212	Col	1	17	1) That is 
19213	Col	1	17	<i>hold together</i>
19214	Col	1	18	1) Or 
19215	Col	1	18	<i>that among all he might have etc</i>
19216	Col	1	19	1) Or 
19217	Col	1	19	<i>For the whole fulness</i>
19218	Col	1	19	 of God 
19219	Col	1	19	<i>was pleased to dwell in him</i>
19220	Col	1	20	1) Or 
19221	Col	1	20	<i>into him</i>
19222	Col	1	20	 2) Or 
19223	Col	1	20	<i>him</i>
19224	Col	1	22	1) Some ancient authorities read 
19225	Col	1	22	<i>ye have been reconciled</i>
19226	Col	1	23	1) Gr 
19227	Col	1	23	<i>good tidings</i>
19228	Col	1	23	 ; See verse 1
19229	Col	1	25	1) Or 
19230	Col	1	25	<i>stewardship</i>
19231	Col	1	25	 ; See 1 Co 9:17
19232	Col	1	26	1) Or 
19233	Col	1	26	<i>from all ages etc</i>
19234	Col	1	26	 ; Gr 
19235	Col	1	26	<i>from the ages and from the generations</i>
19236	Col	1	29	1) Or 
19237	Col	1	29	<i>in power</i>
19238	Col	2	2	1) Or 
19239	Col	2	2	<i>fulness</i>
19240	Col	2	2	 2) The ancient authorities vary much in the text of this passage.
19241	Col	2	7	1) Or 
19242	Col	2	7	<i>by</i>
19243	Col	2	7	 2) Some ancient authorities insert 
19244	Col	2	7	<i>in it</i>
19245	Col	2	8	1) Or 
19246	Col	2	8	<i>See whether</i>
19247	Col	2	8	 2) Or 
19248	Col	2	8	<i>elements</i>
19249	Col	2	8	 ; See Ga 4:3 margin
19250	Col	2	14	1) Or 
19251	Col	2	14	<i>the bond that was against us by its ordinances</i>
19252	Col	2	15	1) Or 
19253	Col	2	15	<i>having put off from himself the principalities etc</i>
19254	Col	2	18	1) Or 
19255	Col	2	18	<i>of his own mere will, by humility etc</i>
19256	Col	2	18	 2) The Greek word denotes and act of reverence, whether paid to a creature, or tot he Creator. 3) Or 
19257	Col	2	18	<i>taking his stand upon</i>
19258	Col	2	18	 4) Many authorities, some ancient, insert 
19259	Col	2	18	<i>not</i>
19260	Col	2	20	1) Or 
19261	Col	2	20	<i>elements</i>
19262	Col	2	20	 ; See Ga 4:3 margin
19263	Col	2	23	1) Or 
19264	Col	2	23	<i>honor</i>
19265	Col	3	4	1) Many ancient authorities read 
19266	Col	3	4	<i>your</i>
19267	Col	3	6	1) Some ancient authorities omit 
19268	Col	3	6	<i>upon the sons of disobedience</i>
19269	Col	3	6	 ; See Eph 5:6
19270	Col	3	7	1) Or 
19271	Col	3	7	<i>amongst whom</i>
19272	Col	3	13	1) Many ancient authorities read 
19273	Col	3	13	<i>Christ</i>
19274	Col	3	15	1) Gr 
19275	Col	3	15	<i>arbitrate</i>
19276	Col	3	16	1) Some ancient authorities read 
19277	Col	3	16	<i>the Lord</i>
19278	Col	3	16	 ; others 
19279	Col	3	16	<i>God</i>
19280	Col	3	16	 2) Or 
19281	Col	3	16	<i>richly in all wisdom; teaching etc</i>
19282	Col	3	16	 3) Or 
19283	Col	3	16	<i>yourselves</i>
19284	Col	3	22	1) Gr 
19285	Col	3	22	<i>Bondservants</i>
19286	Col	3	22	 2) Gr 
19287	Col	3	22	<i>lords</i>
19288	Col	3	23	1) Gr 
19289	Col	3	23	<i>from the soul</i>
19290	Col	3	25	1) Gr 
19291	Col	3	25	<i>receive again the wrong</i>
19292	Col	4	1	1) Gr 
19293	Col	4	1	<i>Lords</i>
19294	Col	4	1	 2) Gr 
19295	Col	4	1	<i>bondservants</i>
19296	Col	4	1	 3) Gr 
19297	Col	4	1	<i>equality</i>
19298	Col	4	5	1) Gr 
19299	Col	4	5	<i>buying up the opportunity</i>
19300	Col	4	12	1) Gr 
19301	Col	4	12	<i>bondservant</i>
19302	Col	4	15	1) The Greek may represent 
19303	Col	4	15	<i>Nympha</i>
19304	Col	4	15	 2) Some ancient authorities read 
19305	Col	4	15	<i>her</i>
19306	Col	4	16	1) Gr 
19307	Col	4	16	<i>the</i>
19623	Titus	1	1	1) Gr 
19624	Titus	1	1	<i>bondservant</i>
19625	Titus	1	2	1) Or 
19626	Titus	1	2	<i>long ages ago</i>
19627	Titus	1	3	1) Or 
19628	Titus	1	3	<i>its</i>
19629	Titus	1	3	 2) Or 
19630	Titus	1	3	<i>proclamation</i>
19631	Titus	1	7	1) Or 
19632	Titus	1	7	<i>overseer</i>
19633	Titus	1	7	 2) Or 
19634	Titus	1	7	<i>not quarrelsome over wine</i>
19635	Titus	1	9	1) Gr 
19636	Titus	1	9	<i>healthful</i>
19637	Titus	1	9	  2) Or 
19638	Titus	1	9	<i>teaching</i>
19639	Titus	1	12	1) Gr 
19640	Titus	1	12	<i>bellies</i>
19641	Titus	1	13	1) Gr 
19642	Titus	1	13	<i>healthy</i>
19643	Titus	2	1	1) Gr 
19644	Titus	2	1	<i>healthful</i>
19645	Titus	2	1	 2) Or 
19646	Titus	2	1	<i>teaching</i>
19647	Titus	2	2	1) Gr 
19648	Titus	2	2	<i>healthy</i>
19649	Titus	2	2	 2) Or 
19650	Titus	2	2	<i>stedfastness</i>
19651	Titus	2	9	1) Gr 
19652	Titus	2	9	<i>bondservants</i>
19653	Titus	2	11	1) Or 
19654	Titus	2	11	<i>hath appeared to all men, bringing salvation</i>
19655	Titus	2	12	1) Or 
19656	Titus	2	12	<i>age</i>
19657	Titus	2	13	1) Or 
19658	Titus	2	13	<i>of our great God and Saviour</i>
19659	Titus	2	15	1) Gr 
19660	Titus	2	15	<i>commandment</i>
19661	Titus	3	5	1) Or 
19662	Titus	3	5	<i>laver</i>
19663	Titus	3	5	 2) Or 
19664	Titus	3	5	<i>and</i>
19665	Titus	3	5	 through 
19666	Titus	3	5	<i>renewing</i>
19667	Titus	3	7	1) Or 
19668	Titus	3	7	<i>heirs, according to hope, of eternal life</i>
19669	Titus	3	8	1) Or 
19670	Titus	3	8	<i>profess honest occupations</i>
19671	Titus	3	10	1) Or 
19672	Titus	3	10	<i>avoid</i>
19673	Titus	3	14	1) Or 
19674	Titus	3	14	<i>profess honest occupations</i>
19675	Titus	3	14	 2) Or 
19676	Titus	3	14	<i>wants</i>
19677	Phlm	1	1	1) Gr 
19678	Phlm	1	1	<i>the brother</i>
19679	Phlm	1	2	1) Gr 
19680	Phlm	1	2	<i>the sister</i>
19681	Phlm	1	5	1) Or 
19682	Phlm	1	5	<i>thy love and faith</i>
19683	Phlm	1	6	1) Many ancient authorities read 
19684	Phlm	1	6	<i>us</i>
19685	Phlm	1	9	1) Or 
19686	Phlm	1	9	<i>an ambassador, and now etc</i>
19687	Phlm	1	10	1) The Greek word means 
19688	Phlm	1	10	<i>Helpful</i>
19689	Phlm	1	10	 ; Compare verse 20 margin
19690	Phlm	1	13	1) Gr 
19691	Phlm	1	13	<i>good tidings</i>
19692	Phlm	1	13	 ; See marginal note on Mt 4:23
19693	Phlm	1	16	1) Gr 
19694	Phlm	1	16	<i>bondservant</i>
19695	Phlm	1	20	1) Or 
19696	Phlm	1	20	<i>help</i>
19697	Phlm	1	20	 ; Compare verse 10 margin
19698	Phlm	1	25	1) Some ancient authorities read 
19699	Phlm	1	25	<i>the</i>
19700	Phlm	1	25	 2) Many ancient authorities omit 
19701	Phlm	1	25	<i>Amen.</i>
19702	Heb	1	2	1) Gr 
19703	Heb	1	2	<i>a Son</i>
19704	Heb	1	2	 2) Gr 
19705	Heb	1	2	<i>ages</i>
19706	Heb	1	2	 ; Compare 1 Ti 1:17
19707	Heb	1	3	1) Or 
19708	Heb	1	3	<i>the impress of his substance</i>
19709	Heb	1	5	1) Ps 2:7. 2) 2 Sa 7:14
19710	Heb	1	6	1) Or 
19711	Heb	1	6	<i>And again, when he bringeth in</i>
19712	Heb	1	6	 2) Or 
19713	Heb	1	6	<i>shall have brought in</i>
19714	Heb	1	6	 3) Gr 
19715	Heb	1	6	<i>the inhabited earth</i>
19716	Heb	1	6	 4) De 32:43 (Sept); compare Ps 97:7
19717	Heb	1	7	1) Ps 104:4
19718	Heb	1	8	1) Ps 45:6 f 2) Or 
19719	Heb	1	8	<i>Thy throne is God for etc</i>
19720	Heb	1	8	 3) The two oldest Greek manuscripts read 
19721	Heb	1	8	<i>his</i>
19722	Heb	1	10	1) Ps 102:25 ff
19723	Heb	1	13	1) Ps 110:1
19724	Heb	2	4	1) Gr 
19725	Heb	2	4	<i>distributions</i>
19726	Heb	2	5	1) Gr 
19727	Heb	2	5	<i>the inhabited earth</i>
19728	Heb	2	6	1) Ps 8:4 ff
19729	Heb	2	7	1) Or 
19730	Heb	2	7	<i>for a little while lower</i>
19731	Heb	2	7	 2) Many authorities omit 
19732	Heb	2	7	<i>And didst…hands</i>
19733	Heb	2	9	1) Or 
19734	Heb	2	9	<i>for a little while lower</i>
19735	Heb	2	10	1) Or 
19736	Heb	2	10	<i>having brought</i>
19737	Heb	2	10	 2) Or 
19738	Heb	2	10	<i>captain</i>
19739	Heb	2	12	1) Ps 22:22. 2) Or 
19740	Heb	2	12	<i>church</i>
19741	Heb	2	13	1) Isa 8:17 f
19742	Heb	2	14	1) Gr 
19743	Heb	2	14	<i>blood and flesh</i>
19744	Heb	2	14	 ; Eph 6:12. 2) Or 
19745	Heb	2	14	<i>may</i>
19746	Heb	2	14	 3) Or 
19747	Heb	2	14	<i>hath</i>
19748	Heb	2	15	1) Or 
19749	Heb	2	15	<i>may</i>
19750	Heb	2	16	1) Gr 
19751	Heb	2	16	<i>For verily not of angels doth he take hold, but he taketh hold of etc</i>
19752	Heb	2	16	 ; Compare Isa 41:9; Sir 4:11; Heb 8:9 (in the Greek)
19753	Heb	2	18	1) Or 
19754	Heb	2	18	<i>For having been himself tempted in that wherein he hath suffered</i>
19755	Heb	2	18	 2) Or 
19756	Heb	2	18	<i>wherein</i>
19757	Heb	3	2	1) Gr 
19758	Heb	3	2	<i>made</i>
19759	Heb	3	2	 2) That is 
19760	Heb	3	2	<i>God’s house</i>
19761	Heb	3	2	 ; See Nu 12:7
19762	Heb	3	3	1) Or 
19763	Heb	3	3	<i>established</i>
19764	Heb	3	4	1) Or 
19765	Heb	3	4	<i>established</i>
19766	Heb	3	5	1) That is 
19767	Heb	3	5	<i>God’s house</i>
19768	Heb	3	5	 ; See Nu 12:7
19769	Heb	3	6	1) That is 
19770	Heb	3	6	<i>God’s house</i>
19771	Heb	3	6	 ; See Nu 12:7
19772	Heb	3	7	1) Ps 95:7 ff
19773	Heb	3	9	1) Or 
19774	Heb	3	9	<i>Wherewith</i>
19775	Heb	3	11	1) Or 
19776	Heb	3	11	<i>So</i>
19777	Heb	3	11	 2) Gr 
19778	Heb	3	11	<i>If they shall enter</i>
19779	Heb	3	14	1) Or 
19780	Heb	3	14	<i>with</i>
19781	Heb	3	14	 ; Compare Heb 1:9; 3:6
19782	Heb	3	15	1) Ps 95:7 f
19783	Heb	3	17	1) Gr 
19784	Heb	3	17	<i>limbs</i>
19785	Heb	4	2	1) Or 
19786	Heb	4	2	<i>a gospel</i>
19787	Heb	4	2	 2) Many ancient authorities read 
19788	Heb	4	2	<i>they were</i>
19789	Heb	4	3	1) Some ancient authorities read 
19790	Heb	4	3	<i>We therefore</i>
19791	Heb	4	3	 2) Ps 95:11. 3) Or 
19792	Heb	4	3	<i>So</i>
19793	Heb	4	3	 4) Gr 
19794	Heb	4	3	<i>If they shall enter</i>
19795	Heb	4	4	1) Ge 2:2
19796	Heb	4	5	1) Ps 95:11 2) Gr 
19797	Heb	4	5	<i>If they shall enter</i>
19798	Heb	4	6	1) Or 
19799	Heb	4	6	<i>the gospel was</i>
19800	Heb	4	7	1) Ps 95:7 f
19801	Heb	4	8	1) Gr 
19802	Heb	4	8	<i>Jesus</i>
19803	Heb	4	8	 ; Compare Ac 7:45
19804	Heb	4	11	1) Or 
19805	Heb	4	11	<i>into</i>
19806	Heb	4	11	 ; Gr 
19807	Heb	4	11	<i>in</i>
19808	Heb	5	5	1) Ps 2:7
19809	Heb	5	6	1) Ps 110:4
19810	Heb	5	7	1) Or 
19811	Heb	5	7	<i>out of</i>
19812	Heb	5	9	1) Gr 
19813	Heb	5	9	<i>cause</i>
19814	Heb	5	11	1) Or 
19815	Heb	5	11	<i>which</i>
19816	Heb	5	12	1) Or 
19817	Heb	5	12	<i>that</i>
19818	Heb	5	12	 one 
19819	Heb	5	12	<i>teach you which</i>
19820	Heb	5	12	 are 
19821	Heb	5	12	<i>the rudiments</i>
19822	Heb	5	12	 2) Gr 
19823	Heb	5	12	<i>beginning</i>
19824	Heb	5	13	1) Or 
19825	Heb	5	13	<i>inexperienced in</i>
19826	Heb	5	14	1) Or 
19827	Heb	5	14	<i>perfect</i>
19828	Heb	6	1	1) Gr 
19829	Heb	6	1	<i>the word of the beginning of Christ</i>
19830	Heb	6	1	 2) Or 
19831	Heb	6	1	<i>full growth</i>
19832	Heb	6	2	1) Some ancient authorities read, even 
19833	Heb	6	2	<i>the teaching of</i>
19834	Heb	6	2	 2) Or 
19835	Heb	6	2	<i>washings</i>
19836	Heb	6	4	1) Or 
19837	Heb	6	4	<i>having both tasted of…and being made…and having tasted etc</i>
19838	Heb	6	5	1) Or 
19839	Heb	6	5	<i>tasted the word of God that it is good</i>
19840	Heb	6	6	1) Or 
19841	Heb	6	6	<i>the while</i>
19842	Heb	6	9	1) Or 
19843	Heb	6	9	<i>belong to</i>
19844	Heb	6	11	1) Or 
19845	Heb	6	11	<i>full assurance</i>
19846	Heb	6	14	1) Ge 22:16 f
19847	Heb	6	17	1) Gr 
19848	Heb	6	17	<i>mediated</i>
19849	Heb	7	13	1) Gr 
19850	Heb	7	13	<i>hath partaken of</i>
19851	Heb	7	13	 ; See Heb 2:14
19852	Heb	7	16	1) Gr 
19853	Heb	7	16	<i>indissoluble</i>
19854	Heb	7	17	1) Ps 110:4
19855	Heb	7	21	1) Or 
19856	Heb	7	21	<i>through</i>
19857	Heb	7	21	 2) Or 
19858	Heb	7	21	<i>unto</i>
19859	Heb	7	21	 3) Ps 110:4
19860	Heb	7	24	1) Or 
19861	Heb	7	24	<i>hath a priesthood that doth not pass to another</i>
19862	Heb	7	24	 2) Or 
19863	Heb	7	24	<i>inviolable</i>
19864	Heb	7	25	1) Gr 
19865	Heb	7	25	<i>completely</i>
19866	Heb	8	1	1) Or 
19867	Heb	8	1	<i>Now to sum up what we are saying: We have etc</i>
19868	Heb	8	1	 2) Gr 
19869	Heb	8	1	<i>upon</i>
19870	Heb	8	2	1) Or 
19871	Heb	8	2	<i>holy things</i>
19872	Heb	8	5	1) Or 
19873	Heb	8	5	<i>complete</i>
19874	Heb	8	5	 2) Ex 25:40
19875	Heb	8	8	1) Some ancient authorities read 
19876	Heb	8	8	<i>finding fault</i>
19877	Heb	8	8	 with it, 
19878	Heb	8	8	<i>he saith unto them etc</i>
19879	Heb	8	8	 2) Jer 31:31 ff 3) Gr 
19880	Heb	8	8	<i>accomplish</i>
19881	Heb	8	10	1) Gr 
19882	Heb	8	10	<i>I will covenant</i>
19883	Heb	9	2	1) Or, are 2) Gr 
19884	Heb	9	2	<i>the setting forth of the loaves</i>
19885	Heb	9	4	1) Or 
19886	Heb	9	4	<i>censer</i>
19887	Heb	9	4	 ; 2 Ch 26:19; Eze 8:11. 2) Or, is
19888	Heb	9	5	1) Gr 
19889	Heb	9	5	<i>the propitiatory</i>
19890	Heb	9	7	1) Gr 
19891	Heb	9	7	<i>ignorances</i>
19892	Heb	9	7	 ; Sir 23:2 f
19893	Heb	9	11	1) Some ancient authorities read 
19894	Heb	9	11	<i>the good things that are come</i>
19895	Heb	9	14	1) Or, his 
19896	Heb	9	14	<i>eternal spirit</i>
19897	Heb	9	14	 2) Many ancient authorities read 
19898	Heb	9	14	<i>our</i>
19899	Heb	9	15	1) The Greek word here used signifies both 
19900	Heb	9	15	<i>covenant</i>
19901	Heb	9	15	 and 
19902	Heb	9	15	<i>testament</i>
19903	Heb	9	16	1) The Greek word here used signifies both 
19904	Heb	9	16	<i>covenant</i>
19905	Heb	9	16	 and 
19906	Heb	9	16	<i>testament</i>
19907	Heb	9	16	  2) Gr 
19908	Heb	9	16	<i>be brought</i>
19909	Heb	9	17	1) The Greek word here used signifies both 
19910	Heb	9	17	<i>covenant</i>
19911	Heb	9	17	 and 
19912	Heb	9	17	<i>testament</i>
19913	Heb	9	17	 2) Gr 
19914	Heb	9	17	<i>over the dead</i>
19915	Heb	9	17	 3) Or 
19916	Heb	9	17	<i>for doth it ever…liveth?</i>
19917	Heb	9	20	1) Ex 29:8. 2) The Greek word here used signifies both 
19918	Heb	9	20	<i>covenant</i>
19919	Heb	9	20	 and 
19920	Heb	9	20	<i>testament</i>
19921	Heb	9	26	1) Or 
19922	Heb	9	26	<i>consummation</i>
19923	Heb	9	26	 2) Or 
19924	Heb	9	26	<i>by his sacrifice</i>
19925	Heb	9	27	1) Gr 
19926	Heb	9	27	<i>laid up for</i>
19927	Heb	9	27	 ; Col 1:5; 2 Ti 4:8
19928	Heb	10	1	1) Many ancient authorities read 
19929	Heb	10	1	<i>they can</i>
19930	Heb	10	5	1) Ps 40:6 ff
19931	Heb	10	10	1) Or 
19932	Heb	10	10	<i>In</i>
19933	Heb	10	11	1) Some ancient authorities read 
19934	Heb	10	11	<i>high priest</i>
19935	Heb	10	12	1) Or 
19936	Heb	10	12	<i>sins, for ever sat down etc</i>
19937	Heb	10	16	1) Jer 31:33 f 2) Gr 
19938	Heb	10	16	<i>I will covenant</i>
19939	Heb	10	22	1) Or 
19940	Heb	10	22	<i>full assurance</i>
19941	Heb	10	22	 2) Or 
19942	Heb	10	22	<i>conscience, and our body washed with pure water: let us hold fast</i>
19943	Heb	10	27	1) Or 
19944	Heb	10	27	<i>jealousy</i>
19945	Heb	10	29	1) Gr 
19946	Heb	10	29	<i>a common thing</i>
19947	Heb	10	30	1) De 32:35. 2) De 32:36
19948	Heb	10	34	1) Many ancient authorities read 
19949	Heb	10	34	<i>ye have your own selves for a better possession etc</i>
19950	Heb	10	34	 ; Compare Lu 9:25; 21:19
19951	Heb	10	36	1) Or 
19952	Heb	10	36	<i>stedfastness</i>
19953	Heb	10	37	1) Hab 2:3 f
19954	Heb	10	38	1) Some ancient authorities read 
19955	Heb	10	38	<i>the righteous one</i>
19956	Heb	10	39	1) Gr 
19957	Heb	10	39	<i>of shrinking back…but of faith</i>
19958	Heb	10	39	 2) Or 
19959	Heb	10	39	<i>gaining</i>
19960	Heb	11	1	1) Or 
19961	Heb	11	1	<i>the giving substance to</i>
19962	Heb	11	1	 2) Or 
19963	Heb	11	1	<i>test</i>
19964	Heb	11	3	1) Gr 
19965	Heb	11	3	<i>ages</i>
19966	Heb	11	3	 ; Compare 1 Ti 1:17 margin
19967	Heb	11	4	1) The Greek text in this clause is somewhat uncertain. 2) Or 
19968	Heb	11	4	<i>over his gifts</i>
19969	Heb	11	5	1) Or 
19970	Heb	11	5	<i>for before his translation he hath had witness borne to him that he etc</i>
19971	Heb	11	9	1) Or 
19972	Heb	11	9	<i>having taken up his abode in tents</i>
19973	Heb	11	10	1) Or 
19974	Heb	11	10	<i>architect</i>
19975	Heb	11	13	1) Gr 
19976	Heb	11	13	<i>according to</i>
19977	Heb	11	17	1) Gr 
19978	Heb	11	17	<i>hath offered up</i>
19979	Heb	11	18	1) Or 
19980	Heb	11	18	<i>of</i>
19981	Heb	11	18	 2) Ge 21:12
19982	Heb	11	26	1) Or 
19983	Heb	11	26	<i>the Christ</i>
19984	Heb	11	26	 ; Compare 1 Co 10:4
19985	Heb	11	28	1) Or 
19986	Heb	11	28	<i>instituted</i>
19987	Heb	11	28	 ; Gr 
19988	Heb	11	28	<i>hath made</i>
19989	Heb	11	35	1) Or 
19990	Heb	11	35	<i>beaten to death</i>
19991	Heb	11	35	 2) Gr 
19992	Heb	11	35	<i>the redemption</i>
19993	Heb	11	40	1) Or 
19994	Heb	11	40	<i>foreseen</i>
19995	Heb	12	1	1) Or 
19996	Heb	12	1	<i>encumbrance</i>
19997	Heb	12	1	 2) Or 
19998	Heb	12	1	<i>doth closely cling to us</i>
19999	Heb	12	1	 ; Or 
20000	Heb	12	1	<i>is admired of many</i>
20001	Heb	12	1	 3) Or 
20002	Heb	12	1	<i>stedfastness</i>
20003	Heb	12	2	1) Or 
20004	Heb	12	2	<i>captain</i>
20005	Heb	12	3	1) Many ancient authorities read 
20006	Heb	12	3	<i>themselves</i>
20007	Heb	12	3	 ; Compare Nu 16:38
20008	Heb	12	5	1) Pr 3:11 f
20009	Heb	12	7	1) Or 
20010	Heb	12	7	<i>Endure unto chastening</i>
20011	Heb	12	9	1) Or 
20012	Heb	12	9	<i>our spirits</i>
20013	Heb	12	12	1) Gr 
20014	Heb	12	12	<i>make straight</i>
20015	Heb	12	13	1) Or 
20016	Heb	12	13	<i>put out of joint</i>
20017	Heb	12	15	1) Or 
20018	Heb	12	15	<i>whether</i>
20019	Heb	12	15	 2) Or 
20020	Heb	12	15	<i>falleth back from</i>
20021	Heb	12	16	1) Or 
20022	Heb	12	16	<i>whether</i>
20023	Heb	12	17	1) Or 
20024	Heb	12	17	<i>rejected (for he found no place of repentance), etc</i>
20025	Heb	12	17	 ; Or 
20026	Heb	12	17	<i>rejected; for…of repentance etc</i>
20027	Heb	12	17	 ; Compare Heb 6:6; 2 Es 9:11; Wis 12:10
20028	Heb	12	18	1) Or 
20029	Heb	12	18	<i>a palpable and kindled fire</i>
20030	Heb	12	20	1) Ex 19:12 f
20031	Heb	12	21	1) De 9:19
20032	Heb	12	22	1) Or 
20033	Heb	12	22	<i>and to innumerable hosts, the general assembly of angels, and the church etc</i>
20034	Heb	12	22	 2) Gr 
20035	Heb	12	22	<i>myriads of angels</i>
20036	Heb	12	24	1) Or 
20037	Heb	12	24	<i>than Abel</i>
20038	Heb	12	25	1) Or 
20039	Heb	12	25	<i>that</i>
20040	Heb	12	25	 is 
20041	Heb	12	25	<i>from heaven</i>
20042	Heb	12	26	1) Hag 2:6
20043	Heb	12	28	1) Or 
20044	Heb	12	28	<i>thankfulness</i>
20045	Heb	12	28	 ; Compare 1 Co 10:30. 2) Or 
20046	Heb	12	28	<i>godly fear</i>
20047	Heb	12	28	 ; Compare Heb 5:7
20048	Heb	13	5	1) Gr, Let 
20049	Heb	13	5	<i>your turn</i>
20050	Heb	13	5	 of mind be 
20051	Heb	13	5	<i>free</i>
20052	Heb	13	5	 2) De 31:6; Jos 1:5
20053	Heb	13	6	1) Ps 118:6
20054	Heb	13	7	1) Gr 
20055	Heb	13	7	<i>manner of life</i>
20056	Heb	13	8	1) Gr 
20057	Heb	13	8	<i>unto the ages</i>
20058	Heb	13	9	1) Gr 
20059	Heb	13	9	<i>walked</i>
20060	Heb	13	11	1) Gr 
20061	Heb	13	11	<i>through</i>
20062	Heb	13	15	1) Some ancient authorities omit 
20063	Heb	13	15	<i>then</i>
20064	Heb	13	17	1) Gr 
20065	Heb	13	17	<i>groaning</i>
20066	Heb	13	20	1) Or 
20067	Heb	13	20	<i>by</i>
20068	Heb	13	20	 ; Gr 
20069	Heb	13	20	<i>in</i>
20070	Heb	13	21	1) Many ancient authorities read 
20071	Heb	13	21	<i>work</i>
20072	Heb	13	21	 2) Many ancient authorities read 
20073	Heb	13	21	<i>you</i>
20074	Heb	13	21	 3) Gr 
20075	Heb	13	21	<i>unto the ages of the ages</i>
20076	Heb	13	24	1) Or 
20077	Heb	13	24	<i>The</i>
20078	Heb	13	24	 brethren 
20079	Heb	13	24	<i>from etc</i>
20080	Jas	1	1	1) Or 
20081	Jas	1	1	<i>Jacob</i>
20082	Jas	1	1	 2) Gr 
20083	Jas	1	1	<i>bondservant</i>
20084	Jas	1	1	 3) Gr 
20085	Jas	1	1	<i>wisheth joy</i>
20086	Jas	1	2	1) Or 
20087	Jas	1	2	<i>trials</i>
20088	Jas	1	3	1) Or 
20089	Jas	1	3	<i>stedfastness</i>
20090	Jas	1	4	1) Or 
20091	Jas	1	4	<i>stedfastness</i>
20092	Jas	1	7	1) Or 
20093	Jas	1	7	<i>that a doubleminded man, unstable in all his ways, shall receive anything of the Lord</i>
20094	Jas	1	13	1) Gr 
20095	Jas	1	13	<i>from</i>
20096	Jas	1	13	 2) Or 
20097	Jas	1	13	<i>is untried in evil</i>
20098	Jas	1	13	 3) Gr 
20099	Jas	1	13	<i>evil things</i>
20100	Jas	1	14	1) Or 
20101	Jas	1	14	<i>tempted by his own lust, being drawn away</i>
20102	Jas	1	14	 by it, 
20103	Jas	1	14	<i>and enticed</i>
20104	Jas	1	17	1) Or 
20105	Jas	1	17	<i>giving</i>
20106	Jas	1	19	1) Or 
20107	Jas	1	19	<i>Know ye</i>
20108	Jas	1	21	1) Or 
20109	Jas	1	21	<i>malice</i>
20110	Jas	1	21	  2) Or 
20111	Jas	1	21	<i>inborn</i>
20112	Jas	1	23	1) Gr 
20113	Jas	1	23	<i>the face of his birth</i>
20114	Jas	1	26	1) Or 
20115	Jas	1	26	<i>seemeth to be</i>
20116	Jas	2	1	1) Or 
20117	Jas	2	1	<i>do ye, in accepting persons, hold the faith…glory?</i>
20118	Jas	2	2	1) Or 
20119	Jas	2	2	<i>assembly</i>
20120	Jas	2	2	 ; Compare Heb 10:25 (Gr)
20121	Jas	2	4	1) Or 
20122	Jas	2	4	<i>are ye not divided</i>
20123	Jas	2	4	 2) Or 
20124	Jas	2	4	<i>in your own mind</i>
20125	Jas	2	7	1) Gr 
20126	Jas	2	7	<i>which was called upon you?</i>
20127	Jas	2	7	 See Ac 15:17
20128	Jas	2	8	1) Le 19:18
20129	Jas	2	11	1) Ex 20:13 f; De 5:17 f
20130	Jas	2	18	1) Or 
20131	Jas	2	18	<i>But some one will say</i>
20132	Jas	2	19	1) Some ancient authorities read 
20133	Jas	2	19	<i>there is one God</i>
20134	Jas	2	22	1) Or 
20135	Jas	2	22	<i>Seest thou…perfect?</i>
20136	Jas	2	23	1) Ge 15:6. 2) Isa 41:8; 2 Ch 20:7
20137	Jas	3	1	1) Gr 
20138	Jas	3	1	<i>greater</i>
20139	Jas	3	5	1) Or 
20140	Jas	3	5	<i>how great a forest</i>
20141	Jas	3	6	1) Or 
20142	Jas	3	6	<i>a fire, that world of iniquity: the tongue is among our members that which etc</i>
20143	Jas	3	6	 2) Or 
20144	Jas	3	6	<i>that world of iniquity, the tongue, is among our members that which etc</i>
20145	Jas	3	6	 3) Or 
20146	Jas	3	6	<i>birth</i>
20147	Jas	3	6	 4) Gr 
20148	Jas	3	6	<i>Gehenna</i>
20149	Jas	3	7	1) Gr 
20150	Jas	3	7	<i>nature</i>
20151	Jas	3	7	  2) Or 
20152	Jas	3	7	<i>unto</i>
20153	Jas	3	7	 3) Gr 
20154	Jas	3	7	<i>the human nature</i>
20155	Jas	3	15	1) Or 
20156	Jas	3	15	<i>natural</i>
20157	Jas	3	15	 ; Or 
20158	Jas	3	15	<i>animal</i>
20159	Jas	3	15	 ; 2) Gr 
20160	Jas	3	15	<i>demoniacal</i>
20161	Jas	3	17	1) Or 
20162	Jas	3	17	<i>doubtfulness</i>
20163	Jas	3	17	 ; Or 
20164	Jas	3	17	<i>partiality</i>
20165	Jas	3	18	1) Or 
20166	Jas	3	18	<i>by</i>
20167	Jas	4	2	1) Gr 
20168	Jas	4	2	<i>are jealous</i>
20169	Jas	4	4	1) That is 
20170	Jas	4	4	<i>who break your marriage vow to God</i>
20171	Jas	4	5	1) Or 
20172	Jas	4	5	<i>saith in vain,</i>
20173	Jas	4	5	  2) Or 
20174	Jas	4	5	<i>The Spirit which he made to dwell in us he yearneth for even unto jealous envy.</i>
20175	Jas	4	5	 Compare Jer 3:14; Ho 2:19 f; Or 
20176	Jas	4	5	<i>That Spirit which he made to dwell in us yearneth</i>
20177	Jas	4	5	 for us 
20178	Jas	4	5	<i>even unto jealous envy.</i>
20179	Jas	4	5	 3) Some ancient authorities read 
20180	Jas	4	5	<i>dwelleth in us</i>
20181	Jas	4	6	1) Gr 
20182	Jas	4	6	<i>a greater grace</i>
20183	Jas	4	6	 2) Pr 3:34
20184	Jas	4	15	1) Gr 
20185	Jas	4	15	<i>Instead of your saying</i>
20186	Jas	5	3	1) Or 
20187	Jas	5	3	<i>unto</i>
20188	Jas	5	7	1) Gr 
20189	Jas	5	7	<i>presence</i>
20190	Jas	5	7	 2) Or 
20191	Jas	5	7	<i>he</i>
20192	Jas	5	11	1) Or 
20193	Jas	5	11	<i>endurance</i>
20194	Jas	5	12	1) Or 
20195	Jas	5	12	<i>let yours be the yea, yea, and the nay, nay</i>
20196	Jas	5	12	 ; Compare Mt 5:37
20197	Jas	5	14	1) Or 
20198	Jas	5	14	<i>having anointed</i>
20199	Jas	5	17	1) Or 
20200	Jas	5	17	<i>nature</i>
20201	Jas	5	17	 2) Gr 
20202	Jas	5	17	<i>with prayer</i>
20203	Jas	5	20	1) Some ancient authorities read 
20204	Jas	5	20	<i>know ye</i>
20519	Jude	1	1	1) Gr 
20520	Jude	1	1	<i>Judas</i>
20521	Jude	1	1	 2) Gr 
20522	Jude	1	1	<i>bondservant</i>
20523	Jude	1	1	 3) Or 
20524	Jude	1	1	<i>Jacob</i>
20525	Jude	1	1	 4) Or 
20526	Jude	1	1	<i>to them that are beloved in God the Father, and kept for Jesus Christ,</i>
20527	Jude	1	1	 being 
20528	Jude	1	1	<i>called</i>
20529	Jude	1	4	1) Or 
20530	Jude	1	4	<i>set forth</i>
20531	Jude	1	4	 2) Or 
20532	Jude	1	4	<i>the only Master, and our Lord Jesus Christ</i>
20533	Jude	1	5	1) Many very ancient authorities read 
20534	Jude	1	5	<i>Jesus</i>
20535	Jude	1	5	 2) Gr 
20536	Jude	1	5	<i>the second time</i>
20537	Jude	1	7	1) Or 
20538	Jude	1	7	<i>as an example of eternal fire, suffering punishment</i>
20539	Jude	1	8	1) Gr 
20540	Jude	1	8	<i>glories</i>
20541	Jude	1	10	1) Or 
20542	Jude	1	10	<i>corrupted</i>
20543	Jude	1	10	 ; Compare 2 Pe 2:12 margin
20544	Jude	1	11	1) Or 
20545	Jude	1	11	<i>cast themselves away through</i>
20546	Jude	1	12	1) Or 
20547	Jude	1	12	<i>spots</i>
20548	Jude	1	13	1) Gr 
20549	Jude	1	13	<i>shames</i>
20550	Jude	1	14	1) Gr 
20551	Jude	1	14	<i>his holy myriads</i>
20552	Jude	1	18	1) Gr 
20553	Jude	1	18	<i>their own lusts of ungodlinesses</i>
20554	Jude	1	19	1) Or 
20555	Jude	1	19	<i>natural</i>
20556	Jude	1	19	 ; Or 
20557	Jude	1	19	<i>animal</i>
20558	Jude	1	22	1) The Greek text in this passage (
20559	Jude	1	22	<i> And…fire</i>
20560	Jude	1	22	 ) is somewhat uncertain. Some ancient authorities read 
20561	Jude	1	22	<i>And some refute while they disputes</i>
20562	Jude	1	22	 with you. Compare 1 Ti 5:20; Tit 1:9. 2) Or 
20563	Jude	1	22	<i>while they dispute</i>
20564	Jude	1	22	 with you
20565	Jude	1	25	1) Gr 
20566	Jude	1	25	<i>unto all the ages</i>
20567	Rev	1	1	1) Or 
20568	Rev	1	1	<i>gave unto him, to show unto his servants the things etc</i>
20569	Rev	1	1	 2) Gr 
20570	Rev	1	1	<i>bondservants</i>
20571	Rev	1	1	 3) Or, them
20572	Rev	1	4	1) Or 
20573	Rev	1	4	<i>who cometh</i>
20574	Rev	1	5	1) Many authorities, some ancient, read 
20575	Rev	1	5	<i>washed</i>
20576	Rev	1	5	 ; Heb 9:14; compare Re 7:14. 2) Gr 
20577	Rev	1	5	<i>in</i>
20578	Rev	1	6	1) Or 
20579	Rev	1	6	<i>God and his Father</i>
20580	Rev	1	6	 2) Gr 
20581	Rev	1	6	<i>unto the ages of the ages</i>
20582	Rev	1	6	 ; Many ancient authorities omit 
20583	Rev	1	6	<i>of the ages</i>
20584	Rev	1	8	1) Or 
20585	Rev	1	8	<i>he who</i>
20586	Rev	1	8	 2) Or 
20587	Rev	1	8	<i>who cometh</i>
20588	Rev	1	9	1) Or 
20589	Rev	1	9	<i>stedfastness</i>
20590	Rev	1	12	1) Gr 
20591	Rev	1	12	<i>lampstands</i>
20592	Rev	1	13	1) Gr 
20593	Rev	1	13	<i>lampstands</i>
20594	Rev	1	18	1) Gr 
20595	Rev	1	18	<i>became</i>
20596	Rev	1	18	 2) Gr 
20597	Rev	1	18	<i>unto the ages of the ages</i>
20598	Rev	1	20	1) Gr 
20599	Rev	1	20	<i>upon</i>
20600	Rev	1	20	 2) Gr 
20601	Rev	1	20	<i>lampstands</i>
20602	Rev	2	1	1) Gr 
20603	Rev	2	1	<i>lampstands</i>
20604	Rev	2	2	1) Or 
20605	Rev	2	2	<i>stedfastness</i>
20606	Rev	2	3	1) Or 
20607	Rev	2	3	<i>stedfastness</i>
20608	Rev	2	5	1) Gr 
20609	Rev	2	5	<i>lampstand</i>
20610	Rev	2	7	1) Or 
20611	Rev	2	7	<i>garden</i>
20612	Rev	2	7	 ; as in Ge 2:8
20613	Rev	2	8	1) Gr 
20614	Rev	2	8	<i>became</i>
20615	Rev	2	9	1) Or 
20616	Rev	2	9	<i>reviling</i>
20617	Rev	2	10	1) Some ancient authorities read 
20618	Rev	2	10	<i>and may have</i>
20619	Rev	2	10	 2) Gr 
20620	Rev	2	10	<i>a tribulation of ten days</i>
20621	Rev	2	13	1) The Greek text here is somewhat uncertain.
20622	Rev	2	19	1) Or 
20623	Rev	2	19	<i>stedfastness</i>
20624	Rev	2	20	1) Many authorities, some ancient, read 
20625	Rev	2	20	<i>thy wife</i>
20626	Rev	2	20	 2) Gr 
20627	Rev	2	20	<i>bondservants</i>
20628	Rev	2	22	1) Many ancient authorities read 
20629	Rev	2	22	<i>their</i>
20630	Rev	2	23	1) Or 
20631	Rev	2	23	<i>pestilence</i>
20632	Rev	2	23	 ; Sept Ex 5:3, etc
20633	Rev	2	26	1) Or 
20634	Rev	2	26	<i>Gentiles</i>
20635	Rev	2	27	1) Or 
20636	Rev	2	27	<i>iron; as vessels of the potter, are they broken</i>
20637	Rev	3	2	1) Many ancient authorities read 
20638	Rev	3	2	<i>not found thy works</i>
20639	Rev	3	8	1) Gr 
20640	Rev	3	8	<i>given</i>
20641	Rev	3	9	1) The Greek word denotes an act of reverence, whether paid to a creature, or to the Creator.
20642	Rev	3	10	1) Or 
20643	Rev	3	10	<i>stedfastness</i>
20644	Rev	3	10	 2) Or 
20645	Rev	3	10	<i>temptation</i>
20646	Rev	3	10	 3) Gr 
20647	Rev	3	10	<i>inhabited earth</i>
20648	Rev	3	10	 4) Or 
20649	Rev	3	10	<i>tempt</i>
20650	Rev	3	12	1) Or 
20651	Rev	3	12	<i>sanctuary</i>
20652	Rev	4	1	1) Or 
20653	Rev	4	1	<i>come to pass. After these things straightway etc</i>
20654	Rev	4	6	1) Or 
20655	Rev	4	6	<i>glassy sea</i>
20656	Rev	4	6	 2) Or 
20657	Rev	4	6	<i>before</i>
20658	Rev	4	6	 ; See Re 7:17; compare Re 5:6
20659	Rev	4	8	1) Or 
20660	Rev	4	8	<i>who cometh</i>
20661	Rev	4	9	1) Gr 
20662	Rev	4	9	<i>unto the ages of the ages</i>
20663	Rev	4	10	1) Gr 
20664	Rev	4	10	<i>unto the ages of the ages</i>
20665	Rev	5	1	1) Gr 
20666	Rev	5	1	<i>on</i>
20667	Rev	5	6	1) Or 
20668	Rev	5	6	<i>between the throne with the four living creatures, and the elders</i>
20669	Rev	5	6	 2) Some ancient authorities omit 
20670	Rev	5	6	<i>seven</i>
20671	Rev	5	7	1) Gr 
20672	Rev	5	7	<i>hath taken</i>
20673	Rev	5	13	1) Gr 
20674	Rev	5	13	<i>unto the ages of the ages</i>
20675	Rev	5	14	1) See marginal note on Re 3:9
20676	Rev	6	1	1) Some ancient authorities add 
20677	Rev	6	1	<i>and see</i>
20678	Rev	6	3	1) Some ancient authorities add 
20679	Rev	6	3	<i>and see</i>
20680	Rev	6	4	1) Some ancient authorities read 
20681	Rev	6	4	<i>the peace of the earth</i>
20682	Rev	6	5	1) Some ancient authorities add 
20683	Rev	6	5	<i>and see</i>
20684	Rev	6	6	1) Or 
20685	Rev	6	6	<i>A choenix</i>
20686	Rev	6	6	 (i.e. about a quart) 
20687	Rev	6	6	<i>of wheat for a shilling</i>
20688	Rev	6	6	 —implying great scarcity; Compare Eze 4:16 f; 5:16. 2) See marginal note on Mt 18:28
20689	Rev	6	7	1) Some ancient authorities add 
20690	Rev	6	7	<i>and see</i>
20691	Rev	6	8	1) Or 
20692	Rev	6	8	<i>pestilence</i>
20693	Rev	6	8	 ; Compare Re 2:23 margin
20694	Rev	6	11	1) Some ancient authorities read 
20695	Rev	6	11	<i>be fullied</i>
20696	Rev	6	11	 in number; 2 Es 4:36
20697	Rev	6	15	1) Or 
20698	Rev	6	15	<i>military tribunes</i>
20699	Rev	6	15	 ; Gr 
20700	Rev	6	15	<i>chiliarchs</i>
20701	Rev	7	3	1) Gr 
20702	Rev	7	3	<i>bondservants</i>
20703	Rev	7	12	1) Gr 
20704	Rev	7	12	<i>The blessing, and the glory etc</i>
20705	Rev	7	12	 2) Gr 
20706	Rev	7	12	<i>unto the ages of the ages</i>
20707	Rev	7	14	1) Gr 
20708	Rev	7	14	<i>have said</i>
20709	Rev	7	15	1) Or 
20710	Rev	7	15	<i>sanctuary</i>
20711	Rev	7	17	1) Or 
20712	Rev	7	17	<i>before</i>
20713	Rev	7	17	 ; See Re 4:6; compare Re 5:6
20714	Rev	8	3	1) Or 
20715	Rev	8	3	<i>at</i>
20716	Rev	8	3	 2) Gr 
20717	Rev	8	3	<i>give</i>
20718	Rev	8	4	1) Or 
20719	Rev	8	4	<i>for</i>
20720	Rev	8	5	1) Gr 
20721	Rev	8	5	<i>hath taken</i>
20722	Rev	8	5	 2) Or 
20723	Rev	8	5	<i>into</i>
20724	Rev	8	7	1) Or 
20725	Rev	8	7	<i>into</i>
20726	Rev	8	13	1) Gr 
20727	Rev	8	13	<i>one eagle</i>
20728	Rev	9	7	1) Gr 
20729	Rev	9	7	<i>likenesses</i>
20730	Rev	9	11	1) That is 
20731	Rev	9	11	<i>Destroyer</i>
20732	Rev	9	13	1) Gr 
20733	Rev	9	13	<i>one voice</i>
20734	Rev	9	20	1) See marginal note on Re 3:9
20735	Rev	10	6	1) Gr 
20736	Rev	10	6	<i>unto the ages of the ages</i>
20737	Rev	10	6	 2) Some ancient authorities omit 
20738	Rev	10	6	<i>and the sea and the things that are therein</i>
20739	Rev	10	6	 3) Or 
20740	Rev	10	6	<i>time</i>
20741	Rev	10	7	1) Gr 
20742	Rev	10	7	<i>bondservants</i>
20743	Rev	10	11	1) Or 
20744	Rev	10	11	<i>concerning</i>
20745	Rev	10	11	 ; Compare Joh 12:16
20746	Rev	11	1	1) Gr 
20747	Rev	11	1	<i>saying</i>
20748	Rev	11	1	 2) Or 
20749	Rev	11	1	<i>sanctuary</i>
20750	Rev	11	2	1) Or 
20751	Rev	11	2	<i>sanctuary</i>
20752	Rev	11	2	 2) Gr 
20753	Rev	11	2	<i>cast without</i>
20754	Rev	11	2	 3) Or 
20755	Rev	11	2	<i>Gentiles</i>
20756	Rev	11	4	1) Gr 
20757	Rev	11	4	<i>lampstands</i>
20758	Rev	11	8	1) Gr 
20759	Rev	11	8	<i>carcase</i>
20760	Rev	11	9	1) Gr 
20761	Rev	11	9	<i>carcase</i>
20762	Rev	11	13	1) Gr 
20763	Rev	11	13	<i>names of men, seven thousand</i>
20764	Rev	11	13	 ; Compare Re 3:4
20765	Rev	11	15	1) Gr 
20766	Rev	11	15	<i>unto the ages of the ages</i>
20767	Rev	11	18	1) Gr 
20768	Rev	11	18	<i>bondservants</i>
20769	Rev	11	19	1) Or 
20770	Rev	11	19	<i>sanctuary</i>
20771	Rev	12	5	1) Or 
20772	Rev	12	5	<i>Gentiles</i>
20773	Rev	12	9	1) Gr 
20774	Rev	12	9	<i>inhabited earth</i>
20775	Rev	12	10	1) Or 
20776	Rev	12	10	<i>Now is the salvation, and the power, and the kingdom, become our God’s, and the authority</i>
20777	Rev	12	10	 is become 
20778	Rev	12	10	<i>his Christ’s</i>
20779	Rev	12	12	1) Gr 
20780	Rev	12	12	<i>tabernacle</i>
20781	Rev	13	1	1) Some ancient authorities read 
20782	Rev	13	1	<i>I stood etc</i>
20783	Rev	13	3	1) Gr 
20784	Rev	13	3	<i>slain</i>
20785	Rev	13	4	1) See marginal note on Re 3:9
20786	Rev	13	5	1) Or 
20787	Rev	13	5	<i>to do</i>
20788	Rev	13	5	 his works 
20789	Rev	13	5	<i>during</i>
20790	Rev	13	5	 ; See Da 11:28
20791	Rev	13	6	1) Gr 
20792	Rev	13	6	<i>tabernacle</i>
20793	Rev	13	7	1) Some ancient authorities omit 
20794	Rev	13	7	<i>And it was given…overcome them</i>
20795	Rev	13	8	1) See marginal note on Re 3:9. 2) Or 
20796	Rev	13	8	<i>written in the book…slain from the foundation of the world</i>
20797	Rev	13	10	1) The Greek text in this verse is somewhat uncertain. 2) Or, leadeth 
20798	Rev	13	10	<i>into captivity</i>
20799	Rev	13	10	 3) Or 
20800	Rev	13	10	<i>stedfastness</i>
20801	Rev	13	12	1) See marginal note on Re 3:9
20802	Rev	13	15	1) Some ancient authorities read 
20803	Rev	13	15	<i>that even the image of the beast should speak; and he shall cause etc</i>
20804	Rev	13	15	 2) See marginal note on Re 3:9
20805	Rev	13	18	1) Some ancient authorities read 
20806	Rev	13	18	<i>Six hundred and sixteen</i>
20807	Rev	14	6	1) Or 
20808	Rev	14	6	<i>an eternal gospel</i>
20809	Rev	14	6	 2) Gr 
20810	Rev	14	6	<i>sit</i>
20811	Rev	14	7	1) See marginal note on Re 3:9
20812	Rev	14	9	1) See marginal note on Re 3:9
20813	Rev	14	10	1) Gr 
20814	Rev	14	10	<i>mingled</i>
20815	Rev	14	11	1) Gr 
20816	Rev	14	11	<i>unto ages of ages</i>
20817	Rev	14	11	 2) See marginal note on Re 3:9
20818	Rev	14	12	1) Or 
20819	Rev	14	12	<i>stedfastness</i>
20820	Rev	14	13	1) Or 
20821	Rev	14	13	<i>in the Lord. From henceforth, yea, saith the Spirit</i>
20822	Rev	14	15	1) Or 
20823	Rev	14	15	<i>sanctuary</i>
20824	Rev	14	15	 2) Gr 
20825	Rev	14	15	<i>become dry</i>
20826	Rev	14	17	1) Or 
20827	Rev	14	17	<i>sanctuary</i>
20828	Rev	14	19	1) Gr 
20829	Rev	14	19	<i>vine</i>
20830	Rev	15	2	1) Or 
20831	Rev	15	2	<i>glassy sea</i>
20832	Rev	15	2	 2) Or 
20833	Rev	15	2	<i>upon</i>
20834	Rev	15	3	1) Gr 
20835	Rev	15	3	<i>bondservant</i>
20836	Rev	15	3	 2) Many ancient authorities read 
20837	Rev	15	3	<i>nations</i>
20838	Rev	15	3	 ; Jer 10:7
20839	Rev	15	4	1) See marginal note on Re 3:9
20840	Rev	15	5	1) Or 
20841	Rev	15	5	<i>sanctuary</i>
20842	Rev	15	6	1) Or 
20843	Rev	15	6	<i>sanctuary</i>
20844	Rev	15	6	 2) Many ancient authorities read 
20845	Rev	15	6	<i>in linen</i>
20846	Rev	15	6	 ; Re 19:8
20847	Rev	15	7	1) Gr 
20848	Rev	15	7	<i>unto the ages of the ages</i>
20849	Rev	15	8	1) Or 
20850	Rev	15	8	<i>sanctuary</i>
20851	Rev	16	1	1) Or 
20852	Rev	16	1	<i>sanctuary</i>
20853	Rev	16	2	1) Or 
20854	Rev	16	2	<i>there came</i>
20855	Rev	16	2	 2) See marginal note on Re 3:9
20856	Rev	16	3	1) Or 
20857	Rev	16	3	<i>there came</i>
20858	Rev	16	3	 2) Gr 
20859	Rev	16	3	<i>soul of life</i>
20860	Rev	16	4	1) Some ancient authorities read 
20861	Rev	16	4	<i>and they became</i>
20862	Rev	16	4	 2) Or 
20863	Rev	16	4	<i>there came</i>
20864	Rev	16	5	1) Or 
20865	Rev	16	5	<i>judge. Because they…prophets, thou hast given them blood also to drink</i>
20866	Rev	16	8	1) Or 
20867	Rev	16	8	<i>him</i>
20868	Rev	16	14	1) Or 
20869	Rev	16	14	<i>upon</i>
20870	Rev	16	14	 2) Gr 
20871	Rev	16	14	<i>inhabited earth</i>
20872	Rev	16	16	1) Or 
20873	Rev	16	16	<i>Ar-Magedon</i>
20874	Rev	16	17	1) Or 
20875	Rev	16	17	<i>sanctuary</i>
20876	Rev	16	18	1) Some ancient authorities read 
20877	Rev	16	18	<i>there was a man</i>
20878	Rev	16	19	1) Or 
20879	Rev	16	19	<i>Gentiles</i>
20880	Rev	17	3	1) Or 
20881	Rev	17	3	<i>names full of blasphemy</i>
20882	Rev	17	4	1) Gr 
20883	Rev	17	4	<i>gilded</i>
20884	Rev	17	4	 2) Or 
20885	Rev	17	4	<i>and of the unclean things</i>
20886	Rev	17	5	1) Or 
20887	Rev	17	5	<i>a mystery, Babylon the Great</i>
20888	Rev	17	6	1) Or 
20889	Rev	17	6	<i>witnesses</i>
20890	Rev	17	6	 ; See Re 2:13
20891	Rev	17	8	1) Some ancient authorities read 
20892	Rev	17	8	<i>and he goeth</i>
20893	Rev	17	8	 2) Gr 
20894	Rev	17	8	<i>on</i>
20895	Rev	17	8	 3) Gr 
20896	Rev	17	8	<i>shall be present</i>
20897	Rev	17	9	1) Or 
20898	Rev	17	9	<i>meaning</i>
20899	Rev	17	10	1) Or 
20900	Rev	17	10	<i>there are</i>
20901	Rev	17	18	1) Gr 
20902	Rev	17	18	<i>hath a kingdom</i>
20903	Rev	18	2	1) Or 
20904	Rev	18	2	<i>prison</i>
20905	Rev	18	3	1) Some authorities read 
20906	Rev	18	3	<i>of the wine…have drunk</i>
20907	Rev	18	3	 2) Some ancient authorities omit 
20908	Rev	18	3	<i>the wine of</i>
20909	Rev	18	3	 3) Or 
20910	Rev	18	3	<i>luxury</i>
20911	Rev	18	5	1) Or 
20912	Rev	18	5	<i>clave together</i>
20913	Rev	18	7	1) Or 
20914	Rev	18	7	<i>luxurious</i>
20915	Rev	18	8	1) Some ancient authorities omit 
20916	Rev	18	8	<i>the Lord</i>
20917	Rev	18	9	1) Or 
20918	Rev	18	9	<i>luxuriously</i>
20919	Rev	18	11	1) Gr 
20920	Rev	18	11	<i>cargo</i>
20921	Rev	18	12	1) Gr 
20922	Rev	18	12	<i>cargo</i>
20923	Rev	18	13	1) Gr 
20924	Rev	18	13	<i>amomum</i>
20925	Rev	18	13	 2) Gr 
20926	Rev	18	13	<i>bodies</i>
20927	Rev	18	13	 ; Ge 36:6 (Sept) 3) Or 
20928	Rev	18	13	<i>lives</i>
20929	Rev	18	16	1) Gr 
20930	Rev	18	16	<i>gilded</i>
20931	Rev	18	17	1) Gr 
20932	Rev	18	17	<i>work the sea</i>
20933	Rev	18	21	1) Gr 
20934	Rev	18	21	<i>one</i>
20935	Rev	18	22	1) Some ancient authorities omit 
20936	Rev	18	22	<i>of whatsoever craft</i>
20937	Rev	19	2	1) Gr 
20938	Rev	19	2	<i>bondservants</i>
20939	Rev	19	3	1) Gr 
20940	Rev	19	3	<i>have said</i>
20941	Rev	19	3	 2) Gr 
20942	Rev	19	3	<i>unto the ages of the ages</i>
20943	Rev	19	5	1) Gr 
20944	Rev	19	5	<i>bondservants</i>
20945	Rev	19	10	1) See marginal note on Re 3:9
20946	Rev	19	11	1) Some ancient authorities omit 
20947	Rev	19	11	<i>called</i>
20948	Rev	19	13	1) Some ancient authorities read 
20949	Rev	19	13	<i>dipped in</i>
20950	Rev	19	15	1) Gr 
20951	Rev	19	15	<i>winepress of the wine of the fierceness</i>
20952	Rev	19	17	1) Gr 
20953	Rev	19	17	<i>one</i>
20954	Rev	19	18	1) Or 
20955	Rev	19	18	<i>military tribunes</i>
20956	Rev	19	18	 ; Gr 
20957	Rev	19	18	<i>chiliarchs</i>
20958	Rev	19	20	1) See marginal note on Re 3:9
20959	Rev	20	1	1) Gr 
20960	Rev	20	1	<i>upon</i>
20961	Rev	20	4	1) See marginal note on Re 3:9
20962	Rev	20	6	1) Or 
20963	Rev	20	6	<i>authority</i>
20964	Rev	20	6	 2) Some ancient authorities read 
20965	Rev	20	6	<i>the</i>
20966	Rev	20	9	1) Some ancient authorities insert 
20967	Rev	20	9	<i>from God</i>
20968	Rev	20	10	1) Gr 
20969	Rev	20	10	<i>unto the ages of the ages</i>
20970	Rev	21	2	1) Or 
20971	Rev	21	2	<i>the holy city Jerusalem coming down new out of heaven</i>
20972	Rev	21	3	1) Gr 
20973	Rev	21	3	<i>tabernacle</i>
20974	Rev	21	3	 2) Some ancient authorities omit, and be 
20975	Rev	21	3	<i>their God</i>
20976	Rev	21	5	1) Or 
20977	Rev	21	5	<i>Write, These words are faithful and true.</i>
20978	Rev	21	11	1) Gr 
20979	Rev	21	11	<i>luminary</i>
20980	Rev	21	12	1) Gr 
20981	Rev	21	12	<i>portals</i>
20982	Rev	21	13	1) Gr 
20983	Rev	21	13	<i>portals</i>
20984	Rev	21	15	1) Gr 
20985	Rev	21	15	<i>portals</i>
20986	Rev	21	19	1) Or 
20987	Rev	21	19	<i>lapis lazuli</i>
20988	Rev	21	20	1) Or 
20989	Rev	21	20	<i>sapphire</i>
20990	Rev	21	21	1) Gr 
20991	Rev	21	21	<i>portals</i>
20992	Rev	21	21	 2) Or 
20993	Rev	21	21	<i>transparent as glass</i>
20994	Rev	21	22	1) Or 
20995	Rev	21	22	<i>sanctuary</i>
20996	Rev	21	23	1) Or 
20997	Rev	21	23	<i>and the Lamb, the lamp thereof</i>
20998	Rev	21	24	1) Or 
20999	Rev	21	24	<i>by</i>
21000	Rev	21	25	1) Gr 
21001	Rev	21	25	<i>portals</i>
21002	Rev	21	27	1) Gr 
21003	Rev	21	27	<i>common</i>
21004	Rev	21	27	 2) Or 
21005	Rev	21	27	<i>doeth</i>
21006	Rev	22	1	1) Or 
21007	Rev	22	1	<i>the Lamb. In the midst of the street thereof, and on either side of the river, was the tree of life etc</i>
21008	Rev	22	2	1) Or 
21009	Rev	22	2	<i>a tree</i>
21010	Rev	22	2	 2) Or 
21011	Rev	22	2	<i>crops of fruit</i>
21012	Rev	22	3	1) Or 
21013	Rev	22	3	<i>no more anything accursed</i>
21014	Rev	22	3	  2) Gr 
21015	Rev	22	3	<i>bondservants</i>
21016	Rev	22	5	1) Gr 
21017	Rev	22	5	<i>unto the ages of the ages</i>
21018	Rev	22	6	1) Gr 
21019	Rev	22	6	<i>bondservants</i>
21020	Rev	22	8	1) See marginal note on Re 3:9
21021	Rev	22	11	1) Or 
21022	Rev	22	11	<i>yet more</i>
21023	Rev	22	12	1) Or 
21024	Rev	22	12	<i>wages</i>
21025	Rev	22	14	1) Or 
21026	Rev	22	14	<i>the authority over</i>
21027	Rev	22	14	 ; Compare Re 6:8. 2) Gr 
21028	Rev	22	14	<i>portals</i>
21029	Rev	22	15	1) Or 
21030	Rev	22	15	<i>doeth</i>
21031	Rev	22	15	 ; Compare Re 21:27
21032	Rev	22	16	1) Gr 
21033	Rev	22	16	<i>over</i>
21034	Rev	22	17	1) Or 
21035	Rev	22	17	<i>Both</i>
21036	Rev	22	18	1) Gr 
21037	Rev	22	18	<i>upon</i>
21038	Rev	22	19	1) Or, even from 
21039	Rev	22	19	<i>the things which are written</i>
21040	Rev	22	21	1) Some ancient authorities add 
21041	Rev	22	21	<i>Christ</i>
21042	Rev	22	21	 2) Two ancient authorities read 
21043	Rev	22	21	<i>with all</i>
2646	I_Sam	1	11	1) Heb 
2647	I_Sam	1	11	<i>seed of men</i>
2648	I_Sam	1	24	1) The Sept and Syr have 
2649	I_Sam	1	24	<i>a bullock three years old</i>
2650	I_Sam	1	24	 2) Or 
2651	I_Sam	1	24	<i>skin</i>
2652	I_Sam	1	28	1) Or 
2653	I_Sam	1	28	<i>lent</i>
2654	I_Sam	2	3	1) According to another reading 
2655	I_Sam	2	3	<i>Though actions be not weighed</i>
2656	I_Sam	2	5	1) Or 
2657	I_Sam	2	5	<i>have rest</i>
2658	I_Sam	2	9	1) Or 
2659	I_Sam	2	9	<i>godly ones</i>
2660	I_Sam	2	9	 ; Another reading is 
2661	I_Sam	2	9	<i>holy one</i>
2662	I_Sam	2	12	1) Or 
2663	I_Sam	2	12	<i>they know not Jehovah, nor the due of the priests from the people. When any man etc</i>
2664	I_Sam	2	16	1) Heb 
2665	I_Sam	2	16	<i>to-day</i>
2666	I_Sam	2	16	 2) Another reading is 
2667	I_Sam	2	16	<i>he would say unto him, Thou etc</i>
2668	I_Sam	2	21	1) The Heb has 
2669	I_Sam	2	21	<i>For</i>
2670	I_Sam	2	24	1) Or 
2671	I_Sam	2	24	<i>which I hear Jehovah’s people do spread abroad</i>
2672	I_Sam	2	25	1) Or 
2673	I_Sam	2	25	<i>the judge</i>
2674	I_Sam	2	27	1) Or 
2675	I_Sam	2	27	<i>in Pharaoh’s house</i>
2676	I_Sam	2	28	1) Or 
2677	I_Sam	2	28	<i>And I chose</i>
2678	I_Sam	2	28	 2) Or 
2679	I_Sam	2	28	<i>offer upon</i>
2680	I_Sam	2	28	 3) Or 
2681	I_Sam	2	28	<i>and gave</i>
2682	I_Sam	2	29	1) Or 
2683	I_Sam	2	29	<i>trample ye upon…and upon</i>
2684	I_Sam	2	32	1) Or 
2685	I_Sam	2	32	<i>an adversary in</i>
2686	I_Sam	2	32	 my 
2687	I_Sam	2	32	<i>habitation</i>
2688	I_Sam	2	33	1) Or 
2689	I_Sam	2	33	<i>Yet will I not cut off every man of thine from mine altar, to consume etc</i>
2690	I_Sam	2	33	 2) Heb. when they are 
2691	I_Sam	2	33	<i>men</i>
2692	I_Sam	3	1	1) Or 
2693	I_Sam	3	1	<i>rare</i>
2694	I_Sam	3	1	 2) Heb 
2695	I_Sam	3	1	<i>widely spread</i>
2696	I_Sam	4	2	1) Or 
2697	I_Sam	4	2	<i>the battle was spread</i>
2698	I_Sam	4	2	 2) Heb 
2699	I_Sam	4	2	<i>array</i>
2700	I_Sam	4	4	1) Or 
2701	I_Sam	4	4	<i>is enthroned</i>
2702	I_Sam	4	8	1) Heb 
2703	I_Sam	4	8	<i>smiting</i>
2704	I_Sam	4	12	1) Heb 
2705	I_Sam	4	12	<i>array</i>
2706	I_Sam	4	16	1) Heb 
2707	I_Sam	4	16	<i>array</i>
2708	I_Sam	4	21	1) That is, There is 
2709	I_Sam	4	21	<i>no glory</i>
2710	I_Sam	5	3	1) Or 
2711	I_Sam	5	3	<i>before it</i>
2712	I_Sam	5	4	1) Or 
2713	I_Sam	5	4	<i>before it</i>
2714	I_Sam	5	6	1) Or 
2715	I_Sam	5	6	<i>plague boils</i>
2716	I_Sam	5	6	 ; As read by the Jews 
2717	I_Sam	5	6	<i>emrods</i>
2718	I_Sam	6	1	1) Heb 
2719	I_Sam	6	1	<i>field</i>
2720	I_Sam	6	4	1) Heb 
2721	I_Sam	6	4	<i>them</i>
2722	I_Sam	6	6	1) Or 
2723	I_Sam	6	6	<i>made a mock of</i>
2724	I_Sam	6	6	 2) Heb 
2725	I_Sam	6	6	<i>them</i>
2726	I_Sam	6	12	1) Heb 
2727	I_Sam	6	12	<i>one raised way</i>
2728	I_Sam	6	14	1) So the Sept; The Hebrew text has 
2729	I_Sam	6	14	<i>Abel</i>
2730	I_Sam	6	14	 (that is 
2731	I_Sam	6	14	<i>a meadow</i>
2732	I_Sam	6	14	 )
2733	I_Sam	7	1	1) Or 
2734	I_Sam	7	1	<i>Gibeah</i>
2735	I_Sam	7	2	1) Or 
2736	I_Sam	7	2	<i>was drawn together</i>
2737	I_Sam	7	10	1) Heb 
2738	I_Sam	7	10	<i>voice</i>
2739	I_Sam	7	12	1) That is 
2740	I_Sam	7	12	<i>The stone of help</i>
2741	I_Sam	8	11	1) Or 
2742	I_Sam	8	11	<i>over his chariots, and over his horses</i>
2743	I_Sam	8	15	1) Or 
2744	I_Sam	8	15	<i>eunuchs</i>
2745	I_Sam	8	16	1) The Sept has 
2746	I_Sam	8	16	<i>herds</i>
2747	I_Sam	9	1	1) Or 
2748	I_Sam	9	1	<i>wealth</i>
2749	I_Sam	9	2	1) Or 
2750	I_Sam	9	2	<i>choice</i>
2751	I_Sam	9	15	1) Heb 
2752	I_Sam	9	15	<i>uncovered the ear of Samuel</i>
2753	I_Sam	9	16	1) Or 
2754	I_Sam	9	16	<i>leader</i>
2755	I_Sam	9	17	1) Heb 
2756	I_Sam	9	17	<i>answered him</i>
2757	I_Sam	9	17	 2) Or 
2758	I_Sam	9	17	<i>of whom I said unto thee, This same etc</i>
2759	I_Sam	9	20	1) Or 
2760	I_Sam	9	20	<i>on whom is all the desire of Israel? It is not on thee, and on all etc?</i>
2761	I_Sam	9	21	1) Heb 
2762	I_Sam	9	21	<i>tribes</i>
2763	I_Sam	9	24	1) Or 
2764	I_Sam	9	24	<i>shoulder</i>
2765	I_Sam	9	24	 2) Heb 
2766	I_Sam	9	24	<i>saying</i>
2767	I_Sam	9	27	1) Heb 
2768	I_Sam	9	27	<i>to-day</i>
2769	I_Sam	10	3	1) Or 
2770	I_Sam	10	3	<i>terebinth</i>
2771	I_Sam	10	3	 2) Or 
2772	I_Sam	10	3	<i>skin</i>
2773	I_Sam	10	5	1) Or 
2774	I_Sam	10	5	<i>Gibeah</i>
2775	I_Sam	10	7	1) Heb 
2776	I_Sam	10	7	<i>it shall come to pass, that when these signs etc</i>
2777	I_Sam	10	7	 2) Heb 
2778	I_Sam	10	7	<i>do for thee as thy hand shall find</i>
2779	I_Sam	10	9	1) Heb 
2780	I_Sam	10	9	<i>turned</i>
2781	I_Sam	10	10	1) Or 
2782	I_Sam	10	10	<i>Gibeah</i>
2783	I_Sam	10	22	1) Or 
2784	I_Sam	10	22	<i>Is the man yet come hither?</i>
2785	I_Sam	10	25	1) Or 
2786	I_Sam	10	25	<i>the</i>
2787	I_Sam	10	26	1) Or, men of 
2788	I_Sam	10	26	<i>valor</i>
2789	I_Sam	10	27	1) Or 
2790	I_Sam	10	27	<i>But he was as though he had been deaf.</i>
2791	I_Sam	11	7	1) Or 
2792	I_Sam	11	7	<i>a terror from Jehovah</i>
2793	I_Sam	11	13	1) Heb 
2794	I_Sam	11	13	<i>salvation</i>
2795	I_Sam	12	3	1) Or 
2796	I_Sam	12	3	<i>bribe</i>
2797	I_Sam	12	3	 2) Or 
2798	I_Sam	12	3	<i>that I should hide mine eyes at him</i>
2799	I_Sam	12	6	1) Or 
2800	I_Sam	12	6	<i>made</i>
2801	I_Sam	12	11	1) According to Sept and Syr 
2802	I_Sam	12	11	<i>Barak</i>
2803	I_Sam	12	14	1) Or 
2804	I_Sam	12	14	<i>then shall both ye…Jehovah your God: but etc</i>
2805	I_Sam	13	1	1) The number is lacking in the Hebrew text, and is supplied conjecturally.
2806	I_Sam	13	6	1) Or 
2807	I_Sam	13	6	<i>cisterns</i>
2808	I_Sam	13	10	1) Or 
2809	I_Sam	13	10	<i>bless</i>
2810	I_Sam	13	21	1) Or 
2811	I_Sam	13	21	<i>when the edges of the mattocks…and of the axes were blunt</i>
2812	I_Sam	13	21	 ; The Hebrew text is obscure.
2813	I_Sam	14	14	1) Or 
2814	I_Sam	14	14	<i>half an acre of land</i>
2815	I_Sam	14	15	1) Heb 
2816	I_Sam	14	15	<i>a trembling of God</i>
2817	I_Sam	14	18	1) Some editions of Sept have 
2818	I_Sam	14	18	<i>Bring hither the ephod. For he wore the ephod at that time before Israel.</i>
2819	I_Sam	14	18	 2) Heb 
2820	I_Sam	14	18	<i>and</i>
2821	I_Sam	14	21	1) Or 
2822	I_Sam	14	21	<i>in the camp, round about</i>
2823	I_Sam	14	25	1) Heb 
2824	I_Sam	14	25	<i>the land</i>
2825	I_Sam	14	26	1) Or 
2826	I_Sam	14	26	<i>a stream of honey</i>
2827	I_Sam	14	30	1) Or 
2828	I_Sam	14	30	<i>for had there not been now a much greater slaughter etc?</i>
2829	I_Sam	14	38	1) Heb 
2830	I_Sam	14	38	<i>corners</i>
2831	I_Sam	14	41	1) Or 
2832	I_Sam	14	41	<i>Give a perfect</i>
2833	I_Sam	14	41	 lot
2834	I_Sam	14	45	1) Heb 
2835	I_Sam	14	45	<i>ransomed</i>
2836	I_Sam	14	52	1) Heb 
2837	I_Sam	14	52	<i>gathered</i>
2838	I_Sam	15	2	1) Or 
2839	I_Sam	15	2	<i>will visit</i>
2840	I_Sam	15	3	1) Heb 
2841	I_Sam	15	3	<i>devote</i>
2842	I_Sam	15	5	1) Or 
2843	I_Sam	15	5	<i>strove</i>
2844	I_Sam	15	8	1) Heb 
2845	I_Sam	15	8	<i>devoted</i>
2846	I_Sam	15	9	1) Heb 
2847	I_Sam	15	9	<i>devote</i>
2848	I_Sam	15	9	 2) Heb 
2849	I_Sam	15	9	<i>devoted</i>
2850	I_Sam	15	12	1) Heb 
2851	I_Sam	15	12	<i>hand</i>
2852	I_Sam	15	15	1) Heb 
2853	I_Sam	15	15	<i>devoted</i>
2854	I_Sam	15	17	1) Or 
2855	I_Sam	15	17	<i>Though thou be little…art thou not head of the tribe of Israel?</i>
2856	I_Sam	15	20	1) Heb 
2857	I_Sam	15	20	<i>devoted</i>
2858	I_Sam	15	23	1) Heb 
2859	I_Sam	15	23	<i>divination</i>
2860	I_Sam	15	23	 2) Or 
2861	I_Sam	15	23	<i>iniquity</i>
2862	I_Sam	15	29	1) Or 
2863	I_Sam	15	29	<i>Victory</i>
2864	I_Sam	15	29	 ; Or 
2865	I_Sam	15	29	<i>Glory</i>
2866	I_Sam	15	35	1) Or 
2867	I_Sam	15	35	<i>but</i>
2868	I_Sam	16	6	1) In 1 Ch 27:18 
2869	I_Sam	16	6	<i>Elihu</i>
2870	I_Sam	16	9	1) In 2 Sa 13:3 
2871	I_Sam	16	9	<i>Shimeah</i>
2872	I_Sam	16	9	 ; In 1 Ch 2:13 
2873	I_Sam	16	9	<i>Shimea</i>
2874	I_Sam	16	11	1) Heb 
2875	I_Sam	16	11	<i>around</i>
2876	I_Sam	16	12	1) Heb 
2877	I_Sam	16	12	<i>fair of eyes</i>
2878	I_Sam	16	14	1) Or 
2879	I_Sam	16	14	<i>terrified</i>
2880	I_Sam	16	18	1) Or 
2881	I_Sam	16	18	<i>skilful</i>
2882	I_Sam	16	18	 2) Or 
2883	I_Sam	16	18	<i>business</i>
2884	I_Sam	16	20	1) Or 
2885	I_Sam	16	20	<i>skin</i>
2886	I_Sam	17	2	1) Or 
2887	I_Sam	17	2	<i>the terebinth</i>
2888	I_Sam	17	7	1) Or according to another reading 
2889	I_Sam	17	7	<i>blade</i>
2890	I_Sam	17	8	1) Heb 
2891	I_Sam	17	8	<i>ranks</i>
2892	I_Sam	17	8	 (and so in verses 10, 21, 22, 26, etc)
2893	I_Sam	17	10	1) Or 
2894	I_Sam	17	10	<i>reproach</i>
2895	I_Sam	17	19	1) Or 
2896	I_Sam	17	19	<i>are</i>
2897	I_Sam	17	20	1) Or 
2898	I_Sam	17	20	<i>barricade</i>
2899	I_Sam	17	20	 2) Or 
2900	I_Sam	17	20	<i>battle ground</i>
2901	I_Sam	17	25	1) Or 
2902	I_Sam	17	25	<i>reproach</i>
2903	I_Sam	17	26	1) Or 
2904	I_Sam	17	26	<i>reproach</i>
2905	I_Sam	17	29	1) Or 
2906	I_Sam	17	29	<i>Was it not</i>
2907	I_Sam	17	29	 but 
2908	I_Sam	17	29	<i>a word?</i>
2909	I_Sam	17	32	1) Or 
2910	I_Sam	17	32	<i>within him</i>
2911	I_Sam	17	34	1) Or 
2912	I_Sam	17	34	<i>and there came a lion and a bear…and I went out etc</i>
2913	I_Sam	17	36	1) Or 
2914	I_Sam	17	36	<i>reproached</i>
2915	I_Sam	17	40	1) Or 
2916	I_Sam	17	40	<i>torrent bed</i>
2917	I_Sam	17	45	1) Or 
2918	I_Sam	17	45	<i>reproached</i>
2919	I_Sam	17	51	1) Or 
2920	I_Sam	17	51	<i>mighty man</i>
2921	I_Sam	17	52	1) The Syr and some editions of Sept have 
2922	I_Sam	17	52	<i>Gath</i>
2923	I_Sam	17	52	 2) Or 
2924	I_Sam	17	52	<i>the two gates</i>
2925	I_Sam	18	5	1) Or 
2926	I_Sam	18	5	<i>went out; whithersoever Saul sent him, he etc</i>
2927	I_Sam	18	5	 2) Or 
2928	I_Sam	18	5	<i>prospered</i>
2929	I_Sam	18	6	1) Or 
2930	I_Sam	18	6	<i>Philistines</i>
2931	I_Sam	18	6	 2) Or 
2932	I_Sam	18	6	<i>triangles</i>
2933	I_Sam	18	6	 Or 
2934	I_Sam	18	6	<i>three-stringed instruments</i>
2935	I_Sam	18	7	1) Or 
2936	I_Sam	18	7	<i>answered one another</i>
2937	I_Sam	18	10	1) Or 
2938	I_Sam	18	10	<i>raved</i>
2939	I_Sam	18	14	1) Or 
2940	I_Sam	18	14	<i>prospered</i>
2941	I_Sam	18	18	1) Or 
2942	I_Sam	18	18	<i>who are my kinsfolk</i>
2943	I_Sam	18	30	1) Or 
2944	I_Sam	18	30	<i>prospered more than</i>
2945	I_Sam	18	30	 2) Heb 
2946	I_Sam	18	30	<i>precious</i>
2947	I_Sam	19	5	1) Heb 
2948	I_Sam	19	5	<i>salvation</i>
2949	I_Sam	19	9	1) Or 
2950	I_Sam	19	9	<i>the spirit of Jehovah was evil toward Saul</i>
2951	I_Sam	19	13	1) Or 
2952	I_Sam	19	13	<i>quilt</i>
2953	I_Sam	19	13	 ; Or 
2954	I_Sam	19	13	<i>network</i>
2955	I_Sam	19	16	1) Or 
2956	I_Sam	19	16	<i>quilt</i>
2957	I_Sam	19	16	 ; Or 
2958	I_Sam	19	16	<i>network</i>
2959	I_Sam	19	22	1) Or 
2960	I_Sam	19	22	<i>cistern</i>
2961	I_Sam	19	24	1) Or 
2962	I_Sam	19	24	<i>fell</i>
2963	I_Sam	20	2	1) Heb 
2964	I_Sam	20	2	<i>uncovereth mine ear</i>
2965	I_Sam	20	4	1) Or 
2966	I_Sam	20	4	<i>What doth thy soul desire, that I should do it for thee?</i>
2967	I_Sam	20	4	 2) Heb 
2968	I_Sam	20	4	<i>saith</i>
2969	I_Sam	20	17	1) Or 
2970	I_Sam	20	17	<i>by his love toward him</i>
2971	I_Sam	20	18	1) Heb 
2972	I_Sam	20	18	<i>missed</i>
2973	I_Sam	20	19	1) Heb 
2974	I_Sam	20	19	<i>greatly</i>
2975	I_Sam	20	19	 2) Heb 
2976	I_Sam	20	19	<i>in the day of the business</i>
2977	I_Sam	20	19	 ; See 1 Sa 19:2
2978	I_Sam	20	21	1) Or 
2979	I_Sam	20	21	<i>him</i>
2980	I_Sam	20	21	 2) Heb 
2981	I_Sam	20	21	<i>not</i>
2982	I_Sam	20	21	 any 
2983	I_Sam	20	21	<i>thing</i>
2984	I_Sam	20	31	1) Or 
2985	I_Sam	20	31	<i>is worthy to die</i>
2986	I_Sam	20	31	 ; Heb 
2987	I_Sam	20	31	<i>is a son of death</i>
2988	I_Sam	20	35	1) Or 
2989	I_Sam	20	35	<i>to the place</i>
2990	I_Sam	20	36	1) Heb 
2991	I_Sam	20	36	<i>making it pass over him</i>
2992	I_Sam	20	41	1) Heb 
2993	I_Sam	20	41	<i>from beside the South</i>
2994	I_Sam	21	5	1) Or 
2995	I_Sam	21	5	<i>and it may be used as common</i>
2996	I_Sam	21	5	 bread; 
2997	I_Sam	21	5	<i>and especially since to-day it will be holy in respect of their vessels</i>
2998	I_Sam	21	7	1) Or 
2999	I_Sam	21	7	<i>mightiest</i>
3000	I_Sam	21	9	1) Or 
3001	I_Sam	21	9	<i>the terebinth</i>
3002	I_Sam	21	13	1) Or 
3003	I_Sam	21	13	<i>made marks</i>
3004	I_Sam	22	2	1) Heb 
3005	I_Sam	22	2	<i>bitter of soul</i>
3006	I_Sam	22	6	1) Or 
3007	I_Sam	22	6	<i>on the height</i>
3008	I_Sam	22	8	1) Or 
3009	I_Sam	22	8	<i>there was none that disclosed it to me when my son made etc</i>
3010	I_Sam	22	9	1) Or 
3011	I_Sam	22	9	<i>was set over</i>
3012	I_Sam	22	17	1) Heb 
3013	I_Sam	22	17	<i>runners</i>
3014	I_Sam	23	7	1) The Sept has 
3015	I_Sam	23	7	<i>sold</i>
3016	I_Sam	23	15	1) Or 
3017	I_Sam	23	15	<i>Horesh</i>
3018	I_Sam	23	16	1) Or 
3019	I_Sam	23	16	<i>Horesh</i>
3020	I_Sam	23	18	1) Or 
3021	I_Sam	23	18	<i>Horesh</i>
3022	I_Sam	23	19	1) Or 
3023	I_Sam	23	19	<i>Horesh</i>
3024	I_Sam	23	19	 2) Or 
3025	I_Sam	23	19	<i>Jeshimon</i>
3026	I_Sam	23	22	1) Heb 
3027	I_Sam	23	22	<i>foot</i>
3028	I_Sam	23	23	1) Or 
3029	I_Sam	23	23	<i>with the certainty</i>
3030	I_Sam	23	23	 ; Or 
3031	I_Sam	23	23	<i>to a set place</i>
3032	I_Sam	23	23	 2) Or 
3033	I_Sam	23	23	<i>families</i>
3034	I_Sam	23	24	1) Or 
3035	I_Sam	23	24	<i>Jeshimon</i>
3036	I_Sam	23	28	1) That is 
3037	I_Sam	23	28	<i>The rock of divisions</i>
3038	I_Sam	23	28	 (or 
3039	I_Sam	23	28	<i>escape</i>
3040	I_Sam	23	28	 )
3041	I_Sam	24	3	1) Or 
3042	I_Sam	24	3	<i>sitting</i>
3043	I_Sam	24	11	1) Or 
3044	I_Sam	24	11	<i>layest wait for</i>
3045	I_Sam	24	15	1) Heb 
3046	I_Sam	24	15	<i>give sentence for me</i>
3047	I_Sam	25	2	1) Or 
3048	I_Sam	25	2	<i>business was</i>
3049	I_Sam	25	6	1) Or 
3050	I_Sam	25	6	<i>thus shall ye say, All hail! and peace be unto thee etc</i>
3051	I_Sam	25	7	1) Heb 
3052	I_Sam	25	7	<i>put them to shame</i>
3053	I_Sam	25	9	1) Or 
3054	I_Sam	25	9	<i>remained quiet</i>
3055	I_Sam	25	11	1) Heb 
3056	I_Sam	25	11	<i>slaughter</i>
3057	I_Sam	25	14	1) Heb 
3058	I_Sam	25	14	<i>bless</i>
3059	I_Sam	25	15	1) Heb 
3060	I_Sam	25	15	<i>put to shame</i>
3061	I_Sam	25	18	1) Or 
3062	I_Sam	25	18	<i>skins</i>
3063	I_Sam	25	22	1) The Syr and some editions of Sept have 
3064	I_Sam	25	22	<i>unto David</i>
3065	I_Sam	25	25	1) That is 
3066	I_Sam	25	25	<i>Fool</i>
3067	I_Sam	25	26	1) Heb 
3068	I_Sam	25	26	<i>from coming into blood</i>
3069	I_Sam	25	26	 2) Heb 
3070	I_Sam	25	26	<i>thine own hand saving thee</i>
3071	I_Sam	25	27	1) Heb 
3072	I_Sam	25	27	<i>blessing</i>
3073	I_Sam	25	29	1) Or 
3074	I_Sam	25	29	<i>the living</i>
3075	I_Sam	25	31	1) Heb. cause of 
3076	I_Sam	25	31	<i>staggering</i>
3077	I_Sam	25	31	 2) Or 
3078	I_Sam	25	31	<i>so that thou shouldest shed etc</i>
3079	I_Sam	25	44	1) In 2 Sa 3:15 
3080	I_Sam	25	44	<i>Paltiel</i>
3081	I_Sam	26	1	1) Or 
3082	I_Sam	26	1	<i>Jeshimon</i>
3083	I_Sam	26	1	 ; See 1 Sa 23:19
3084	I_Sam	26	3	1) Or 
3085	I_Sam	26	3	<i>Jeshimon</i>
3086	I_Sam	26	3	 ; See 1 Sa 23:19
3087	I_Sam	26	4	1) Or 
3088	I_Sam	26	4	<i>to a set place</i>
3089	I_Sam	26	4	 ; See 1 Sa 23:23
3090	I_Sam	26	5	1) Or 
3091	I_Sam	26	5	<i>barricade</i>
3092	I_Sam	26	10	1) Or 
3093	I_Sam	26	10	<i>either</i>
3094	I_Sam	26	16	1) Heb 
3095	I_Sam	26	16	<i>sons of death</i>
3096	I_Sam	26	19	1) Heb 
3097	I_Sam	26	19	<i>smell</i>
3098	I_Sam	26	19	 2) Or 
3099	I_Sam	26	19	<i>have no share in</i>
3100	I_Sam	26	22	1) Another reading is 
3101	I_Sam	26	22	<i>the king’s spear</i>
3102	I_Sam	27	5	1) Heb 
3103	I_Sam	27	5	<i>field</i>
3104	I_Sam	27	7	1) Heb 
3105	I_Sam	27	7	<i>field</i>
3106	I_Sam	27	8	1) Another reading is 
3107	I_Sam	27	8	<i>Gizrites</i>
3108	I_Sam	27	10	1) So Sept and Vulg
3109	I_Sam	27	11	1) Heb 
3110	I_Sam	27	11	<i>field</i>
3111	I_Sam	28	1	1) Heb 
3112	I_Sam	28	1	<i>camps</i>
3113	I_Sam	28	10	1) Or 
3114	I_Sam	28	10	<i>guilt come upon thee</i>
3115	I_Sam	28	13	1) Or 
3116	I_Sam	28	13	<i>gods</i>
3117	I_Sam	28	17	1) So Vulg and some editions of Sept; The Heb has 
3118	I_Sam	28	17	<i>him</i>
3119	I_Sam	30	8	1) Or 
3120	I_Sam	30	8	<i>Shall I pursue</i>
3121	I_Sam	30	16	1) Or 
3122	I_Sam	30	16	<i>amidst</i>
3123	I_Sam	30	21	1) Or 
3124	I_Sam	30	21	<i>with</i>
3125	I_Sam	30	21	 2) Or 
3126	I_Sam	30	21	<i>asked them of their welfare</i>
3127	I_Sam	30	26	1) Heb 
3128	I_Sam	30	26	<i>blessing</i>
3129	I_Sam	31	1	1) Or 
3130	I_Sam	31	1	<i>wounded</i>
3131	I_Sam	31	2	1) In 1 Sa 14:49 
3132	I_Sam	31	2	<i>Ishvi</i>
3133	I_Sam	31	4	1) Or 
3134	I_Sam	31	4	<i>make a mock of me</i>
3135	II_Sam	1	9	1) Or 
3136	II_Sam	1	9	<i>over</i>
3137	II_Sam	1	9	 2) Or 
3138	II_Sam	1	9	<i>giddiness</i>
3139	II_Sam	1	18	1) Or 
3140	II_Sam	1	18	<i>The Upright</i>
3141	II_Sam	1	19	1) Or 
3142	II_Sam	1	19	<i>The gazelle</i>
3143	II_Sam	1	21	1) Or 
3144	II_Sam	1	21	<i>defiled</i>
3145	II_Sam	1	21	 2) Or, as of one 
3146	II_Sam	1	21	<i>not anointed</i>
3147	II_Sam	1	24	1) Heb 
3148	II_Sam	1	24	<i>with delights</i>
3149	II_Sam	1	25	1) Or 
3150	II_Sam	1	25	<i>O Jonathan, slain etc</i>
3151	II_Sam	2	8	1) In 1 Ch 8:33; 9:39 
3152	II_Sam	2	8	<i>Eshbaal</i>
3153	II_Sam	2	9	1) The Vulg and Syr have 
3154	II_Sam	2	9	<i>Geshurites</i>
3155	II_Sam	2	13	1) Heb 
3156	II_Sam	2	13	<i>them together</i>
3157	II_Sam	2	16	1) That is 
3158	II_Sam	2	16	<i>The field of the sharp knives</i>
3159	II_Sam	2	18	1) Heb 
3160	II_Sam	2	18	<i>as one of the roes that are in the field</i>
3161	II_Sam	2	21	1) Or 
3162	II_Sam	2	21	<i>spoil</i>
3163	II_Sam	2	21	 ; See Jud 14:19
3164	II_Sam	2	27	1) Heb 
3165	II_Sam	2	27	<i>from the morning</i>
3166	II_Sam	3	6	1) Or 
3167	II_Sam	3	6	<i>showed himself strong for</i>
3168	II_Sam	3	8	1) Or 
3169	II_Sam	3	8	<i>the fault of this woman</i>
3170	II_Sam	3	12	1) Or 
3171	II_Sam	3	12	<i>where he was</i>
3172	II_Sam	3	15	1) In 1 Sa 25:44 
3173	II_Sam	3	15	<i>Palti</i>
3174	II_Sam	3	22	1) Heb 
3175	II_Sam	3	22	<i>the troop</i>
3176	II_Sam	3	26	1) Or 
3177	II_Sam	3	26	<i>cistern</i>
3178	II_Sam	4	4	1) In 1 Ch 8:34; 9:40 
3179	II_Sam	4	4	<i>Merib-baal</i>
3180	II_Sam	4	6	1) Or 
3181	II_Sam	4	6	<i>there came…men fetching wheat</i>
3182	II_Sam	5	2	1) Or 
3183	II_Sam	5	2	<i>leader</i>
3184	II_Sam	5	6	1) Or 
3185	II_Sam	5	6	<i>Thou shalt not come in hither, but the blind and the lame shall turn thee away</i>
3186	II_Sam	5	8	1) Or 
3187	II_Sam	5	8	<i>and as for the lame and the blind, that are hated of David’s soul—</i>
3188	II_Sam	5	8	 2) Another reading is 
3189	II_Sam	5	8	<i>that hate David’s soul</i>
3190	II_Sam	5	8	  3) Or 
3191	II_Sam	5	8	<i>The blind and the lame shall not come into the house</i>
3192	II_Sam	5	16	1) In 1 Ch 14:7 
3193	II_Sam	5	16	<i>Beeliada</i>
3194	II_Sam	5	20	1) Or 
3195	II_Sam	5	20	<i>broken forth upon mine enemies</i>
3196	II_Sam	5	20	 2) That is 
3197	II_Sam	5	20	<i>The place of breakings forth</i>
3198	II_Sam	5	23	1) Or 
3199	II_Sam	5	23	<i>balsam-trees</i>
3200	II_Sam	5	25	1) In 1 Ch 14:16 
3201	II_Sam	5	25	<i>Gibeon</i>
3202	II_Sam	6	2	1) Heb 
3203	II_Sam	6	2	<i>whereupon is called the Name</i>
3204	II_Sam	6	2	 2) Or 
3205	II_Sam	6	2	<i>is enthroned</i>
3206	II_Sam	6	3	1) Or 
3207	II_Sam	6	3	<i>Gibeah</i>
3208	II_Sam	6	4	1) Or 
3209	II_Sam	6	4	<i>Gibeah</i>
3210	II_Sam	6	5	1) Or 
3211	II_Sam	6	5	<i>cypress-wood</i>
3212	II_Sam	6	5	 2) Or 
3213	II_Sam	6	5	<i>sistra</i>
3214	II_Sam	6	6	1) Or 
3215	II_Sam	6	6	<i>were restive</i>
3216	II_Sam	6	6	 ; Or 
3217	II_Sam	6	6	<i>threw</i>
3218	II_Sam	6	6	  it 
3219	II_Sam	6	6	<i>down</i>
3220	II_Sam	6	7	1) Or 
3221	II_Sam	6	7	<i>rashness</i>
3222	II_Sam	6	8	1) That is 
3223	II_Sam	6	8	<i>The breach of Uzzah</i>
3224	II_Sam	6	19	1) Or, of wine
3225	II_Sam	7	7	1) In 1 Ch 17:6 
3226	II_Sam	7	7	<i>any of the judges</i>
3227	II_Sam	7	8	1) Or 
3228	II_Sam	7	8	<i>pasture</i>
3229	II_Sam	7	8	 2) Or 
3230	II_Sam	7	8	<i>leader</i>
3231	II_Sam	7	11	1) Or 
3232	II_Sam	7	11	<i>have caused</i>
3233	II_Sam	7	19	1) Or 
3234	II_Sam	7	19	<i>and is this the law of man, O Lord Jehovah?</i>
3235	II_Sam	7	23	1) Or 
3236	II_Sam	7	23	<i>And who is like thy people, like Israel, a nation that is alone in the earth etc</i>
3237	II_Sam	7	27	1) Or 
3238	II_Sam	7	27	<i>been bold</i>
3239	II_Sam	7	29	1) Or 
3240	II_Sam	7	29	<i>begin and bless</i>
3241	II_Sam	8	1	1) Or 
3242	II_Sam	8	1	<i>Metheg-ammah</i>
3243	II_Sam	8	3	1) Another reading is 
3244	II_Sam	8	3	<i>the river Euphrates</i>
3245	II_Sam	8	5	1) Heb 
3246	II_Sam	8	5	<i>Aram</i>
3247	II_Sam	8	6	1) Heb 
3248	II_Sam	8	6	<i>Aram</i>
3249	II_Sam	8	6	 2) Or 
3250	II_Sam	8	6	<i>saved David</i>
3251	II_Sam	8	8	1) In 1 Ch 18:8 
3252	II_Sam	8	8	<i>Tibhath</i>
3253	II_Sam	8	10	1) In 1 Ch 18:10 
3254	II_Sam	8	10	<i>Hadoram</i>
3255	II_Sam	8	10	 2) Heb 
3256	II_Sam	8	10	<i>asked him of his welfare</i>
3257	II_Sam	8	10	 3) Heb 
3258	II_Sam	8	10	<i>was a man of wars</i>
3259	II_Sam	8	10	 4) Heb 
3260	II_Sam	8	10	<i>in his hand were</i>
3261	II_Sam	8	12	1) Heb 
3262	II_Sam	8	12	<i>Aram</i>
3263	II_Sam	8	13	1) 
3264	II_Sam	8	13	<i>Edom</i>
3265	II_Sam	8	13	 in 1 Ch 18:11, 12; Ps 60:1 title
3266	II_Sam	8	14	1) Or 
3267	II_Sam	8	14	<i>saved David</i>
3268	II_Sam	8	16	1) Or 
3269	II_Sam	8	16	<i>chronicler</i>
3270	II_Sam	8	17	1) Or 
3271	II_Sam	8	17	<i>secretary</i>
3272	II_Sam	8	18	1) So in 2 Sa 20:23 and 1 Ch 18:17; The Hebrew text has 
3273	II_Sam	8	18	<i>and the Cherethithes etc</i>
3274	II_Sam	8	18	 2) Or 
3275	II_Sam	8	18	<i>priests</i>
3276	II_Sam	9	7	1) Heb 
3277	II_Sam	9	7	<i>field</i>
3278	II_Sam	9	11	1) Or 
3279	II_Sam	9	11	<i>But Mephibosheth eateth etc</i>
3280	II_Sam	10	9	1) Heb 
3281	II_Sam	10	9	<i>the face of the battle was against</i>
3282	II_Sam	10	10	1) Heb 
3283	II_Sam	10	10	<i>Abshai</i>
3284	II_Sam	10	16	1) In 2 Sa 8:3 
3285	II_Sam	10	16	<i>Hadadezer</i>
3286	II_Sam	11	8	1) Or 
3287	II_Sam	11	8	<i>present from</i>
3288	II_Sam	11	12	1) Or 
3289	II_Sam	11	12	<i>that day. And on the morrow David called him, and he etc</i>
3290	II_Sam	11	15	1) Heb 
3291	II_Sam	11	15	<i>strong</i>
3292	II_Sam	11	16	1) Or 
3293	II_Sam	11	16	<i>observed</i>
3294	II_Sam	11	21	1) In Jud 6:32 
3295	II_Sam	11	21	<i>Jerubbaal</i>
3296	II_Sam	12	5	1) Heb 
3297	II_Sam	12	5	<i>a son of death</i>
3298	II_Sam	12	18	1) Or 
3299	II_Sam	12	18	<i>how then shall we tell him that the child is dead, so that he do himself some harm?</i>
3300	II_Sam	12	24	1) Another reading is 
3301	II_Sam	12	24	<i>she called</i>
3302	II_Sam	12	25	1) That is 
3303	II_Sam	12	25	<i>Beloved of Jehovah</i>
3304	II_Sam	12	28	1) Heb 
3305	II_Sam	12	28	<i>my name be called upon it</i>
3306	II_Sam	12	30	1) Or 
3307	II_Sam	12	30	<i>Malcam</i>
3308	II_Sam	12	30	 ; See Zep 1:5
3309	II_Sam	12	31	1) Or 
3310	II_Sam	12	31	<i>to</i>
3311	II_Sam	12	31	 2) Or with a slight change in the Hebrew text 
3312	II_Sam	12	31	<i>made them labor at</i>
3313	II_Sam	12	31	 3) Or 
3314	II_Sam	12	31	<i>brick-mould</i>
3315	II_Sam	13	4	1) Heb 
3316	II_Sam	13	4	<i>morning by morning</i>
3317	II_Sam	13	12	1) Heb 
3318	II_Sam	13	12	<i>humble</i>
3319	II_Sam	13	16	1) Or, Think 
3320	II_Sam	13	16	<i>not there is occasion for this great wrong in putting me forth,</i>
3321	II_Sam	13	16	 which is worse etc
3322	II_Sam	13	18	1) Or 
3323	II_Sam	13	18	<i>a long garment with sleeves</i>
3324	II_Sam	13	20	1) Heb 
3325	II_Sam	13	20	<i>Aminon</i>
3326	II_Sam	13	36	1) Heb 
3327	II_Sam	13	36	<i>with a very great weeping</i>
3328	II_Sam	13	37	1) Another reading is 
3329	II_Sam	13	37	<i>Ammihud</i>
3330	II_Sam	14	17	1) Heb 
3331	II_Sam	14	17	<i>for rest</i>
3332	II_Sam	14	17	 2) Or 
3333	II_Sam	14	17	<i>the</i>
3334	II_Sam	14	17	 3) Heb 
3335	II_Sam	14	17	<i>to hear</i>
3336	II_Sam	14	21	1) Another reading is 
3337	II_Sam	14	21	<i>thou hast done</i>
3338	II_Sam	14	22	1) Another reading is 
3339	II_Sam	14	22	<i>thy</i>
3340	II_Sam	15	7	1) According to Syr and some editions of Sept 
3341	II_Sam	15	7	<i>four</i>
3342	II_Sam	15	8	1) Heb 
3343	II_Sam	15	8	<i>Aram</i>
3344	II_Sam	15	8	  2) Or 
3345	II_Sam	15	8	<i>worship</i>
3346	II_Sam	15	12	1) Or 
3347	II_Sam	15	12	<i>sent Ahithophel</i>
3348	II_Sam	15	17	1) Or 
3349	II_Sam	15	17	<i>at the Far House</i>
3350	II_Sam	15	27	1) Or 
3351	II_Sam	15	27	<i>Seest thou?</i>
3352	II_Sam	15	28	1) Another reading is 
3353	II_Sam	15	28	<i>in the plains</i>
3354	II_Sam	15	32	1) Or 
3355	II_Sam	15	32	<i>where he was wont to worship God</i>
3356	II_Sam	16	1	1) Or 
3357	II_Sam	16	1	<i>skin</i>
3358	II_Sam	16	10	1) Or 
3359	II_Sam	16	10	<i>When he curseth, and when etc</i>
3360	II_Sam	16	10	 ; Another reading is 
3361	II_Sam	16	10	<i>So let him curse, because</i>
3362	II_Sam	16	13	1) Heb 
3363	II_Sam	16	13	<i>over against</i>
3364	II_Sam	16	14	1) Or 
3365	II_Sam	16	14	<i>to Ayephim</i>
3366	II_Sam	16	23	1) Heb 
3367	II_Sam	16	23	<i>word</i>
3368	II_Sam	17	8	1) Heb 
3369	II_Sam	17	8	<i>bitter of soul</i>
3370	II_Sam	17	9	1) Or 
3371	II_Sam	17	9	<i>when he falleth upon them</i>
3372	II_Sam	17	11	1) Or 
3373	II_Sam	17	11	<i>that thy presence</i>
3374	II_Sam	17	11	 (Heb 
3375	II_Sam	17	11	<i>face</i>
3376	II_Sam	17	11	 ) 
3377	II_Sam	17	11	<i>go to the battle</i>
3378	II_Sam	17	13	1) Or 
3379	II_Sam	17	13	<i>withdraw himself</i>
3380	II_Sam	17	16	1) Another reading is 
3381	II_Sam	17	16	<i>in the plains</i>
3382	II_Sam	17	17	1) Or 
3383	II_Sam	17	17	<i>Now Jonathan and Ahimaaz are staying by Enrogel; so let the maid-servant go and tell them, and let them go and tell king David; for they may not be seen to come into the city.</i>
3384	II_Sam	17	25	1) In 1 Ch 2:17 
3385	II_Sam	17	25	<i>Jether the Ishmaelite</i>
3386	II_Sam	17	25	 2) In 1 Ch 2:16, 17 
3387	II_Sam	17	25	<i>Abigail</i>
3388	II_Sam	18	3	1) So Vulg and some editions of Sept; The Hebrew text has 
3389	II_Sam	18	3	<i>for now are there ten thousand such as we</i>
3390	II_Sam	18	9	1) Or 
3391	II_Sam	18	9	<i>terebinth</i>
3392	II_Sam	18	12	1) Heb 
3393	II_Sam	18	12	<i>Have a care, whosoever ye be, of etc</i>
3394	II_Sam	18	13	1) Another reading is 
3395	II_Sam	18	13	<i>my</i>
3396	II_Sam	18	14	1) Heb 
3397	II_Sam	18	14	<i>staves</i>
3398	II_Sam	18	16	1) Or 
3399	II_Sam	18	16	<i>spared</i>
3400	II_Sam	18	19	1) Heb 
3401	II_Sam	18	19	<i>judged him from the hand etc</i>
3402	II_Sam	18	22	1) Or 
3403	II_Sam	18	22	<i>hast no sufficient tidings</i>
3404	II_Sam	18	28	1) Heb 
3405	II_Sam	18	28	<i>Peace</i>
3406	II_Sam	18	29	1) Heb. Is there 
3407	II_Sam	18	29	<i>peace with etc?</i>
3408	II_Sam	18	29	 2) Or 
3409	II_Sam	18	29	<i>and</i>
3410	II_Sam	19	2	1) Heb 
3411	II_Sam	19	2	<i>salvation</i>
3412	II_Sam	19	18	1) Or 
3413	II_Sam	19	18	<i>the convoy</i>
3414	II_Sam	19	18	 2) Or 
3415	II_Sam	19	18	<i>would go over</i>
3416	II_Sam	19	25	1) Or 
3417	II_Sam	19	25	<i>when Jerusalem was come</i>
3418	II_Sam	19	26	1) Another reading is 
3419	II_Sam	19	26	<i>to</i>
3420	II_Sam	19	27	1) Or 
3421	II_Sam	19	27	<i>the</i>
3422	II_Sam	19	28	1) Heb 
3423	II_Sam	19	28	<i>men of death</i>
3424	II_Sam	19	38	1) Heb 
3425	II_Sam	19	38	<i>choose</i>
3426	II_Sam	19	38	 to lay 
3427	II_Sam	19	38	<i>upon</i>
3428	II_Sam	19	43	1) Or 
3429	II_Sam	19	43	<i>and were we not the first to speak of bringing back our king?</i>
3430	II_Sam	20	3	1) Heb 
3431	II_Sam	20	3	<i>in widowhood of life</i>
3432	II_Sam	20	15	1) Or 
3433	II_Sam	20	15	<i>undermined</i>
3434	II_Sam	20	23	1) Another reading is 
3435	II_Sam	20	23	<i>Carites</i>
3436	II_Sam	20	23	 ; See 2 Ki 11:4
3437	II_Sam	20	24	1) Or 
3438	II_Sam	20	24	<i>chronicler</i>
3439	II_Sam	20	25	1) Or 
3440	II_Sam	20	25	<i>secretary</i>
3441	II_Sam	20	26	1) Or 
3442	II_Sam	20	26	<i>priest</i>
3443	II_Sam	20	26	 ; See 1 Ch 18:17
3444	II_Sam	21	4	1) Or 
3445	II_Sam	21	4	<i>neither for us shalt thou put any man to death in Israel</i>
3446	II_Sam	21	5	1) Or, so that 
3447	II_Sam	21	5	<i>we have been destroyed</i>
3448	II_Sam	21	8	1) In 1 Sa 18:19 
3449	II_Sam	21	8	<i>Merab</i>
3450	II_Sam	21	12	1) Or 
3451	II_Sam	21	12	<i>broad place</i>
3452	II_Sam	21	16	1) Heb 
3453	II_Sam	21	16	<i>Raphah</i>
3454	II_Sam	21	16	 2) Or 
3455	II_Sam	21	16	<i>new</i>
3456	II_Sam	21	16	 armor
3457	II_Sam	21	18	1) In 1 Ch 20:4 
3458	II_Sam	21	18	<i>Gezer</i>
3459	II_Sam	21	18	 2) In 1 Ch 20:4 
3460	II_Sam	21	18	<i>Sippai</i>
3461	II_Sam	21	18	 3) Heb 
3462	II_Sam	21	18	<i>Raphah</i>
3463	II_Sam	21	19	1) In 1 Ch 20:5 
3464	II_Sam	21	19	<i>the brother of Goliath</i>
3465	II_Sam	21	20	1) Heb 
3466	II_Sam	21	20	<i>Raphah</i>
3467	II_Sam	21	21	1) Or 
3468	II_Sam	21	21	<i>reproached</i>
3469	II_Sam	21	21	 2) In 1 Sa 16:9 
3470	II_Sam	21	21	<i>Shammah</i>
3471	II_Sam	21	21	 ; In 1 Ch 2:13; 20:7 
3472	II_Sam	21	21	<i>Shimea</i>
3473	II_Sam	21	22	1) Heb 
3474	II_Sam	21	22	<i>Raphah</i>
3475	II_Sam	22	5	1) Heb 
3476	II_Sam	22	5	<i>Belial</i>
3477	II_Sam	22	9	1) Or 
3478	II_Sam	22	9	<i>in his wrath</i>
3479	II_Sam	22	17	1) Or 
3480	II_Sam	22	17	<i>great</i>
3481	II_Sam	22	27	1) So Ps 18:26; The text has 
3482	II_Sam	22	27	<i>unsavory</i>
3483	II_Sam	22	28	1) Or 
3484	II_Sam	22	28	<i>whom thou wilt bring down</i>
3485	II_Sam	22	30	1) Or 
3486	II_Sam	22	30	<i>through</i>
3487	II_Sam	22	33	1) Or 
3488	II_Sam	22	33	<i>setteth free</i>
3489	II_Sam	22	33	 ; According to another reading 
3490	II_Sam	22	33	<i>guideth my way in perfectness</i>
3491	II_Sam	22	34	1) Another reading is 
3492	II_Sam	22	34	<i>my</i>
3493	II_Sam	22	36	1) Or 
3494	II_Sam	22	36	<i>condescension</i>
3495	II_Sam	22	37	1) Heb 
3496	II_Sam	22	37	<i>ankles</i>
3497	II_Sam	22	40	1) Heb 
3498	II_Sam	22	40	<i>caused to bow</i>
3499	II_Sam	22	44	1) Or 
3500	II_Sam	22	44	<i>will keep</i>
3501	II_Sam	22	45	1) Or 
3502	II_Sam	22	45	<i>yield feigned obedience</i>
3503	II_Sam	22	45	 ; Heb 
3504	II_Sam	22	45	<i>lie</i>
3505	II_Sam	22	46	1) So Ps 18:45; The text has 
3506	II_Sam	22	46	<i>gird themselves</i>
3507	II_Sam	22	51	1) Another reading is 
3508	II_Sam	22	51	<i>He is a tower of deliverance</i>
3509	II_Sam	22	51	 2) Heb 
3510	II_Sam	22	51	<i>salvations</i>
3511	II_Sam	23	1	1) Heb 
3512	II_Sam	23	1	<i>pleasant in the psalms of Israel</i>
3513	II_Sam	23	2	1) Or 
3514	II_Sam	23	2	<i>in</i>
3515	II_Sam	23	3	1) Or, There shall be 
3516	II_Sam	23	3	<i>one…and</i>
3517	II_Sam	23	3	 it shall be 
3518	II_Sam	23	3	<i>as etc</i>
3519	II_Sam	23	3	 2) Heb 
3520	II_Sam	23	3	<i>a righteous one</i>
3521	II_Sam	23	5	1) Or 
3522	II_Sam	23	5	<i>For is not my house so with God? for he…for all my salvation, and all</i>
3523	II_Sam	23	5	 my 
3524	II_Sam	23	5	<i>desire, will he not make it to grow?</i>
3525	II_Sam	23	6	1) Heb 
3526	II_Sam	23	6	<i>Belial</i>
3527	II_Sam	23	6	 , that is 
3528	II_Sam	23	6	<i>worthlessness</i>
3529	II_Sam	23	7	1) Heb 
3530	II_Sam	23	7	<i>filled</i>
3531	II_Sam	23	8	1) In 1 Ch 11:11 
3532	II_Sam	23	8	<i>Jashobeam</i>
3533	II_Sam	23	8	 ; The Hebrew of this verse is obscure.
3534	II_Sam	23	9	1) Heb 
3535	II_Sam	23	9	<i>went up</i>
3536	II_Sam	23	10	1) Heb 
3537	II_Sam	23	10	<i>salvation</i>
3538	II_Sam	23	11	1) Or 
3539	II_Sam	23	11	<i>for foraging</i>
3540	II_Sam	23	12	1) Heb 
3541	II_Sam	23	12	<i>salvation</i>
3542	II_Sam	23	17	1) Heb 
3543	II_Sam	23	17	<i>with their lives</i>
3544	II_Sam	23	18	1) Heb 
3545	II_Sam	23	18	<i>slain</i>
3546	II_Sam	23	20	1) According to another reading 
3547	II_Sam	23	20	<i>Ish-hai</i>
3548	II_Sam	23	23	1) Or 
3549	II_Sam	23	23	<i>council</i>
3550	II_Sam	23	35	1) Or 
3551	II_Sam	23	35	<i>Hezrai</i>
3552	II_Sam	23	37	1) Another reading is 
3553	II_Sam	23	37	<i>armorbearer</i>
3554	II_Sam	24	5	1) Or 
3555	II_Sam	24	5	<i>toward</i>
3556	II_Sam	24	12	1) Or 
3557	II_Sam	24	12	<i>lay upon</i>
3558	II_Sam	24	14	1) Or 
3559	II_Sam	24	14	<i>many</i>
3560	II_Sam	24	16	1) Or 
3561	II_Sam	24	16	<i>Ornah</i>
3562	II_Sam	24	16	 ; In 1 Ch 21:15 
3563	II_Sam	24	16	<i>Ornan</i>
3564	II_Sam	24	20	1) Or 
3565	II_Sam	24	20	<i>passing over</i>
3566	II_Sam	24	23	1) Or 
3567	II_Sam	24	23	<i>all this did Araunah the king give etc</i>
3568	I_Kgs	1	6	1) Or 
3569	I_Kgs	1	6	<i>all his life</i>
3570	I_Kgs	1	9	1) Or 
3571	I_Kgs	1	9	<i>sacrificed</i>
3572	I_Kgs	1	18	1) Another reading is 
3573	I_Kgs	1	18	<i>and now, my lord the king, thou etc</i>
3574	I_Kgs	1	19	1) Or 
3575	I_Kgs	1	19	<i>sacrificed</i>
3576	I_Kgs	1	20	1) Another reading is 
3577	I_Kgs	1	20	<i>now</i>
3578	I_Kgs	1	21	1) Heb 
3579	I_Kgs	1	21	<i>sinners</i>
3580	I_Kgs	1	25	1) Or 
3581	I_Kgs	1	25	<i>sacrificed</i>
3582	I_Kgs	1	27	1) Another reading is 
3583	I_Kgs	1	27	<i>servant</i>
3584	I_Kgs	1	35	1) Or 
3585	I_Kgs	1	35	<i>leader</i>
3586	I_Kgs	1	47	1) Another reading omits 
3587	I_Kgs	1	47	<i>Thy</i>
3588	I_Kgs	1	51	1) Heb 
3589	I_Kgs	1	51	<i>to-day</i>
3590	I_Kgs	2	3	1) Or 
3591	I_Kgs	2	3	<i>do wisely</i>
3592	I_Kgs	2	5	1) Heb 
3593	I_Kgs	2	5	<i>set</i>
3594	I_Kgs	2	16	1) Heb 
3595	I_Kgs	2	16	<i>turn not away my face</i>
3596	I_Kgs	2	26	1) Heb 
3597	I_Kgs	2	26	<i>a man of</i>
3598	I_Kgs	3	9	1) Heb 
3599	I_Kgs	3	9	<i>hearing</i>
3600	I_Kgs	3	9	 2) Heb 
3601	I_Kgs	3	9	<i>heavy</i>
3602	I_Kgs	3	11	1) Heb 
3603	I_Kgs	3	11	<i>many days</i>
3604	I_Kgs	3	11	 2) Heb 
3605	I_Kgs	3	11	<i>hear</i>
3606	I_Kgs	3	12	1) Heb 
3607	I_Kgs	3	12	<i>hearing</i>
3608	I_Kgs	3	13	1) Or 
3609	I_Kgs	3	13	<i>hath not been</i>
3610	I_Kgs	4	3	1) Or 
3611	I_Kgs	4	3	<i>secretaries</i>
3612	I_Kgs	4	3	 2) Or 
3613	I_Kgs	4	3	<i>chronicler</i>
3614	I_Kgs	4	5	1) Or 
3615	I_Kgs	4	5	<i>priest</i>
3616	I_Kgs	4	5	 ; See 2 Sa 8:18
3617	I_Kgs	4	11	1) Or 
3618	I_Kgs	4	11	<i>Naphath-dor</i>
3619	I_Kgs	4	11	 2) Or 
3620	I_Kgs	4	11	<i>region</i>
3621	I_Kgs	4	12	1) Or 
3622	I_Kgs	4	12	<i>over against</i>
3623	I_Kgs	4	13	1) Or 
3624	I_Kgs	4	13	<i>Havvoth-jair</i>
3625	I_Kgs	4	16	1) Or 
3626	I_Kgs	4	16	<i>in Aloth</i>
3627	I_Kgs	4	19	1) Heb 
3628	I_Kgs	4	19	<i>and one officer</i>
3629	I_Kgs	4	22	1) Heb 
3630	I_Kgs	4	22	<i>cor</i>
3631	I_Kgs	4	24	1) Or 
3632	I_Kgs	4	24	<i>beyond the River</i>
3633	I_Kgs	4	26	1) In 2 Ch 9:25 
3634	I_Kgs	4	26	<i>four thousand</i>
3635	I_Kgs	4	28	1) Or 
3636	I_Kgs	4	28	<i>where he</i>
3637	I_Kgs	4	28	 (that is, the king) 
3638	I_Kgs	4	28	<i>was</i>
3639	I_Kgs	4	28	 ; Or 
3640	I_Kgs	4	28	<i>where it should be</i>
3641	I_Kgs	5	8	1) Or 
3642	I_Kgs	5	8	<i>cypress</i>
3643	I_Kgs	5	9	1) Or 
3644	I_Kgs	5	9	<i>carry them away</i>
3645	I_Kgs	5	10	1) Heb 
3646	I_Kgs	5	10	<i>Hirom</i>
3647	I_Kgs	5	10	 (and in verse 18)
3648	I_Kgs	5	11	1) Heb 
3649	I_Kgs	5	11	<i>cor</i>
3650	I_Kgs	5	11	 2) Or 
3651	I_Kgs	5	11	<i>beaten</i>
3652	I_Kgs	5	13	1) Heb 
3653	I_Kgs	5	13	<i>men subject to taskwork</i>
3654	I_Kgs	5	17	1) Heb 
3655	I_Kgs	5	17	<i>brought away</i>
3656	I_Kgs	6	1	1) Heb 
3657	I_Kgs	6	1	<i>built</i>
3658	I_Kgs	6	3	1) That is, the holy place
3659	I_Kgs	6	4	1) Or 
3660	I_Kgs	6	4	<i>windows broad</i>
3661	I_Kgs	6	4	 within, and 
3662	I_Kgs	6	4	<i>narrow</i>
3663	I_Kgs	6	4	 without
3664	I_Kgs	6	5	1) That is, the most holy place
3665	I_Kgs	6	7	1) Or 
3666	I_Kgs	6	7	<i>when it was brought away</i>
3667	I_Kgs	6	8	1) Heb 
3668	I_Kgs	6	8	<i>shoulder</i>
3669	I_Kgs	6	9	1) Heb 
3670	I_Kgs	6	9	<i>rows</i>
3671	I_Kgs	6	10	1) Or 
3672	I_Kgs	6	10	<i>he fastened the house</i>
3673	I_Kgs	6	15	1) Or 
3674	I_Kgs	6	15	<i>both the floors of the house and the walls etc</i>
3675	I_Kgs	6	15	 (and so verse 16) 2) Or 
3676	I_Kgs	6	15	<i>cypress</i>
3677	I_Kgs	6	18	1) Or 
3678	I_Kgs	6	18	<i>gourds</i>
3679	I_Kgs	6	20	1) Or 
3680	I_Kgs	6	20	<i>he overlaid the altar also,</i>
3681	I_Kgs	6	20	 which was of 
3682	I_Kgs	6	20	<i>cedar</i>
3683	I_Kgs	6	31	1) Or 
3684	I_Kgs	6	31	<i>posts</i>
3685	I_Kgs	6	34	1) Or 
3686	I_Kgs	6	34	<i>cypress</i>
3687	I_Kgs	6	38	1) Or 
3688	I_Kgs	6	38	<i>with all the appurtenances thereof, and with all the ordinances thereof</i>
3689	I_Kgs	7	3	1) Or 
3690	I_Kgs	7	3	<i>side-chambers</i>
3691	I_Kgs	7	3	 ; Heb 
3692	I_Kgs	7	3	<i>ribs</i>
3693	I_Kgs	7	4	1) Or 
3694	I_Kgs	7	4	<i>frames</i>
3695	I_Kgs	7	4	 for the windows
3696	I_Kgs	7	9	1) Or 
3697	I_Kgs	7	9	<i>after</i>
3698	I_Kgs	7	9	 divers 
3699	I_Kgs	7	9	<i>measures</i>
3700	I_Kgs	7	12	1) Or 
3701	I_Kgs	7	12	<i>both for…and for</i>
3702	I_Kgs	7	15	1) Heb 
3703	I_Kgs	7	15	<i>eighteen cubits was the height of one pillar</i>
3704	I_Kgs	7	15	 2) Heb 
3705	I_Kgs	7	15	<i>the other pillar</i>
3706	I_Kgs	7	18	1) So the Syr; The Heb has 
3707	I_Kgs	7	18	<i>pomegranates</i>
3708	I_Kgs	7	21	1) That is 
3709	I_Kgs	7	21	<i>He shall establish</i>
3710	I_Kgs	7	21	 2) That is perhaps 
3711	I_Kgs	7	21	<i>In it is strength</i>
3712	I_Kgs	7	24	1) Or 
3713	I_Kgs	7	24	<i>ten in a cubit</i>
3714	I_Kgs	7	28	1) Or 
3715	I_Kgs	7	28	<i>even borders</i>
3716	I_Kgs	7	29	1) Or 
3717	I_Kgs	7	29	<i>it was in like manner above</i>
3718	I_Kgs	7	30	1) Heb 
3719	I_Kgs	7	30	<i>shoulders</i>
3720	I_Kgs	7	35	1) Heb 
3721	I_Kgs	7	35	<i>hands</i>
3722	I_Kgs	7	39	1) Heb 
3723	I_Kgs	7	39	<i>shoulder</i>
3724	I_Kgs	7	40	1) Heb 
3725	I_Kgs	7	40	<i>Hirom</i>
3726	I_Kgs	7	40	 2) In 2 Ch 4:11 
3727	I_Kgs	7	40	<i>pots</i>
3728	I_Kgs	7	42	1) Heb 
3729	I_Kgs	7	42	<i>upon the face of the pillars</i>
3730	I_Kgs	7	45	1) Another reading is 
3731	I_Kgs	7	45	<i>the vessels of the Tent</i>
3732	I_Kgs	7	47	1) Or 
3733	I_Kgs	7	47	<i>was not searched out</i>
3734	I_Kgs	8	8	1) Or 
3735	I_Kgs	8	8	<i>they drew out the staves, so that etc</i>
3736	I_Kgs	8	9	1) Or 
3737	I_Kgs	8	9	<i>where</i>
3738	I_Kgs	8	23	1) Or 
3739	I_Kgs	8	23	<i>for</i>
3740	I_Kgs	8	25	1) Heb 
3741	I_Kgs	8	25	<i>There shall not be cut off unto thee a man from my sight</i>
3742	I_Kgs	8	31	1) Or 
3743	I_Kgs	8	31	<i>Whereinsoever a man shall sin</i>
3744	I_Kgs	8	35	1) Or 
3745	I_Kgs	8	35	<i>because</i>
3746	I_Kgs	8	35	 2) Or 
3747	I_Kgs	8	35	<i>answerest</i>
3748	I_Kgs	8	36	1) Or 
3749	I_Kgs	8	36	<i>because</i>
3750	I_Kgs	8	37	1) Heb 
3751	I_Kgs	8	37	<i>gates</i>
3752	I_Kgs	8	43	1) Or 
3753	I_Kgs	8	43	<i>they name is called upon this house etc</i>
3754	I_Kgs	8	45	1) Or 
3755	I_Kgs	8	45	<i>right</i>
3756	I_Kgs	8	46	1) Heb 
3757	I_Kgs	8	46	<i>they that take them captive carry them away</i>
3758	I_Kgs	8	49	1) Or 
3759	I_Kgs	8	49	<i>right</i>
3760	I_Kgs	8	50	1) Heb 
3761	I_Kgs	8	50	<i>to be for compassion</i>
3762	I_Kgs	8	56	1) Heb 
3763	I_Kgs	8	56	<i>fallen</i>
3764	I_Kgs	8	59	1) Heb 
3765	I_Kgs	8	59	<i>the thing of a day in its day</i>
3766	I_Kgs	9	1	1) Or 
3767	I_Kgs	9	1	<i>delight</i>
3768	I_Kgs	9	5	1) Or 
3769	I_Kgs	9	5	<i>spake concerning</i>
3770	I_Kgs	9	8	1) Or 
3771	I_Kgs	9	8	<i>and this house shall be high; every one etc</i>
3772	I_Kgs	9	13	1) Or 
3773	I_Kgs	9	13	<i>they were called</i>
3774	I_Kgs	9	15	1) Or 
3775	I_Kgs	9	15	<i>account</i>
3776	I_Kgs	9	15	 2) Heb 
3777	I_Kgs	9	15	<i>men subject to taskwork</i>
3778	I_Kgs	9	18	1) Another reading is 
3779	I_Kgs	9	18	<i>Tadmor</i>
3780	I_Kgs	9	18	 ; So 2 Ch 8:4
3781	I_Kgs	9	21	1) Heb 
3782	I_Kgs	9	21	<i>to devote</i>
3783	I_Kgs	9	21	 2) Heb 
3784	I_Kgs	9	21	<i>men subject to servile taskwork</i>
3785	I_Kgs	10	5	1) Heb 
3786	I_Kgs	10	5	<i>standing</i>
3787	I_Kgs	10	5	 2) Or 
3788	I_Kgs	10	5	<i>his burnt-offering which he offered in etc</i>
3789	I_Kgs	10	6	1) Or 
3790	I_Kgs	10	6	<i>sayings</i>
3791	I_Kgs	10	7	1) Heb 
3792	I_Kgs	10	7	<i>thou hast added wisdom and goodness to the fame</i>
3793	I_Kgs	10	11	1) In 2 Ch 2:8, 9, 10 
3794	I_Kgs	10	11	<i>algum-trees</i>
3795	I_Kgs	10	11	 ; Perhaps 
3796	I_Kgs	10	11	<i>sandal-wood</i>
3797	I_Kgs	10	12	1) Or 
3798	I_Kgs	10	12	<i>a railing</i>
3799	I_Kgs	10	12	 ; Heb 
3800	I_Kgs	10	12	<i>a prop</i>
3801	I_Kgs	10	13	1) Heb 
3802	I_Kgs	10	13	<i>which he gave her according to the hand of king Solomon</i>
3803	I_Kgs	10	15	1) In 2 Ch 9:14 
3804	I_Kgs	10	15	<i>Arabia</i>
3805	I_Kgs	10	17	1) Heb 
3806	I_Kgs	10	17	<i>maneh</i>
3807	I_Kgs	10	19	1) Or 
3808	I_Kgs	10	19	<i>arms</i>
3809	I_Kgs	10	19	 ; Heb 
3810	I_Kgs	10	19	<i>hands</i>
3811	I_Kgs	10	29	1) Heb 
3812	I_Kgs	10	29	<i>in their hand</i>
3813	I_Kgs	11	1	1) Or 
3814	I_Kgs	11	1	<i>besides</i>
3815	I_Kgs	11	11	1) Heb 
3816	I_Kgs	11	11	<i>is with thee</i>
3817	I_Kgs	11	27	1) Heb 
3818	I_Kgs	11	27	<i>closed up</i>
3819	I_Kgs	11	28	1) Heb 
3820	I_Kgs	11	28	<i>burden</i>
3821	I_Kgs	11	34	1) Or 
3822	I_Kgs	11	34	<i>because he kept</i>
3823	I_Kgs	11	37	1) Or 
3824	I_Kgs	11	37	<i>over all</i>
3825	I_Kgs	11	41	1) Or 
3826	I_Kgs	11	41	<i>words</i>
3827	I_Kgs	11	41	 ; Or 
3828	I_Kgs	11	41	<i>matters</i>
3829	I_Kgs	12	28	1) Or 
3830	I_Kgs	12	28	<i>Ye have gone up long enough</i>
3831	I_Kgs	12	30	1) Or 
3832	I_Kgs	12	30	<i>each of them</i>
3833	I_Kgs	12	32	1) Or 
3834	I_Kgs	12	32	<i>offered upon</i>
3835	I_Kgs	12	32	 2) Or 
3836	I_Kgs	12	32	<i>to sacrifice</i>
3837	I_Kgs	12	33	1) Or 
3838	I_Kgs	12	33	<i>offered upon</i>
3839	I_Kgs	12	33	 2) Another reading is 
3840	I_Kgs	12	33	<i>apart</i>
3841	I_Kgs	13	11	1) Heb 
3842	I_Kgs	13	11	<i>his son</i>
3843	I_Kgs	13	12	1) Or as otherwise read 
3844	I_Kgs	13	12	<i>showed him</i>
3845	I_Kgs	13	14	1) Or 
3846	I_Kgs	13	14	<i>terebinth</i>
3847	I_Kgs	13	21	1) Or 
3848	I_Kgs	13	21	<i>rebelled against the word</i>
3849	I_Kgs	13	26	1) Or 
3850	I_Kgs	13	26	<i>rebelled against the word</i>
3851	I_Kgs	13	33	1) Or 
3852	I_Kgs	13	33	<i>whomsoever he would</i>
3853	I_Kgs	13	34	1) Or 
3854	I_Kgs	13	34	<i>by this thing he became</i>
3855	I_Kgs	14	3	1) Or 
3856	I_Kgs	14	3	<i>bottle</i>
3857	I_Kgs	14	7	1) Or 
3858	I_Kgs	14	7	<i>leader</i>
3859	I_Kgs	14	14	1) Or 
3860	I_Kgs	14	14	<i>and what even now?</i>
3861	I_Kgs	14	16	1) Or 
3862	I_Kgs	14	16	<i>who did sin, and who made etc</i>
3863	I_Kgs	14	23	1) Or 
3864	I_Kgs	14	23	<i>obelisks</i>
3865	I_Kgs	14	27	1) Heb 
3866	I_Kgs	14	27	<i>runners</i>
3867	I_Kgs	14	31	1) In 2 Ch 12:16 
3868	I_Kgs	14	31	<i>Abijah</i>
3869	I_Kgs	15	2	1) In 2 Ch 13:2 
3870	I_Kgs	15	2	<i>Micaiah the daughter of Uriel</i>
3871	I_Kgs	15	2	 2) In 2 Ch 11:20, 21 
3872	I_Kgs	15	2	<i>Absalom</i>
3873	I_Kgs	15	13	1) Or 
3874	I_Kgs	15	13	<i>queen mother</i>
3875	I_Kgs	15	13	 2) Or 
3876	I_Kgs	15	13	<i>for Asherah</i>
3877	I_Kgs	15	19	1) Or, Let there be
3878	I_Kgs	16	2	1) Or 
3879	I_Kgs	16	2	<i>leader</i>
3880	I_Kgs	16	7	1) Or 
3881	I_Kgs	16	7	<i>it</i>
3882	I_Kgs	16	18	1) Or 
3883	I_Kgs	16	18	<i>palace</i>
3884	I_Kgs	16	24	1) Heb 
3885	I_Kgs	16	24	<i>Shomeron</i>
3886	I_Kgs	16	24	 2) Or 
3887	I_Kgs	16	24	<i>fortified the hill</i>
3888	I_Kgs	16	31	1) Heb 
3889	I_Kgs	16	31	<i>Izebel</i>
3890	I_Kgs	17	18	1) Or 
3891	I_Kgs	17	18	<i>art thou etc</i>
3892	I_Kgs	18	5	1) Or 
3893	I_Kgs	18	5	<i>and lose none of</i>
3894	I_Kgs	18	26	1) Or 
3895	I_Kgs	18	26	<i>answer</i>
3896	I_Kgs	18	26	 2) Or 
3897	I_Kgs	18	26	<i>limped</i>
3898	I_Kgs	18	28	1) Or 
3899	I_Kgs	18	28	<i>swords</i>
3900	I_Kgs	18	29	1) Heb 
3901	I_Kgs	18	29	<i>attention</i>
3902	I_Kgs	18	32	1) Or 
3903	I_Kgs	18	32	<i>a two-seah measure</i>
3904	I_Kgs	18	37	1) Or 
3905	I_Kgs	18	37	<i>for thou didst turn their heart backward</i>
3906	I_Kgs	18	44	1) Or 
3907	I_Kgs	18	44	<i>Yoke</i>
3908	I_Kgs	19	4	1) Or 
3909	I_Kgs	19	4	<i>broom-tree</i>
3910	I_Kgs	19	6	1) Or 
3911	I_Kgs	19	6	<i>hot stones</i>
3912	I_Kgs	19	12	1) Heb 
3913	I_Kgs	19	12	<i>a sound of gentle stillness</i>
3914	I_Kgs	19	15	1) Or 
3915	I_Kgs	19	15	<i>by the wilderness to</i>
3916	I_Kgs	19	21	1) Or 
3917	I_Kgs	19	21	<i>roasted</i>
3918	I_Kgs	20	6	1) Heb 
3919	I_Kgs	20	6	<i>all the desire of thine eyes</i>
3920	I_Kgs	20	10	1) Heb 
3921	I_Kgs	20	10	<i>are at my feet</i>
3922	I_Kgs	20	12	1) Or 
3923	I_Kgs	20	12	<i>huts</i>
3924	I_Kgs	20	12	 2) Or 
3925	I_Kgs	20	12	<i>Place</i>
3926	I_Kgs	20	12	 the engines. 
3927	I_Kgs	20	12	<i>And they placed</i>
3928	I_Kgs	20	12	 the engines
3929	I_Kgs	20	14	1) Or 
3930	I_Kgs	20	14	<i>servants</i>
3931	I_Kgs	20	14	 2) Heb 
3932	I_Kgs	20	14	<i>bind</i>
3933	I_Kgs	20	16	1) Or 
3934	I_Kgs	20	16	<i>huts</i>
3935	I_Kgs	20	20	1) Or 
3936	I_Kgs	20	20	<i>with horse and horsemen</i>
3937	I_Kgs	20	24	1) Or 
3938	I_Kgs	20	24	<i>governors</i>
3939	I_Kgs	20	24	 ; See 1 Ki 10:15
3940	I_Kgs	20	28	1) Or 
3941	I_Kgs	20	28	<i>the</i>
3942	I_Kgs	20	30	1) Or 
3943	I_Kgs	20	30	<i>from chamber to chamber</i>
3944	I_Kgs	20	33	1) Or 
3945	I_Kgs	20	33	<i>took it as an omen</i>
3946	I_Kgs	20	33	 (Heb 
3947	I_Kgs	20	33	<i>divined</i>
3948	I_Kgs	20	33	 ), 
3949	I_Kgs	20	33	<i>and hasted</i>
3950	I_Kgs	20	33	 2) Another reading is 
3951	I_Kgs	20	33	<i>to catch it from him</i>
3952	I_Kgs	20	33	 3) Heb 
3953	I_Kgs	20	33	<i>from him</i>
3954	I_Kgs	21	8	1) Or 
3955	I_Kgs	21	8	<i>a letter</i>
3956	I_Kgs	21	9	1) Or 
3957	I_Kgs	21	9	<i>at the head of</i>
3958	I_Kgs	21	10	1) Or 
3959	I_Kgs	21	10	<i>renounce</i>
3960	I_Kgs	21	12	1) Or 
3961	I_Kgs	21	12	<i>at the head of</i>
3962	I_Kgs	21	13	1) Or 
3963	I_Kgs	21	13	<i>renounce</i>
3964	I_Kgs	22	3	1) Or 
3965	I_Kgs	22	3	<i>keep silence</i>
3966	I_Kgs	22	5	1) Heb 
3967	I_Kgs	22	5	<i>to-day</i>
3968	I_Kgs	22	9	1) Or 
3969	I_Kgs	22	9	<i>eunuch</i>
3970	I_Kgs	22	10	1) Heb 
3971	I_Kgs	22	10	<i>a threshing-floor</i>
3972	I_Kgs	22	20	1) Or 
3973	I_Kgs	22	20	<i>deceive</i>
3974	I_Kgs	22	21	1) Heb 
3975	I_Kgs	22	21	<i>the spirit</i>
3976	I_Kgs	22	25	1) Or 
3977	I_Kgs	22	25	<i>from chamber to chamber</i>
3978	I_Kgs	22	34	1) Heb 
3979	I_Kgs	22	34	<i>in his simplicity</i>
3980	I_Kgs	22	34	 2) Or 
3981	I_Kgs	22	34	<i>the lower armor and the breastplate</i>
3982	I_Kgs	22	38	1) Or 
3983	I_Kgs	22	38	<i>and they washed the armor</i>
3984	I_Kgs	22	52	1) Or 
3985	I_Kgs	22	52	<i>who made</i>
3986	II_Kgs	1	8	1) Or 
3987	II_Kgs	1	8	<i>a man with</i>
3988	II_Kgs	1	8	 a garment of 
3989	II_Kgs	1	8	<i>hair</i>
3990	II_Kgs	1	9	1) Or 
3991	II_Kgs	1	9	<i>dwelling</i>
3992	II_Kgs	2	9	1) Or 
3993	II_Kgs	2	9	<i>as they went</i>
3994	II_Kgs	2	9	 2) That is, the portion of the first-born; See De 21:17
3995	II_Kgs	2	11	1) Or 
3996	II_Kgs	2	11	<i>chariots</i>
3997	II_Kgs	2	12	1) Or 
3998	II_Kgs	2	12	<i>chariot</i>
3999	II_Kgs	2	14	1) Or 
4000	II_Kgs	2	14	<i>the God of Elijah, even he? and when he had smitten etc</i>
4001	II_Kgs	2	19	1) Or 
4002	II_Kgs	2	19	<i>casteth its fruit</i>
4003	II_Kgs	2	21	1) Or 
4004	II_Kgs	2	21	<i>casting of fruit</i>
4005	II_Kgs	3	2	1) Or 
4006	II_Kgs	3	2	<i>obelisk</i>
4007	II_Kgs	3	4	1) Or 
4008	II_Kgs	3	4	<i>a hundred thousand lambs, and a hundred thousand rams,</i>
4009	II_Kgs	3	4	 with 
4010	II_Kgs	3	4	<i>the wool</i>
4011	II_Kgs	3	21	1) Or 
4012	II_Kgs	3	21	<i>were called together</i>
4013	II_Kgs	3	21	 2) Heb 
4014	II_Kgs	3	21	<i>gird themselves with a girdle</i>
4015	II_Kgs	3	23	1) Or 
4016	II_Kgs	3	23	<i>have surely fought together</i>
4017	II_Kgs	3	24	1) Heb 
4018	II_Kgs	3	24	<i>into it</i>
4019	II_Kgs	3	27	1) Or 
4020	II_Kgs	3	27	<i>there came great wrath upon Israel</i>
4021	II_Kgs	4	10	1) Or 
4022	II_Kgs	4	10	<i>with walls</i>
4023	II_Kgs	4	13	1) Or 
4024	II_Kgs	4	13	<i>showed us all this reverence</i>
4025	II_Kgs	4	16	1) Heb 
4026	II_Kgs	4	16	<i>liveth</i>
4027	II_Kgs	4	16	 (or 
4028	II_Kgs	4	16	<i>reviveth</i>
4029	II_Kgs	4	16	 )
4030	II_Kgs	4	23	1) Heb 
4031	II_Kgs	4	23	<i>Peace</i>
4032	II_Kgs	4	27	1) Heb 
4033	II_Kgs	4	27	<i>bitter</i>
4034	II_Kgs	4	31	1) Heb 
4035	II_Kgs	4	31	<i>attention</i>
4036	II_Kgs	4	34	1) Or 
4037	II_Kgs	4	34	<i>bowed himself</i>
4038	II_Kgs	4	35	1) Or 
4039	II_Kgs	4	35	<i>bowed himself</i>
4040	II_Kgs	4	35	 2) Or 
4041	II_Kgs	4	35	<i>and embraced the child</i>
4042	II_Kgs	4	41	1) Heb 
4043	II_Kgs	4	41	<i>evil thing</i>
4044	II_Kgs	4	42	1) Or 
4045	II_Kgs	4	42	<i>the husk thereof</i>
4046	II_Kgs	4	43	1) Or 
4047	II_Kgs	4	43	<i>minister</i>
4048	II_Kgs	5	1	1) Heb 
4049	II_Kgs	5	1	<i>before</i>
4050	II_Kgs	5	1	 2) Heb 
4051	II_Kgs	5	1	<i>salvation</i>
4052	II_Kgs	5	2	1) Heb 
4053	II_Kgs	5	2	<i>was before</i>
4054	II_Kgs	5	3	1) Heb 
4055	II_Kgs	5	3	<i>before</i>
4056	II_Kgs	5	4	1) Or 
4057	II_Kgs	5	4	<i>he</i>
4058	II_Kgs	5	5	1) Or, shekels
4059	II_Kgs	5	7	1) Or 
4060	II_Kgs	5	7	<i>an occasion</i>
4061	II_Kgs	5	10	1) Heb 
4062	II_Kgs	5	10	<i>be thou clean</i>
4063	II_Kgs	5	12	1) Another reading is 
4064	II_Kgs	5	12	<i>Amanah</i>
4065	II_Kgs	5	12	 ; See So 4:8
4066	II_Kgs	5	15	1) Heb 
4067	II_Kgs	5	15	<i>blessing</i>
4068	II_Kgs	5	19	1) Or 
4069	II_Kgs	5	19	<i>some distance</i>
4070	II_Kgs	5	24	1) Heb 
4071	II_Kgs	5	24	<i>Ophel</i>
4072	II_Kgs	5	26	1) Or 
4073	II_Kgs	5	26	<i>My heart went not</i>
4074	II_Kgs	5	26	 from me, 
4075	II_Kgs	5	26	<i>when etc</i>
4076	II_Kgs	6	6	1) Or 
4077	II_Kgs	6	6	<i>the iron did swim</i>
4078	II_Kgs	6	8	1) Or 
4079	II_Kgs	6	8	<i>encamping</i>
4080	II_Kgs	6	15	1) Or 
4081	II_Kgs	6	15	<i>minister</i>
4082	II_Kgs	6	18	1) Heb 
4083	II_Kgs	6	18	<i>nation</i>
4084	II_Kgs	6	25	1) Or, shekels
4085	II_Kgs	6	27	1) Or 
4086	II_Kgs	6	27	<i>Nay, let Jehovah help thee!</i>
4087	II_Kgs	6	32	1) Heb 
4088	II_Kgs	6	32	<i>thrust him back with the door</i>
4089	II_Kgs	7	1	1) Heb 
4090	II_Kgs	7	1	<i>seah</i>
4091	II_Kgs	7	9	1) Or 
4092	II_Kgs	7	9	<i>our iniquity will find us out</i>
4093	II_Kgs	7	10	1) Or 
4094	II_Kgs	7	10	<i>porters</i>
4095	II_Kgs	7	11	1) Or 
4096	II_Kgs	7	11	<i>the porters called</i>
4097	II_Kgs	7	13	1) Heb 
4098	II_Kgs	7	13	<i>in it</i>
4099	II_Kgs	8	6	1) Or 
4100	II_Kgs	8	6	<i>eunuch</i>
4101	II_Kgs	8	9	1) Heb 
4102	II_Kgs	8	9	<i>in his hand</i>
4103	II_Kgs	8	9	 2) Or 
4104	II_Kgs	8	9	<i>and</i>
4105	II_Kgs	8	10	1) Another reading is 
4106	II_Kgs	8	10	<i>say, Thou shalt not recover; for Jehovah etc</i>
4107	II_Kgs	8	19	1) Another reading is 
4108	II_Kgs	8	19	<i>and to his children</i>
4109	II_Kgs	8	26	1) Or 
4110	II_Kgs	8	26	<i>granddaughter</i>
4111	II_Kgs	8	26	 ; See verse 18
4112	II_Kgs	9	13	1) Or 
4113	II_Kgs	9	13	<i>on the bare steps</i>
4114	II_Kgs	9	15	1) Heb 
4115	II_Kgs	9	15	<i>Jehoram</i>
4116	II_Kgs	9	15	 (and in verses 17, 21, 22, 23, 24)
4117	II_Kgs	9	17	1) Or 
4118	II_Kgs	9	17	<i>Is all well?</i>
4119	II_Kgs	9	21	1) Or 
4120	II_Kgs	9	21	<i>Yoke</i>
4121	II_Kgs	9	24	1) Heb 
4122	II_Kgs	9	24	<i>filled his hand with the bow</i>
4123	II_Kgs	9	25	1) Or 
4124	II_Kgs	9	25	<i>uttered this oracle against him</i>
4125	II_Kgs	9	26	1) Or 
4126	II_Kgs	9	26	<i>portion</i>
4127	II_Kgs	9	31	1) Or 
4128	II_Kgs	9	31	<i>Is it well</i>
4129	II_Kgs	10	12	1) Or 
4130	II_Kgs	10	12	<i>house of gathering</i>
4131	II_Kgs	10	14	1) Or 
4132	II_Kgs	10	14	<i>cistern</i>
4133	II_Kgs	10	14	 2) Or 
4134	II_Kgs	10	14	<i>house of gathering</i>
4135	II_Kgs	10	25	1) Heb 
4136	II_Kgs	10	25	<i>runners</i>
4137	II_Kgs	10	26	1) Or 
4138	II_Kgs	10	26	<i>obelisks</i>
4139	II_Kgs	10	29	1) Or 
4140	II_Kgs	10	29	<i>who</i>
4141	II_Kgs	10	30	1) Or 
4142	II_Kgs	10	30	<i>executed well</i>
4143	II_Kgs	11	2	1) Or, who were 2) Or 
4144	II_Kgs	11	2	<i>chamber for the beds</i>
4145	II_Kgs	11	4	1) Or 
4146	II_Kgs	11	4	<i>executioners</i>
4147	II_Kgs	11	4	 2) Heb 
4148	II_Kgs	11	4	<i>runners</i>
4149	II_Kgs	11	11	1) Heb 
4150	II_Kgs	11	11	<i>shoulder</i>
4151	II_Kgs	11	12	1) Or 
4152	II_Kgs	11	12	<i>put upon him the crown and the testimony</i>
4153	II_Kgs	11	14	1) Or 
4154	II_Kgs	11	14	<i>on the platform</i>
4155	II_Kgs	11	18	1) Heb 
4156	II_Kgs	11	18	<i>offices</i>
4157	II_Kgs	12	4	1) Or, even 
4158	II_Kgs	12	4	<i>the money</i>
4159	II_Kgs	12	4	 of every one 
4160	II_Kgs	12	4	<i>that passeth</i>
4161	II_Kgs	12	4	 the numbering; See Ex 30:13. 2) Heb 
4162	II_Kgs	12	4	<i>each man the money of the souls of his estimation</i>
4163	II_Kgs	12	4	 ; See Le 27:2
4164	II_Kgs	12	10	1) Or 
4165	II_Kgs	12	10	<i>secretary</i>
4166	II_Kgs	12	10	 2) Heb 
4167	II_Kgs	12	10	<i>bound up and etc</i>
4168	II_Kgs	12	11	1) Heb 
4169	II_Kgs	12	11	<i>brought it forth</i>
4170	II_Kgs	12	12	1) Heb 
4171	II_Kgs	12	12	<i>went forth</i>
4172	II_Kgs	13	3	1) Heb 
4173	II_Kgs	13	3	<i>all the days</i>
4174	II_Kgs	13	6	1) Heb 
4175	II_Kgs	13	6	<i>he walked</i>
4176	II_Kgs	13	7	1) Or 
4177	II_Kgs	13	7	<i>to trample on</i>
4178	II_Kgs	13	14	1) Heb 
4179	II_Kgs	13	14	<i>his face</i>
4180	II_Kgs	13	14	 2) Or 
4181	II_Kgs	13	14	<i>chariot</i>
4182	II_Kgs	13	17	1) Heb 
4183	II_Kgs	13	17	<i>salvation</i>
4184	II_Kgs	13	17	 2) Or 
4185	II_Kgs	13	17	<i>against</i>
4186	II_Kgs	13	21	1) Heb 
4187	II_Kgs	13	21	<i>when the man went and touched</i>
4188	II_Kgs	13	23	1) Heb 
4189	II_Kgs	13	23	<i>until now</i>
4190	II_Kgs	14	7	1) Or 
4191	II_Kgs	14	7	<i>the rock</i>
4192	II_Kgs	14	9	1) Or 
4193	II_Kgs	14	9	<i>thorn</i>
4194	II_Kgs	14	10	1) Or 
4195	II_Kgs	14	10	<i>provoke calamity</i>
4196	II_Kgs	14	21	1) In 2 Ki 15:13 and 2 Ch 26:1 
4197	II_Kgs	14	21	<i>Uzziah</i>
4198	II_Kgs	15	1	1) In verses 13, 30, etc 
4199	II_Kgs	15	1	<i>Uzziah</i>
4200	II_Kgs	15	5	1) Or 
4201	II_Kgs	15	5	<i>infirmary</i>
4202	II_Kgs	15	25	1) Or 
4203	II_Kgs	15	25	<i>palace</i>
4204	II_Kgs	16	6	1) Heb 
4205	II_Kgs	16	6	<i>Eloth</i>
4206	II_Kgs	16	6	 2) According to another reading 
4207	II_Kgs	16	6	<i>Edomites</i>
4208	II_Kgs	16	12	1) Or 
4209	II_Kgs	16	12	<i>went up unto it</i>
4210	II_Kgs	16	13	1) Heb 
4211	II_Kgs	16	13	<i>the peace-offerings which were his</i>
4212	II_Kgs	16	18	1) Or 
4213	II_Kgs	16	18	<i>covered place</i>
4214	II_Kgs	16	18	 2) Or 
4215	II_Kgs	16	18	<i>round</i>
4216	II_Kgs	17	8	1) Or 
4217	II_Kgs	17	8	<i>practised</i>
4218	II_Kgs	17	10	1) Or 
4219	II_Kgs	17	10	<i>obelisks</i>
4220	II_Kgs	17	19	1) Or 
4221	II_Kgs	17	19	<i>practised</i>
4222	II_Kgs	17	21	1) According to another reading 
4223	II_Kgs	17	21	<i>drew Israel away</i>
4224	II_Kgs	17	31	1) Or 
4225	II_Kgs	17	31	<i>god</i>
4226	II_Kgs	18	4	1) Or 
4227	II_Kgs	18	4	<i>it was called</i>
4228	II_Kgs	18	4	 2) That is 
4229	II_Kgs	18	4	<i>A piece of brass</i>
4230	II_Kgs	18	13	1) Heb 
4231	II_Kgs	18	13	<i>Sanherib</i>
4232	II_Kgs	18	16	1) Or 
4233	II_Kgs	18	16	<i>doorposts</i>
4234	II_Kgs	18	17	1) The titles of Assyrian officers.
4235	II_Kgs	18	18	1) Or 
4236	II_Kgs	18	18	<i>secretary</i>
4237	II_Kgs	18	18	 2) Or 
4238	II_Kgs	18	18	<i>chronicler</i>
4239	II_Kgs	18	20	1) Heb 
4240	II_Kgs	18	20	<i>a word of the lips</i>
4241	II_Kgs	18	23	1) Or 
4242	II_Kgs	18	23	<i>make a wager with</i>
4243	II_Kgs	18	26	1) Heb 
4244	II_Kgs	18	26	<i>Aramean</i>
4245	II_Kgs	18	31	1) Heb 
4246	II_Kgs	18	31	<i>Make with me a blessing</i>
4247	II_Kgs	19	4	1) Or 
4248	II_Kgs	19	4	<i>wherewith the king of Assyria hath sent him</i>
4249	II_Kgs	19	11	1) Heb 
4250	II_Kgs	19	11	<i>devoting them</i>
4251	II_Kgs	19	15	1) Or 
4252	II_Kgs	19	15	<i>art enthroned</i>
4253	II_Kgs	19	21	1) Heb 
4254	II_Kgs	19	21	<i>after</i>
4255	II_Kgs	19	23	1) According to another reading 
4256	II_Kgs	19	23	<i>driving</i>
4257	II_Kgs	19	23	 2) Or 
4258	II_Kgs	19	23	<i>cypress</i>
4259	II_Kgs	19	24	1) Or 
4260	II_Kgs	19	24	<i>defence</i>
4261	II_Kgs	19	24	 ; Heb 
4262	II_Kgs	19	24	<i>Mazor</i>
4263	II_Kgs	19	28	1) Or 
4264	II_Kgs	19	28	<i>thy careless ease</i>
4265	II_Kgs	19	30	1) Heb 
4266	II_Kgs	19	30	<i>the escaped of the house of Judah that remain</i>
4267	II_Kgs	19	31	1) According to another reading 
4268	II_Kgs	19	31	<i>Jehovah of hosts</i>
4269	II_Kgs	19	31	 ; and so in Isa 37:32
4270	II_Kgs	19	37	1) According to another reading 
4271	II_Kgs	19	37	<i>Adrammelech and Sharezer his sons</i>
4272	II_Kgs	19	37	 (and so in Isa 37:38)
4273	II_Kgs	20	4	1) Or 
4274	II_Kgs	20	4	<i>out of</i>
4275	II_Kgs	20	4	 2) According to another reading 
4276	II_Kgs	20	4	<i>the middle court</i>
4277	II_Kgs	20	5	1) Or 
4278	II_Kgs	20	5	<i>leader</i>
4279	II_Kgs	20	9	1) Or 
4280	II_Kgs	20	9	<i>the shadow is gone forward ten steps, shall it go back etc</i>
4281	II_Kgs	20	9	 2) Or 
4282	II_Kgs	20	9	<i>degrees</i>
4283	II_Kgs	20	11	1) Heb 
4284	II_Kgs	20	11	<i>steps</i>
4285	II_Kgs	20	12	1) In Isa 39:1 
4286	II_Kgs	20	12	<i>Merodach-baladan</i>
4287	II_Kgs	20	13	1) Or 
4288	II_Kgs	20	13	<i>spicery</i>
4289	II_Kgs	20	13	 2) Another reading is 
4290	II_Kgs	20	13	<i>all the house</i>
4291	II_Kgs	20	13	 3) Or 
4292	II_Kgs	20	13	<i>jewels</i>
4293	II_Kgs	21	6	1) Or 
4294	II_Kgs	21	6	<i>appointed</i>
4295	II_Kgs	21	6	 ; Heb 
4296	II_Kgs	21	6	<i>made</i>
4297	II_Kgs	22	9	1) Or 
4298	II_Kgs	22	9	<i>poured out</i>
4299	II_Kgs	22	13	1) Or 
4300	II_Kgs	22	13	<i>enjoined us</i>
4301	II_Kgs	22	14	1) Heb 
4302	II_Kgs	22	14	<i>Mishneh</i>
4303	II_Kgs	22	19	1) Or 
4304	II_Kgs	22	19	<i>an astonishment</i>
4305	II_Kgs	23	3	1) Or 
4306	II_Kgs	23	3	<i>on the platform</i>
4307	II_Kgs	23	3	 2) Or 
4308	II_Kgs	23	3	<i>perform</i>
4309	II_Kgs	23	5	1) Heb 
4310	II_Kgs	23	5	<i>Chemarim</i>
4311	II_Kgs	23	5	 ; See Ho 10:5; Zep 1:4. 2) Or 
4312	II_Kgs	23	5	<i>twelve signs</i>
4313	II_Kgs	23	6	1) Heb 
4314	II_Kgs	23	6	<i>children of the people</i>
4315	II_Kgs	23	7	1) Or 
4316	II_Kgs	23	7	<i>tents</i>
4317	II_Kgs	23	7	 ; Heb 
4318	II_Kgs	23	7	<i>houses</i>
4319	II_Kgs	23	10	1) According to another reading 
4320	II_Kgs	23	10	<i>son</i>
4321	II_Kgs	23	12	1) Or 
4322	II_Kgs	23	12	<i>ran from thence</i>
4323	II_Kgs	23	13	1) Or 
4324	II_Kgs	23	13	<i>destruction</i>
4325	II_Kgs	23	14	1) Or 
4326	II_Kgs	23	14	<i>obelisks</i>
4327	II_Kgs	23	20	1) Or 
4328	II_Kgs	23	20	<i>sacrificed</i>
4329	II_Kgs	23	22	1) Or 
4330	II_Kgs	23	22	<i>even in all…and of</i>
4331	II_Kgs	23	24	1) Or 
4332	II_Kgs	23	24	<i>perform</i>
4333	II_Kgs	23	33	1) According to another reading 
4334	II_Kgs	23	33	<i>when he reigned</i>
4335	II_Kgs	23	33	 2) Or 
4336	II_Kgs	23	33	<i>fine</i>
4337	II_Kgs	24	12	1) Or 
4338	II_Kgs	24	12	<i>eunuchs</i>
4339	II_Kgs	24	15	1) Or 
4340	II_Kgs	24	15	<i>eunuchs</i>
4341	II_Kgs	24	15	 2) Or 
4342	II_Kgs	24	15	<i>mighty</i>
4343	II_Kgs	24	18	1) Heb 
4344	II_Kgs	24	18	<i>Hamital</i>
4345	II_Kgs	25	6	1) Or 
4346	II_Kgs	25	6	<i>spake with him of judgment</i>
4347	II_Kgs	25	19	1) Or 
4348	II_Kgs	25	19	<i>eunuch</i>
4349	II_Kgs	25	19	 2) Or 
4350	II_Kgs	25	19	<i>scribe of the captain of the host</i>
4351	I_Chr	1	6	1) In Ge 10:3 
4352	I_Chr	1	6	<i>Riphath</i>
4353	I_Chr	1	7	1) In Ge 10:4 
4354	I_Chr	1	7	<i>Dodanim</i>
4355	I_Chr	1	12	1) Heb 
4356	I_Chr	1	12	<i>Pelishtim</i>
4357	I_Chr	1	17	1) In Ge 10:23 
4358	I_Chr	1	17	<i>Mash</i>
4359	I_Chr	1	22	1) In Ge 10:28 
4360	I_Chr	1	22	<i>Obal</i>
4361	I_Chr	1	36	1) In Ge 36:11 
4362	I_Chr	1	36	<i>Zepho</i>
4363	I_Chr	1	39	1) In Ge 36:22 
4364	I_Chr	1	39	<i>Hemam</i>
4365	I_Chr	1	40	1) In Ge 36:23 
4366	I_Chr	1	40	<i>Alvan</i>
4367	I_Chr	1	40	 2) In Ge 36:23 
4368	I_Chr	1	40	<i>Shepho</i>
4369	I_Chr	1	41	1) In Ge 36:26 
4370	I_Chr	1	41	<i>Hemdan</i>
4371	I_Chr	1	42	1) In Ge 36:27 
4372	I_Chr	1	42	<i>and Akan</i>
4373	I_Chr	1	50	1) In Ge 36:39 
4374	I_Chr	1	50	<i>Hadar</i>
4375	I_Chr	1	50	 2) In Ge 36:39 
4376	I_Chr	1	50	<i>Pau</i>
4377	I_Chr	1	51	1) In Ge 36:40 
4378	I_Chr	1	51	<i>Alvah</i>
4379	I_Chr	2	6	1) In Jos 7:1 
4380	I_Chr	2	6	<i>Zabdi</i>
4381	I_Chr	2	6	 2) In 1 Ki 4:31 
4382	I_Chr	2	6	<i>Darda</i>
4383	I_Chr	2	7	1) In Jos 7:1 
4384	I_Chr	2	7	<i>Achan</i>
4385	I_Chr	2	16	1) Heb 
4386	I_Chr	2	16	<i>Abshai</i>
4387	I_Chr	2	23	1) Or 
4388	I_Chr	2	23	<i>Havvoth-jair</i>
4389	I_Chr	2	23	 2) Heb 
4390	I_Chr	2	23	<i>daughters</i>
4391	I_Chr	2	30	1) Or 
4392	I_Chr	2	30	<i>sons</i>
4393	I_Chr	2	32	1) Or 
4394	I_Chr	2	32	<i>sons</i>
4395	I_Chr	3	17	1) Or 
4396	I_Chr	3	17	<i>Assir</i>
4397	I_Chr	3	19	1) Heb 
4398	I_Chr	3	19	<i>son</i>
4399	I_Chr	3	21	1) Heb 
4400	I_Chr	3	21	<i>son</i>
4401	I_Chr	3	23	1) Heb 
4402	I_Chr	3	23	<i>son</i>
4403	I_Chr	4	7	1) Another reading is 
4404	I_Chr	4	7	<i>and Zohar</i>
4405	I_Chr	4	12	1) Or 
4406	I_Chr	4	12	<i>the city of Nahash</i>
4407	I_Chr	4	14	1) Or 
4408	I_Chr	4	14	<i>the valley of craftsmen</i>
4409	I_Chr	4	18	1) Or 
4410	I_Chr	4	18	<i>Ha-jehudijah</i>
4411	I_Chr	4	22	1) Heb 
4412	I_Chr	4	22	<i>words</i>
4413	I_Chr	4	23	1) Or 
4414	I_Chr	4	23	<i>those that dwelt among plantations and hedges</i>
4415	I_Chr	4	24	1) In Ge 46:10; Ex 6:15 
4416	I_Chr	4	24	<i>Jemuel</i>
4417	I_Chr	4	24	 2) In Ge 46:10 
4418	I_Chr	4	24	<i>Jachin</i>
4419	I_Chr	4	24	 3) In Ge 46:10 
4420	I_Chr	4	24	<i>Zohar</i>
4421	I_Chr	4	41	1) Heb 
4422	I_Chr	4	41	<i>devoted them</i>
4423	I_Chr	5	2	1) Or 
4424	I_Chr	5	2	<i>leader</i>
4425	I_Chr	5	6	1) In 2 Ki 15:29; 16:7 
4426	I_Chr	5	6	<i>Tiglath-pileser</i>
4427	I_Chr	5	16	1) Heb 
4428	I_Chr	5	16	<i>daughters</i>
4429	I_Chr	5	16	 2) Or 
4430	I_Chr	5	16	<i>pasture lands</i>
4431	I_Chr	5	16	 3) Heb 
4432	I_Chr	5	16	<i>goings forth</i>
4433	I_Chr	5	21	1) Heb 
4434	I_Chr	5	21	<i>souls of men</i>
4435	I_Chr	6	1	1) In verse 16 
4436	I_Chr	6	1	<i>Gershom</i>
4437	I_Chr	6	12	1) In 1 Ch 9:11 
4438	I_Chr	6	12	<i>Meshullam</i>
4439	I_Chr	6	16	1) In verse 1 
4440	I_Chr	6	16	<i>Gershon</i>
4441	I_Chr	6	21	1) In verse 42 
4442	I_Chr	6	21	<i>Ethan</i>
4443	I_Chr	6	21	 2) In verse 41 
4444	I_Chr	6	21	<i>Adaiah</i>
4445	I_Chr	6	21	 3) In verse 41 
4446	I_Chr	6	21	<i>Ethni</i>
4447	I_Chr	6	22	1) In verses 2, 18, 38 
4448	I_Chr	6	22	<i>Izhar</i>
4449	I_Chr	6	24	1) In verse 36 
4450	I_Chr	6	24	<i>Zephaniah, Azariah, Joel</i>
4451	I_Chr	6	26	1) In verse 35 
4452	I_Chr	6	26	<i>Zuph</i>
4453	I_Chr	6	26	 2) In verse 34 
4454	I_Chr	6	26	<i>Toah</i>
4455	I_Chr	6	27	1) In verse 34 
4456	I_Chr	6	27	<i>Eliel</i>
4457	I_Chr	6	28	1) See verse 33 and 1 Sa 8:2; The Hebrew text has 
4458	I_Chr	6	28	<i>Vashni, and Abiah</i>
4459	I_Chr	6	32	1) Heb 
4460	I_Chr	6	32	<i>stood</i>
4461	I_Chr	6	33	1) Heb 
4462	I_Chr	6	33	<i>stood</i>
4463	I_Chr	6	34	1) In verse 26 
4464	I_Chr	6	34	<i>Nahath</i>
4465	I_Chr	6	35	1) In verse 26 
4466	I_Chr	6	35	<i>Zophai</i>
4467	I_Chr	6	36	1) In verse 24 
4468	I_Chr	6	36	<i>Shaul, Uzziah, Uriel</i>
4469	I_Chr	6	44	1) In 1 Ch 9:16 
4470	I_Chr	6	44	<i>Jeduthun</i>
4471	I_Chr	6	44	 2) In 1 Ch 15:17 
4472	I_Chr	6	44	<i>Kushaiah</i>
4473	I_Chr	6	48	1) Heb 
4474	I_Chr	6	48	<i>given</i>
4475	I_Chr	6	48	 ; See Nu 3:9
4476	I_Chr	6	49	1) Or 
4477	I_Chr	6	49	<i>burnt incense</i>
4478	I_Chr	6	58	1) In Jos 21:15 
4479	I_Chr	6	58	<i>Holon</i>
4480	I_Chr	6	59	1) In Jos 21:16 
4481	I_Chr	6	59	<i>Ain</i>
4482	I_Chr	6	60	1) In Jos 21:18 
4483	I_Chr	6	60	<i>Almon</i>
4484	I_Chr	6	68	1) See Jos 21:22-29 where some of the names are different.
4485	I_Chr	7	1	1) In Ge 46:13 
4486	I_Chr	7	1	<i>Puvah and Iob</i>
4487	I_Chr	7	12	1) In Nu 26:39 
4488	I_Chr	7	12	<i>Shephupham</i>
4489	I_Chr	7	12	 and 
4490	I_Chr	7	12	<i>Hupham</i>
4491	I_Chr	7	12	 2) In verse 7 
4492	I_Chr	7	12	<i>Iri</i>
4493	I_Chr	7	12	 3) In Nu 26:38 
4494	I_Chr	7	12	<i>Ahiram</i>
4495	I_Chr	7	13	1) In Ge 46:24 
4496	I_Chr	7	13	<i>Jahzeel</i>
4497	I_Chr	7	13	 2) In Ge 46:24 
4498	I_Chr	7	13	<i>Shillem</i>
4499	I_Chr	7	15	1) Or 
4500	I_Chr	7	15	<i>for</i>
4501	I_Chr	7	15	  2) Or 
4502	I_Chr	7	15	<i>and his</i>
4503	I_Chr	7	18	1) In Nu 26:30 
4504	I_Chr	7	18	<i>Iezer</i>
4505	I_Chr	7	27	1) Heb 
4506	I_Chr	7	27	<i>Non</i>
4507	I_Chr	7	28	1) Heb 
4508	I_Chr	7	28	<i>daughters</i>
4509	I_Chr	7	28	 2) In Jos 16:7 
4510	I_Chr	7	28	<i>Naarah</i>
4511	I_Chr	7	28	 3) Many MSS read 
4512	I_Chr	7	28	<i>Ayyah</i>
4513	I_Chr	7	32	1) In verse 34 
4514	I_Chr	7	32	<i>Shemer</i>
4515	I_Chr	7	34	1) In verse 32 
4516	I_Chr	7	34	<i>Shomer</i>
4517	I_Chr	7	35	1) Heb 
4518	I_Chr	7	35	<i>son</i>
4519	I_Chr	8	3	1) In Ge 46:21 
4520	I_Chr	8	3	<i>Ard</i>
4521	I_Chr	8	5	1) In Nu 26:39 
4522	I_Chr	8	5	<i>Shephupham</i>
4523	I_Chr	8	8	1) Or 
4524	I_Chr	8	8	<i>sent away Hushim and Baara his wives</i>
4525	I_Chr	8	21	1) In verse 13 
4526	I_Chr	8	21	<i>Shema</i>
4527	I_Chr	8	31	1) In 1 Ch 9:37 
4528	I_Chr	8	31	<i>Zechariah</i>
4529	I_Chr	8	32	1) In 1 Ch 9:38 
4530	I_Chr	8	32	<i>Shimeam</i>
4531	I_Chr	8	33	1) In 1 Sa 14:49 
4532	I_Chr	8	33	<i>Ishvi</i>
4533	I_Chr	8	33	 2) In 2 Sa 2:8 
4534	I_Chr	8	33	<i>Ishbosheth</i>
4535	I_Chr	8	34	1) In 2 Sa 4:4; 9:6, 10 
4536	I_Chr	8	34	<i>Mephibosheth</i>
4537	I_Chr	8	35	1) In 1 Ch 9:41 
4538	I_Chr	8	35	<i>Tahrea</i>
4539	I_Chr	8	36	1) In 1 Ch 9:42 
4540	I_Chr	8	36	<i>Jarah</i>
4541	I_Chr	8	37	1) In 1 Ch 9:43 
4542	I_Chr	8	37	<i>Rephaiah</i>
4543	I_Chr	9	11	1) In Ne 11:11 
4544	I_Chr	9	11	<i>Seraiah</i>
4545	I_Chr	9	15	1) In Ne 11:17 
4546	I_Chr	9	15	<i>Zabdi</i>
4547	I_Chr	9	16	1) In Ne 11:17 
4548	I_Chr	9	16	<i>Abda</i>
4549	I_Chr	9	16	 2) In Ne 11:17 
4550	I_Chr	9	16	<i>Shammua</i>
4551	I_Chr	9	24	1) Heb 
4552	I_Chr	9	24	<i>Towards the four winds</i>
4553	I_Chr	10	1	1) Or 
4554	I_Chr	10	1	<i>wounded</i>
4555	I_Chr	10	2	1) In 1 Sa 14:49 
4556	I_Chr	10	2	<i>Ishvi</i>
4557	I_Chr	10	4	1) Or 
4558	I_Chr	10	4	<i>make a mock of me</i>
4559	I_Chr	10	12	1) Or 
4560	I_Chr	10	12	<i>terebinth</i>
4561	I_Chr	10	13	1) Or 
4562	I_Chr	10	13	<i>in</i>
4563	I_Chr	11	2	1) Or 
4564	I_Chr	11	2	<i>leader</i>
4565	I_Chr	11	8	1) Heb 
4566	I_Chr	11	8	<i>revived</i>
4567	I_Chr	11	10	1) Or 
4568	I_Chr	11	10	<i>held strongly with him</i>
4569	I_Chr	11	11	1) Another reading is 
4570	I_Chr	11	11	<i>captains</i>
4571	I_Chr	11	11	 2) Heb 
4572	I_Chr	11	11	<i>slain</i>
4573	I_Chr	11	13	1) In 1 Sa 17:1 
4574	I_Chr	11	13	<i>Ephes-dammim</i>
4575	I_Chr	11	14	1) Heb 
4576	I_Chr	11	14	<i>salvation</i>
4577	I_Chr	11	19	1) Heb 
4578	I_Chr	11	19	<i>with their lives</i>
4579	I_Chr	11	20	1) Heb 
4580	I_Chr	11	20	<i>Abshai</i>
4581	I_Chr	11	20	 2) Heb 
4582	I_Chr	11	20	<i>slain</i>
4583	I_Chr	11	21	1) Or 
4584	I_Chr	11	21	<i>Of the three in the second rank he was the most honorable</i>
4585	I_Chr	11	25	1) Or 
4586	I_Chr	11	25	<i>council</i>
4587	I_Chr	11	27	1) In 2 Sa 23:25 
4588	I_Chr	11	27	<i>Shammath the Harodite</i>
4589	I_Chr	11	27	 2) In 2 Sa 23:26 
4590	I_Chr	11	27	<i>Paltite</i>
4591	I_Chr	11	29	1) In 2 Sa 23:27 
4592	I_Chr	11	29	<i>Mebunnai</i>
4593	I_Chr	11	29	 2) In 2 Sa 23:28 
4594	I_Chr	11	29	<i>Zalmon</i>
4595	I_Chr	11	30	1) In 2 Sa 23:29 
4596	I_Chr	11	30	<i>Heleb</i>
4597	I_Chr	11	32	1) In 2 Sa 23:30 
4598	I_Chr	11	32	<i>Hiddai</i>
4599	I_Chr	11	32	 2) In 2 Sa 23:31 
4600	I_Chr	11	32	<i>Abi-albon</i>
4601	I_Chr	11	34	1) In 2 Sa 23:32 
4602	I_Chr	11	34	<i>Jashen</i>
4603	I_Chr	11	35	1) In 2 Sa 23:33 
4604	I_Chr	11	35	<i>Sharar</i>
4605	I_Chr	11	35	 2) In 2 Sa 23:34 
4606	I_Chr	11	35	<i>Eliphelet the son of Ahasbai</i>
4607	I_Chr	11	37	1) In 2 Sa 23:35 
4608	I_Chr	11	37	<i>Paarai the Arbite</i>
4609	I_Chr	12	1	1) Heb. being 
4610	I_Chr	12	1	<i>yet shut up</i>
4611	I_Chr	12	2	1) Or 
4612	I_Chr	12	2	<i>drew the bow</i>
4613	I_Chr	12	14	1) Or 
4614	I_Chr	12	14	<i>over</i>
4615	I_Chr	12	17	1) Or 
4616	I_Chr	12	17	<i>violence</i>
4617	I_Chr	12	18	1) Heb 
4618	I_Chr	12	18	<i>clothed</i>
4619	I_Chr	12	18	 2) Another reading is 
4620	I_Chr	12	18	<i>captains</i>
4621	I_Chr	12	29	1) Heb 
4622	I_Chr	12	29	<i>kept the charge of the house</i>
4623	I_Chr	13	2	1) Heb 
4624	I_Chr	13	2	<i>lands</i>
4625	I_Chr	13	2	 2) Or 
4626	I_Chr	13	2	<i>and with them to the priests and Levites that are etc</i>
4627	I_Chr	13	2	 3) Or 
4628	I_Chr	13	2	<i>pasture lands</i>
4629	I_Chr	13	6	1) Or 
4630	I_Chr	13	6	<i>is enthroned</i>
4631	I_Chr	13	6	 2) Or 
4632	I_Chr	13	6	<i>where the Name is called on</i>
4633	I_Chr	13	9	1) Or 
4634	I_Chr	13	9	<i>were restive</i>
4635	I_Chr	13	9	 ; Or 
4636	I_Chr	13	9	<i>threw</i>
4637	I_Chr	13	9	 it 
4638	I_Chr	13	9	<i>down</i>
4639	I_Chr	13	11	1) That is 
4640	I_Chr	13	11	<i>The breach of Uzza</i>
4641	I_Chr	14	8	1) Or 
4642	I_Chr	14	8	<i>before</i>
4643	I_Chr	14	11	1) Or 
4644	I_Chr	14	11	<i>broken forth upon mine enemies</i>
4645	I_Chr	14	11	 2) That is 
4646	I_Chr	14	11	<i>The place of breakings forth</i>
4647	I_Chr	14	14	1) Or 
4648	I_Chr	14	14	<i>balsam-trees</i>
4649	I_Chr	14	16	1) In 2 Sa 5:25 
4650	I_Chr	14	16	<i>Geba</i>
4651	I_Chr	15	22	1) Or 
4652	I_Chr	15	22	<i>the carrying</i>
4653	I_Chr	15	22	 of the ark; Heb 
4654	I_Chr	15	22	<i>the lifting up</i>
4655	I_Chr	15	27	1) Or 
4656	I_Chr	15	27	<i>the carrying</i>
4657	I_Chr	15	27	 of the ark; Heb 
4658	I_Chr	15	27	<i>the lifting up</i>
4659	I_Chr	16	3	1) Or, of wine
4660	I_Chr	16	5	1) In 1 Ch 15:18 
4661	I_Chr	16	5	<i>Jaaziel</i>
4662	I_Chr	16	7	1) Or 
4663	I_Chr	16	7	<i>make it the chief work</i>
4664	I_Chr	16	9	1) Or 
4665	I_Chr	16	9	<i>Meditate</i>
4666	I_Chr	16	18	1) Heb 
4667	I_Chr	16	18	<i>cord</i>
4668	I_Chr	16	18	 , or 
4669	I_Chr	16	18	<i>line</i>
4670	I_Chr	16	26	1) Or 
4671	I_Chr	16	26	<i>things of nought</i>
4672	I_Chr	16	29	1) Or 
4673	I_Chr	16	29	<i>in the beauty of holiness</i>
4674	I_Chr	17	5	1) Heb 
4675	I_Chr	17	5	<i>have been</i>
4676	I_Chr	17	7	1) Or 
4677	I_Chr	17	7	<i>pasture</i>
4678	I_Chr	17	7	 2) Or 
4679	I_Chr	17	7	<i>leader</i>
4680	I_Chr	17	10	1) Or 
4681	I_Chr	17	10	<i>have subdued</i>
4682	I_Chr	17	21	1) Or 
4683	I_Chr	17	21	<i>And who is like thy people Israel, a nation that is alone in the earth etc</i>
4684	I_Chr	17	24	1) Or 
4685	I_Chr	17	24	<i>Yea, let it be established, and let they name be magnified etc</i>
4686	I_Chr	18	3	1) Or 
4687	I_Chr	18	3	<i>by</i>
4688	I_Chr	18	5	1) Heb 
4689	I_Chr	18	5	<i>Aram</i>
4690	I_Chr	18	5	 2) Heb 
4691	I_Chr	18	5	<i>Darmesek</i>
4692	I_Chr	18	6	1) Heb 
4693	I_Chr	18	6	<i>Aram</i>
4694	I_Chr	18	6	 2) Heb 
4695	I_Chr	18	6	<i>Darmesek</i>
4696	I_Chr	18	6	 3) Or 
4697	I_Chr	18	6	<i>saved David</i>
4698	I_Chr	18	12	1) Heb 
4699	I_Chr	18	12	<i>Abshai</i>
4700	I_Chr	18	15	1) Or 
4701	I_Chr	18	15	<i>chronicler</i>
4702	I_Chr	18	16	1) Or 
4703	I_Chr	18	16	<i>secretary</i>
4704	I_Chr	19	10	1) Heb 
4705	I_Chr	19	10	<i>the face of the battle was against</i>
4706	I_Chr	19	11	1) Heb 
4707	I_Chr	19	11	<i>Abshai</i>
4708	I_Chr	20	2	1) Or 
4709	I_Chr	20	2	<i>Malcam</i>
4710	I_Chr	20	2	 ; See Zep 1:5
4711	I_Chr	20	4	1) In 2 Sa 21:18 
4712	I_Chr	20	4	<i>Gob</i>
4713	I_Chr	20	7	1) Or 
4714	I_Chr	20	7	<i>reproached</i>
4715	I_Chr	21	1	1) Or 
4716	I_Chr	21	1	<i>an adversary</i>
4717	I_Chr	21	10	1) Heb 
4718	I_Chr	21	10	<i>stretch out unto</i>
4719	I_Chr	21	12	1) Or 
4720	I_Chr	21	12	<i>and</i>
4721	I_Chr	21	13	1) Or 
4722	I_Chr	21	13	<i>many</i>
4723	I_Chr	21	15	1) In 2 Sa 24:16, etc 
4724	I_Chr	21	15	<i>Araunah</i>
4725	I_Chr	22	7	1) According to another reading 
4726	I_Chr	22	7	<i>My son, as for me etc</i>
4727	I_Chr	22	9	1) That is 
4728	I_Chr	22	9	<i>Peaceful</i>
4729	I_Chr	22	14	1) Or 
4730	I_Chr	22	14	<i>low estate</i>
4731	I_Chr	23	6	1) Heb 
4732	I_Chr	23	6	<i>divisions</i>
4733	I_Chr	23	7	1) In 1 Ch 6:17 
4734	I_Chr	23	7	<i>Libni</i>
4735	I_Chr	23	10	1) In verse 11 
4736	I_Chr	23	10	<i>Zizah</i>
4737	I_Chr	23	13	1) Or 
4738	I_Chr	23	13	<i>to sanctify as most holy him etc</i>
4739	I_Chr	23	16	1) In 1 Ch 24:20 
4740	I_Chr	23	16	<i>Shubael</i>
4741	I_Chr	23	18	1) In 1 Ch 24:22 
4742	I_Chr	23	18	<i>Shelomoth</i>
4743	I_Chr	23	27	1) Or 
4744	I_Chr	23	27	<i>in the last acts</i>
4745	I_Chr	23	28	1) Heb 
4746	I_Chr	23	28	<i>their station was at the hand of the sons of Aaron</i>
4747	I_Chr	23	28	 ; See Ne 11:24
4748	I_Chr	24	3	1) Or 
4749	I_Chr	24	3	<i>And David divided them, even Zadok etc</i>
4750	I_Chr	24	6	1) The Hebrew text has 
4751	I_Chr	24	6	<i>taken, taken</i>
4752	I_Chr	24	20	1) In 1 Ch 23:16 
4753	I_Chr	24	20	<i>Shebuel</i>
4754	I_Chr	24	22	1) In 1 Ch 23:18 
4755	I_Chr	24	22	<i>Shelomith</i>
4756	I_Chr	25	2	1) In verse 14 
4757	I_Chr	25	2	<i>Jesharelah</i>
4758	I_Chr	25	2	 2) Heb 
4759	I_Chr	25	2	<i>by the hands of the king</i>
4760	I_Chr	25	3	1) In verse 11 
4761	I_Chr	25	3	<i>Izri</i>
4762	I_Chr	25	3	 2) With Shimei, mentioned in verse 17
4763	I_Chr	25	4	1) In verse 18 
4764	I_Chr	25	4	<i>Azarel</i>
4765	I_Chr	25	4	 2) In verse 20 
4766	I_Chr	25	4	<i>Shubael</i>
4767	I_Chr	25	6	1) Or 
4768	I_Chr	25	6	<i>after the order of the king,</i>
4769	I_Chr	25	6	 even 
4770	I_Chr	25	6	<i>Asaph etc</i>
4771	I_Chr	25	8	1) Or 
4772	I_Chr	25	8	<i>ward against</i>
4773	I_Chr	25	8	 ward, 
4774	I_Chr	25	8	<i>as well etc</i>
4775	I_Chr	26	1	1) In verse 14 
4776	I_Chr	26	1	<i>Shelemiah</i>
4777	I_Chr	26	1	 2) In 1 Ch 9:19 
4778	I_Chr	26	1	<i>Ebiasaph</i>
4779	I_Chr	26	12	1) Or 
4780	I_Chr	26	12	<i>wards over against their brethren</i>
4781	I_Chr	26	14	1) In verse 1 
4782	I_Chr	26	14	<i>Meshelemiah</i>
4783	I_Chr	26	16	1) That is 
4784	I_Chr	26	16	<i>Casting forth</i>
4785	I_Chr	26	18	1) Or 
4786	I_Chr	26	18	<i>the precinct</i>
4787	I_Chr	26	20	1) Heb 
4788	I_Chr	26	20	<i>holy things</i>
4789	I_Chr	26	21	1) In 1 Ch 6:17 
4790	I_Chr	26	21	<i>Libni</i>
4791	I_Chr	26	21	 2) In 1 Ch 23:8 
4792	I_Chr	26	21	<i>Jehiel</i>
4793	I_Chr	26	27	1) Heb 
4794	I_Chr	26	27	<i>Out of the battles and the spoil</i>
4795	I_Chr	26	28	1) Heb 
4796	I_Chr	26	28	<i>Shelomith</i>
4797	I_Chr	27	5	1) Or 
4798	I_Chr	27	5	<i>chief minister</i>
4799	I_Chr	27	5	 ; See 2 Sa 8:18
4800	I_Chr	27	15	1) In 1 Ch 11:30 
4801	I_Chr	27	15	<i>Heled</i>
4802	I_Chr	27	18	1) In 1 Sa 16:6 
4803	I_Chr	27	18	<i>Eliab</i>
4804	I_Chr	27	32	1) Or 
4805	I_Chr	27	32	<i>brother’s son</i>
4806	I_Chr	28	1	1) Or 
4807	I_Chr	28	1	<i>cattle</i>
4808	I_Chr	28	1	 2) Or 
4809	I_Chr	28	1	<i>eunuchs</i>
4810	I_Chr	28	4	1) Or 
4811	I_Chr	28	4	<i>leader</i>
4812	I_Chr	28	11	1) Heb 
4813	I_Chr	28	11	<i>house</i>
4814	I_Chr	28	12	1) Or 
4815	I_Chr	28	12	<i>in his spirit</i>
4816	I_Chr	28	19	1) Or 
4817	I_Chr	28	19	<i>Jehovah made me understand in writing by his hand upon me, even etc</i>
4818	I_Chr	29	2	1) Or 
4819	I_Chr	29	2	<i>beryl</i>
4820	I_Chr	29	5	1) Heb 
4821	I_Chr	29	5	<i>to fill his hand</i>
4822	I_Chr	29	14	1) Heb 
4823	I_Chr	29	14	<i>retain strength</i>
4824	I_Chr	29	14	 2) Heb 
4825	I_Chr	29	14	<i>of thy hand</i>
4826	I_Chr	29	15	1) Heb 
4827	I_Chr	29	15	<i>hope</i>
4828	I_Chr	29	18	1) Or 
4829	I_Chr	29	18	<i>establish</i>
4830	I_Chr	29	22	1) Or 
4831	I_Chr	29	22	<i>leader</i>
4832	I_Chr	29	24	1) Heb 
4833	I_Chr	29	24	<i>gave the hand under Solomon</i>
4834	I_Chr	29	29	1) Heb 
4835	I_Chr	29	29	<i>words</i>
4836	II_Chr	1	5	1) Or as otherwise read 
4837	II_Chr	1	5	<i>he had put</i>
4838	II_Chr	1	6	1) Or 
4839	II_Chr	1	6	<i>offered there, upon…yea, he offered</i>
4840	II_Chr	1	13	1) So Sept, Vulg, and Syr; The Heb has 
4841	II_Chr	1	13	<i>to</i>
4842	II_Chr	2	3	1) In 1 Ki 5:1 
4843	II_Chr	2	3	<i>Hiram</i>
4844	II_Chr	2	6	1) Heb 
4845	II_Chr	2	6	<i>retaineth strength</i>
4846	II_Chr	2	8	1) Or 
4847	II_Chr	2	8	<i>cypress-trees</i>
4848	II_Chr	2	8	 2) In 1 Ki 10:11 
4849	II_Chr	2	8	<i>almug-trees</i>
4850	II_Chr	2	10	1) Heb 
4851	II_Chr	2	10	<i>cors</i>
4852	II_Chr	2	13	1) Or 
4853	II_Chr	2	13	<i>even Huram my father</i>
4854	II_Chr	2	16	1) Heb 
4855	II_Chr	2	16	<i>Japho</i>
4856	II_Chr	3	1	1) Heb 
4857	II_Chr	3	1	<i>in the place of David</i>
4858	II_Chr	3	1	 2) In 2 Sa 24:16, etc 
4859	II_Chr	3	1	<i>Araunah</i>
4860	II_Chr	3	3	1) Or 
4861	II_Chr	3	3	<i>these are the things wherein Solomon was instructed for etc</i>
4862	II_Chr	3	5	1) Or 
4863	II_Chr	3	5	<i>cypress-wood</i>
4864	II_Chr	3	13	1) Or 
4865	II_Chr	3	13	<i>inward</i>
4866	II_Chr	3	17	1) That is 
4867	II_Chr	3	17	<i>He shall establish</i>
4868	II_Chr	3	17	 2) That is 
4869	II_Chr	3	17	<i>In it is strength</i>
4870	II_Chr	4	3	1) In 1 Ki 7:24 
4871	II_Chr	4	3	<i>knops</i>
4872	II_Chr	4	3	 2) Or 
4873	II_Chr	4	3	<i>ten in a cubit</i>
4874	II_Chr	4	13	1) Heb 
4875	II_Chr	4	13	<i>upon the face of the pillars</i>
4876	II_Chr	4	18	1) Or 
4877	II_Chr	4	18	<i>was not searched out</i>
4878	II_Chr	5	9	1) Or 
4879	II_Chr	5	9	<i>they drew out the staves, so that etc</i>
4880	II_Chr	5	10	1) Or 
4881	II_Chr	5	10	<i>where</i>
4882	II_Chr	5	13	1) Or 
4883	II_Chr	5	13	<i>for song</i>
4884	II_Chr	6	5	1) Or 
4885	II_Chr	6	5	<i>leader</i>
4886	II_Chr	6	14	1) Or 
4887	II_Chr	6	14	<i>for</i>
4888	II_Chr	6	16	1) Heb 
4889	II_Chr	6	16	<i>There shall not be cut off unto thee a man from my sight</i>
4890	II_Chr	6	22	1) Or 
4891	II_Chr	6	22	<i>Whereinsoever a man shall sin</i>
4892	II_Chr	6	26	1) Or 
4893	II_Chr	6	26	<i>because</i>
4894	II_Chr	6	26	 2) Or 
4895	II_Chr	6	26	<i>answerest</i>
4896	II_Chr	6	27	1) Or 
4897	II_Chr	6	27	<i>because</i>
4898	II_Chr	6	28	1) Heb 
4899	II_Chr	6	28	<i>gates</i>
4900	II_Chr	6	33	1) Or 
4901	II_Chr	6	33	<i>thy name is called upon this house etc</i>
4902	II_Chr	6	35	1) Or 
4903	II_Chr	6	35	<i>right</i>
4904	II_Chr	6	36	1) Heb 
4905	II_Chr	6	36	<i>they that take them captive carry them away</i>
4906	II_Chr	6	39	1) Or 
4907	II_Chr	6	39	<i>right</i>
4908	II_Chr	6	41	1) Or 
4909	II_Chr	6	41	<i>good</i>
4910	II_Chr	6	42	1) Or 
4911	II_Chr	6	42	<i>good deeds</i>
4912	II_Chr	6	42	 ; See 2 Ch 32:32
4913	II_Chr	7	6	1) Or 
4914	II_Chr	7	6	<i>for the song of Jehovah</i>
4915	II_Chr	7	9	1) Or 
4916	II_Chr	7	9	<i>closing festival</i>
4917	II_Chr	7	14	1) Heb 
4918	II_Chr	7	14	<i>upon whom my name is called</i>
4919	II_Chr	8	8	1) Heb 
4920	II_Chr	8	8	<i>men subject to taskwork</i>
4921	II_Chr	8	11	1) Heb 
4922	II_Chr	8	11	<i>they are</i>
4923	II_Chr	9	4	1) Heb 
4924	II_Chr	9	4	<i>standing</i>
4925	II_Chr	9	5	1) Or 
4926	II_Chr	9	5	<i>sayings</i>
4927	II_Chr	9	10	1) In 1 Ki 10:11 
4928	II_Chr	9	10	<i>almug-trees</i>
4929	II_Chr	9	18	1) Or 
4930	II_Chr	9	18	<i>arms</i>
4931	II_Chr	9	18	 ; Heb 
4932	II_Chr	9	18	<i>hands</i>
4933	II_Chr	9	29	1) Heb 
4934	II_Chr	9	29	<i>words</i>
4935	II_Chr	9	29	 2) Heb 
4936	II_Chr	9	29	<i>Jedai</i>
4937	II_Chr	9	29	 , or 
4938	II_Chr	9	29	<i>Jedo</i>
4939	II_Chr	11	18	1) Or, and 
4940	II_Chr	11	18	<i>Abihail</i>
4941	II_Chr	11	20	1) In 2 Ch 13:2 
4942	II_Chr	11	20	<i>Micaiah the daughter of Uriel</i>
4943	II_Chr	11	23	1) Or 
4944	II_Chr	11	23	<i>sought a multitude of wives</i>
4945	II_Chr	12	7	1) Or 
4946	II_Chr	12	7	<i>deliverance within a little while</i>
4947	II_Chr	12	7	 ; Or 
4948	II_Chr	12	7	<i>a few that shall escape</i>
4949	II_Chr	12	10	1) Heb 
4950	II_Chr	12	10	<i>runners</i>
4951	II_Chr	12	15	1) Heb 
4952	II_Chr	12	15	<i>words</i>
4953	II_Chr	12	15	 2) Or 
4954	II_Chr	12	15	<i>in reckoning the genealogies</i>
4955	II_Chr	13	19	1) Another reading is 
4956	II_Chr	13	19	<i>Ephrain</i>
4957	II_Chr	14	3	1) Or 
4958	II_Chr	14	3	<i>obelisks</i>
4959	II_Chr	14	11	1) Or 
4960	II_Chr	14	11	<i>there is no difference with thee to help, whether the mighty or him etc</i>
4961	II_Chr	14	11	 2) Or 
4962	II_Chr	14	11	<i>like</i>
4963	II_Chr	14	13	1) Or 
4964	II_Chr	14	13	<i>so that none remained alive</i>
4965	II_Chr	14	13	 2) Heb 
4966	II_Chr	14	13	<i>broken</i>
4967	II_Chr	14	14	1) Or 
4968	II_Chr	14	14	<i>a terror from Jehovah</i>
4969	II_Chr	15	8	1) Or 
4970	II_Chr	15	8	<i>even</i>
4971	II_Chr	15	16	1) Or 
4972	II_Chr	15	16	<i>queen mother</i>
4973	II_Chr	15	16	 2) Or 
4974	II_Chr	15	16	<i>for Asherah</i>
4975	II_Chr	16	2	1) Heb 
4976	II_Chr	16	2	<i>Darmesek</i>
4977	II_Chr	16	3	1) Or, Let there be
4978	II_Chr	16	4	1) Heb 
4979	II_Chr	16	4	<i>storehouses of the cities</i>
4980	II_Chr	16	10	1) Heb 
4981	II_Chr	16	10	<i>house of the stocks</i>
4982	II_Chr	17	10	1) Or 
4983	II_Chr	17	10	<i>a terror from Jehovah</i>
4984	II_Chr	18	4	1) Heb 
4985	II_Chr	18	4	<i>to-day</i>
4986	II_Chr	18	8	1) Or 
4987	II_Chr	18	8	<i>eunuch</i>
4988	II_Chr	18	9	1) Heb 
4989	II_Chr	18	9	<i>a thressing-floor</i>
4990	II_Chr	18	14	1) Heb 
4991	II_Chr	18	14	<i>Micah</i>
4992	II_Chr	18	19	1) Or 
4993	II_Chr	18	19	<i>deceive</i>
4994	II_Chr	18	20	1) Heb 
4995	II_Chr	18	20	<i>the spirit</i>
4996	II_Chr	18	24	1) Or 
4997	II_Chr	18	24	<i>from chamber to chamber</i>
4998	II_Chr	18	33	1) Heb 
4999	II_Chr	18	33	<i>in his simplicity</i>
5000	II_Chr	18	33	 2) Or 
5001	II_Chr	18	33	<i>the lower armor and the breastplate</i>
5002	II_Chr	19	6	1) Or 
5003	II_Chr	19	6	<i>in giving judgment</i>
5004	II_Chr	19	6	 ; Heb 
5005	II_Chr	19	6	<i>in the matter of judgment</i>
5006	II_Chr	19	11	1) Heb 
5007	II_Chr	19	11	<i>Be strong and do</i>
5008	II_Chr	20	1	1) Perhaps an error for 
5009	II_Chr	20	1	<i>Meunim</i>
5010	II_Chr	20	1	 ; See 2 Ch 26:7
5011	II_Chr	20	9	1) Or 
5012	II_Chr	20	9	<i>the sword of judgment</i>
5013	II_Chr	20	21	1) Or 
5014	II_Chr	20	21	<i>in the beauty of holiness</i>
5015	II_Chr	20	25	1) According to Vulg 
5016	II_Chr	20	25	<i>garments</i>
5017	II_Chr	20	26	1) That is 
5018	II_Chr	20	26	<i>Blessing</i>
5019	II_Chr	20	34	1) Heb 
5020	II_Chr	20	34	<i>words</i>
5021	II_Chr	20	34	 2) Or 
5022	II_Chr	20	34	<i>who is mentioned</i>
5023	II_Chr	20	37	1) Or 
5024	II_Chr	20	37	<i>made a breach in</i>
5025	II_Chr	21	11	1) Or 
5026	II_Chr	21	11	<i>compelled Judah thereto</i>
5027	II_Chr	21	13	1) Heb 
5028	II_Chr	21	13	<i>made to play the harlot</i>
5029	II_Chr	21	14	1) Heb 
5030	II_Chr	21	14	<i>stroke</i>
5031	II_Chr	21	15	1) Or 
5032	II_Chr	21	15	<i>year after year</i>
5033	II_Chr	21	17	1) Or 
5034	II_Chr	21	17	<i>belonging to</i>
5035	II_Chr	21	17	 2) In 2 Ch 22:1 
5036	II_Chr	21	17	<i>Ahaziah</i>
5037	II_Chr	22	1	1) In 2 Ch 21:17 
5038	II_Chr	22	1	<i>Jehoahaz</i>
5039	II_Chr	22	2	1) In 2 Ki 8:26 
5040	II_Chr	22	2	<i>Two and twenty</i>
5041	II_Chr	22	2	 2) Or 
5042	II_Chr	22	2	<i>granddaughter</i>
5043	II_Chr	22	6	1) So in 2 Ki 8:29; The text has 
5044	II_Chr	22	6	<i>because the wounds which etc</i>
5045	II_Chr	22	6	 2) In verse 1 
5046	II_Chr	22	6	<i>Ahaziah</i>
5047	II_Chr	22	7	1) Heb 
5048	II_Chr	22	7	<i>treading down</i>
5049	II_Chr	22	9	1) Or 
5050	II_Chr	22	9	<i>And there was none of the house of Ahaziah that had power etc</i>
5051	II_Chr	22	11	1) In 2 Ki 11:2 
5052	II_Chr	22	11	<i>Jehosheba</i>
5053	II_Chr	22	11	 2) Or 
5054	II_Chr	22	11	<i>chamber for the beds</i>
5055	II_Chr	23	10	1) Heb 
5056	II_Chr	23	10	<i>shoulder</i>
5057	II_Chr	23	11	1) Or 
5058	II_Chr	23	11	<i>put upon him the crown and the testimony</i>
5059	II_Chr	23	12	1) Or 
5060	II_Chr	23	12	<i>of the people, of the guard, and of those who praised the king</i>
5061	II_Chr	23	18	1) Heb 
5062	II_Chr	23	18	<i>offices</i>
5063	II_Chr	23	18	 2) Heb 
5064	II_Chr	23	18	<i>by the hands of David</i>
5065	II_Chr	24	6	1) Or 
5066	II_Chr	24	6	<i>for Israel</i>
5067	II_Chr	24	11	1) Heb 
5068	II_Chr	24	11	<i>office</i>
5069	II_Chr	24	11	 2) Or, which was 
5070	II_Chr	24	11	<i>under the hand</i>
5071	II_Chr	24	11	 3) Or 
5072	II_Chr	24	11	<i>secretary</i>
5073	II_Chr	24	13	1) Heb 
5074	II_Chr	24	13	<i>healing went up upon the work</i>
5075	II_Chr	24	13	 2) Or 
5076	II_Chr	24	13	<i>according to the proportion thereof</i>
5077	II_Chr	24	14	1) Or 
5078	II_Chr	24	14	<i>pestles</i>
5079	II_Chr	24	20	1) Heb 
5080	II_Chr	24	20	<i>clothed itself with</i>
5081	II_Chr	24	23	1) Heb 
5082	II_Chr	24	23	<i>revolution</i>
5083	II_Chr	24	24	1) Heb 
5084	II_Chr	24	24	<i>judgments</i>
5085	II_Chr	24	25	1) The Vulg and some editions of Sept read 
5086	II_Chr	24	25	<i>son</i>
5087	II_Chr	24	26	1) In 2 Ki 12:21 
5088	II_Chr	24	26	<i>Jozacar</i>
5089	II_Chr	24	26	  2) In 2 Ki 12:21 
5090	II_Chr	24	26	<i>Shomer</i>
5091	II_Chr	24	27	1) Or, uttered 
5092	II_Chr	24	27	<i>against</i>
5093	II_Chr	24	27	 2) Heb 
5094	II_Chr	24	27	<i>founding</i>
5095	II_Chr	25	8	1) Or 
5096	II_Chr	25	8	<i>go thou</i>
5097	II_Chr	25	9	1) Heb 
5098	II_Chr	25	9	<i>troop</i>
5099	II_Chr	25	12	1) Or 
5100	II_Chr	25	12	<i>Sela</i>
5101	II_Chr	25	13	1) Heb 
5102	II_Chr	25	13	<i>the sons of the troop</i>
5103	II_Chr	25	18	1) Or 
5104	II_Chr	25	18	<i>thorn</i>
5105	II_Chr	25	19	1) Or 
5106	II_Chr	25	19	<i>provoke calamity</i>
5107	II_Chr	25	23	1) So in 2 Ki 14:13; The text has 
5108	II_Chr	25	23	<i>the gate that looketh</i>
5109	II_Chr	25	28	1) In 2 Ki 14:20 
5110	II_Chr	25	28	<i>the city of David</i>
5111	II_Chr	26	1	1) In 2 Ki 14:21 
5112	II_Chr	26	1	<i>Azariah</i>
5113	II_Chr	26	5	1) Or 
5114	II_Chr	26	5	<i>gave instruction</i>
5115	II_Chr	26	5	 2) Heb 
5116	II_Chr	26	5	<i>the seeing</i>
5117	II_Chr	26	10	1) Or 
5118	II_Chr	26	10	<i>table-land</i>
5119	II_Chr	26	10	 2) Or 
5120	II_Chr	26	10	<i>Carmel</i>
5121	II_Chr	26	10	 ; See 1 Sa 25:2
5122	II_Chr	26	13	1) Heb 
5123	II_Chr	26	13	<i>the power of an army</i>
5124	II_Chr	26	15	1) Or 
5125	II_Chr	26	15	<i>corner towers</i>
5126	II_Chr	26	16	1) Or 
5127	II_Chr	26	16	<i>to</i>
5128	II_Chr	26	16	 his 
5129	II_Chr	26	16	<i>destruction</i>
5130	II_Chr	26	19	1) Heb 
5131	II_Chr	26	19	<i>rose</i>
5132	II_Chr	26	19	 (as the sun)
5133	II_Chr	26	21	1) Or 
5134	II_Chr	26	21	<i>infirmary</i>
5135	II_Chr	27	5	1) Heb 
5136	II_Chr	27	5	<i>cors</i>
5137	II_Chr	28	7	1) Heb 
5138	II_Chr	28	7	<i>second</i>
5139	II_Chr	28	10	1) Heb 
5140	II_Chr	28	10	<i>guiltinesses</i>
5141	II_Chr	28	13	1) Or 
5142	II_Chr	28	13	<i>guilt</i>
5143	II_Chr	28	16	1) According to Sept, Vulg, and Syr 
5144	II_Chr	28	16	<i>king</i>
5145	II_Chr	28	17	1) Heb 
5146	II_Chr	28	17	<i>a captivity</i>
5147	II_Chr	28	18	1) Heb 
5148	II_Chr	28	18	<i>daughters</i>
5149	II_Chr	28	19	1) Or 
5150	II_Chr	28	19	<i>cast away restraint</i>
5151	II_Chr	28	20	1) Or 
5152	II_Chr	28	20	<i>against</i>
5153	II_Chr	28	20	 2) Or 
5154	II_Chr	28	20	<i>prevailed not against him</i>
5155	II_Chr	28	22	1) Or 
5156	II_Chr	28	22	<i>that he distressed him</i>
5157	II_Chr	28	23	1) Heb 
5158	II_Chr	28	23	<i>Darmesek</i>
5159	II_Chr	29	8	1) Or 
5160	II_Chr	29	8	<i>a terror</i>
5161	II_Chr	29	31	1) Heb 
5162	II_Chr	29	31	<i>filled your hand</i>
5163	II_Chr	30	5	1) Or 
5164	II_Chr	30	5	<i>of a long time</i>
5165	II_Chr	30	7	1) Or 
5166	II_Chr	30	7	<i>to be an astonishment</i>
5167	II_Chr	30	8	1) Heb 
5168	II_Chr	30	8	<i>give the hand</i>
5169	II_Chr	30	14	1) Or 
5170	II_Chr	30	14	<i>vessels</i>
5171	II_Chr	30	18	1) Or 
5172	II_Chr	30	18	<i>him that setteth his whole heart</i>
5173	II_Chr	30	22	1) Or 
5174	II_Chr	30	22	<i>giving thanks</i>
5175	II_Chr	31	1	1) Or 
5176	II_Chr	31	1	<i>obelisks</i>
5177	II_Chr	31	4	1) Heb 
5178	II_Chr	31	4	<i>be strong in</i>
5179	II_Chr	31	16	1) Or 
5180	II_Chr	31	16	<i>for his daily portion</i>
5181	II_Chr	31	18	1) Or 
5182	II_Chr	31	18	<i>even</i>
5183	II_Chr	31	18	 to give 
5184	II_Chr	31	18	<i>to them etc</i>
5185	II_Chr	31	20	1) Heb 
5186	II_Chr	31	20	<i>faithfulness</i>
5187	II_Chr	32	1	1) Heb 
5188	II_Chr	32	1	<i>to break them up</i>
5189	II_Chr	32	2	1) Heb 
5190	II_Chr	32	2	<i>his face was to fight</i>
5191	II_Chr	32	5	1) The Vulg has 
5192	II_Chr	32	5	<i>built towers thereon</i>
5193	II_Chr	32	5	 2) Or 
5194	II_Chr	32	5	<i>another</i>
5195	II_Chr	32	7	1) Or 
5196	II_Chr	32	7	<i>there are more</i>
5197	II_Chr	32	10	1) Or 
5198	II_Chr	32	10	<i>in the stronghold</i>
5199	II_Chr	32	14	1) Heb 
5200	II_Chr	32	14	<i>devoted</i>
5201	II_Chr	32	15	1) Or 
5202	II_Chr	32	15	<i>gods</i>
5203	II_Chr	32	17	1) Or 
5204	II_Chr	32	17	<i>a letter</i>
5205	II_Chr	32	21	1) Heb 
5206	II_Chr	32	21	<i>caused him to fall</i>
5207	II_Chr	32	24	1) Or 
5208	II_Chr	32	24	<i>wonder</i>
5209	II_Chr	32	26	1) Heb 
5210	II_Chr	32	26	<i>the lifting up</i>
5211	II_Chr	32	31	1) Heb 
5212	II_Chr	32	31	<i>interpreters</i>
5213	II_Chr	33	11	1) Or 
5214	II_Chr	33	11	<i>with hooks</i>
5215	II_Chr	33	14	1) Or 
5216	II_Chr	33	14	<i>captains of the army</i>
5217	II_Chr	33	16	1) According to another reading 
5218	II_Chr	33	16	<i>prepared</i>
5219	II_Chr	33	19	1) Or 
5220	II_Chr	33	19	<i>the seers</i>
5221	II_Chr	33	23	1) Or 
5222	II_Chr	33	23	<i>became guilty</i>
5223	II_Chr	34	6	1) Or as otherwise read 
5224	II_Chr	34	6	<i>with their axes</i>
5225	II_Chr	34	6	 ; The Hebrew is obscure.
5226	II_Chr	34	8	1) Or 
5227	II_Chr	34	8	<i>chronicler</i>
5228	II_Chr	34	9	1) Another reading is 
5229	II_Chr	34	9	<i>and they returned to Jerusalem</i>
5230	II_Chr	34	10	1) Or 
5231	II_Chr	34	10	<i>they gave it</i>
5232	II_Chr	34	10	 to 
5233	II_Chr	34	10	<i>the workmen etc</i>
5234	II_Chr	34	10	 ; See 2 Ki 22:5
5235	II_Chr	34	12	1) Or 
5236	II_Chr	34	12	<i>to preside over it</i>
5237	II_Chr	34	14	1) Heb 
5238	II_Chr	34	14	<i>by the hand of</i>
5239	II_Chr	34	17	1) Or 
5240	II_Chr	34	17	<i>poured out</i>
5241	II_Chr	34	20	1) In 2 Ki 22:12 
5242	II_Chr	34	20	<i>Achbor the son of Micaiah</i>
5243	II_Chr	34	22	1) In 2 Ki 22:14 
5244	II_Chr	34	22	<i>Tikvah</i>
5245	II_Chr	34	22	 2) In 2 Ki 22:14 
5246	II_Chr	34	22	<i>Harhas</i>
5247	II_Chr	34	22	 3) Heb 
5248	II_Chr	34	22	<i>Mishneh</i>
5249	II_Chr	35	5	1) Or 
5250	II_Chr	35	5	<i>and</i>
5251	II_Chr	35	5	 according to 
5252	II_Chr	35	5	<i>the distribution of each father’s house</i>
5253	II_Chr	35	7	1) Or 
5254	II_Chr	35	7	<i>gave for offerings</i>
5255	II_Chr	35	7	 (and so in verses 8, 9); See 2 Ch 30:24
5256	II_Chr	35	8	1) Or 
5257	II_Chr	35	8	<i>willingly</i>
5258	II_Chr	35	21	1) Or 
5259	II_Chr	35	21	<i>hath given command to speed me</i>
5260	II_Chr	36	7	1) Or 
5261	II_Chr	36	7	<i>palace</i>
5262	II_Chr	36	8	1) Or 
5263	II_Chr	36	8	<i>against</i>
5264	II_Chr	36	8	 2) In 1 Ch 3:16 
5265	II_Chr	36	8	<i>Jeconiah</i>
5266	II_Chr	36	8	 ; In Jer 22:24 
5267	II_Chr	36	8	<i>Coniah</i>
5268	II_Chr	36	9	1) In 2 Ki 24:8 
5269	II_Chr	36	9	<i>eighteen</i>
5270	II_Chr	36	13	1) Heb 
5271	II_Chr	36	13	<i>strengthened</i>
5272	II_Chr	36	16	1) Heb 
5273	II_Chr	36	16	<i>healing</i>
5274	II_Chr	36	22	1) Heb 
5275	II_Chr	36	22	<i>Coresh</i>
18154	I_Cor	1	1	1) Gr 
18155	I_Cor	1	1	<i>the brother</i>
18156	I_Cor	1	4	1) Some ancient authorities omit 
18157	I_Cor	1	4	<i>my</i>
18158	I_Cor	1	5	1) Gr 
18159	I_Cor	1	5	<i>word</i>
18160	I_Cor	1	10	1) Gr 
18161	I_Cor	1	10	<i>schisms</i>
18162	I_Cor	1	13	1) Or 
18163	I_Cor	1	13	<i>Christ is divided! Was Paul crucified for you?</i>
18164	I_Cor	1	14	1) Some ancient authorities read 
18165	I_Cor	1	14	<i>I give thanks that</i>
18166	I_Cor	1	17	1) Gr 
18167	I_Cor	1	17	<i>bring good tidings</i>
18168	I_Cor	1	17	 ; Compare Mt 11:5
18169	I_Cor	1	18	1) Or 
18170	I_Cor	1	18	<i>are perishing</i>
18171	I_Cor	1	18	 2) Or 
18172	I_Cor	1	18	<i>are being saved</i>
18173	I_Cor	1	19	1) Isa 29:14
18174	I_Cor	1	20	1) Or 
18175	I_Cor	1	20	<i>age</i>
18176	I_Cor	1	21	1) Gr 
18177	I_Cor	1	21	<i>thing preached</i>
18178	I_Cor	1	23	1) Or 
18179	I_Cor	1	23	<i>a Messiah</i>
18180	I_Cor	1	24	1) Gr 
18181	I_Cor	1	24	<i>the called themselves</i>
18182	I_Cor	1	26	1) Or 
18183	I_Cor	1	26	<i>ye behold</i>
18184	I_Cor	1	28	1) Many ancient authorities omit 
18185	I_Cor	1	28	<i>and</i>
18186	I_Cor	1	30	1) Or 
18187	I_Cor	1	30	<i>both righteousness and sanctification and redemption</i>
18188	I_Cor	1	31	1) Jer 9:23 f
18189	I_Cor	2	1	1) Or 
18190	I_Cor	2	1	<i>word</i>
18191	I_Cor	2	1	 2) Many ancient authorities read 
18192	I_Cor	2	1	<i>mystery</i>
18193	I_Cor	2	4	1) Or 
18194	I_Cor	2	4	<i>word</i>
18195	I_Cor	2	4	 2) Gr 
18196	I_Cor	2	4	<i>thing preached</i>
18197	I_Cor	2	5	1) Gr 
18198	I_Cor	2	5	<i>be</i>
18199	I_Cor	2	6	1) Or 
18200	I_Cor	2	6	<i>age</i>
18201	I_Cor	2	6	 ; and so in verses 7, 8; but not in verse 12
18202	I_Cor	2	7	1) Or 
18203	I_Cor	2	7	<i>age</i>
18204	I_Cor	2	8	1) Or 
18205	I_Cor	2	8	<i>age</i>
18206	I_Cor	2	9	1) Isa 64:4; 65:17
18207	I_Cor	2	10	1) Some ancient authorities read 
18208	I_Cor	2	10	<i>For</i>
18209	I_Cor	2	10	  2) Or, it
18210	I_Cor	2	12	1) See verse 6
18211	I_Cor	2	13	1) Or 
18212	I_Cor	2	13	<i>interpreting spiritual things to spiritual</i>
18213	I_Cor	2	13	 men
18214	I_Cor	2	14	1) Or 
18215	I_Cor	2	14	<i>unspiritual</i>
18216	I_Cor	2	14	 ; Gr 
18217	I_Cor	2	14	<i>psychical</i>
18218	I_Cor	2	14	 2) Or 
18219	I_Cor	2	14	<i>examined</i>
18220	I_Cor	2	15	1) Or 
18221	I_Cor	2	15	<i>examineth</i>
18222	I_Cor	2	15	 2) Or 
18223	I_Cor	2	15	<i>examined</i>
18224	I_Cor	3	9	1) Gr 
18225	I_Cor	3	9	<i>tilled land</i>
18226	I_Cor	3	13	1) Or 
18227	I_Cor	3	13	<i>and each man’s work, of what sort it is, the fire shall prove it</i>
18228	I_Cor	3	16	1) Or 
18229	I_Cor	3	16	<i>sanctuary</i>
18230	I_Cor	3	17	1) Or 
18231	I_Cor	3	17	<i>sanctuary</i>
18232	I_Cor	3	17	 2) Or 
18233	I_Cor	3	17	<i>which</i>
18234	I_Cor	3	17	 temple 
18235	I_Cor	3	17	<i>ye are</i>
18236	I_Cor	3	18	1) Or 
18237	I_Cor	3	18	<i>age</i>
18238	I_Cor	3	19	1) Job 5:13
18239	I_Cor	3	20	1) Ps 94:11
18240	I_Cor	4	3	1) Or 
18241	I_Cor	4	3	<i>examined</i>
18242	I_Cor	4	3	  2) Gr 
18243	I_Cor	4	3	<i>day</i>
18244	I_Cor	4	3	 ; See 1 Co 3:13. 3) Or 
18245	I_Cor	4	3	<i>examine</i>
18246	I_Cor	4	4	1) Or 
18247	I_Cor	4	4	<i>examineth</i>
18248	I_Cor	4	9	1) Or 
18249	I_Cor	4	9	<i>and to angels, and to men</i>
18250	I_Cor	4	13	1) Or 
18251	I_Cor	4	13	<i>refuse</i>
18252	I_Cor	4	15	1) Gr 
18253	I_Cor	4	15	<i>good tidings</i>
18254	I_Cor	4	15	 ; See marginal note on Mt 4:23
18255	I_Cor	5	2	1) Or 
18256	I_Cor	5	2	<i>are ye puffed up?</i>
18257	I_Cor	5	2	 2) Or 
18258	I_Cor	5	2	<i>did ye not rather mourn, …you?</i>
18259	I_Cor	5	5	1) Some ancient authorities omit 
18260	I_Cor	5	5	<i>Jesus</i>
18261	I_Cor	5	8	1) Gr 
18262	I_Cor	5	8	<i>keep festival</i>
18263	I_Cor	5	10	1) Or 
18264	I_Cor	5	10	<i>not altogether with the fornicators etc</i>
18265	I_Cor	5	11	1) Or 
18266	I_Cor	5	11	<i>now I write</i>
18267	I_Cor	6	1	1) Gr 
18268	I_Cor	6	1	<i>the other</i>
18269	I_Cor	6	1	 ; See Ro 13:8
18270	I_Cor	6	2	1) Gr 
18271	I_Cor	6	2	<i>of the smallest tribunals</i>
18272	I_Cor	6	4	1) Gr 
18273	I_Cor	6	4	<i>tribunals pertaining to</i>
18274	I_Cor	6	4	 2) Or 
18275	I_Cor	6	4	<i>set them…church</i>
18276	I_Cor	6	5	1) Or 
18277	I_Cor	6	5	<i>Is it so, that there cannot etc</i>
18278	I_Cor	6	7	1) Or 
18279	I_Cor	6	7	<i>a loss to you</i>
18280	I_Cor	6	11	1) Gr 
18281	I_Cor	6	11	<i>washed yourselves</i>
18282	I_Cor	6	16	1) Ge 2:24
18283	I_Cor	6	19	1) Or 
18284	I_Cor	6	19	<i>sanctuary</i>
18285	I_Cor	7	7	1) Many ancient authorities read 
18286	I_Cor	7	7	<i>For</i>
18287	I_Cor	7	15	1) Many ancient authorities read 
18288	I_Cor	7	15	<i>you</i>
18289	I_Cor	7	21	1) Or 
18290	I_Cor	7	21	<i>but if</i>
18291	I_Cor	7	26	1) Gr 
18292	I_Cor	7	26	<i>so to be</i>
18293	I_Cor	7	29	1) Or 
18294	I_Cor	7	29	<i>is shortened henceforth, that both those etc</i>
18295	I_Cor	7	33	1) Some ancient authorities read 
18296	I_Cor	7	33	<i>wife. And there is a difference also between the wife and the virgin. She that is unmarried is careful etc</i>
18297	I_Cor	7	35	1) Or 
18298	I_Cor	7	35	<i>constraint</i>
18299	I_Cor	7	35	 ; Gr 
18300	I_Cor	7	35	<i>noose</i>
18301	I_Cor	7	36	1) Or 
18302	I_Cor	7	36	<i>virgin</i>
18303	I_Cor	7	36	 (omitting daughter)
18304	I_Cor	7	37	1) Or 
18305	I_Cor	7	37	<i>virgin</i>
18306	I_Cor	7	37	 (omitting daughter)
18307	I_Cor	7	38	1) Or 
18308	I_Cor	7	38	<i>virgin</i>
18309	I_Cor	7	38	 (omitting daughter)
18310	I_Cor	7	39	1) Gr 
18311	I_Cor	7	39	<i>fallen asleep</i>
18312	I_Cor	7	39	 ; See Ac 7:60
18313	I_Cor	8	1	1) Gr 
18314	I_Cor	8	1	<i>buildeth up</i>
18315	I_Cor	8	8	1) Gr 
18316	I_Cor	8	8	<i>present</i>
18317	I_Cor	8	8	 2) Gr 
18318	I_Cor	8	8	<i>do we lack</i>
18319	I_Cor	8	8	 3) Gr 
18320	I_Cor	8	8	<i>do we abound</i>
18321	I_Cor	8	9	1) Or 
18322	I_Cor	8	9	<i>power</i>
18323	I_Cor	8	10	1) Gr 
18324	I_Cor	8	10	<i>be builded up</i>
18325	I_Cor	8	11	1) Gr 
18326	I_Cor	8	11	<i>in</i>
18327	I_Cor	9	5	1) Gr 
18328	I_Cor	9	5	<i>sister</i>
18329	I_Cor	9	9	1) De 25:4
18330	I_Cor	9	10	1) Or 
18331	I_Cor	9	10	<i>altogether</i>
18332	I_Cor	9	12	1) See marginal note on 1 Co 4:15
18333	I_Cor	9	14	1) See marginal note on 1 Co 4:15
18334	I_Cor	9	16	1) See marginal note on 1 Co 1:17
18335	I_Cor	9	18	1) See marginal note on 1 Co 1:17. 2) See marginal note on 1 Co 4:15
18336	I_Cor	9	23	1) See marginal note on 1 Co 4:15
18337	I_Cor	9	24	1) Gr 
18338	I_Cor	9	24	<i>race-course</i>
18339	I_Cor	9	26	1) Gr 
18340	I_Cor	9	26	<i>box</i>
18341	I_Cor	9	27	1) Gr 
18342	I_Cor	9	27	<i>bruise</i>
18343	I_Cor	9	27	 ; Lu 18:5. 2) Or 
18344	I_Cor	9	27	<i>have been a herald</i>
18345	I_Cor	10	2	1) Gr 
18346	I_Cor	10	2	<i>into</i>
18347	I_Cor	10	4	1) Or 
18348	I_Cor	10	4	<i>the Christ</i>
18349	I_Cor	10	4	 ; Compare Heb 11:26
18350	I_Cor	10	6	1) Or 
18351	I_Cor	10	6	<i>in these things they became figures to us</i>
18352	I_Cor	10	7	1) Ex 32:6
18353	I_Cor	10	9	1) Some ancient authorities read 
18354	I_Cor	10	9	<i>Christ</i>
18355	I_Cor	10	11	1) Gr 
18356	I_Cor	10	11	<i>by way of figure</i>
18357	I_Cor	10	16	1) Or 
18358	I_Cor	10	16	<i>participation in</i>
18359	I_Cor	10	16	 2) Or 
18360	I_Cor	10	16	<i>loaf</i>
18361	I_Cor	10	17	1) Or 
18362	I_Cor	10	17	<i>seeing that there is one bread, we, who are many, are one body</i>
18363	I_Cor	10	17	 2) Or 
18364	I_Cor	10	17	<i>loaf</i>
18365	I_Cor	10	17	 3) Gr 
18366	I_Cor	10	17	<i>from</i>
18367	I_Cor	10	23	1) Gr 
18368	I_Cor	10	23	<i>build up</i>
18369	I_Cor	10	24	1) Gr 
18370	I_Cor	10	24	<i>the other’s</i>
18371	I_Cor	10	24	 ; See Ro 13:8
18372	I_Cor	10	30	1) Or 
18373	I_Cor	10	30	<i>If I by grace partake</i>
18374	I_Cor	11	13	1) Or 
18375	I_Cor	11	13	<i>among</i>
18376	I_Cor	11	18	1) Or 
18377	I_Cor	11	18	<i>in congregation</i>
18378	I_Cor	11	18	 2) Gr 
18379	I_Cor	11	18	<i>schisms</i>
18380	I_Cor	11	19	1) Gr 
18381	I_Cor	11	19	<i>heresies</i>
18382	I_Cor	11	22	1) Or 
18383	I_Cor	11	22	<i>congregation</i>
18384	I_Cor	11	22	 2) Or 
18385	I_Cor	11	22	<i>having nothing</i>
18386	I_Cor	11	22	 3) Or 
18387	I_Cor	11	22	<i>shall I praise you in this? I praise you not.</i>
18388	I_Cor	11	23	1) Or 
18389	I_Cor	11	23	<i>delivered up</i>
18390	I_Cor	11	24	1) Many ancient authorities read 
18391	I_Cor	11	24	<i>is broken for you</i>
18392	I_Cor	11	29	1) Gr 
18393	I_Cor	11	29	<i>discriminate</i>
18394	I_Cor	11	31	1) Gr 
18395	I_Cor	11	31	<i>discriminated</i>
18396	I_Cor	11	32	1) Or 
18397	I_Cor	11	32	<i>when we are judged of the Lord, we are chastened</i>
18398	I_Cor	12	10	1) Gr 
18399	I_Cor	12	10	<i>powers</i>
18400	I_Cor	12	23	1) Or 
18401	I_Cor	12	23	<i>put on</i>
18402	I_Cor	12	26	1) Or 
18403	I_Cor	12	26	<i>glorified</i>
18404	I_Cor	12	27	1) Or 
18405	I_Cor	12	27	<i>members each in his part</i>
18406	I_Cor	12	28	1) Gr 
18407	I_Cor	12	28	<i>powers</i>
18408	I_Cor	12	28	 2) Or 
18409	I_Cor	12	28	<i>wise counsels</i>
18410	I_Cor	12	29	1) Gr 
18411	I_Cor	12	29	<i>powers</i>
18412	I_Cor	13	3	1) Many ancient authorities read 
18413	I_Cor	13	3	<i>that I may glory</i>
18414	I_Cor	13	7	1) Or 
18415	I_Cor	13	7	<i>covereth</i>
18416	I_Cor	13	7	 ; Compare 1 Pe 4:8
18417	I_Cor	13	12	1) Gr 
18418	I_Cor	13	12	<i>in a riddle</i>
18419	I_Cor	13	13	1) Gr 
18420	I_Cor	13	13	<i>greater</i>
18421	I_Cor	13	13	 ; Compare Mt 18:1, 4; 23:11
18422	I_Cor	14	2	1) Gr 
18423	I_Cor	14	2	<i>heareth</i>
18424	I_Cor	14	3	1) Or 
18425	I_Cor	14	3	<i>comfort</i>
18426	I_Cor	14	4	1) Gr 
18427	I_Cor	14	4	<i>buildeth up</i>
18428	I_Cor	14	10	1) Or 
18429	I_Cor	14	10	<i>nothing is without voice</i>
18430	I_Cor	14	11	1) Or 
18431	I_Cor	14	11	<i>in my case</i>
18432	I_Cor	14	12	1) Gr 
18433	I_Cor	14	12	<i>spirits</i>
18434	I_Cor	14	16	1) Or 
18435	I_Cor	14	16	<i>him that is without gifts</i>
18436	I_Cor	14	16	 ; and so in verses 23, 24
18437	I_Cor	14	17	1) Gr 
18438	I_Cor	14	17	<i>builded up</i>
18439	I_Cor	14	20	1) Gr 
18440	I_Cor	14	20	<i>of full age</i>
18441	I_Cor	14	20	 ; Compare 1 Co 2:6
18442	I_Cor	14	21	1) Isa 28:11 f
18443	I_Cor	14	24	1) Or 
18444	I_Cor	14	24	<i>convicted</i>
18445	I_Cor	14	25	1) Or 
18446	I_Cor	14	25	<i>in</i>
18447	I_Cor	14	29	1) Gr 
18448	I_Cor	14	29	<i>discriminate</i>
18449	I_Cor	14	31	1) Or 
18450	I_Cor	14	31	<i>comforted</i>
18451	I_Cor	14	34	1) Ge 3:16?
18452	I_Cor	14	38	1) Many ancient authorities read 
18453	I_Cor	14	38	<i>But if any man knoweth not, he is not known.</i>
18454	I_Cor	14	38	 Compare 1 Co 8:3
18455	I_Cor	15	1	1) See marginal note on 1 Co 4:15. 2) See marginal note on 1 Co 1:17
18456	I_Cor	15	2	1) Gr 
18457	I_Cor	15	2	<i>with what word</i>
18458	I_Cor	15	2	 2) See marginal note on 1 Co 1:17. 3) Or 
18459	I_Cor	15	2	<i>without cause</i>
18460	I_Cor	15	7	1) Or 
18461	I_Cor	15	7	<i>Jacob</i>
18462	I_Cor	15	10	1) Or 
18463	I_Cor	15	10	<i>void</i>
18464	I_Cor	15	14	1) Or 
18465	I_Cor	15	14	<i>void</i>
18466	I_Cor	15	14	 2) Some ancient authorities read 
18467	I_Cor	15	14	<i>our</i>
18468	I_Cor	15	15	1) Gr 
18469	I_Cor	15	15	<i>the Christ</i>
18470	I_Cor	15	19	1) Or 
18471	I_Cor	15	19	<i>If in this life only we have hoped in Christ etc</i>
18472	I_Cor	15	22	1) Gr 
18473	I_Cor	15	22	<i>the Christ</i>
18474	I_Cor	15	23	1) Gr 
18475	I_Cor	15	23	<i>presence</i>
18476	I_Cor	15	24	1) Gr 
18477	I_Cor	15	24	<i>the God and Father</i>
18478	I_Cor	15	27	1) Or 
18479	I_Cor	15	27	<i>But when he shall have said, All things are put in subjection (evidently excepting him that did subject all things unto him), when,</i>
18480	I_Cor	15	27	 I say, 
18481	I_Cor	15	27	<i>all things etc</i>
18482	I_Cor	15	27	 2) Ps 8:6
18483	I_Cor	15	31	1) Or 
18484	I_Cor	15	31	<i>your glorying</i>
18485	I_Cor	15	32	1) Or 
18486	I_Cor	15	32	<i>what doth it profit me, if the dead are not raised? Let us eat etc</i>
18487	I_Cor	15	44	1) Gr 
18488	I_Cor	15	44	<i>psychical</i>
18489	I_Cor	15	45	1) Ge 2:7
18490	I_Cor	15	46	1) Gr 
18491	I_Cor	15	46	<i>psychical</i>
18492	I_Cor	15	49	1) Many ancient authorities read 
18493	I_Cor	15	49	<i>let us also bear</i>
18494	I_Cor	15	51	1) Or 
18495	I_Cor	15	51	<i>We shall not all etc</i>
18496	I_Cor	15	54	1) Many ancient authorities omit 
18497	I_Cor	15	54	<i>this corruptible shall have put on incorruption, and</i>
18498	I_Cor	15	54	 2) Isa 25:8. 3) Or 
18499	I_Cor	15	54	<i>victoriously</i>
18500	I_Cor	15	55	1) Ho 13:14
18501	I_Cor	15	58	1) Or 
18502	I_Cor	15	58	<i>void</i>
18503	I_Cor	16	3	1) Or 
18504	I_Cor	16	3	<i>whomsoever ye shall approve by letters, them will I send etc</i>
18505	I_Cor	16	12	1) Or, God’s 
18506	I_Cor	16	12	<i>will that he should come now</i>
18507	I_Cor	16	12	 ; Compare Ro 2:18 margin
18508	I_Cor	16	17	1) Gr 
18509	I_Cor	16	17	<i>presence</i>
18510	I_Cor	16	17	 ; 2 Co 10:10
18511	I_Cor	16	22	1) That is 
18512	I_Cor	16	22	<i>O</i>
18513	I_Cor	16	22	 (or 
18514	I_Cor	16	22	<i>Our</i>
18515	I_Cor	16	22	 ) 
18516	I_Cor	16	22	<i>Lord, come!</i>
18637	II_Cor	6	7	1) Gr 
18517	II_Cor	1	1	1) Gr 
18518	II_Cor	1	1	<i>the brother</i>
18519	II_Cor	1	3	1) Or 
18520	II_Cor	1	3	<i>God and the Father</i>
18521	II_Cor	1	3	 ; See Ro 15:6 margin
18522	II_Cor	1	9	1) Or 
18523	II_Cor	1	9	<i>but we ourselves</i>
18524	II_Cor	1	9	  2) Gr 
18525	II_Cor	1	9	<i>answer</i>
18526	II_Cor	1	10	1) Some ancient authorities read 
18527	II_Cor	1	10	<i>set our hope; and still will he deliver us</i>
18528	II_Cor	1	15	1) Or 
18529	II_Cor	1	15	<i>grace</i>
18530	II_Cor	1	15	 ; Some ancient authorities read 
18531	II_Cor	1	15	<i>joy</i>
18532	II_Cor	1	19	1) Gr 
18533	II_Cor	1	19	<i>through</i>
18534	II_Cor	1	21	1) Gr 
18535	II_Cor	1	21	<i>into</i>
18536	II_Cor	1	22	1) Or 
18537	II_Cor	1	22	<i>seeing that he both sealed us</i>
18538	II_Cor	1	24	1) Or 
18539	II_Cor	1	24	<i>your faith</i>
18540	II_Cor	2	1	1) Some ancient authorities read 
18541	II_Cor	2	1	<i>For</i>
18542	II_Cor	2	6	1) Gr 
18543	II_Cor	2	6	<i>the more</i>
18778	II_Cor	13	2	<i>plainly</i>
18544	II_Cor	2	7	1) Some ancient authorities omit 
18545	II_Cor	2	7	<i>rather</i>
18546	II_Cor	2	9	1) Some ancient authorities read 
18547	II_Cor	2	9	<i>whereby</i>
18548	II_Cor	2	10	1) Or 
18549	II_Cor	2	10	<i>person</i>
18550	II_Cor	2	12	1) Gr 
18551	II_Cor	2	12	<i>good tidings</i>
18552	II_Cor	2	12	 ; See marginal note on Mt 4:23
18553	II_Cor	2	15	1) Or 
18554	II_Cor	2	15	<i>are being saved</i>
18555	II_Cor	2	15	 2) Or 
18556	II_Cor	2	15	<i>are perishing</i>
18557	II_Cor	2	17	1) Or 
18558	II_Cor	2	17	<i>making merchandise of the word of God</i>
18559	II_Cor	2	17	 ; Compare 2 Pe 2:3
18560	II_Cor	3	7	1) Gr 
18561	II_Cor	3	7	<i>in letters</i>
18562	II_Cor	3	7	 2) Gr 
18563	II_Cor	3	7	<i>in</i>
18564	II_Cor	3	7	 3) Or 
18565	II_Cor	3	7	<i>was being done away</i>
18566	II_Cor	3	7	 ; Compare 1 Co 13:8, 10
18567	II_Cor	3	9	1) Many ancient authorities read 
18568	II_Cor	3	9	<i>For if the ministration of condemnation is glory</i>
18569	II_Cor	3	11	1) Or 
18570	II_Cor	3	11	<i>is being done away</i>
18571	II_Cor	3	11	 ; See verse 7 margin 2) Gr 
18572	II_Cor	3	11	<i>through</i>
18573	II_Cor	3	13	1) Or 
18574	II_Cor	3	13	<i>unto</i>
18575	II_Cor	3	13	 2) Or 
18576	II_Cor	3	13	<i>was being done away</i>
18577	II_Cor	3	13	 ; See verse 7 margin
18578	II_Cor	3	14	1) Gr 
18579	II_Cor	3	14	<i>thoughts</i>
18580	II_Cor	3	14	 ; 2 Co 4:4; 11:3. 2) Or 
18581	II_Cor	3	14	<i>remaineth unlifted; which</i>
18582	II_Cor	3	14	 veil 
18583	II_Cor	3	14	<i>is done away</i>
18584	II_Cor	3	16	1) Or, a man 
18585	II_Cor	3	16	<i>shall turn</i>
18586	II_Cor	3	18	1) Or 
18587	II_Cor	3	18	<i>reflecting as a mirror</i>
18588	II_Cor	4	3	1) See marginal note on 2 Co 2:12. 2) Or 
18589	II_Cor	4	3	<i>are perishing</i>
18590	II_Cor	4	4	1) Or 
18591	II_Cor	4	4	<i>age</i>
18592	II_Cor	4	4	 2) Gr 
18593	II_Cor	4	4	<i>thoughts</i>
18594	II_Cor	4	4	 3) Or 
18595	II_Cor	4	4	<i>that they should not see the light…image of God</i>
18596	II_Cor	4	4	 4) Gr 
18597	II_Cor	4	4	<i>illumination</i>
18598	II_Cor	4	4	 5) See marginal note on 2 Co 2:12
18599	II_Cor	4	5	1) Gr 
18600	II_Cor	4	5	<i>bondservants</i>
18601	II_Cor	4	5	 ; Compare 1 Co 9:19. 2) Some ancient authorities read 
18602	II_Cor	4	5	<i>through Jesus</i>
18603	II_Cor	4	6	1) Ge 1:3. 2) Gr 
18604	II_Cor	4	6	<i>illumination</i>
18605	II_Cor	4	9	1) Or 
18606	II_Cor	4	9	<i>left behind</i>
18607	II_Cor	4	10	1) Gr 
18608	II_Cor	4	10	<i>putting to death</i>
18609	II_Cor	4	13	1) Ps 116:10
18610	II_Cor	4	14	1) Some ancient authorities omit 
18611	II_Cor	4	14	<i>the Lord</i>
18612	II_Cor	4	15	1) Gr 
18613	II_Cor	4	15	<i>the more</i>
18614	II_Cor	5	1	1) Or 
18615	II_Cor	5	1	<i>bodily frame</i>
18616	II_Cor	5	1	 ; Compare Wis 9:15
18617	II_Cor	5	4	1) Or 
18618	II_Cor	5	4	<i>bodily frame</i>
18619	II_Cor	5	4	 ; Compare Wis 9:15. 2) Or 
18620	II_Cor	5	4	<i>being burdened, in that we would not be unclothed, but would be clothed upon</i>
18621	II_Cor	5	7	1) Gr 
18622	II_Cor	5	7	<i>appearance</i>
18623	II_Cor	5	9	1) Gr 
18624	II_Cor	5	9	<i>are ambitious</i>
18625	II_Cor	5	9	 ; See Ro 15:20 margin
18626	II_Cor	5	10	1) Gr 
18627	II_Cor	5	10	<i>through</i>
18628	II_Cor	5	13	1) Or 
18629	II_Cor	5	13	<i>were</i>
18630	II_Cor	5	17	1) Or, there is 
18631	II_Cor	5	17	<i>a new creation</i>
18632	II_Cor	5	19	1) Or 
18633	II_Cor	5	19	<i>placed in us</i>
18634	II_Cor	6	2	1) Isa 49:8
18635	II_Cor	6	4	1) Or 
18636	II_Cor	6	4	<i>stedfastness</i>
18638	II_Cor	6	7	<i>through</i>
18639	II_Cor	6	15	1) Gr 
18640	II_Cor	6	15	<i>Beliar</i>
18641	II_Cor	6	16	1) Or 
18642	II_Cor	6	16	<i>sanctuary</i>
18643	II_Cor	6	16	 2) Le 26:12; Ex 29:45; Eze 37:27; Jer 31:1
18644	II_Cor	6	17	1) Isa 52:11
18645	II_Cor	6	18	1) Ho 1:10; Isa 43:6
18646	II_Cor	7	2	1) Gr 
18647	II_Cor	7	2	<i>Make room for us</i>
18648	II_Cor	7	6	1) Gr 
18649	II_Cor	7	6	<i>presence</i>
18650	II_Cor	7	6	 ; Compare 2 Th 2:9
18651	II_Cor	7	7	1) Gr 
18652	II_Cor	7	7	<i>presence</i>
18653	II_Cor	7	7	 ; Compare 2 Th 2:9
18654	II_Cor	7	8	1) Some ancient authorities omit 
18655	II_Cor	7	8	<i>for</i>
18656	II_Cor	7	10	1) Or 
18657	II_Cor	7	10	<i>unto a salvation which bringeth no regret</i>
18658	II_Cor	8	2	1) Gr 
18659	II_Cor	8	2	<i>singleness</i>
18660	II_Cor	8	2	 ; See Ro 12:8
18661	II_Cor	8	7	1) Some ancient authorities read 
18662	II_Cor	8	7	<i>our love to you</i>
18663	II_Cor	8	15	1) Ex 16:18
18664	II_Cor	8	18	1) See marginal note on 2 Co 2:12
18665	II_Cor	8	23	1) Gr 
18666	II_Cor	8	23	<i>apostles</i>
18667	II_Cor	8	24	1) Or 
18668	II_Cor	8	24	<i>Show ye therefore in the face…on your behalf unto them.</i>
18669	II_Cor	9	2	1) Or 
18670	II_Cor	9	2	<i>emulation of you</i>
18671	II_Cor	9	2	 2) Gr 
18672	II_Cor	9	2	<i>the more part</i>
18673	II_Cor	9	5	1) Gr 
18674	II_Cor	9	5	<i>blessing</i>
18675	II_Cor	9	5	 2) Or 
18676	II_Cor	9	5	<i>covetousness</i>
18677	II_Cor	9	6	1) Gr 
18678	II_Cor	9	6	<i>with blessings</i>
18679	II_Cor	9	6	 ; Compare verse 5
18680	II_Cor	9	7	1) Gr 
18681	II_Cor	9	7	<i>of sorrow</i>
18682	II_Cor	9	9	1) Ps 112:9
18683	II_Cor	9	11	1) Gr 
18684	II_Cor	9	11	<i>singleness</i>
18685	II_Cor	9	11	 ; Compare 2 Co 8:2
18686	II_Cor	9	13	1) Gr 
18687	II_Cor	9	13	<i>good tidings</i>
18688	II_Cor	9	13	 ; See marginal note on 2 Co 2:12. 2) Gr 
18689	II_Cor	9	13	<i>singleness</i>
18690	II_Cor	9	13	 ; Compare 2 Co 8:2
18691	II_Cor	10	5	1) Or 
18692	II_Cor	10	5	<i>reasonings</i>
18693	II_Cor	10	5	 ; Ro 2:15
18694	II_Cor	10	7	1) Or 
18695	II_Cor	10	7	<i>Do ye look…face?</i>
18696	II_Cor	10	12	1) Gr 
18697	II_Cor	10	12	<i>to judge ourselves among, or to judge ourselves with</i>
18698	II_Cor	10	13	1) Or 
18699	II_Cor	10	13	<i>limit</i>
18700	II_Cor	10	13	 ; Gr 
18701	II_Cor	10	13	<i>measuring-rod</i>
18702	II_Cor	10	14	1) Or 
18703	II_Cor	10	14	<i>were the first to come</i>
18704	II_Cor	10	14	 ; 2) Gr 
18705	II_Cor	10	14	<i>good tidings</i>
18706	II_Cor	10	14	 ; See marginal note on 2 Co 2:12
18707	II_Cor	10	15	1) Or 
18708	II_Cor	10	15	<i>limit</i>
18709	II_Cor	10	15	 ; Gr 
18710	II_Cor	10	15	<i>measuring-rod</i>
18711	II_Cor	10	16	1) Gr 
18712	II_Cor	10	16	<i>bring good tidings</i>
18713	II_Cor	10	16	 ; Compare Mt 11:5. 2) Or 
18714	II_Cor	10	16	<i>limit</i>
18715	II_Cor	10	16	 ; Gr 
18716	II_Cor	10	16	<i>measuring-rod</i>
18717	II_Cor	10	17	1) Jer 9:24
18718	II_Cor	11	1	1) Or 
18719	II_Cor	11	1	<i>nay indeed bear with me</i>
18720	II_Cor	11	2	1) Gr 
18721	II_Cor	11	2	<i>a jealousy of God</i>
18722	II_Cor	11	3	1) Gr 
18723	II_Cor	11	3	<i>thoughts</i>
18724	II_Cor	11	3	 ; See 2 Co 3:14
18725	II_Cor	11	4	1) Gr 
18726	II_Cor	11	4	<i>good tidings</i>
18727	II_Cor	11	4	 ; Compare 2 Co 2:12
18728	II_Cor	11	5	1) Or 
18729	II_Cor	11	5	<i>those preeminent apostles</i>
18730	II_Cor	11	6	1) Or 
18731	II_Cor	11	6	<i>nay, in everything we have made</i>
18732	II_Cor	11	6	 it 
18733	II_Cor	11	6	<i>manifest among all men to you-ward</i>
18734	II_Cor	11	7	1) Gr 
18735	II_Cor	11	7	<i>brought good tidings</i>
18736	II_Cor	11	7	 ; See 2 Co 10:16
18737	II_Cor	11	12	1) Gr 
18738	II_Cor	11	12	<i>the occasion of them</i>
18739	II_Cor	11	26	1) Gr 
18740	II_Cor	11	26	<i>race</i>
18741	II_Cor	11	26	 ; Compare Ac 7:19
18742	II_Cor	11	28	1) Or 
18743	II_Cor	11	28	<i>Besides the things which I omit</i>
18744	II_Cor	11	28	 ; Or 
18745	II_Cor	11	28	<i>Besides the things that come out of course</i>
18746	II_Cor	11	31	1) Or 
18747	II_Cor	11	31	<i>God and the Father</i>
18748	II_Cor	11	31	 ; See Ro 15:6. 2) Gr 
18749	II_Cor	11	31	<i>unto the ages</i>
18750	II_Cor	11	32	1) Gr 
18751	II_Cor	11	32	<i>ethnarch</i>
18752	II_Cor	12	1	1) Some ancient authorities read 
18753	II_Cor	12	1	<i>Now to glory is not expedient, but I will come etc</i>
18754	II_Cor	12	7	1) Some ancient authorities read 
18755	II_Cor	12	7	<i>revelations—wherefore, that etc</i>
18756	II_Cor	12	7	 2) Or 
18757	II_Cor	12	7	<i>stake</i>
18758	II_Cor	12	9	1) Or 
18759	II_Cor	12	9	<i>cover me</i>
18760	II_Cor	12	9	 ; Gr 
18761	II_Cor	12	9	<i>spread a tabernacle over me</i>
18762	II_Cor	12	9	 ; See Re 7:15
18763	II_Cor	12	11	1) Or 
18764	II_Cor	12	11	<i>those preeminent apostles</i>
18765	II_Cor	12	12	1) Or 
18766	II_Cor	12	12	<i>stedfastness</i>
18767	II_Cor	12	12	 2) Gr 
18768	II_Cor	12	12	<i>powers</i>
18769	II_Cor	12	15	1) Gr 
18770	II_Cor	12	15	<i>spent out</i>
18771	II_Cor	12	18	1) Or 
18772	II_Cor	12	18	<i>by the same Spirit</i>
18773	II_Cor	12	19	1) Or 
18774	II_Cor	12	19	<i>Think ye…you?</i>
18775	II_Cor	12	20	1) Or 
18776	II_Cor	12	20	<i>disorders</i>
18777	II_Cor	13	2	1) Or 
18779	II_Cor	13	2	 ; Compare 1 Th 3:4. 2) Or 
18780	II_Cor	13	2	<i>as if I were present the second time, even though I am now absent</i>
18781	II_Cor	13	4	1) Many ancient authorities read 
18782	II_Cor	13	4	<i>with</i>
18783	II_Cor	13	7	1) Gr 
18784	II_Cor	13	7	<i>and that</i>
18785	II_Cor	13	11	1) Or 
18786	II_Cor	13	11	<i>rejoice: be perfected</i>
19308	I_Thess	1	3	1) Or 
19309	I_Thess	1	3	<i>stedfastness</i>
19310	I_Thess	1	3	 2) Or 
19311	I_Thess	1	3	<i>God and our Father</i>
19312	I_Thess	1	5	1) Or 
19313	I_Thess	1	5	<i>because our gospel etc</i>
19314	I_Thess	1	5	 2) Gr 
19315	I_Thess	1	5	<i>good tidings</i>
19316	I_Thess	1	5	 ; and so elsewhere; See marginal note on Mt 4:23. 3) Or 
19317	I_Thess	1	5	<i>fulness</i>
19318	I_Thess	2	2	1) Gr 
19319	I_Thess	2	2	<i>good tidings</i>
19320	I_Thess	2	2	 ; See verse 5
19321	I_Thess	2	4	1) Gr 
19322	I_Thess	2	4	<i>good tidings</i>
19323	I_Thess	2	4	 ; See verse 5
19324	I_Thess	2	6	1) Or 
19325	I_Thess	2	6	<i>been burdensome</i>
19326	I_Thess	2	6	 ; verse 9; compare 1 Co 9:4 ff
19327	I_Thess	2	7	1) Most of the ancient authorities read 
19328	I_Thess	2	7	<i>babes</i>
19329	I_Thess	2	7	 ; Compare 1 Co 14:20
19330	I_Thess	2	8	1) Gr 
19331	I_Thess	2	8	<i>good tidings</i>
19332	I_Thess	2	8	 ; See verse 5
19333	I_Thess	2	9	1) Gr 
19334	I_Thess	2	9	<i>good tidings</i>
19335	I_Thess	2	9	 ; See verse 5
19336	I_Thess	2	12	1) Some ancient authorities read 
19337	I_Thess	2	12	<i>called</i>
19338	I_Thess	2	13	1) Gr 
19339	I_Thess	2	13	<i>the word of hearing</i>
19340	I_Thess	2	13	 ; Ga 3:2, 5
19341	I_Thess	2	17	1) Gr 
19342	I_Thess	2	17	<i>a season of an hour</i>
19343	I_Thess	2	19	1) Gr 
19344	I_Thess	2	19	<i>presence</i>
19345	I_Thess	2	19	 ; Compare 2 Co 10:10
19346	I_Thess	3	2	1) Some ancient authorities read 
19347	I_Thess	3	2	<i>fellow-worker with God</i>
19348	I_Thess	3	2	 2) Gr 
19349	I_Thess	3	2	<i>good tidings</i>
19350	I_Thess	3	2	 ; See 1 Th 1:5
19351	I_Thess	3	4	1) Or 
19352	I_Thess	3	4	<i>plainly</i>
19353	I_Thess	3	11	1) Or 
19354	I_Thess	3	11	<i>God himself and our Father</i>
19355	I_Thess	3	13	1) Or 
19356	I_Thess	3	13	<i>God and our Father</i>
19357	I_Thess	3	13	 2) Gr 
19358	I_Thess	3	13	<i>presence</i>
19359	I_Thess	3	13	 ; Compare 2 Co 10:10. 3) Many ancient authorities add 
19360	I_Thess	3	13	<i>Amen.</i>
19361	I_Thess	4	2	1) Gr 
19362	I_Thess	4	2	<i>charges</i>
19363	I_Thess	4	6	1) Or 
19364	I_Thess	4	6	<i>overreach</i>
19365	I_Thess	4	6	 2) Or 
19366	I_Thess	4	6	<i>told you plainly</i>
19367	I_Thess	4	11	1) Gr 
19368	I_Thess	4	11	<i>be ambitious</i>
19369	I_Thess	4	11	 ; See Ro 15:20 margin
19370	I_Thess	4	14	1) Gr 
19371	I_Thess	4	14	<i>through</i>
19372	I_Thess	4	14	 ; Or 
19373	I_Thess	4	14	<i>will God through Jesus</i>
19374	I_Thess	4	15	1) Gr 
19375	I_Thess	4	15	<i>presence</i>
19376	I_Thess	4	18	1) Or 
19377	I_Thess	4	18	<i>exhort</i>
19378	I_Thess	4	18	 ; 1 Th 5:11
19379	I_Thess	5	4	1) Some ancient authorities read 
19380	I_Thess	5	4	<i>as thieves</i>
19381	I_Thess	5	10	1) Or 
19382	I_Thess	5	10	<i>watch</i>
19383	I_Thess	5	11	1) Or 
19384	I_Thess	5	11	<i>comfort</i>
19385	I_Thess	5	11	 ; 1 Th 4:18
19386	I_Thess	5	21	1) Many ancient authorities insert 
19387	I_Thess	5	21	<i>but</i>
19388	I_Thess	5	23	1) Gr 
19389	I_Thess	5	23	<i>presence</i>
19390	I_Thess	5	25	1) Some ancient authorities add 
19391	I_Thess	5	25	<i>also</i>
19392	I_Thess	5	27	1) Many ancient authorities insert 
19393	I_Thess	5	27	<i>holy</i>
19394	II_Thess	1	4	1) Or 
19395	II_Thess	1	4	<i>stedfastness</i>
19396	II_Thess	1	8	1) Gr 
19397	II_Thess	1	8	<i>good tidings</i>
19398	II_Thess	1	8	 ; and so elsewhere; See marginal note on Mt 4:23
19399	II_Thess	1	11	1) Gr 
19400	II_Thess	1	11	<i>good pleasure of goodness</i>
19401	II_Thess	1	11	 ; Compare Ro 10:1
19402	II_Thess	2	1	1) Gr 
19403	II_Thess	2	1	<i>in behalf of</i>
19404	II_Thess	2	1	 2) Gr 
19405	II_Thess	2	1	<i>presence</i>
19406	II_Thess	2	3	1) Many ancient authorities read 
19407	II_Thess	2	3	<i>lawlessness</i>
19408	II_Thess	2	4	1) Gr 
19409	II_Thess	2	4	<i>an object of worship</i>
19410	II_Thess	2	4	 ; Ac 17:23. 2) Or 
19411	II_Thess	2	4	<i>sanctuary</i>
19412	II_Thess	2	7	1) Or 
19413	II_Thess	2	7	<i>only until he that now restraineth be taken etc</i>
19414	II_Thess	2	8	1) Some ancient authorities omit 
19415	II_Thess	2	8	<i>Jesus</i>
19416	II_Thess	2	8	 2) Some ancient authorities read 
19417	II_Thess	2	8	<i>consume</i>
19418	II_Thess	2	8	 3) Gr 
19419	II_Thess	2	8	<i>presence</i>
19420	II_Thess	2	9	1) Gr 
19421	II_Thess	2	9	<i>presence</i>
19422	II_Thess	2	9	 2) Gr 
19423	II_Thess	2	9	<i>power and signs and wonders of falsehood</i>
19424	II_Thess	2	10	1) Or 
19425	II_Thess	2	10	<i>are perishing</i>
19426	II_Thess	2	13	1) Many ancient authorities read 
19427	II_Thess	2	13	<i>as firstfruits</i>
19428	II_Thess	2	13	 2) Or 
19429	II_Thess	2	13	<i>faith</i>
19430	II_Thess	2	14	1) Gr 
19431	II_Thess	2	14	<i>good tidings</i>
19432	II_Thess	2	14	 ; See 2 Th 1:8
19433	II_Thess	3	3	1) Or 
19434	II_Thess	3	3	<i>evil</i>
19435	II_Thess	3	5	1) Or 
19436	II_Thess	3	5	<i>stedfastness</i>
19437	II_Thess	3	6	1) Some ancient authorities read 
19438	II_Thess	3	6	<i>ye</i>
19439	I_Tim	1	4	1) Or 
19440	I_Tim	1	4	<i>stewardship</i>
19441	I_Tim	1	4	 ; See 1 Co 9:17
19442	I_Tim	1	6	1) Gr 
19443	I_Tim	1	6	<i>missed the mark</i>
19444	I_Tim	1	6	 ; 1 Ti 6:21; 2 Ti 2:18
19445	I_Tim	1	9	1) Or 
19446	I_Tim	1	9	<i>smiters</i>
19447	I_Tim	1	10	1) Gr 
19448	I_Tim	1	10	<i>healthful</i>
19449	I_Tim	1	10	 ; 2) Or 
19450	I_Tim	1	10	<i>teaching</i>
19451	I_Tim	1	11	1) Gr 
19452	I_Tim	1	11	<i>good tidings</i>
19453	I_Tim	1	11	 ; See Mt 4:23 margin
19454	I_Tim	1	12	1) Some ancient authorities read 
19455	I_Tim	1	12	<i>enableth</i>
19456	I_Tim	1	17	1) Gr 
19457	I_Tim	1	17	<i>of the ages</i>
19458	I_Tim	1	17	 ; Compare Heb 1:2; Re 15:3. 2) Gr 
19459	I_Tim	1	17	<i>incorruptible</i>
19460	I_Tim	1	17	 3) Gr 
19461	I_Tim	1	17	<i>unto the ages of the ages</i>
19462	I_Tim	2	1	1) Gr 
19463	I_Tim	2	1	<i>to make supplications etc</i>
19464	I_Tim	2	7	1) Gr 
19465	I_Tim	2	7	<i>herald</i>
19466	I_Tim	2	8	1) Or 
19467	I_Tim	2	8	<i>doubting</i>
19468	I_Tim	2	15	1) Or 
19469	I_Tim	2	15	<i>the childbearing</i>
19470	I_Tim	2	15	 ; Compare Ga 4:4
19471	I_Tim	3	1	1) Some connect the words 
19472	I_Tim	3	1	<i>Faithful is the saying</i>
19473	I_Tim	3	1	 with the preceding paragrpah.
19474	I_Tim	3	2	1) Or 
19475	I_Tim	3	2	<i>overseer</i>
19476	I_Tim	3	3	1) Or 
19477	I_Tim	3	3	<i>not quarrelsome over wine</i>
19478	I_Tim	3	6	1) Gr 
19479	I_Tim	3	6	<i>judgment</i>
19480	I_Tim	3	15	1) Or 
19481	I_Tim	3	15	<i>how thou oughtest to behave thyself</i>
19482	I_Tim	3	15	 2) Or 
19483	I_Tim	3	15	<i>stay</i>
19484	I_Tim	3	16	1) The word 
19485	I_Tim	3	16	<i>God</i>
19486	I_Tim	3	16	 , in place of 
19487	I_Tim	3	16	<i>He who</i>
19488	I_Tim	3	16	 , rests on no sufficient ancient evidence. Some ancient authorities read 
19489	I_Tim	3	16	<i>which</i>
19490	I_Tim	3	16	 2) Or 
19491	I_Tim	3	16	<i>Gentiles</i>
19492	I_Tim	4	2	1) Or 
19493	I_Tim	4	2	<i>seared</i>
19494	I_Tim	4	8	1) Or 
19495	I_Tim	4	8	<i>for little</i>
19496	I_Tim	5	12	1) Gr 
19497	I_Tim	5	12	<i>faith</i>
19498	I_Tim	5	14	1) Or, women
19499	I_Tim	5	18	1) De 25:4
19500	I_Tim	5	21	1) Or 
19501	I_Tim	5	21	<i>preference</i>
19502	I_Tim	5	25	1) Gr 
19503	I_Tim	5	25	<i>the works that are good are evident</i>
19504	I_Tim	6	1	1) Gr 
19505	I_Tim	6	1	<i>bondservants</i>
19506	I_Tim	6	2	1) Or 
19507	I_Tim	6	2	<i>lay hold of</i>
19508	I_Tim	6	3	1) Gr 
19509	I_Tim	6	3	<i>healthful</i>
19510	I_Tim	6	4	1) Gr 
19511	I_Tim	6	4	<i>sick</i>
19512	I_Tim	6	8	1) Or 
19513	I_Tim	6	8	<i>in these we shall have enough</i>
19514	I_Tim	6	10	1) Gr 
19515	I_Tim	6	10	<i>evils</i>
19516	I_Tim	6	11	1) Or 
19517	I_Tim	6	11	<i>stedfastness</i>
19518	I_Tim	6	13	1) Or 
19519	I_Tim	6	13	<i>preserveth all things alive</i>
19520	I_Tim	6	15	1) Or 
19521	I_Tim	6	15	<i>his</i>
19522	I_Tim	6	15	 2) Gr 
19523	I_Tim	6	15	<i>them that reign as kings</i>
19524	I_Tim	6	15	 3) Gr 
19525	I_Tim	6	15	<i>them that rule as lords</i>
19526	I_Tim	6	17	1) Or 
19527	I_Tim	6	17	<i>age</i>
19528	I_Tim	6	18	1) Or 
19529	I_Tim	6	18	<i>ready to sympathize</i>
19530	I_Tim	6	20	1) Gr 
19531	I_Tim	6	20	<i>the deposit</i>
19532	I_Tim	6	21	1) Gr 
19533	I_Tim	6	21	<i>missed the mark</i>
19534	II_Tim	1	4	1) Or 
19535	II_Tim	1	4	<i>joy in being reminded</i>
19536	II_Tim	1	6	1) Gr 
19537	II_Tim	1	6	<i>stir into flame</i>
19538	II_Tim	1	7	1) Gr 
19539	II_Tim	1	7	<i>sobering</i>
19540	II_Tim	1	8	1) Gr 
19541	II_Tim	1	8	<i>good tidings</i>
19542	II_Tim	1	8	 ; and so elsewhere; See marginal note on Mt 4:23
19543	II_Tim	1	9	1) Or 
19544	II_Tim	1	9	<i>long ages ago</i>
19545	II_Tim	1	10	1) Gr 
19546	II_Tim	1	10	<i>incorruption</i>
19547	II_Tim	1	10	 ; See Ro 2:7. 2) Gr 
19548	II_Tim	1	10	<i>good tidings</i>
19549	II_Tim	1	10	 ; See verse 8
19550	II_Tim	1	11	1) Gr 
19551	II_Tim	1	11	<i>herald</i>
19552	II_Tim	1	12	1) Or 
19553	II_Tim	1	12	<i>that which he hath committed unto me</i>
19554	II_Tim	1	12	 ; Gr 
19555	II_Tim	1	12	<i>my deposit</i>
19556	II_Tim	1	13	1) Gr 
19557	II_Tim	1	13	<i>healthful</i>
19558	II_Tim	1	14	1) Gr 
19559	II_Tim	1	14	<i>The good deposit</i>
19560	II_Tim	2	3	1) Or 
19561	II_Tim	2	3	<i>Take thy part in suffering hardship, as etc</i>
19562	II_Tim	2	8	1) See marginal note on 2 Ti 1:8
19563	II_Tim	2	11	1) Or 
19564	II_Tim	2	11	<i>saying; for if etc</i>
19565	II_Tim	2	14	1) Many ancient authorities read 
19566	II_Tim	2	14	<i>God</i>
19567	II_Tim	2	15	1) Or 
19568	II_Tim	2	15	<i>holding a straight course in the word of truth</i>
19569	II_Tim	2	15	 ; Or 
19570	II_Tim	2	15	<i>rightly dividing the word of truth</i>
19571	II_Tim	2	17	1) Or 
19572	II_Tim	2	17	<i>spread</i>
19573	II_Tim	2	18	1) Gr 
19574	II_Tim	2	18	<i>missed the mark</i>
19575	II_Tim	2	18	 ; 1 Ti 1:6. 2) Some ancient authorities read 
19576	II_Tim	2	18	<i>a resurrection</i>
19577	II_Tim	2	19	1) Nu 16:5? 2) Isa 26:13?
19578	II_Tim	2	24	1) Gr 
19579	II_Tim	2	24	<i>bondservant</i>
19580	II_Tim	2	25	1) Or 
19581	II_Tim	2	25	<i>instructing</i>
19582	II_Tim	2	26	1) Gr 
19583	II_Tim	2	26	<i>return to soberness</i>
19584	II_Tim	2	26	  2) Gr 
19585	II_Tim	2	26	<i>taken alive</i>
19586	II_Tim	2	26	 3) Or 
19587	II_Tim	2	26	<i>by him, unto the will of God</i>
19588	II_Tim	2	26	 ; Compare 2 Co 10:5; Gr 
19589	II_Tim	2	26	<i>by him, unto the will of him</i>
19590	II_Tim	2	26	 ; In the Greek the two pronouns are different.
19591	II_Tim	3	10	1) Or 
19592	II_Tim	3	10	<i>stedfastness</i>
19593	II_Tim	3	14	1) Gr 
19594	II_Tim	3	14	<i>what persons</i>
19595	II_Tim	3	16	1) Or 
19596	II_Tim	3	16	<i>Every scripture</i>
19597	II_Tim	3	16	 is 
19598	II_Tim	3	16	<i>inspired of God, and profitable</i>
19599	II_Tim	3	16	 2) Or 
19600	II_Tim	3	16	<i>discipline</i>
19601	II_Tim	4	1	1) Or 
19602	II_Tim	4	1	<i>I testify, in the sight…dead, both of his appearing etc</i>
19603	II_Tim	4	2	1) Or 
19604	II_Tim	4	2	<i>bring to the proof</i>
19605	II_Tim	4	3	1) Gr 
19606	II_Tim	4	3	<i>healthful</i>
19607	II_Tim	4	3	 2) Or 
19608	II_Tim	4	3	<i>teaching</i>
19609	II_Tim	4	6	1) Gr 
19610	II_Tim	4	6	<i>poured out as a drink-offering</i>
19611	II_Tim	4	10	1) Or 
19612	II_Tim	4	10	<i>age</i>
19613	II_Tim	4	10	 2) Or 
19614	II_Tim	4	10	<i>Gaul</i>
19615	II_Tim	4	14	1) Gr 
19616	II_Tim	4	14	<i>showed</i>
19617	II_Tim	4	17	1) Or 
19618	II_Tim	4	17	<i>gave me power</i>
19619	II_Tim	4	17	 2) Or 
19620	II_Tim	4	17	<i>proclamation</i>
19621	II_Tim	4	18	1) Gr 
19622	II_Tim	4	18	<i>unto the ages of the ages</i>
20205	I_Pet	1	3	1) Or 
20206	I_Pet	1	3	<i>God and the Father</i>
20207	I_Pet	1	3	 ; See Ro 15:6 margin
20208	I_Pet	1	6	1) Or 
20209	I_Pet	1	6	<i>temptations</i>
20210	I_Pet	1	8	1) Gr 
20211	I_Pet	1	8	<i>glorified</i>
20212	I_Pet	1	11	1) Gr 
20213	I_Pet	1	11	<i>unto</i>
20214	I_Pet	1	12	1) Gr 
20215	I_Pet	1	12	<i>brought good tidings</i>
20216	I_Pet	1	12	 ; Compare Mt 11:5. 2) Gr 
20217	I_Pet	1	12	<i>in</i>
20218	I_Pet	1	13	1) Gr 
20219	I_Pet	1	13	<i>is being brought</i>
20220	I_Pet	1	15	1) Or 
20221	I_Pet	1	15	<i>like the Holy One who called you</i>
20222	I_Pet	1	16	1) Le 11:44 f; 19:2; 20:7
20223	I_Pet	1	22	1) Many ancient authorities read 
20224	I_Pet	1	22	<i>from a clean heart</i>
20225	I_Pet	1	22	 ; Compare 1 Ti 1:5
20226	I_Pet	1	23	1) Or 
20227	I_Pet	1	23	<i>God who liveth</i>
20228	I_Pet	1	23	 ; Compare Da 6:26
20229	I_Pet	1	24	1) Isa 40:6 ff
20230	I_Pet	1	25	1) Gr 
20231	I_Pet	1	25	<i>saying</i>
20232	I_Pet	1	25	 2) See verse 12
20233	I_Pet	2	1	1) Or 
20234	I_Pet	2	1	<i>malice</i>
20235	I_Pet	2	1	 ; 1 Co 14:20
20236	I_Pet	2	2	1) Gr 
20237	I_Pet	2	2	<i>belonging to the reason</i>
20238	I_Pet	2	2	 ; Compare Ro 12:1
20239	I_Pet	2	4	1) Or 
20240	I_Pet	2	4	<i>honorable</i>
20241	I_Pet	2	5	1) Or 
20242	I_Pet	2	5	<i>a spiritual house for a holy priesthood</i>
20243	I_Pet	2	6	1) Or 
20244	I_Pet	2	6	<i>a scripture</i>
20245	I_Pet	2	6	 2) Isa 28:16. 3) Or 
20246	I_Pet	2	6	<i>honorable</i>
20247	I_Pet	2	6	 4) Or 
20248	I_Pet	2	6	<i>it</i>
20249	I_Pet	2	7	1) Or 
20250	I_Pet	2	7	<i>In your sight</i>
20251	I_Pet	2	7	 2) Or 
20252	I_Pet	2	7	<i>honor</i>
20253	I_Pet	2	7	 3) Ps 118:22
20254	I_Pet	2	8	1) Isa 8:14. 2) Gr 
20255	I_Pet	2	8	<i>who</i>
20256	I_Pet	2	8	 3) Or 
20257	I_Pet	2	8	<i>stumble, being disobedient to the word</i>
20258	I_Pet	2	13	1) Gr 
20259	I_Pet	2	13	<i>creation</i>
20260	I_Pet	2	14	1) Gr 
20261	I_Pet	2	14	<i>through</i>
20262	I_Pet	2	16	1) Gr 
20263	I_Pet	2	16	<i>having</i>
20264	I_Pet	2	16	 2) Or 
20265	I_Pet	2	16	<i>malice</i>
20266	I_Pet	2	16	 ; 1 Co 14:20
20267	I_Pet	2	18	1) Gr 
20268	I_Pet	2	18	<i>Household-servants</i>
20269	I_Pet	2	19	1) Gr 
20270	I_Pet	2	19	<i>grace</i>
20271	I_Pet	2	19	 2) Gr 
20272	I_Pet	2	19	<i>of</i>
20273	I_Pet	2	20	1) Gr 
20274	I_Pet	2	20	<i>grace</i>
20275	I_Pet	2	23	1) Or, his cause
20276	I_Pet	2	24	1) Or 
20277	I_Pet	2	24	<i>carried up…to the tree</i>
20278	I_Pet	2	24	 ; Compare Col 2:14; 1 Ma 4:53 (Gr) 2) Gr 
20279	I_Pet	2	24	<i>bruise</i>
20280	I_Pet	2	25	1) Or 
20281	I_Pet	2	25	<i>Overseer</i>
20282	I_Pet	3	1	1) Or 
20283	I_Pet	3	1	<i>manner of life</i>
20284	I_Pet	3	1	 ; verse 16
20285	I_Pet	3	2	1) Or 
20286	I_Pet	3	2	<i>manner of life</i>
20287	I_Pet	3	2	 ; verse 16
20288	I_Pet	3	5	1) Or 
20289	I_Pet	3	5	<i>husbands (as Sarah…ye are become), doing well, and not being afraid</i>
20290	I_Pet	3	6	1) Or 
20291	I_Pet	3	6	<i>afraid with</i>
20292	I_Pet	3	7	1) Gr 
20293	I_Pet	3	7	<i>unto the female vessel, as weaker</i>
20294	I_Pet	3	8	1) Gr 
20295	I_Pet	3	8	<i>sympathetic</i>
20296	I_Pet	3	10	1) Ps 34:12 ff
20297	I_Pet	3	18	1) Many ancient authorities read 
20298	I_Pet	3	18	<i>died</i>
20299	I_Pet	3	20	1) Or 
20300	I_Pet	3	20	<i>into which few, that is, eight souls, were brought safely through water</i>
20301	I_Pet	3	21	1) Or 
20302	I_Pet	3	21	<i>in the antitype</i>
20303	I_Pet	3	21	 2) Or 
20304	I_Pet	3	21	<i>inquiry</i>
20305	I_Pet	3	21	 ; Or 
20306	I_Pet	3	21	<i>appeal</i>
20307	I_Pet	4	1	1) Or 
20308	I_Pet	4	1	<i>thought</i>
20309	I_Pet	4	1	 2) Some ancient authorities read 
20310	I_Pet	4	1	<i>unto sins</i>
20311	I_Pet	4	2	1) Or 
20312	I_Pet	4	2	<i>he no longer…his time</i>
20313	I_Pet	4	4	1) Or 
20314	I_Pet	4	4	<i>flood</i>
20315	I_Pet	4	6	1) Or 
20316	I_Pet	4	6	<i>were the good tidings preached</i>
20317	I_Pet	4	7	1) Gr 
20318	I_Pet	4	7	<i>prayers</i>
20319	I_Pet	4	11	1) Gr 
20320	I_Pet	4	11	<i>unto the ages of the ages</i>
20321	I_Pet	4	14	1) Gr 
20322	I_Pet	4	14	<i>in</i>
20323	I_Pet	4	17	1) Gr 
20324	I_Pet	4	17	<i>good tidings</i>
20325	I_Pet	4	17	 ; See Mt 4:23 margin
20326	I_Pet	5	2	1) Some ancient authorities omit 
20327	I_Pet	5	2	<i>exercising the oversight</i>
20328	I_Pet	5	2	 2) Some ancient authorities omit 
20329	I_Pet	5	2	<i>according to</i>
20330	I_Pet	5	2	 the will of 
20331	I_Pet	5	2	<i>God</i>
20332	I_Pet	5	5	1) Or 
20333	I_Pet	5	5	<i>Likewise…elder; yea, all of you one to another. Gird yourselves with humility</i>
20334	I_Pet	5	9	1) Or 
20335	I_Pet	5	9	<i>the</i>
20336	I_Pet	5	9	 2) Gr 
20337	I_Pet	5	9	<i>being accomplished</i>
20338	I_Pet	5	9	 3) Gr 
20339	I_Pet	5	9	<i>brotherhood</i>
20340	I_Pet	5	10	1) Or 
20341	I_Pet	5	10	<i>restore</i>
20342	I_Pet	5	10	 2) Many ancient authorities add 
20343	I_Pet	5	10	<i>settle</i>
20344	I_Pet	5	11	1) Gr 
20345	I_Pet	5	11	<i>unto the ages of the ages</i>
20346	I_Pet	5	12	1) Gr 
20347	I_Pet	5	12	<i>the</i>
20348	I_Pet	5	13	1) That is, The church, or, The sister
20349	II_Pet	1	1	1) Many ancient authorities read 
20350	II_Pet	1	1	<i>Symeon</i>
20351	II_Pet	1	1	 ; See Ac 15:14. 2) Gr 
20352	II_Pet	1	1	<i>bondservant</i>
20353	II_Pet	1	1	 ; 3) Gr 
20354	II_Pet	1	1	<i>an equally precious</i>
20355	II_Pet	1	1	 4) Or 
20356	II_Pet	1	1	<i>our God and Saviour</i>
20357	II_Pet	1	1	 ; Compare 2 Pe 1:11; 2:20; 3:18; Tit 2:13
20358	II_Pet	1	3	1) Some ancient authorities read 
20359	II_Pet	1	3	<i>through glory and virtue</i>
20360	II_Pet	1	4	1) Or 
20361	II_Pet	1	4	<i>a</i>
20362	II_Pet	1	6	1) Or 
20363	II_Pet	1	6	<i>stedfastness</i>
20364	II_Pet	1	7	1) Gr 
20365	II_Pet	1	7	<i>love of the brethren</i>
20366	II_Pet	1	9	1) Or 
20367	II_Pet	1	9	<i>closing his eyes</i>
20368	II_Pet	1	15	1) Or 
20369	II_Pet	1	15	<i>departure</i>
20370	II_Pet	1	16	1) Gr 
20371	II_Pet	1	16	<i>presence</i>
20372	II_Pet	1	17	1) Gr 
20373	II_Pet	1	17	<i>having received</i>
20374	II_Pet	1	19	1) Gr 
20375	II_Pet	1	19	<i>squalid</i>
20376	II_Pet	1	20	1) Or 
20377	II_Pet	1	20	<i>special</i>
20378	II_Pet	1	21	1) Gr 
20379	II_Pet	1	21	<i>was brought</i>
20380	II_Pet	2	1	1) Or 
20381	II_Pet	2	1	<i>sects of perdition</i>
20382	II_Pet	2	4	1) Or 
20383	II_Pet	2	4	<i>cast them into dungeons</i>
20384	II_Pet	2	4	 2) Gr 
20385	II_Pet	2	4	<i>Tartarus</i>
20386	II_Pet	2	4	 3) Some ancient authorities read 
20387	II_Pet	2	4	<i>chains</i>
20388	II_Pet	2	4	 ; Compare Wis 17:17
20389	II_Pet	2	5	1) Gr 
20390	II_Pet	2	5	<i>a herald</i>
20391	II_Pet	2	8	1) Gr 
20392	II_Pet	2	8	<i>tormented</i>
20393	II_Pet	2	10	1) Gr 
20394	II_Pet	2	10	<i>glories</i>
20395	II_Pet	2	12	1) Gr 
20396	II_Pet	2	12	<i>natural</i>
20397	II_Pet	2	12	 2) Or 
20398	II_Pet	2	12	<i>to take and to destroy</i>
20399	II_Pet	2	12	 3) Or 
20400	II_Pet	2	12	<i>corruption</i>
20401	II_Pet	2	12	 ; Compare 1 Ti 6:9
20402	II_Pet	2	13	1) Some ancient authorities read 
20403	II_Pet	2	13	<i>love-feasts</i>
20404	II_Pet	2	13	 ; Compare Jude 12
20405	II_Pet	2	14	1) Gr 
20406	II_Pet	2	14	<i>an adulteress</i>
20407	II_Pet	2	15	1) Many ancient authorities read 
20408	II_Pet	2	15	<i>Bosor</i>
20409	II_Pet	2	19	1) Or 
20410	II_Pet	2	19	<i>what</i>
20411	II_Pet	2	20	1) Many ancient authorities read 
20412	II_Pet	2	20	<i>our</i>
20413	II_Pet	2	22	1) Pr 26:11
20414	II_Pet	3	3	1) Gr 
20415	II_Pet	3	3	<i>in the last of the days</i>
20416	II_Pet	3	4	1) Gr 
20417	II_Pet	3	4	<i>presence</i>
20418	II_Pet	3	5	1) Or 
20419	II_Pet	3	5	<i>through</i>
20420	II_Pet	3	7	1) Or 
20421	II_Pet	3	7	<i>stored with fire</i>
20422	II_Pet	3	10	1) Or 
20423	II_Pet	3	10	<i>heavenly bodies</i>
20424	II_Pet	3	10	 2) The most ancient manuscripts read 
20425	II_Pet	3	10	<i>discovered</i>
20426	II_Pet	3	12	1) Or 
20427	II_Pet	3	12	<i>hastening</i>
20428	II_Pet	3	12	 2) Gr 
20429	II_Pet	3	12	<i>presence</i>
20430	II_Pet	3	12	 3) Or 
20431	II_Pet	3	12	<i>heavenly bodies</i>
20432	II_Pet	3	18	1) Gr 
20433	II_Pet	3	18	<i>unto the day of eternity</i>
20434	II_Pet	3	18	 ; Sir 18:10
20435	I_John	1	1	1) Or 
20436	I_John	1	1	<i>word</i>
20437	I_John	1	1	 ; Compare Ac 5:20
20438	I_John	1	4	1) Many ancient authorities read 
20439	I_John	1	4	<i>your</i>
20440	I_John	2	1	1) Or 
20441	I_John	2	1	<i>Comforter</i>
20442	I_John	2	1	 ; Joh 14:16; Or 
20443	I_John	2	1	<i>Helper</i>
20444	I_John	2	1	 ; Gr 
20445	I_John	2	1	<i>Paraclete</i>
20446	I_John	2	13	1) Or 
20447	I_John	2	13	<i>I wrote</i>
20448	I_John	2	14	1) Or 
20449	I_John	2	14	<i>I wrote</i>
20450	I_John	2	19	1) Or 
20451	I_John	2	19	<i>that not all are of us</i>
20452	I_John	2	20	1) Some very ancient authorities read 
20453	I_John	2	20	<i>and ye all know</i>
20454	I_John	2	21	1) Or 
20455	I_John	2	21	<i>that</i>
20456	I_John	2	25	1) Some ancient authorities read 
20457	I_John	2	25	<i>you</i>
20458	I_John	2	27	1) Or 
20459	I_John	2	27	<i>so it is true and is no lie; and even as etc</i>
20460	I_John	2	27	 2) Or 
20461	I_John	2	27	<i>abide ye</i>
20462	I_John	2	28	1) Gr 
20463	I_John	2	28	<i>from him</i>
20464	I_John	2	28	 2) Gr 
20465	I_John	2	28	<i>presence</i>
20466	I_John	2	29	1) Or 
20467	I_John	2	29	<i>know ye</i>
20468	I_John	3	2	1) Or 
20469	I_John	3	2	<i>it</i>
20470	I_John	3	5	1) Or 
20471	I_John	3	5	<i>bear sins</i>
20472	I_John	3	6	1) Or 
20473	I_John	3	6	<i>hath known</i>
20474	I_John	3	19	1) Gr 
20475	I_John	3	19	<i>persuade</i>
20476	I_John	3	19	 ; Compare Mt 28:14. 2) Or 
20477	I_John	3	19	<i>before him, whereinsoever our heart condemn us; because God etc</i>
20478	I_John	3	23	1) Gr 
20479	I_John	3	23	<i>believe the name</i>
20480	I_John	4	3	1) Some ancient authorities read 
20481	I_John	4	3	<i>annulleth Jesus</i>
20482	I_John	4	9	1) Or 
20483	I_John	4	9	<i>in our case</i>
20484	I_John	4	16	1) Or 
20485	I_John	4	16	<i>in our case</i>
20486	I_John	4	20	1) Many ancient authorities read 
20487	I_John	4	20	<i>how can he love God whom he hath not seen?</i>
20488	I_John	5	6	1) Gr 
20489	I_John	5	6	<i>in</i>
20490	I_John	5	16	1) Or 
20491	I_John	5	16	<i>he shall ask and shall give him life,</i>
20492	I_John	5	16	 even 
20493	I_John	5	16	<i>to them etc</i>
20494	I_John	5	16	 2) Or 
20495	I_John	5	16	<i>sin</i>
20496	I_John	5	17	1 Or 
20497	I_John	5	17	<i>sin</i>
20498	I_John	5	18	1) Some ancient authorities read 
20499	I_John	5	18	<i>him</i>
20500	II_John	1	1	1) Or 
20501	II_John	1	1	<i>Cyria</i>
20502	II_John	1	5	1) Or 
20503	II_John	1	5	<i>Cyria</i>
20504	II_John	1	8	1) Or 
20505	II_John	1	8	<i>destroy</i>
20506	II_John	1	8	 2) Many ancient authorities read 
20507	II_John	1	8	<i>ye</i>
20508	II_John	1	9	1) Or 
20509	II_John	1	9	<i>taketh the lead</i>
20510	II_John	1	9	 ; Compare 3 Jo 9
20511	III_John	1	3	1) Or 
20512	III_John	1	3	<i>rejoice greatly, when brethren come and bear witness</i>
20513	III_John	1	4	1) Or 
20514	III_John	1	4	<i>these</i>
20515	III_John	1	4	 things, 
20516	III_John	1	4	<i>that I may hear</i>
20517	III_John	1	8	1) Or 
20518	III_John	1	8	<i>with</i>
\.


--
-- TOC entry 2077 (class 0 OID 0)
-- Dependencies: 189
-- Name: asv_note_id_seq; Type: SEQUENCE SET; Schema: study_app; Owner: postgres
--

SELECT pg_catalog.setval('study_app.asv_note_id_seq', 21043, true);


--
-- TOC entry 1961 (class 2606 OID 94213)
-- Name: asv_note_pkey; Type: CONSTRAINT; Schema: study_app; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY study_app.asv_note
    ADD CONSTRAINT asv_note_pkey PRIMARY KEY (id);


-- Completed on 2018-06-24 19:49:10 CEST

--
-- PostgreSQL database dump complete
--

