--
-- PostgreSQL database dump
--

-- Dumped from database version 14.9 (Ubuntu 14.9-0ubuntu0.22.04.1)
-- Dumped by pg_dump version 14.9 (Ubuntu 14.9-0ubuntu0.22.04.1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: actor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.actor (
    actorid numeric NOT NULL,
    name text
);


ALTER TABLE public.actor OWNER TO postgres;

--
-- Name: genre; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.genre (
    genre_id numeric NOT NULL,
    genre_name text
);


ALTER TABLE public.genre OWNER TO postgres;

--
-- Name: movie_actor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.movie_actor (
    movieid numeric NOT NULL,
    actorid numeric NOT NULL
);


ALTER TABLE public.movie_actor OWNER TO postgres;

--
-- Name: movie_genre; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.movie_genre (
    movieid numeric NOT NULL,
    genreid numeric NOT NULL
);


ALTER TABLE public.movie_genre OWNER TO postgres;

--
-- Name: movies; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.movies (
    movieid numeric NOT NULL,
    poster_link text,
    series_title text,
    released_year numeric,
    certificate text,
    runtime text,
    genre text,
    imdb_rating numeric,
    overview text,
    meta_score numeric,
    director text,
    star1 text,
    star2 text,
    star3 text,
    star4 text,
    no_of_votes numeric,
    gross numeric
);


ALTER TABLE public.movies OWNER TO postgres;

--
-- Data for Name: actor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.actor (actorid, name) FROM stdin;
0	Sean Connery
1	Gert Fröbe
2	Honor Blackman
3	Shirley Eaton
4	Rod Taylor
5	Tippi Hedren
6	Jessica Tandy
7	Suzanne Pleshette
8	Ingrid Bergman
9	Liv Ullmann
10	Lena Nyman
11	Halvar Björk
12	Elijah Wood
13	Ian McKellen
14	Viggo Mortensen
15	Orlando Bloom
16	Jodie Foster
17	Anthony Hopkins
18	Lawrence A. Bonney
19	Kasi Lemmons
20	Arnold Schwarzenegger
21	Linda Hamilton
22	Edward Furlong
23	Robert Patrick
24	Joe Russo
25	Robert Downey Jr.
26	Chris Hemsworth
27	Mark Ruffalo
28	Toshirô Mifune
29	Yutaka Sada
30	Tatsuya Nakadai
31	Kyôko Kagawa
32	Brad Pitt
33	Diane Kruger
34	Eli Roth
35	Mélanie Laurent
36	Mark Hamill
37	Harrison Ford
38	Carrie Fisher
39	Billy Dee Williams
40	Brigitte Helm
41	Alfred Abel
42	Gustav Fröhlich
43	Rudolf Klein-Rogge
44	Ricardo Darín
45	Soledad Villamil
46	Pablo Rago
47	Carla Quevedo
48	Russell Crowe
49	Ed Harris
50	Jennifer Connelly
51	Christopher Plummer
52	Carole Lombard
53	Jack Benny
54	Robert Stack
55	Felix Bressart
56	Ralph Fiennes
57	F. Murray Abraham
58	Mathieu Amalric
59	Adrien Brody
60	Clint Eastwood
61	Bee Vang
62	Christopher Carley
63	Ahney Her
64	Lee Unkrich
65	Albert Brooks
66	Ellen DeGeneres
67	Alexander Gould
68	Shah Rukh Khan
69	Kajol
70	Amrish Puri
71	Farida Jalal
72	Bertil Guve
73	Pernilla Allwin
74	Kristina Adolphson
75	Börje Ahlstedt
76	Brahim Hadjadj
77	Jean Martin
78	Yacef Saadi
79	Samia Kerbash
80	James Cagney
81	Virginia Mayo
82	Edmond O'Brien
83	Margaret Wycherly
84	Salman Khan
85	Harshaali Malhotra
86	Nawazuddin Siddiqui
87	Kareena Kapoor
88	Rami Malek
89	Lucy Boynton
90	Gwilym Lee
91	Ben Hardy
92	Leonardo DiCaprio
93	Tom Hardy
94	Will Poulter
95	Domhnall Gleeson
96	Matthew McConaughey
97	Jennifer Garner
98	Jared Leto
99	Steve Zahn
100	Johnny Depp
101	Geoffrey Rush
102	Keira Knightley
103	Bruce Willis
104	Madeleine Stowe
105	Joseph Melito
106	Mayumi Tanaka
107	Keiko Yokozawa
108	Kotoe Hatsui
109	Minori Terada
110	Charlton Heston
111	Roddy McDowall
112	Kim Hunter
113	Maurice Evans
114	Anthony Quinn
115	Giulietta Masina
116	Richard Basehart
117	Aldo Silvani
118	William Holden
119	Don Taylor
120	Otto Preminger
121	Robert Strauss
122	William Powell
123	Myrna Loy
124	Maureen O'Sullivan
125	Nat Pendleton
126	Daisy Ridley
127	John Boyega
128	Oscar Isaac
129	Colin Farrell
130	Brendan Gleeson
131	Ciarán Hinds
132	Elizabeth Berrington
133	Tensai Okamura
134	Hiroyuki Okiura
135	Yoshiyuki Takei
136	Beau Billingslea
137	Daniel Day-Lewis
138	Brenda Fricker
139	Alison Whelan
140	Kirsten Sheridan
141	Ruth Gordon
142	Bud Cort
143	Vivian Pickles
144	Cyril Cusack
145	Edmund Gwenn
146	Maureen O'Hara
147	John Payne
148	Gene Lockhart
149	Giuseppe Battiston
150	Anna Foglietta
151	Marco Giallini
152	Edoardo Leo
153	Irrfan Khan
154	Nimrat Kaur
155	Lillete Dubey
156	Kim Yoon-seok
157	Jung-woo Ha
158	Yeong-hie Seo
159	Yoo-Jeong Kim
160	Sarah Polley
161	Linh Dan Pham
162	Michèle Caucheteux
163	Jean-Claude Donda
164	Michel Robin
165	Monica Viegas
166	Emily Watson
167	Stellan Skarsgård
168	Katrin Cartlidge
169	Jean-Marc Barr
170	Kirsten Dunst
171	Minami Takayama
172	Rei Sakuma
173	Kappei Yamaguchi
174	Dustin Hoffman
175	Meryl Streep
176	Jane Alexander
177	Justin Henry
178	Jean-Paul Belmondo
179	Jean Seberg
180	Daniel Boulanger
181	Henri-Jacques Huet
182	Daniel Kaluuya
183	Allison Williams
184	Bradley Whitford
185	Catherine Keener
186	Jeff Bridges
187	Mackenzie Foy
188	Rachel McAdams
189	Marion Cotillard
190	Megumi Hayashibara
191	Tôru Emori
192	Katsunosuke Hori
193	Tôru Furuya
194	Christian Bale
195	Ben Foster
196	Logan Lerman
197	Tom Hanks
198	Tyler Hoechlin
199	Rob Maxey
200	Liam Aiken
201	Moritz Bleibtreu
202	Christian Berkel
203	Oliver Stokowski
204	Wotan Wilke Möhring
205	Thierry Lhermitte
206	Jacques Villeret
207	Francis Huster
208	Daniel Prévost
209	Kathy Bates
210	Mary Stuart Masterson
211	Mary-Louise Parker
212	Donald Pleasence
213	Jamie Lee Curtis
214	Tony Moran
215	Nancy Kyes
216	Margot Robbie
217	Emile Hirsch
218	Aleksey Serebryakov
219	Elena Lyadova
220	Roman Madyanov
221	Vladimir Vdovichenkov
222	Antonio Banderas
223	Elena Anaya
224	Jan Cornet
225	Marisa Paredes
226	Daniel Radcliffe
227	Emma Watson
228	Rupert Grint
229	Michael Gambon
230	Tatsuya Fujiwara
231	Aki Maeda
232	Tarô Yamamoto
233	Takeshi Kitano
234	Robert De Niro
235	Kevin Bacon
236	Jason Patric
237	Leslie Nielsen
238	Priscilla Presley
239	O.J. Simpson
240	Ricardo Montalban
241	David Zucker
242	Jerry Zucker
243	Robert Hays
244	Julie Hagerty
245	Yasuo Yamada
246	Eiko Masuyama
247	Kiyoshi Kobayashi
248	Makio Inoue
249	Gregory Peck
250	Robert Mitchum
251	Polly Bergen
252	Lori Martin
253	Karlheinz Böhm
254	Anna Massey
255	Moira Shearer
256	Maxine Audley
257	Yul Brynner
258	Steve McQueen
259	Charles Bronson
260	Eli Wallach
261	Pierre Brasseur
262	Alida Valli
263	Juliette Mayniel
264	Alexandre Rignault
265	Kevin McCarthy
266	Dana Wynter
267	Larry Gates
268	King Donovan
269	James Dean
270	Natalie Wood
271	Sal Mineo
272	Jim Backus
273	Alec Guinness
274	Peter Sellers
275	Cecil Parker
276	Herbert Lom
277	Humphrey Bogart
278	Audrey Hepburn
279	Walter Hampden
280	John Wayne
281	Barry Fitzgerald
282	Ward Bond
283	Michael Rennie
284	Patricia Neal
285	Hugh Marlowe
286	Sam Jaffe
287	Katharine Hepburn
288	Robert Morley
289	Peter Bull
290	Rita Hayworth
291	Glenn Ford
292	George Macready
293	Joseph Calleia
294	Samuel Armstrong
295	Ford Beebe Jr.
296	Norman Ferguson
297	David Hand
298	Claude Rains
299	Gloria Stuart
300	William Harrigan
301	Henry Travers
302	Anne Hathaway
303	Tim Robbins
304	Bill Pullman
305	John Cho
306	Debra Messing
307	Joseph Lee
308	Michelle La
309	Irene Papas
310	Michael Ansara
311	Johnny Sekka
312	Sanjeev Kumar
313	Dharmendra
314	Amitabh Bachchan
315	Amjad Khan
316	Terry Jones
317	Graham Chapman
318	John Cleese
319	Eric Idle
320	James Garner
321	Richard Attenborough
322	John Megna
323	Frank Overton
324	Rosemary Murphy
325	Eijirô Tôno
326	Yôko Tsukasa
327	Spencer Tracy
328	Burt Lancaster
329	Richard Widmark
330	Marlene Dietrich
331	Marilyn Monroe
332	Tony Curtis
333	Jack Lemmon
334	George Raft
335	Victor Sjöström
336	Bibi Andersson
337	Ingrid Thulin
338	Gunnar Björnstrand
339	Max von Sydow
340	Bengt Ekerot
341	Nils Poppe
342	Jean Servais
343	Carl Möhner
344	Robert Manuel
345	Janine Darcey
346	Ray Milland
347	Grace Kelly
348	Robert Cummings
349	John Williams
350	Chishû Ryû
351	Chieko Higashiyama
352	Sô Yamamura
353	Setsuko Hara
354	Machiko Kyô
355	Masayuki Mori
356	Takashi Shimura
357	Bette Davis
358	Anne Baxter
359	George Sanders
360	Celeste Holm
361	Walter Huston
362	Tim Holt
363	Bruce Bennett
364	Mia Farrow
365	John Cassavetes
366	Sidney Blackmer
367	Hye-ja Kim
368	Won Bin
369	Jin Goo
370	Je-mun Yun
371	Morgan Freeman
372	Bob Gunton
373	William Sadler
374	Marlon Brando
375	Al Pacino
376	James Caan
377	Diane Keaton
378	Heath Ledger
379	Aaron Eckhart
380	Michael Caine
381	Robert Duvall
382	Henry Fonda
383	Lee J. Cobb
384	Martin Balsam
385	John Fiedler
386	John Travolta
387	Uma Thurman
388	Samuel L. Jackson
389	Liam Neeson
390	Ben Kingsley
391	Caroline Goodall
392	Joseph Gordon-Levitt
393	Elliot Page
394	Ken Watanabe
395	Edward Norton
396	Meat Loaf
397	Zach Grenier
398	Sean Bean
399	Robin Wright
400	Gary Sinise
401	Sally Field
402	Lee Van Cleef
403	Aldo Giuffrè
404	Lilly Wachowski
405	Keanu Reeves
406	Laurence Fishburne
407	Carrie-Anne Moss
408	Ray Liotta
409	Joe Pesci
410	Lorraine Bracco
411	Jack Nicholson
412	Louise Fletcher
413	Michael Berryman
414	Peter Brocco
415	Lin-Manuel Miranda
416	Phillipa Soo
417	Leslie Odom Jr.
418	Renée Elise Goldsberry
419	Kang-ho Song
420	Lee Sun-kyun
421	Cho Yeo-jeong
422	Choi Woo-sik
423	Suriya
424	Madhavan
425	Paresh Rawal
426	Aparna Balamurali
427	Jessica Chastain
428	Kátia Lund
429	Alexandre Rodrigues
430	Leandro Firmino
431	Matheus Nachtergaele
432	Daveigh Chase
433	Miyu Irino
434	Rumi Hiiragi
435	Matt Damon
436	Tom Sizemore
437	Edward Burns
438	Michael Clarke Duncan
439	David Morse
440	Bonnie Hunt
441	Roberto Benigni
442	Nicoletta Braschi
443	Giorgio Cantarini
444	Giustino Durano
445	Kevin Spacey
446	Andrew Kevin Walker
447	Rajesh Khanna
448	Sumita Sanyal
449	Ramesh Deo
450	Akira Ishihama
451	Shima Iwashita
452	Tetsurô Tanba
453	Keiko Tsushima
454	Yukiko Shimazaki
455	James Stewart
456	Donna Reed
457	Lionel Barrymore
458	Thomas Mitchell
459	Joaquin Phoenix
460	Zazie Beetz
461	Frances Conroy
462	Miles Teller
463	J.K. Simmons
464	Melissa Benoist
465	Paul Reiser
466	Éric Toledano
467	François Cluzet
468	Omar Sy
469	Anne Le Ny
470	Hugh Jackman
471	Scarlett Johansson
472	Mark Wahlberg
473	Thomas Kretschmann
474	Frank Finlay
475	Emilia Fox
476	Connie Nielsen
477	Oliver Reed
478	Beverly D'Angelo
479	Jennifer Lien
480	Gabriel Byrne
481	Chazz Palminteri
482	Stephen Baldwin
483	Jean Reno
484	Gary Oldman
485	Natalie Portman
486	Danny Aiello
487	Rob Minkoff
488	Matthew Broderick
489	Jeremy Irons
490	James Earl Jones
491	Philippe Noiret
492	Enzo Cannavale
493	Antonella Attili
494	Isa Danieli
495	Tsutomu Tatsumi
496	Ayano Shiraishi
497	Akemi Yamaguchi
498	Yoshiko Shinohara
499	Michael J. Fox
500	Christopher Lloyd
501	Lea Thompson
502	Crispin Glover
503	Claudia Cardinale
504	Jason Robards
505	Anthony Perkins
506	Janet Leigh
507	Vera Miles
508	John Gavin
509	Paul Henreid
510	Charles Chaplin
511	Paulette Goddard
512	Henry Bergman
513	Tiny Sandford
514	Virginia Cherrill
515	Florence Lee
516	Harry Myers
517	Zain Al Rafeea
518	Yordanos Shiferaw
519	Boluwatife Treasure Bankole
520	Kawsar Al Haddad
521	Erdem Can
522	Çetin Tekindor
523	Ismail Hacioglu
524	Kyung-jin Lee
525	Pushkar
526	Vijay Sethupathi
527	Shraddha Srinath
528	Ryûnosuke Kamiki
529	Mone Kamishiraishi
530	Ryô Narita
531	Aoi Yûki
532	Aamir Khan
533	Sakshi Tanwar
534	Fatima Sana Shaikh
535	Sanya Malhotra
536	Peter Ramsey
537	Rodney Rothman
538	Shameik Moore
539	Jake Johnson
540	Chris Evans
541	Adrian Molina
542	Anthony Gonzalez
543	Gael García Bernal
544	Benjamin Bratt
545	Jamie Foxx
546	Christoph Waltz
547	Kerry Washington
548	Mona Singh
549	Sharman Joshi
550	Amole Gupte
551	Darsheel Safary
552	Tisca Chopra
553	Ben Burtt
554	Elissa Knight
555	Jeff Garlin
556	Fred Willard
557	Ulrich Mühe
558	Martina Gedeck
559	Sebastian Koch
560	Ulrich Tukur
561	Choi Min-sik
562	Yoo Ji-Tae
563	Kang Hye-jeong
564	Kim Byeong-Ok
565	Guy Pearce
566	Joe Pantoliano
567	Mark Boone Junior
568	Yôji Matsuda
569	Yuriko Ishida
570	Yûko Tanaka
571	Billy Crudup
572	James Woods
573	Elizabeth McGovern
574	Treat Williams
575	Karen Allen
576	Paul Freeman
577	John Rhys-Davies
578	Shelley Duvall
579	Danny Lloyd
580	Scatman Crothers
581	Martin Sheen
582	Frederic Forrest
583	Sigourney Weaver
584	Tom Skerritt
585	John Hurt
586	Veronica Cartwright
587	George C. Scott
588	Sterling Hayden
589	Keenan Wynn
590	Tyrone Power
591	Charles Laughton
592	Elsa Lanchester
593	Kirk Douglas
594	Ralph Meeker
595	Adolphe Menjou
596	Wendell Corey
597	Thelma Ritter
598	Gloria Swanson
599	Erich von Stroheim
600	Nancy Olson
601	Jack Oakie
602	Reginald Gardiner
603	Dean-Charles Chapman
604	George MacKay
605	Daniel Mays
606	Colin Firth
607	Anand Gandhi
608	Adesh Prasad
609	Sohum Shah
610	Jyoti Malshe
611	Ayushmann Khurrana
612	Tabu
613	Radhika Apte
614	Anil Dhawan
615	Mohanlal
616	Meena
617	Asha Sharath
618	Ansiba
619	Mads Mikkelsen
620	Thomas Bo Larsen
621	Annika Wedderkopp
622	Lasse Fogelstrøm
623	Payman Maadi
624	Leila Hatami
625	Sareh Bayat
626	Shahab Hosseini
627	Lubna Azabal
628	Mélissa Désormeaux-Poulin
629	Maxim Gaudette
630	Mustafa Kamel
631	Aras Bulut Iynemli
632	Nisa Sofiya Aksongur
633	Deniz Baysal
634	Celile Toyon Uysal
635	Fikret Kuskan
636	Hümeyra
637	Ege Tanman
638	Jeanne Moreau
639	Oskar Werner
640	Henri Serre
641	Vanna Urbino
642	Jim Carrey
643	Kate Winslet
644	Tom Wilkinson
645	Gerry Robert Byrne
646	Audrey Tautou
647	Mathieu Kassovitz
648	Rufus
649	Lorella Cravotta
650	Jason Statham
651	Benicio Del Toro
652	Dennis Farina
653	Ellen Burstyn
654	Marlon Wayans
655	Annette Bening
656	Thora Birch
657	Wes Bentley
658	Robin Williams
659	Ben Affleck
660	Mohammad Amir Naji
661	Amir Farrokh Hashemian
662	Bahare Seddiqi
663	Nafise Jafar-Mohammadi
664	Tim Allen
665	Don Rickles
666	Jim Varney
667	Mel Gibson
668	Sophie Marceau
669	Patrick McGoohan
670	Angus Macfadyen
671	Harvey Keitel
672	Tim Roth
673	Michael Madsen
674	Chris Penn
675	Matthew Modine
676	R. Lee Ermey
677	Vincent D'Onofrio
678	Adam Baldwin
679	Aleksey Kravchenko
680	Olga Mironova
681	Liubomiras Laucevicius
682	Vladas Bagdonas
683	Michael Biehn
684	Carrie Henn
685	Tom Hulce
686	Elizabeth Berridge
687	Roy Dotrice
688	Michelle Pfeiffer
689	Steven Bauer
690	Mary Elizabeth Mastrantonio
691	Jürgen Prochnow
692	Herbert Grönemeyer
693	Klaus Wennemann
694	Hubertus Bengsch
695	Cybill Shepherd
696	Paul Newman
697	Robert Redford
698	Robert Shaw
699	Charles Durning
700	Malcolm McDowell
701	Patrick Magee
702	Michael Bates
703	Warren Clarke
704	Keir Dullea
705	Gary Lockwood
706	William Sylvester
707	Daniel Richter
708	Gian Maria Volontè
709	Mara Krupp
710	Peter O'Toole
711	Jack Hawkins
712	Shirley MacLaine
713	Fred MacMurray
714	Ray Walston
715	Cary Grant
716	Eva Marie Saint
717	James Mason
718	Jessie Royce Landis
719	Kim Novak
720	Barbara Bel Geddes
721	Tom Helmore
722	Gene Kelly
723	Donald O'Connor
724	Debbie Reynolds
725	Nobuo Kaneko
726	Shin'ichi Himori
727	Haruo Tanaka
728	Lamberto Maggiorani
729	Enzo Staiola
730	Lianella Carell
731	Elena Altieri
732	Barbara Stanwyck
733	Edward G. Robinson
734	Byron Barr
735	Orson Welles
736	Joseph Cotten
737	Dorothy Comingore
738	Agnes Moorehead
739	Peter Lorre
740	Ellen Widmann
741	Inge Landgut
742	Otto Wernicke
743	Edna Purviance
744	Jackie Coogan
745	Carl Miller
746	Sushant Singh Rajput
747	Shraddha Kapoor
748	Varun Sharma
749	Prateik
750	Vicky Kaushal
751	Mohit Raina
752	Yami Gautam
753	Yash
754	Srinidhi Shetty
755	Ramachandra Raju
756	Archana Jois
757	Mahershala Ali
758	Linda Cardellini
759	Sebastian Maniscalco
760	Frances McDormand
761	Woody Harrelson
762	Sam Rockwell
763	Caleb Landry Jones
764	Konkona Sen Sharma
765	Neeraj Kabi
766	Prabhas
767	Rana Daggubati
768	Anushka Shetty
769	Tamannaah Bhatia
770	Carlos Martínez López
771	Jason Schwartzman
772	Rashida Jones
773	Ajay Devgn
774	Shriya Saran
775	Rajat Kapoor
776	Kangana Ranaut
777	Rajkummar Rao
778	Lisa Haydon
779	Jeffrey Ho
780	Lembit Ulfsak
781	Elmo Nüganen
782	Giorgi Nakashidze
783	Misha Meskhi
784	Farhan Akhtar
785	Sonam Kapoor
786	Pawan Malhotra
787	Art Malik
788	Manoj Bajpayee
789	Richa Chadha
790	Tigmanshu Dhulia
791	Rajat Barmecha
792	Ronit Roy
793	Manjot Singh
794	Ram Kapoor
795	Mahie Gill
796	Rajesh Abhay
797	Hemendra Dandotiya
798	Nick Nolte
799	Joel Edgerton
800	Jennifer Morrison
801	Emily Mortimer
802	Bob Peterson
803	Edward Asner
804	Jordan Nagai
805	John Ratzenberger
806	Jonah Hill
807	Vidya Malvade
808	Sagarika Ghatge
809	Shilpa Shukla
810	Paul Dano
811	Martin Stringer
812	Ivana Baquero
813	Ariadna Gil
814	Sergi López
815	Maribel Verdú
816	Joan Cusack
817	Ned Beatty
818	Hugo Weaving
819	Rupert Graves
820	Stephen Rea
821	Soha Ali Khan
822	Siddharth
823	Rani Mukerji
824	Shernaz Patel
825	Ayesha Kapoor
826	Gayatri Joshi
827	Kishori Ballal
828	Smit Sheth
829	Bruno Ganz
830	Alexandra Maria Lara
831	Ulrich Matthes
832	Juliane Köhler
833	Chieko Baishô
834	Takuya Kimura
835	Tatsuya Gashûin
836	Akihiro Miwa
837	Akshay Kumar
838	Sunil Shetty
839	Jason Flemyng
840	Dexter Fletcher
841	Nick Moran
842	Kim Basinger
843	Sener Sen
844	Ugur Yücel
845	Sermin Hürmeriç
846	Yesim Salkim
847	Val Kilmer
848	Jon Voight
849	Sharon Stone
850	Raveena Tandon
851	Karisma Kapoor
852	Gene Hackman
853	Richard Harris
854	Alison Doody
855	Denholm Elliott
856	Davor Dujmovic
857	Bora Todorovic
858	Ljubica Adzovic
859	Husnija Hasimovic
860	Hitoshi Takagi
861	Noriko Hidaka
862	Chika Sakamoto
863	Shigesato Itoi
864	Alan Rickman
865	Bonnie Bedelia
866	Reginald VelJohnson
867	Akira Terao
868	Jinpachi Nezu
869	Daisuke Ryû
870	Cathy Moriarty
871	Frank Vincent
872	Alisa Freyndlikh
873	Aleksandr Kaydanovskiy
874	Anatoliy Solonitsyn
875	Nikolay Grinko
876	Mack Swain
877	Tom Murray
878	Buster Keaton
879	Kathryn McGuire
880	Joe Keaton
881	Erwin Connelly
882	Noémie Merlant
883	Adèle Haenel
884	Luàna Bajrami
885	Valeria Golino
886	Taapsee Pannu
887	Kirti Kulhari
888	Andrea Tariang
889	Saori Hayami
890	Kenshô Ono
891	Mario Casas
892	Ana Wagener
893	Jose Coronado
894	Bárbara Lennie
895	Kim Min-hee
896	Cho Jin-woong
897	Moon So-Ri
898	Anne Dorval
899	Antoine Olivier Pilon
900	Suzanne Clément
901	Patrick Huard
902	Shahid Kapoor
903	Kay Kay Menon
904	Patrick Stewart
905	Dafne Keen
906	Boyd Holbrook
907	Brie Larson
908	Jacob Tremblay
909	Sean Bridgers
910	Wendy Crewson
911	Darío Grandinetti
912	María Marull
913	Mónica Villa
914	Diego Starosta
915	Kemp Powers
916	Tina Fey
917	Graham Norton
918	Haluk Bilginer
919	Melisa Sözen
920	Demet Akbag
921	Ayberk Pekcan
922	Anushka Sharma
923	Sanjay Dutt
924	Boman Irani
925	Mithun Chakraborty
926	Mahesh Manjrekar
927	Rosamund Pike
928	Neil Patrick Harris
929	Tyler Perry
930	Aoi Miyazaki
931	Takao Osawa
932	Haru Kuroki
933	Yukito Nishii
934	Andrew Garfield
935	Sam Worthington
936	Luke Bracey
937	Teresa Palmer
938	Ronnie Del Carmen
939	Amy Poehler
940	Bill Hader
941	Lewis Black
942	Ranbir Kapoor
943	Priyanka Chopra
944	Ileana D'Cruz
945	Saurabh Shukla
946	Chiwetel Ejiofor
947	Michael Kenneth Williams
948	Michael Fassbender
949	Daniel Brühl
950	Olivia Wilde
951	Jon Bernthal
952	Caitriona Balfe
953	Michael Keaton
954	Liev Schreiber
955	David Rawle
956	Lisa Hannigan
957	Fionnula Flanagan
958	Vidya Balan
959	Parambrata Chattopadhyay
960	Indraneil Sengupta
961	Hrithik Roshan
962	Abhay Deol
963	Katrina Kaif
964	Jake Gyllenhaal
965	Viola Davis
966	Melissa Leo
967	Charlize Theron
968	Nicholas Hoult
969	Zoë Kravitz
970	Anupam Kher
971	Naseeruddin Shah
972	Jimmy Sheirgill
973	Aamir Bashir
974	Masahiro Motoki
975	Ryôko Hirosue
976	Tsutomu Yamazaki
977	Kazuko Yoshiyuki
978	Richard Gere
979	Joan Allen
980	Cary-Hiroyuki Tagawa
981	Sarah Roemer
982	Toni Collette
983	Philip Seymour Hoffman
984	Eric Bana
985	Barry Humphries
986	Chris Sanders
987	Jay Baruchel
988	Gerard Butler
989	Christopher Mintz-Plasse
990	Vince Vaughn
991	Marcia Gay Harden
992	Joel Coen
993	Tommy Lee Jones
994	Javier Bardem
995	Josh Brolin
996	Arshad Warsi
997	Hilary Swank
998	Don Cheadle
999	Sophie Okonedo
1000	Xolani Mali
1001	Jang Dong-Gun
1002	Eun-ju Lee
1003	Hyeong-jin Kong
1004	Ethan Hawke
1005	Julie Delpy
1006	Vernon Dobtcheff
1007	Louise Lemoine Torrès
1008	Gracy Singh
1009	Sunil Dutt
1010	Kim Sang-kyung
1011	Roe-ha Kim
1012	Jae-ho Song
1013	Saif Ali Khan
1014	Akshaye Khanna
1015	Preity Zinta
1016	David Carradine
1017	Daryl Hannah
1018	Christopher Walken
1019	Emilio Echevarría
1020	Goya Toledo
1021	Álvaro Guerrero
1022	David Silverman
1023	Billy Crystal
1024	John Goodman
1025	Kazuya Tsurumaki
1026	Megumi Ogata
1027	Yûko Miyamura
1028	Raghuvir Yadav
1029	Rachel Shelley
1030	Haley Joel Osment
1031	Olivia Williams
1032	Pruitt Taylor Vince
1033	Mélanie Thierry
1034	Bill Nunn
1035	Laura Linney
1036	Noah Emmerich
1037	Bajram Severdzan
1038	Srdjan 'Zika' Todorovic
1039	Branka Katic
1040	Florijan Ajdini
1041	Ethan Coen
1042	Julianne Moore
1043	Tony Chiu-Wai Leung
1044	Maggie Cheung
1045	Ping Lam Siu
1046	Tung Cho 'Joe' Cheung
1047	Ewan McGregor
1048	Ewen Bremner
1049	Jonny Lee Miller
1050	Kevin McKidd
1051	William H. Macy
1052	Steve Buscemi
1053	Predrag 'Miki' Manojlovic
1054	Lazar Ristovski
1055	Mirjana Jokovic
1056	Slavko Stimac
1057	Vincent Cassel
1058	Hubert Koundé
1059	Saïd Taghmaoui
1060	Abdel Ahmed Ghili
1061	Andrea Eckert
1062	Hanno Pöschl
1063	Irène Jacob
1064	Jean-Louis Trintignant
1065	Frédérique Feder
1066	Jean-Pierre Lorit
1067	Brigitte Lin
1068	Takeshi Kaneshiro
1069	Faye Wong
1070	Sam Neill
1071	Laura Dern
1072	Jeff Goldblum
1073	Pete Postlethwaite
1074	Alison Crosbie
1075	Philip King
1076	Leslie Cheung
1077	Fengyi Zhang
1078	Gong Li
1079	You Ge
1080	Jingwu Ma
1081	Saifei He
1082	Cuifen Cao
1083	Robert Sean Leonard
1084	Josh Charles
1085	Wil Wheaton
1086	River Phoenix
1087	Corey Feldman
1088	Jerry O'Connell
1089	Charlie Sheen
1090	Tom Berenger
1091	Willem Dafoe
1092	Keith David
1093	Harry Dean Stanton
1094	Nastassja Kinski
1095	Dean Stockwell
1096	Aurore Clément
1097	Sumi Shimamoto
1098	Mahito Tsujimura
1099	Hisako Kyôda
1100	Gorô Naya
1101	Kurt Russell
1102	Wilford Brimley
1103	Richard Masur
1104	Bob Geldof
1105	Christine Hargreaves
1106	James Laurenson
1107	Eleanor David
1108	Klaus Kinski
1109	José Lewgoy
1110	Miguel Ángel Fuentes
1111	Rutger Hauer
1112	Sean Young
1113	Edward James Olmos
1114	Anne Bancroft
1115	John Gielgud
1116	Michael Palin
1117	Terry Gilliam
1118	John Cazale
1119	John Savage
1120	Sylvester Stallone
1121	Talia Shire
1122	Burt Young
1123	Carl Weathers
1124	Faye Dunaway
1125	Peter Finch
1126	Ryan O'Neal
1127	Marisa Berenson
1128	Hardy Krüger
1129	Margarita Terekhova
1130	Filipp Yankovskiy
1131	Ignat Daniltsev
1132	Oleg Yankovskiy
1133	John Huston
1134	Perry Lopez
1135	Tatum O'Neal
1136	Madeline Kahn
1137	John Hillerman
1138	Harriet Andersson
1139	Kari Sylwan
1140	Natalya Bondarchuk
1141	Donatas Banionis
1142	Jüri Järvet
1143	Vladislav Dvorzhetskiy
1144	Alain Delon
1145	François Périer
1146	Nathalie Delon
1147	Cathy Rosier
1148	George Kennedy
1149	Strother Martin
1150	J.D. Cannon
1151	Margaretha Krook
1152	Ivan Lapikov
1153	Nikolay Sergeev
1154	Silvia Pinal
1155	Jacqueline Andere
1156	Enrique Rambal
1157	José Baviera
1158	Joan Crawford
1159	Victor Buono
1160	Wesley Addy
1161	Keiju Kobayashi
1162	Yûnosuke Itô
1163	Lee Marvin
1164	Eduard Abalov
1165	Nikolay Burlyaev
1166	Valentin Zubkov
1167	Evgeniy Zharikov
1168	Birgitta Valberg
1169	Gunnel Lindblom
1170	Birgitta Pettersson
1171	Fredric March
1172	Dick York
1173	Jean-Pierre Léaud
1174	Albert Rémy
1175	Claire Maurier
1176	Guy Decomble
1177	Stephen Boyd
1178	Haya Harareet
1179	Misa Uehara
1180	Minoru Chiaki
1181	Kamatari Fujiwara
1182	Franca Marzi
1183	Dorian Gray
1184	Isuzu Yamada
1185	Sessue Hayakawa
1186	Karl Malden
1187	Rod Steiger
1188	Yves Montand
1189	Charles Vanel
1190	Peter van Eyck
1191	Folco Lulli
1192	Jan Sterling
1193	Robert Arthur
1194	Porter Hall
1195	Trevor Howard
1196	Emeric Pressburger
1197	Anton Walbrook
1198	Marius Goring
1199	Margaret Sullavan
1200	Frank Morgan
1201	Joseph Schildkraut
1202	Laurence Olivier
1203	Joan Fontaine
1204	Judith Anderson
1205	Jean Arthur
1206	Edward Arnold
1207	George Cukor
1208	Sam Wood
1209	Clark Gable
1210	Vivien Leigh
1211	Jean Gabin
1212	Dita Parlo
1213	Pierre Fresnay
1214	Claudette Colbert
1215	Walter Connolly
1216	Roscoe Karns
1217	Maria Falconetti
1218	Eugene Silvain
1219	André Berley
1220	Maurice Schutz
1221	Merna Kennedy
1222	Al Ernest Garcia
1223	Harry Crocker
1224	George O'Brien
1225	Janet Gaynor
1226	Margaret Livingston
1227	Bodil Rosing
1228	Marion Mack
1229	Glen Cavender
1230	Werner Krauss
1231	Conrad Veidt
1232	Friedrich Feher
1233	Lil Dagover
1234	Neena Gupta
1235	Gajraj Rao
1236	Julianne Nicholson
1237	Christopher Heyerdahl
1238	Richard Dormer
1239	Kumud Mishra
1240	Prakash Belawadi
1241	Danny Denzongpa
1242	Ryan Gosling
1243	Emma Stone
1244	Rosemarie DeWitt
1245	Dev Patel
1246	Nicole Kidman
1247	Rooney Mara
1248	Sunny Pawar
1249	Kristen Wiig
1250	Kate Mara
1251	Rich Moore
1252	Jared Bush
1253	Ginnifer Goodwin
1254	Jason Bateman
1255	Ramya Krishnan
1256	Sathyaraj
1257	Chloë Grace Moretz
1258	Mary Steenburgen
1259	James Marsden
1260	Owen Wilson
1261	Izabela Vidovic
1262	Julia Roberts
1263	Vijay Varma
1264	Nakul Roshan Sahdev
1265	Ranveer Singh
1266	Vijay Raaz
1267	Frantz Turner
1268	John Gallagher Jr.
1269	Kaitlyn Dever
1270	Iko Uwais
1271	Yayan Ruhian
1272	Arifin Putra
1273	Oka Antara
1274	Benedict Cumberbatch
1275	Matthew Goode
1276	Allen Leech
1277	Chris Pratt
1278	Vin Diesel
1279	Bradley Cooper
1280	Zoe Saldana
1281	Ana de Armas
1282	Dave Bautista
1283	Amy Adams
1284	Ezra Miller
1285	Paul Rudd
1286	Wagner Moura
1287	Irandhir Santos
1288	André Ramiro
1289	Milhem Cortaz
1290	Helena Bonham Carter
1291	Derek Jacobi
1292	Octavia Spencer
1293	Bryce Dallas Howard
1294	Ryan Reynolds
1295	Morena Baccarin
1296	T.J. Miller
1297	Ed Skrein
1298	Golshifteh Farahani
1299	Taraneh Alidoosti
1300	Merila Zare'i
1301	Kalki Koechlin
1302	Dibyendu Bhattacharya
1303	Donnie Yen
1304	Simon Yam
1305	Siu-Wong Fan
1306	Ka Tung Lam
1307	Sheetal Menon
1308	Katie A. Keane
1309	Mete Horozoglu
1310	Ilker Kizmaz
1311	Baris Bagci
1312	Loveleen Tandan
1313	Freida Pinto
1314	Mila Kunis
1315	Winona Ryder
1316	Caio Junqueira
1317	Jeremy Renner
1318	Marjane Satrapi
1319	Chiara Mastroianni
1320	Catherine Deneuve
1321	Gena Rowlands
1322	Will Smith
1323	Thandie Newton
1324	Jaden Smith
1325	Brian Howe
1326	Djimon Hounsou
1327	Kagiso Kuypers
1328	Edgar Ramírez
1329	Julia Stiles
1330	Seung-Yun Lee
1331	Hee Jae
1332	Hyuk-ho Kwon
1333	Jin-mo Joo
1334	Quentin Tarantino
1335	Robert Rodriguez
1336	Mickey Rourke
1337	Clive Owen
1338	Laura Obiols
1339	Emmanuelle Seigner
1340	Marie-Josée Croze
1341	Cem Yilmaz
1342	Özge Özberk
1343	Ozan Güven
1344	Safak Sezer
1345	Jan Pinkava
1346	Brad Garrett
1347	Lou Romano
1348	Patton Oswalt
1349	Daniel Craig
1350	Eva Green
1351	Judi Dench
1352	Jeffrey Wright
1353	Vladimir Garin
1354	Ivan Dobronravov
1355	Konstantin Lavronenko
1356	Nataliya Vdovina
1357	Ki-duk Kim
1358	Yeong-su Oh
1359	Jong-ho Kim
1360	Kim Young-Min
1361	Belén Rueda
1362	Lola Dueñas
1363	Mabel Rivera
1364	Renée Zellweger
1365	Craig Bierko
1366	Paul Giamatti
1367	Jaya Bachchan
1368	Alan Mak
1369	Andy Lau
1370	Anthony Chau-Sang Wong
1371	Albert Finney
1372	Jessica Lange
1373	Craig T. Nelson
1374	Holly Hunter
1375	Jason Lee
1376	Tae-Hyun Cha
1377	Jun Ji-Hyun
1378	In-mun Kim
1379	Song Wok-suk
1380	Paul Bettany
1381	Lauren Bacall
1382	Ömer Faruk Sorak
1383	Yilmaz Erdogan
1384	Altan Erkekli
1385	Jena Malone
1386	Mary McDonnell
1387	Holmes Osborne
1388	Tom Cruise
1389	Björk
1390	Peter Stormare
1391	Richard Farnsworth
1392	Sissy Spacek
1393	Jane Galloway Heitz
1394	Joseph A. Carpenter
1395	Junko Iwao
1396	Rica Matsumoto
1397	Shinpachi Tsuji
1398	Masaaki Ôkura
1399	Ulrich Thomsen
1400	Henning Moritzen
1401	Paprika Steen
1402	Fernanda Montenegro
1403	Vinícius de Oliveira
1404	Marília Pêra
1405	Soia Lira
1406	Eli Marienthal
1407	Harry Connick Jr.
1408	Jennifer Aniston
1409	Til Schweiger
1410	Jan Josef Liefers
1411	Thierry van Werveke
1412	Billy Bob Thornton
1413	Dwight Yoakam
1414	J.T. Walsh
1415	John Ritter
1416	Timothy Spall
1417	Brenda Blethyn
1418	Phyllis Logan
1419	Claire Rushbrook
1420	Atsuko Tanaka
1421	Iemasa Kayumi
1422	Akio Ôtsuka
1423	Kôichi Yamadera
1424	Danny Elfman
1425	Chris Sarandon
1426	Catherine O'Hara
1427	William Hickey
1428	Bill Murray
1429	Andie MacDowell
1430	Chris Elliott
1431	Stephen Tobolowsky
1432	Damian Chapa
1433	Jesse Borrego
1434	Enrique Castillo
1435	Chris O'Donnell
1436	James Rebhorn
1437	Gabrielle Anwar
1438	John Musker
1439	Scott Weinger
1440	Linda Larkin
1441	Kevin Costner
1442	Walter Matthau
1443	Kirk Wise
1444	Paige O'Hara
1445	Robby Benson
1446	Jesse Corti
1447	Graham Greene
1448	Rodney A. Grant
1449	Ossie Davis
1450	Ruby Dee
1451	Richard Edson
1452	Gerald R. Molen
1453	Mitsuo Iwata
1454	Nozomu Sasaki
1455	Mami Koyama
1456	Tesshô Genda
1457	Cary Elwes
1458	Mandy Patinkin
1459	Solveig Dommartin
1460	Otto Sander
1461	Curt Bois
1462	Gaspard Manesse
1463	Raphael Fejtö
1464	Francine Racette
1465	Stanislas Carré de Malberg
1466	Deborah Kerr
1467	Peter Wyngarde
1468	Megs Jenkins
1469	Michael Redgrave
1470	Paul Winfield
1471	Rohini Hattangadi
1472	Roshan Seth
1473	Ken'ichi Hagiwara
1474	Melvyn Douglas
1475	Jack Warden
1476	Woody Allen
1477	Tony Roberts
1478	Carol Kane
1479	Roy Scheider
1480	Richard Dreyfuss
1481	Lorraine Gary
1482	Penelope Allen
1483	Sully Boyar
1484	Gene Wilder
1485	Marty Feldman
1486	Peter Boyle
1487	Victor Jory
1488	Don Gordon
1489	Linda Blair
1490	Alec Cawthorne
1491	John Matthews
1492	Timothy Bottoms
1493	Ben Johnson
1494	Topol
1495	Norma Crane
1496	Leonard Frey
1497	Molly Picon
1498	Stefania Sandrelli
1499	Gastone Moschin
1500	Enzo Tarascio
1501	Katharine Ross
1502	William Daniels
1503	Elizabeth Taylor
1504	Richard Burton
1505	George Segal
1506	Sandy Dennis
1507	Julie Andrews
1508	Eleanor Parker
1509	Richard Haydn
1510	Omar Sharif
1511	Julie Christie
1512	Geraldine Chaplin
1513	Marianne Koch
1514	Wolfgang Lukschy
1515	Marcello Mastroianni
1516	Anouk Aimée
1517	Sandra Milo
1518	Anna Karina
1519	Sady Rebbot
1520	André S. Labarthe
1521	Guylaine Schlumberger
1522	Jackie Gleason
1523	Piper Laurie
1524	Anita Ekberg
1525	Yvonne Furneaux
1526	Dean Martin
1527	Ricky Nelson
1528	Angie Dickinson
1529	Lee Remick
1530	Ben Gazzara
1531	Arthur O'Connell
1532	Burl Ives
1533	Jack Carson
1534	Susan Harrison
1535	Martin Milner
1536	Coleen Gray
1537	Vince Edwards
1538	Jay C. Flippen
1539	Shelley Winters
1540	Lillian Gish
1541	James Gleason
1542	Simone Signoret
1543	Véra Clouzot
1544	Paul Meurisse
1545	Eddie Albert
1546	Hartley Power
1547	Gloria Grahame
1548	Frank Lovejoy
1549	Carl Benton Reid
1550	Dennis Price
1551	Valerie Hobson
1552	Joan Greenwood
1553	John Dall
1554	Farley Granger
1555	Dick Hogan
1556	Jane Greer
1557	Rhonda Fleming
1558	Celia Johnson
1559	Stanley Holloway
1560	Joyce Carey
1561	Gene Tierney
1562	Dana Andrews
1563	Clifton Webb
1564	Vincent Price
1565	Teresa Wright
1566	Priscilla Lane
1567	Raymond Massey
1568	Mary Astor
1569	Gladys George
1570	Jane Darwell
1571	John Carradine
1572	Charley Grapewin
1573	Mervyn LeRoy
1574	Norman Taurog
1575	Richard Thorpe
1576	Marcel Dalio
1577	Nora Gregor
1578	Paulette Dubost
1579	Mila Parély
1580	Lew Ayres
1581	Louis Wolheim
1582	John Wray
1583	Arnold Lucy
1584	Aleksandr Antonov
1585	Vladimir Barskiy
1586	Grigoriy Aleksandrov
1587	Ivan Bobrov
1588	Sanjana Sanghi
1589	Sahil Vaid
1590	Saswata Chatterjee
1591	Lily Franky
1592	Sakura Andô
1593	Kirin Kiki
1594	Mayu Matsuoka
1595	Adam Driver
1596	Julia Greer
1597	Azhy Robertson
1598	Armie Hammer
1599	Timothée Chalamet
1600	Michael Stuhlbarg
1601	Amira Casar
1602	Dave Johns
1603	Hayley Squires
1604	Sharon Percy
1605	Bryan Cranston
1606	Koyu Rankin
1607	Bob Balaban
1608	Julian Dennison
1609	Rima Te Wiata
1610	Rachel House
1611	Samantha Isler
1612	Annalise Basso
1613	Ferdia Walsh-Peelo
1614	Aidan Gillen
1615	Maria Doyle Kennedy
1616	Jack Reynor
1617	Tom Hiddleston
1618	Cate Blanchett
1619	Rene Russo
1620	Bill Paxton
1621	Riz Ahmed
1622	Roman Griffin Davis
1623	Thomasin McKenzie
1624	Taika Waititi
1625	Forest Whitaker
1626	Seamus Davey-Fitzpatrick
1627	Ariane Labed
1628	James McAvoy
1629	Muhammet Uzuner
1630	Taner Birsel
1631	Ahmet Mümtaz Taylan
1632	Jean Dujardin
1633	Bérénice Bejo
1634	James Cromwell
1635	Emily Blunt
1636	Emmanuelle Riva
1637	Isabelle Huppert
1638	Alexandre Tharaud
1639	Tahar Rahim
1640	Niels Arestrup
1641	Adel Bencherif
1642	Reda Kateb
1643	Dominique McElligott
1644	Rosie Shaw
1645	Kåre Hedebrant
1646	Lina Leandersson
1647	Per Ragnar
1648	Henrik Dahl
1649	Sharlto Copley
1650	David James
1651	Jason Cope
1652	Nathalie Boltt
1653	Marisa Tomei
1654	Evan Rachel Wood
1655	Mark Margolis
1656	Tarun Arora
1657	Dara Singh
1658	Ellar Coltrane
1659	Patricia Arquette
1660	Elijah Smith
1661	Anamaria Marinca
1662	Laura Vasiliu
1663	Vlad Ivanov
1664	Alexandru Potocean
1665	Chris Pine
1666	Zachary Quinto
1667	Simon Pegg
1668	Leonard Nimoy
1669	David Lee Smith
1670	Tony Todd
1671	John Billingsley
1672	Ellen Crawford
1673	Kazunari Ninomiya
1674	Tsuyoshi Ihara
1675	Ryô Kase
1676	Lee Pace
1677	Catinca Untaru
1678	Justine Waddell
1679	Kim Uylenbroek
1680	Suraj Sharma
1681	Adil Hussain
1682	George Clooney
1683	Michel Côté
1684	Marc-André Grondin
1685	Danielle Proulx
1686	Émile Vallée
1687	Gérard Jugnot
1688	François Berléand
1689	Jean-Baptiste Maunier
1690	Kad Merad
1691	Gwyneth Paltrow
1692	Terrence Howard
1693	Nick Frost
1694	Kate Ashfield
1695	Lucy Davis
1696	Birol Ünel
1697	Sibel Kekilli
1698	Güven Kiraç
1699	Zarah Jane McKenzie
1700	Sean Penn
1701	Emmy Rossum
1702	Richard Griffiths
1703	Jet Li
1704	Ziyi Zhang
1705	Rosario Flores
1706	Javier Cámara
1707	Leonor Watling
1708	Branko Djuric
1709	Rene Bitorajac
1710	Filip Sovagovic
1711	Georges Siatidis
1712	Franka Potente
1713	Chris Cooper
1714	Gastón Pauls
1715	Graciela Tenenbaum
1716	María Mercedes Villagra
1717	Patrick Fugit
1718	Kate Hudson
1719	Naomi Watts
1720	Laura Harring
1721	Justin Theroux
1722	Jeanne Bates
1723	Ash Brannon
1724	Burt Reynolds
1725	Luis Guzmán
1726	Yoko Honna
1727	Issey Takahashi
1728	Takashi Tachibana
1729	Shigeru Muroi
1730	Rena Owen
1731	Temuera Morrison
1732	Mamaengaroa Kerr-Bell
1733	Julian Arahanga
1734	Christian Slater
1735	Dennis Hopper
1736	Juliette Binoche
1737	Zbigniew Zamachowski
1738	Benoît Régent
1739	Emi Shinohara
1740	Takeshi Aono
1741	Osamu Saka
1742	Penelope Ann Miller
1743	John Leguizamo
1744	Dianne Wiest
1745	Anthony Michael Hall
1746	John C. Reilly
1747	Jack McBrayer
1748	Jane Lynch
1749	Sarah Silverman
1750	Martin Landau
1751	Bill Bernstein
1752	Claire Bloom
1753	Charles Martin Smith
1754	Barbara Hershey
1755	Jonathan Pryce
1756	Kim Greist
1757	Katherine Helmond
1758	Rob Reiner
1759	Michael McKean
1760	Christopher Guest
1761	Kimberly Stringer
1762	Peter Billingsley
1763	Melinda Dillon
1764	Darren McGavin
1765	Scott Schwartz
1766	John Belushi
1767	Dan Aykroyd
1768	Cab Calloway
1769	John Candy
1770	Mariel Hemingway
1771	Michael Murphy
1772	Ann Reinking
1773	Leland Palmer
1774	David Emge
1775	Ken Foree
1776	Scott H. Reiniger
1777	Gaylen Ross
1778	Alejandro Jodorowsky
1779	Horacio Salinas
1780	Zamira Saunders
1781	Juan Ferrara
1782	Magali Noël
1783	Bruno Zanin
1784	Pupella Maggio
1785	Armando Brancia
1786	Fernando Rey
1787	Delphine Seyrig
1788	Paul Frankeur
1789	Bulle Ogier
1790	Ruy Guerra
1791	Helena Rojo
1792	Del Negro
1793	Stephen Young
1794	Michael Strong
1795	Ernest Borgnine
1796	Robert Ryan
1797	Duane Jones
1798	Judith O'Dea
1799	Karl Hardman
1800	Marilyn Eastman
1801	John Castle
1802	Sidney Poitier
1803	Warren Oates
1804	Lee Grant
1805	James Coburn
1806	Frank Sinatra
1807	Laurence Harvey
1808	Angela Lansbury
1809	Jean Simmons
1810	Gabriele Ferzetti
1811	Monica Vitti
1812	Lea Massari
1813	Dominique Blanchar
1814	Eiji Okada
1815	Stella Dassas
1816	Pierre Barbaud
1817	Jeffrey Hunter
1818	Julie Harris
1819	Gary Cooper
1820	Lloyd Bridges
1821	Robert Walker
1822	Ruth Roman
1823	Leo G. Carroll
1824	Wallace Ford
1825	William H. Lynn
1826	Victoria Horne
1827	Louis Calhern
1828	John Ridgely
1829	Martha Vickers
1830	Jane Wyman
1831	Phillip Terry
1832	Howard Da Silva
1833	Ruth Hussey
1834	Rosalind Russell
1835	Ralph Bellamy
1836	William Keighley
1837	Errol Flynn
1838	Olivia de Havilland
1839	Basil Rathbone
1840	Edmund Goulding
1841	Groucho Marx
1842	Chico Marx
1843	Harpo Marx
1844	Ernest B. Schoedsack
1845	Fay Wray
1846	Robert Armstrong
1847	Bruce Cabot
1848	Leila Hyams
1849	Olga Baclanova
1850	Roscoe Ates
1851	Max Schreck
1852	Alexander Granach
1853	Gustav von Wangenheim
1854	Greta Schröder
1855	Charlie Hunnam
1856	Michelle Dockery
1857	Jeremy Strong
1858	Alia Bhatt
1859	Rajit Kapoor
1860	Shishir Sharma
1861	Olivia Cooke
1862	Paul Raci
1863	Lauren Ridloff
1864	Babak Karimi
1865	Mina Sadati
1866	Fionn Whitehead
1867	Barry Keoghan
1868	Mark Rylance
1869	Taraji P. Henson
1870	Janelle Monáe
1871	Ben Whishaw
1872	Hugh Grant
1873	Hugh Bonneville
1874	Sally Hawkins
1875	Diljit Dosanjh
1876	Art Parkinson
1877	Kiara Advani
1878	Disha Patani
1879	Casey Affleck
1880	Michelle Williams
1881	Kyle Chandler
1882	Lucas Hedges
1883	Roland Møller
1884	Louis Hofmann
1885	Joel Basman
1886	Mikkel Boe Følsgaard
1887	Felicity Jones
1888	Diego Luna
1889	Alan Tudyk
1890	Jennifer Jason Leigh
1891	Walton Goggins
1892	Saoirse Ronan
1893	Florence Pugh
1894	Eliza Scanlen
1895	Hugh Welchman
1896	Douglas Booth
1897	Jerome Flynn
1898	Robert Gulaczyk
1899	Bill Nighy
1900	Imelda Staunton
1901	Dominic West
1902	Paddy Considine
1903	Ali Mosaffa
1904	Pauline Burlet
1905	Toni Servillo
1906	Carlo Verdone
1907	Sabrina Ferilli
1908	Carlo Buccirosso
1909	Annu Kapoor
1910	Dolly Ahluwalia
1911	Chris Williams
1912	Ryan Potter
1913	Scott Adsit
1914	Jamie Chung
1915	Lydia Wilson
1916	Sridevi
1917	Mehdi Nebbou
1918	Priya Anand
1919	Hideaki Anno
1920	Hidetoshi Nishijima
1921	Miori Takimoto
1922	Masahiko Nishimura
1923	Annie Potts
1924	Tony Hale
1925	Jim Sturgess
1926	Sylvia Hoeks
1927	Donald Sutherland
1928	Jared Gilman
1929	Kara Hayward
1930	Craig Ferguson
1931	Steve Carell
1932	Takako Matsu
1933	Yoshino Kimura
1934	Masaki Okada
1935	Lee Byung-Hun
1936	Jeon Gook-Hwan
1937	Ho-jin Chun
1938	Barkhad Abdi
1939	Barkhad Abdirahman
1940	Sae-ron Kim
1941	Tae-hoon Kim
1942	Hee-won Kim
1943	O'Shea Jackson Jr.
1944	Corey Hawkins
1945	Jason Mitchell
1946	Neil Brown Jr.
1947	Martin Freeman
1948	Richard Armitage
1949	Ken Stott
1950	Christian Friedel
1951	Ernst Jacobi
1952	Leonie Benesch
1953	Michael Nyqvist
1954	Noomi Rapace
1955	Ewa Fröling
1956	Lena Endre
1957	Eddie Redmayne
1958	Alex Sharp
1959	Sacha Baron Cohen
1960	Magnus Millang
1961	Lars Ranthe
1962	Maggie Grace
1963	Famke Janssen
1964	Leland Orser
1965	Asa Butterfield
1966	David Thewlis
1967	Rupert Friend
1968	Zac Mattoon O'Brien
1969	Glen Hansard
1970	Markéta Irglová
1971	Hugh Walsh
1972	Gerard Hendrick
1973	Andy Serkis
1974	Baki Davrak
1975	Nurgül Yesilçay
1976	Tuncel Kurtiz
1977	Nursel Köse
1978	Carey Mulligan
1979	Denzel Washington
1980	Michelle Rodriguez
1981	Gerardo Taracena
1982	Raoul Max Trujillo
1983	Dalia Hernández
1984	Rudy Youngblood
1985	Valerie Faris
1986	Greg Kinnear
1987	Tilda Swinton
1988	Julia Ormond
1989	Kirron Kher
1990	Nicolas Bro
1991	Matthew Macfadyen
1992	Diane Ladd
1993	Iain Rea
1994	Tessa Mitchell
1995	Shôgo Furuya
1996	Yoshiaki Umegaki
1997	Aya Okamoto
1998	Nathan Fillion
1999	Gina Torres
2000	Reese Witherspoon
2001	Andreas Wilson
2002	Henrik Lundström
2003	Gustaf Skarsgård
2004	Linda Zilliacus
2005	Rodrigo De la Serna
2006	Mía Maestro
2007	Mercedes Morán
2008	Oksana Akinshina
2009	Artyom Bogucharskiy
2010	Pavel Ponomaryov
2011	Lyubov Agapova
2012	Frank Langella
2013	Michael Sheen
2014	Lee Yeong-ae
2015	Kim Tae-Woo
2016	Jim Caviezel
2017	Christopher Adamson
2018	JB Blanc
2019	Trevor Jack Brooks
2020	Lorelei Linklater
2021	Wiley Wiggins
2022	Will Patton
2023	Wood Harris
2024	Ryan Hurst
2025	Yun-Fat Chow
2026	Michelle Yeoh
2027	Chen Chang
2028	Cecilia Roth
2029	Candela Peña
2030	Antonia San Juan
2031	Helen Hunt
2032	Paul Sanchez
2033	Lari White
2034	Sean Patrick Flanery
2035	Norman Reedus
2036	David Della Rocco
2037	Diane Venora
2038	Chris Owen
2039	Vicky Jenson
2040	Mike Myers
2041	Eddie Murphy
2042	Cameron Diaz
2043	Billy Zane
2044	Kayoko Kishimoto
2045	Ren Osugi
2046	Susumu Terajima
2047	Jude Law
2048	Gore Vidal
2049	Michael Douglas
2050	Deborah Kara Unger
2051	Sarah Jessica Parker
2052	Juliette Lewis
2053	Kevin Jarre
2054	Sam Elliott
2055	Tom Guiry
2056	Mike Vitar
2057	Art LaFleur
2058	Patrick Renna
2059	Emma Thompson
2060	John Haycraft
2061	Christopher Reeve
2062	Lesley Sharp
2063	Greg Cruttwell
2064	Sela Ward
2065	Lillo Brancato
2066	Francis Capra
2067	Boyd Kirkland
2068	Frank Paur
2069	Dan Riba
2070	Eric Radomski
2071	Teresa Mo
2072	Philip Chan
2073	Lisanne Falk
2074	Alan Randolph Scott
2075	Wladyslaw Kowalski
2076	Halina Gryglaszewska
2077	Kalina Jedrusik
2078	Cuba Gooding Jr.
2079	Hudhail Al-Amir
2080	Lloyd Avery II
2081	Frances Sternhagen
2082	Julie Kavner
2083	Ruth Nelson
2084	Danny Lee
2085	Sally Yeh
2086	Kong Chu
2087	Thomas F. Wilson
2088	Brad Dourif
2089	Kevin Peter Hall
2090	Elpidia Carrillo
2091	Bruce Campbell
2092	Sarah Berry
2093	Dan Hicks
2094	Kassie Wesley DePaiva
2095	Alan Ruck
2096	Mia Sara
2097	Jeffrey Jones
2098	Tom Waits
2099	John Lurie
2100	Sean Astin
2101	Jeff Cohen
2102	Danny Glover
2103	Whoopi Goldberg
2104	Oprah Winfrey
2105	Margaret Avery
2106	Emilio Estevez
2107	Judd Nelson
2108	Molly Ringwald
2109	Ally Sheedy
2110	Sam Waterston
2111	Haing S. Ngor
2112	John Malkovich
2113	Julian Sands
2114	Harold Ramis
2115	Sam Shepard
2116	Scott Glenn
2117	Dennis Quaid
2118	Jerry Lewis
2119	Diahnne Abbott
2120	Sandra Bernhard
2121	Henry Thomas
2122	Drew Barrymore
2123	Peter Coyote
2124	Dee Wallace
2125	Brooke Adams
2126	Linda Manz
2127	Sondra Locke
2128	Chief Dan George
2129	Bill McKinney
2130	Saeed Jaffrey
2131	Allen Garfield
2132	Barry Bostwick
2133	Jennifer Drake
2134	Eric Baugin
2135	Jean Topart
2136	Edward Fox
2137	Terence Alexander
2138	Michel Auclair
2139	Alan Badel
2140	Ramon Bieri
2141	Liza Minnelli
2142	Michael York
2143	Helmut Griem
2144	Joel Grey
2145	Jack Albertson
2146	Peter Ostrum
2147	Roy Kinnear
2148	Sylvia Miles
2149	John McGiver
2150	Alan Arkin
2151	Richard Crenna
2152	Efrem Zimbalist Jr.
2153	Katharine Houghton
2154	Warren Beatty
2155	Michael J. Pollard
2156	Rex Harrison
2157	Wilfrid Hyde-White
2158	Dick Van Dyke
2159	David Tomlinson
2160	Glynis Johns
2161	Andrew Marton
2162	Gerd Oswald
2163	Bernhard Wicki
2164	Darryl F. Zanuck
2165	Arthur Rosson
2166	Montgomery Clift
2167	Joanne Dru
2168	Walter Brennan
2169	Dolores Moran
2170	Macdonald Carey
2171	Claire Trevor
2172	Andy Devine
2173	Margaret Lockwood
2174	Paul Lukas
2175	May Whitty
2176	Charles Ruggles
2177	Walter Catlett
2178	Boris Karloff
2179	Colin Clive
2180	Zeppo Marx
2181	Richard Rosson
2182	Paul Muni
2183	Ann Dvorak
2184	Karen Morley
2185	Mae Clarke
2186	John Boles
2187	Yalitza Aparicio
2188	Marina de Tavira
2189	Diego Cortina Autrey
2190	Carlos Peralta
2191	Josh O'Connor
2192	Alec Secareanu
2193	Gemma Jones
2194	Ian Hart
2195	Kelsey Asbille
2196	Julia Jones
2197	Teo Briones
2198	Henry Cavill
2199	Ving Rhames
2200	Rolf Lassgård
2201	Bahar Pars
2202	Filip Berg
2203	Ida Engvoll
2204	Jemaine Clement
2205	Cori Gonzalez-Macuer
2206	Hiromasa Yonebayashi
2207	Sara Takatsuki
2208	Kasumi Arimura
2209	Nanako Matsushima
2210	Tom Prior
2211	Sophie Perry
2212	Taron Egerton
2213	Shailene Woodley
2214	Ansel Elgort
2215	Nat Wolff
2216	Thomas Mann
2217	RJ Cyler
2218	Nick Offerman
2219	Zach Galifianakis
2220	Andrea Riseborough
2221	Léa Seydoux
2222	Adèle Exarchopoulos
2223	Salim Kechiouche
2224	Aurélien Recoing
2225	Amit Sadh
2226	Amrita Puri
2227	Veerle Baetens
2228	Johan Heldenbergh
2229	Nell Cattrysse
2230	Geert Van Rampelberg
2231	Nargis Fakhri
2232	Shammi Kapoor
2233	Bruce Dern
2234	Will Forte
2235	June Squibb
2236	Bob Odenkirk
2237	Christina Hendricks
2238	Lucy Liu
2239	Kurt Fuller
2240	Phil Lord
2241	Will Ferrell
2242	Elizabeth Banks
2243	Sandra Bullock
2244	Orto Ignatiussen
2245	Abraham Attah
2246	Emmanuel Affadzi
2247	Ricky Adelayitor
2248	Andrew Adote
2249	Jesse Eisenberg
2250	Justin Timberlake
2251	Jennifer Lawrence
2252	Justin Bartha
2253	Ed Helms
2254	Naomie Harris
2255	Jacki Weaver
2256	Zooey Deschanel
2257	Geoffrey Arend
2258	Tomoko Yamaguchi
2259	Angelina Jolie
2260	Colm Feore
2261	Amy Ryan
2262	Gattlin Griffith
2263	Madeline Carroll
2264	Callan McAuliffe
2265	Rebecca De Mornay
2266	Anthony Edwards
2267	Riisa Naka
2268	Takuya Ishida
2269	Mitsutaka Itakura
2270	Ayami Kakiuchi
2271	Ken'ichi Matsuyama
2272	Asaka Seto
2273	Yû Kashii
2274	Thomas Turgoose
2275	Stephen Graham
2276	Jo Hartley
2277	Andrew Shim
2278	Alicia Vikander
2279	Sonoya Mizuno
2280	Sidse Babett Knudsen
2281	Neeral Mulchandani
2282	Gillian Anderson
2283	Josh Hartnett
2284	Benno Fürmann
2285	Guillaume Canet
2286	Natalie Dessay
2287	Sam Riley
2288	Samantha Morton
2289	Craig Parkinson
2290	Byron Howard
2291	Mandy Moore
2292	Zachary Levi
2293	Donna Murphy
2294	Carice van Houten
2295	Thom Hoffman
2296	Halina Reijn
2297	Randy Quaid
2298	Karina Arroyave
2299	Stephen Chow
2300	Wah Yuen
2301	Qiu Yuen
2302	Siu-Lung Leung
2303	Brian Cox
2304	Aitana Sánchez-Gijón
2305	John Sharian
2306	Regina King
2307	Clifton Powell
2308	Giovanni Ribisi
2309	Anna Faris
2310	Eric Sykes
2311	Dakota Fanning
2312	Radha Mitchell
2313	Teri Hatcher
2314	John Hodgman
2315	Jennifer Saunders
2316	Billy Connolly
2317	William Atherton
2318	Eileen Walsh
2319	Dorothy Duffy
2320	Nora-Jane Noone
2321	Anne-Marie Duff
2322	Katrin Saß
2323	Chulpan Khamatova
2324	Florian Lukas
2325	Sarah Bolger
2326	Nicolas Cage
2327	Jamie Bell
2328	Julie Walters
2329	Jean Heywood
2330	Jamie Draven
2331	John Cameron Mitchell
2332	Miriam Shor
2333	Stephen Trask
2334	Theodore Liscinski
2335	Andrew Philpot
2336	John Rafter Lee
2337	Pamela Adlon
2338	Wendee Lee
2339	John Turturro
2340	Tim Blake Nelson
2341	Matthew Edison
2342	Trey Parker
2343	Matt Stone
2344	Mary Kay Bergman
2345	Isaac Hayes
2346	Ron Livingston
2347	David Herman
2348	Ajay Naidu
2349	Jane Adams
2350	Jon Lovitz
2351	Dylan Baker
2352	Seymour Cassel
2353	Eduardo Noriega
2354	Penélope Cruz
2355	Chete Lera
2356	Fele Martínez
2357	John Cusack
2358	Milla Jovovich
2359	Ian Holm
2360	Bruno Kirby
2361	Armin Mueller-Stahl
2362	Justin Braine
2363	Sonia Todd
2364	John Mahoney
2365	Kenneth Branagh
2366	Liesel Matthews
2367	Eleanor Bron
2368	Liam Cunningham
2369	Rusty Schwimmer
2370	Leon Lai
2371	Michelle Reis
2372	Charlie Yeung
2373	Massimo Troisi
2374	Maria Grazia Cucinotta
2375	Brian O'Halloran
2376	Jeff Anderson
2377	Marilyn Ghigliotti
2378	Lisa Spoonauer
2379	Bruce Davison
2380	Roberta Maxwell
2381	Buzz Kilman
2382	Kermit the Frog
2383	Dave Goelz
2384	Miss Piggy
2385	Angela Bassett
2386	Delroy Lindo
2387	Spike Lee
2388	Russell Means
2389	Eric Schweig
2390	Shûichirô Moriyama
2391	Tokiko Katô
2392	Bunshi Katsura Vi
2393	Tsunehiko Kamijô
2394	Alec Baldwin
2395	Demi Moore
2396	Judy Davis
2397	Bob Hoskins
2398	Joanna Cassidy
2399	Charles Fleischer
2400	Bernard-Pierre Donnadieu
2401	Gene Bervoets
2402	Johanna ter Steege
2403	Gwen Eckhaus
2404	Richard E. Grant
2405	Paul McGann
2406	Ralph Brown
2407	John Lone
2408	Joan Chen
2409	Ruocheng Ying
2410	Miranda Richardson
2411	Nigel Havers
2412	Helmut Qualtinger
2413	Elya Baskin
2414	Isabella Rossellini
2415	Kyle MacLachlan
2416	Jeff Daniels
2417	Irving Metzman
2418	Griffin Dunne
2419	Rosanna Arquette
2420	Verna Bloom
2421	Tommy Chong
2422	Patrick Horgan
2423	John Buckwalter
2424	Charlotte Rampling
2425	William Shatner
2426	DeForest Kelley
2427	James Doohan
2428	Brian Dennehy
2429	Mary Tyler Moore
2430	Judd Hirsch
2431	Timothy Hutton
2432	Roman Polanski
2433	Isabelle Adjani
2434	Jo Van Fleet
2435	Georges Adet
2436	Frank Adu
2437	Hector Elizondo
2438	Cleavon Little
2439	Slim Pickens
2440	Harvey Korman
2441	John Randolph
2442	Jack Kehoe
2443	Biff McGuire
2444	Bruce Lee
2445	John Saxon
2446	Jim Kelly
2447	Ahna Capri
2448	Ronny Cox
2449	Tony Lo Bianco
2450	Andrew Robinson
2451	Harry Guardino
2452	Reni Santoni
2453	Mary Ure
2454	Patrick Wymark
2455	Herb Edelman
2456	Jean Sorel
2457	Michel Piccoli
2458	Geneviève Page
2459	Paul Scofield
2460	Wendy Hiller
2461	Leo McKern
2462	Ian Hendry
2463	John Fraser
2464	Stanley Baker
2465	Ulla Jacobsson
2466	James Booth
2467	Maryana Spivak
2468	Aleksey Rozin
2469	Matvey Novikov
2470	Marina Vasileva
2471	Brooklynn Prince
2472	Bria Vinaite
2473	Christopher Rivera
2474	Michael B. Jordan
2475	Charlie Pye Jr.
2476	Mckenna Grace
2477	Lindsay Duncan
2478	Michael Schwartz
2479	Zack Gottsagen
2480	Ann Owens
2481	Dakota Johnson
2482	Laia Costa
2483	Frederick Lau
2484	Franz Rogowski
2485	Burak Yigit
2486	Günes Sensoy
2487	Doga Zeynep Doguslu
2488	Tugba Sunguroglu
2489	Elit Iscan
2490	Jon Hamm
2491	Eiza González
2492	Alan Alda
2493	Sarah Vowell
2494	Huck Milner
2495	Don Hall
2496	Auli'i Cravalho
2497	Tessa Thompson
2498	Phylicia Rashad
2499	Cillian Murphy
2500	Christopher Eccleston
2501	Alex Palmer
2502	Gil Birmingham
2503	Steve Coogan
2504	Sophie Kennedy Clark
2505	Mare Winningham
2506	Keri Russell
2507	Kodi Smit-McPhee
2508	Hugo Silva
2509	Aura Garrido
2510	Ananda George
2511	Ray Sahetapy
2512	Donny Alamsyah
2513	Michael Peña
2514	Anna Kendrick
2515	America Ferrera
2516	Mirai Shida
2517	Lady Gaga
2518	Greg Grunberg
2519	Hailee Steinfeld
2520	Mikael Persbrandt
2521	Trine Dyrholm
2522	Markus Rygaard
2523	Wil Johnson
2524	Chris Renaud
2525	Jason Segel
2526	Russell Brand
2527	Seth Rogen
2528	Aaron Taylor-Johnson
2529	Garrett M. Brown
2530	Luis Tosar
2531	Alberto Ammann
2532	Antonio Resines
2533	Manuel Morón
2534	David Hemmings
2535	Vanessa Redgrave
2536	Sarah Miles
2537	Abigail Breslin
2538	Jürgen Vogel
2539	Max Riemelt
2540	Jennifer Ulrich
2541	Mark Strong
2542	Quinton Aaron
2543	Tim McGraw
2544	Jae Head
2545	Richard Jenkins
2546	Haaz Sleiman
2547	Danai Gurira
2548	Hiam Abbass
2549	Rosario Dawson
2550	Michael Ealy
2551	Josef Altin
2552	Charlie Cox
2553	Claire Danes
2554	Sienna Miller
2555	Nora Twomey
2556	Evan McGuire
2557	Mick Lally
2558	Michelle Monaghan
2559	Sylvie Testud
2560	Pascal Greggory
2561	Li Sun
2562	Yong Dong
2563	Yun Qu
2564	Jessica Biel
2565	Rufus Sewell
2566	Gary Stretch
2567	Toby Kebbell
2568	Stuart Wolfenden
2569	Lena Headey
2570	David Wenham
2571	Jonathan Rhys Meyers
2572	Jackie Earle Haley
2573	Patrick Wilson
2574	Carla Gugino
2575	Malin Akerman
2576	Bridget Moynahan
2577	Leigh Whannell
2578	Ken Leung
2579	Brady Corbet
2580	Elisabeth Shue
2581	Chase Ellison
2582	Thibault Verhaeghe
2583	Joséphine Lebas-Joly
2584	Gaspard Ulliel
2585	Dominique Pinon
2586	Peter Dinklage
2587	Patricia Clarkson
2588	Bobby Cannavale
2589	Paul Benjamin
2590	Danny Huston
2591	Shin Ha-kyun
2592	Bae Doona
2593	Ji-Eun Lim
2594	Barry Pepper
2595	J. Mackye Gruber
2596	Ashton Kutcher
2597	Amy Smart
2598	Melora Walters
2599	Anjelica Huston
2600	Ben Stiller
2601	Daniel Giménez Cacho
2602	Ana López Mercado
2603	Maggie Smith
2604	Alakina Mann
2605	Rachel Griffiths
2606	Joseph Fiennes
2607	Rachel Weisz
2608	Vicellous Shannon
2609	Josh Lucas
2610	Bill Sage
2611	Herbert Knaup
2612	Nina Petri
2613	Kirk Acevedo
2614	Barry Cook
2615	Ming-Na Wen
2616	BD Wong
2617	Tobey Maguire
2618	Michael Lee Gogin
2619	Susanne Lothar
2620	Arno Frisch
2621	Frank Giering
2622	Kiefer Sutherland
2623	William Hurt
2624	John Roselius
2625	Louis Eppolito
2626	James Fleet
2627	Gary Farmer
2628	Lance Henriksen
2629	Annie Corley
2630	Victor Slezak
2631	Janusz Gajos
2632	Jerzy Stuhr
2633	Rachel Ticotin
2634	Jason London
2635	Rory Cochrane
2636	Ralph Macchio
2637	Mitchell Whitfield
2638	Miki Imai
2639	Toshirô Yanagiba
2640	Mayumi Izuka
2641	Jean-Pierre Jeunet
2642	Marie-Laure Dougnac
2643	Pascal Benezech
2644	Macaulay Culkin
2645	Daniel Stern
2646	John Heard
2647	Andy Garcia
2648	Meg Ryan
2649	Jodi Benson
2650	Samuel E. Wright
2651	Rene Auberjonois
2652	Steve Martin
2653	Laila Robins
2654	Gary Busey
2655	Mitchell Ryan
2656	John Getz
2657	Dan Hedaya
2658	Jane Fonda
2659	Doug McKeon
2660	Bruce Spence
2661	Michael Preston
2662	Max Phipps
2663	Michael Beck
2664	James Remar
2665	Dorsey Wright
2666	Brian Tyler
2667	Jim Henson
2668	Frank Oz
2669	Jerry Nelson
2670	Richard Hunt
2671	Roberts Blossom
2672	Jack Thibeau
2673	John Hubley
2674	Richard Briers
2675	Ralph Richardson
2676	Brad Davis
2677	Irene Miracle
2678	Bo Hopkins
2679	Paolo Bonacelli
2680	François Truffaut
2681	Teri Garr
2682	Elliott Gould
2683	Nina van Pallandt
2684	Mark Rydell
2685	Romolo Valli
2686	Maria Monti
2687	Telly Savalas
2688	Carroll O'Connor
2689	Phil Harris
2690	Sebastian Cabot
2691	Louis Prima
2692	Bruce Reitherman
2693	John Lennon
2694	Paul McCartney
2695	George Harrison
2696	Ringo Starr
2697	George Peppard
2698	Buddy Ebsen
2699	Rock Hudson
2700	Carroll Baker
2701	Tallulah Bankhead
2702	John Hodiak
2703	Walter Slezak
2704	William Bendix
2705	Robert Donat
2706	Madeleine Carroll
2707	Lucie Mannheim
2708	Godfrey Tearle
\.


--
-- Data for Name: genre; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.genre (genre_id, genre_name) FROM stdin;
0	Action
1	Adventure
2	Thriller
3	Drama
4	Horror
5	Mystery
6	Music
7	Drama
8	Crime
9	Sci-Fi
10	Adventure
11	War
12	Fantasy
13	Romance
14	Biography
15	Comedy
16	Comedy
17	Crime
18	Animation
19	Mystery
20	Action
21	Family
22	Horror
23	Western
24	Film-Noir
25	History
26	Western
27	Musical
28	Biography
29	Sport
30	Film-Noir
31	Fantasy
32	Family
33	Thriller
\.


--
-- Data for Name: movie_actor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.movie_actor (movieid, actorid) FROM stdin;
862	0
862	1
862	2
862	3
863	4
863	5
863	6
863	7
176	8
176	9
176	10
176	11
14	12
14	13
14	14
14	15
29	16
29	17
29	18
29	19
45	20
45	21
45	22
45	23
61	24
61	25
61	26
61	27
78	28
78	29
78	30
78	31
94	32
94	33
94	34
94	35
110	36
110	37
110	38
110	39
127	40
127	41
127	42
127	43
144	44
144	45
144	46
144	47
160	48
160	49
160	50
160	51
193	52
193	53
193	54
193	55
210	56
210	57
210	58
210	59
226	60
226	61
226	62
226	63
243	64
243	65
243	66
243	67
259	68
259	69
259	70
259	71
275	72
275	73
275	74
275	75
292	76
292	77
292	78
292	79
309	80
309	81
309	82
309	83
326	84
326	85
326	86
326	87
343	88
343	89
343	90
343	91
344	92
344	93
344	94
344	95
360	96
360	97
360	98
360	99
377	100
377	101
377	15
377	102
394	103
394	104
394	32
394	105
410	106
410	107
410	108
410	109
427	110
427	111
427	112
427	113
444	114
444	115
444	116
444	117
446	118
446	119
446	120
446	121
461	122
461	123
461	124
461	125
478	126
478	127
478	128
478	95
495	129
495	130
495	131
495	132
511	133
511	134
511	135
511	136
526	137
526	138
526	139
526	140
542	141
542	142
542	143
542	144
559	145
559	146
559	147
559	148
575	149
575	150
575	151
575	152
591	153
591	154
591	86
591	155
609	156
609	157
609	158
609	159
625	98
625	160
625	33
625	161
641	162
641	163
641	164
641	165
657	166
657	167
657	168
657	169
673	170
673	171
673	172
673	173
690	174
690	175
690	176
690	177
709	178
709	179
709	180
709	181
725	182
725	183
725	184
725	185
742	186
742	187
742	188
742	189
759	190
759	191
759	192
759	193
775	48
775	194
775	195
775	196
792	197
792	198
792	199
792	200
793	201
793	202
793	203
793	204
809	205
809	206
809	207
809	208
826	209
826	6
826	210
826	211
845	212
845	213
845	214
845	215
880	92
880	32
880	216
880	217
896	218
896	219
896	220
896	221
912	222
912	223
912	224
912	225
928	226
928	227
928	228
928	229
945	230
945	231
945	232
945	233
961	234
961	235
961	32
961	236
978	237
978	238
978	239
978	240
843	241
843	242
843	243
843	244
844	245
844	246
844	247
844	248
864	249
864	250
864	251
864	252
865	253
865	254
865	255
865	256
866	257
866	258
866	259
866	260
867	261
867	262
867	263
867	264
868	265
868	266
868	267
868	268
869	269
869	270
869	271
869	272
870	273
870	274
870	275
870	276
871	277
871	278
871	118
871	279
872	280
872	146
872	281
872	282
873	283
873	284
873	285
873	286
874	277
874	287
874	288
874	289
875	290
875	291
875	292
875	293
876	294
876	295
876	296
876	297
877	298
877	299
877	300
877	301
878	27
878	302
878	303
878	304
879	305
879	306
879	307
879	308
177	114
177	309
177	310
177	311
178	312
178	313
178	314
178	315
179	316
179	317
179	318
179	319
180	258
180	320
180	321
180	259
181	249
181	322
181	323
181	324
182	28
182	325
182	30
182	326
183	327
183	328
183	329
183	330
184	331
184	332
184	333
184	334
185	335
185	336
185	337
185	338
186	339
186	338
186	340
186	341
187	342
187	343
187	344
187	345
188	346
188	347
188	348
188	349
189	350
189	351
189	352
189	353
190	28
190	354
190	355
190	356
191	357
191	358
191	359
191	360
192	277
192	361
192	362
192	363
426	364
426	365
426	141
426	366
608	367
608	368
608	369
608	370
1	303
1	371
1	372
1	373
2	374
2	375
2	376
2	377
3	194
3	378
3	379
3	380
4	375
4	234
4	381
4	377
5	382
5	383
5	384
5	385
6	12
6	14
6	13
6	15
7	386
7	387
7	388
7	103
8	389
8	56
8	390
8	391
9	92
9	392
9	393
9	394
10	32
10	395
10	396
10	397
11	12
11	13
11	15
11	398
12	197
12	399
12	400
12	401
13	60
13	260
13	402
13	403
15	404
15	405
15	406
15	407
16	234
16	408
16	409
16	410
17	36
17	37
17	38
17	39
18	411
18	412
18	413
18	414
19	415
19	416
19	417
19	418
20	419
20	420
20	421
20	422
21	423
21	424
21	425
21	426
22	96
22	302
22	427
22	187
23	428
23	429
23	430
23	431
24	432
24	7
24	433
24	434
25	197
25	435
25	436
25	437
26	197
26	438
26	439
26	440
27	441
27	442
27	443
27	444
28	371
28	32
28	445
28	446
77	447
77	314
77	448
77	449
30	36
30	37
30	38
30	273
31	30
31	450
31	451
31	452
32	28
32	356
32	453
32	454
33	455
33	456
33	457
33	458
34	459
34	234
34	460
34	461
35	462
35	463
35	464
35	465
36	466
36	467
36	468
36	469
37	194
37	470
37	471
37	380
38	92
38	435
38	411
38	472
39	59
39	473
39	474
39	475
40	48
40	459
40	476
40	477
41	395
41	22
41	478
41	479
42	445
42	480
42	481
42	482
43	483
43	484
43	485
43	486
44	487
44	488
44	489
44	490
46	491
46	492
46	493
46	494
47	495
47	496
47	497
47	498
48	499
48	500
48	501
48	502
49	382
49	259
49	503
49	504
50	505
50	506
50	507
50	508
51	277
51	8
51	509
51	298
52	510
52	511
52	512
52	513
53	510
53	514
53	515
53	516
54	517
54	518
54	519
54	520
55	521
55	522
55	523
55	524
56	525
56	424
56	526
56	527
57	528
57	529
57	530
57	531
58	532
58	533
58	534
58	535
59	536
59	537
59	538
59	539
60	24
60	25
60	540
60	27
62	541
62	542
62	543
62	544
63	545
63	546
63	92
63	547
64	194
64	93
64	302
64	484
65	532
65	424
65	548
65	549
66	550
66	551
66	532
66	552
67	553
67	554
67	555
67	556
68	557
68	558
68	559
68	560
69	561
69	562
69	563
69	564
70	565
70	407
70	566
70	567
71	568
71	569
71	570
71	571
72	234
72	572
72	573
72	574
73	37
73	575
73	576
73	577
74	411
74	578
74	579
74	580
75	581
75	374
75	381
75	582
76	583
76	584
76	585
76	586
79	274
79	587
79	588
79	589
80	590
80	330
80	591
80	592
81	593
81	594
81	595
81	292
82	455
82	347
82	596
82	597
83	118
83	598
83	599
83	600
84	510
84	511
84	601
84	602
85	603
85	604
85	605
85	606
86	607
86	608
86	609
86	610
87	611
87	612
87	613
87	614
88	615
88	616
88	617
88	618
89	619
89	620
89	621
89	622
90	623
90	624
90	625
90	626
91	627
91	628
91	629
91	630
92	631
92	632
92	633
92	634
93	522
93	635
93	636
93	637
707	638
707	639
707	640
707	641
95	642
95	643
95	644
95	645
96	646
96	647
96	648
96	649
97	650
97	32
97	651
97	652
98	653
98	98
98	50
98	654
99	445
99	655
99	656
99	657
100	658
100	435
100	659
100	167
101	660
101	661
101	662
101	663
102	197
102	664
102	665
102	666
103	667
103	668
103	669
103	670
104	671
104	672
104	673
104	674
105	675
105	676
105	677
105	678
106	679
106	680
106	681
106	682
107	583
107	683
107	684
107	465
108	57
108	685
108	686
108	687
109	375
109	688
109	689
109	690
111	691
111	692
111	693
111	694
112	234
112	16
112	695
112	65
113	696
113	697
113	698
113	699
114	700
114	701
114	702
114	703
115	704
115	705
115	706
115	707
116	60
116	402
116	708
116	709
117	710
117	273
117	114
117	711
118	333
118	712
118	713
118	714
119	715
119	716
119	717
119	718
120	455
120	719
120	720
120	721
121	722
121	723
121	724
122	356
122	725
122	726
122	727
123	728
123	729
123	730
123	731
124	713
124	732
124	733
124	734
125	735
125	736
125	737
125	738
126	739
126	740
126	741
126	742
128	510
128	743
128	744
128	745
129	746
129	747
129	748
129	749
130	750
130	425
130	751
130	752
131	753
131	754
131	755
131	756
132	14
132	757
132	758
132	759
133	760
133	761
133	762
133	763
134	153
134	764
134	765
134	609
135	766
135	767
135	768
135	769
136	770
136	771
136	463
136	772
137	773
137	774
137	612
137	775
138	776
138	777
138	778
138	779
139	780
139	781
139	782
139	783
140	784
140	785
140	786
140	787
141	788
141	789
141	86
141	790
142	791
142	792
142	793
142	794
143	153
143	795
143	796
143	797
145	93
145	798
145	799
145	800
146	92
146	801
146	27
146	390
147	802
147	803
147	804
147	805
148	92
148	806
148	216
148	96
149	68
149	807
149	808
149	809
150	137
150	810
150	131
150	811
151	812
151	813
151	814
151	815
152	197
152	664
152	816
152	817
153	818
153	485
153	819
153	820
154	532
154	821
154	822
154	549
155	314
155	823
155	824
155	825
156	194
156	380
156	394
156	389
157	68
157	826
157	827
157	828
158	829
158	830
158	831
158	832
159	833
159	834
159	835
159	836
161	837
161	838
161	425
161	612
162	839
162	840
162	841
162	650
163	445
163	48
163	565
163	842
164	843
164	844
164	845
164	846
165	375
165	234
165	847
165	848
166	234
166	849
166	409
166	572
167	532
167	84
167	850
167	851
168	60
168	852
168	371
168	853
169	37
169	0
169	854
169	855
170	856
170	857
170	858
170	859
171	860
171	861
171	862
171	863
172	103
172	864
172	865
172	866
173	30
173	867
173	868
173	869
174	234
174	870
174	409
174	871
175	872
175	873
175	874
175	875
194	510
194	876
194	877
194	512
195	878
195	879
195	880
195	881
196	882
196	883
196	884
196	885
197	886
197	314
197	887
197	888
198	433
198	889
198	531
198	890
199	891
199	892
199	893
199	894
200	895
200	157
200	896
200	897
201	898
201	899
201	900
201	901
202	902
202	612
202	747
202	903
203	470
203	904
203	905
203	906
204	907
204	908
204	909
204	910
205	911
205	912
205	913
205	914
206	915
206	545
206	916
206	917
207	918
207	919
207	920
207	921
208	532
208	922
208	923
208	924
209	425
209	837
209	925
209	926
211	659
211	927
211	928
211	929
212	930
212	931
212	932
212	933
213	934
213	935
213	936
213	937
214	938
214	939
214	940
214	941
215	942
215	943
215	944
215	945
216	946
216	947
216	948
216	32
217	949
217	26
217	950
217	830
218	435
218	194
218	951
218	952
219	27
219	953
219	188
219	954
220	955
220	130
220	956
220	957
221	958
221	959
221	960
221	86
222	961
222	784
222	962
222	963
223	470
223	964
223	965
223	966
224	93
224	967
224	968
224	969
225	970
225	971
225	972
225	973
227	226
227	227
227	228
227	229
228	974
228	975
228	976
228	977
229	978
229	979
229	980
229	981
230	982
230	983
230	984
230	985
231	986
231	987
231	988
231	989
232	217
232	990
232	185
232	991
233	992
233	993
233	994
233	995
234	923
234	996
234	958
234	924
235	997
235	60
235	371
235	987
236	998
236	999
236	459
236	1000
237	1001
237	368
237	1002
237	1003
238	1004
238	1005
238	1006
238	1007
239	923
239	996
239	1008
239	1009
240	419
240	1010
240	1011
240	1012
241	532
241	1013
241	1014
241	1015
242	387
242	1016
242	1017
242	673
244	92
244	197
244	1018
244	581
245	1019
245	543
245	1020
245	1021
246	1022
246	64
246	1023
246	1024
247	1025
247	1026
247	190
247	1027
248	532
248	1028
248	1008
248	1029
249	103
249	1030
249	982
249	1031
250	672
250	1032
250	1033
250	1034
251	642
251	49
251	1035
251	1036
252	1037
252	1038
252	1039
252	1040
253	1041
253	186
253	1024
253	1042
254	1043
254	1044
254	1045
254	1046
255	1047
255	1048
255	1049
255	1050
256	1041
256	1051
256	760
256	1052
257	1053
257	1054
257	1055
257	1056
258	1057
258	1058
258	1059
258	1060
260	1004
260	1005
260	1061
260	1062
261	1063
261	1064
261	1065
261	1066
262	1067
262	1068
262	1043
262	1069
263	1070
263	1071
263	1072
263	321
264	137
264	1073
264	1074
264	1075
265	1076
265	1077
265	1078
265	1079
266	1078
266	1080
266	1081
266	1082
267	658
267	1083
267	1004
267	1084
268	1085
268	1086
268	1087
268	1088
269	1089
269	1090
269	1091
269	1092
270	1093
270	1094
270	1095
270	1096
271	1097
271	1098
271	1099
271	1100
272	1101
272	1102
272	1092
272	1103
273	1104
273	1105
273	1106
273	1107
274	1108
274	503
274	1109
274	1110
276	37
276	1111
276	1112
276	1113
277	17
277	585
277	1114
277	1115
278	317
278	318
278	1116
278	1117
279	234
279	1018
279	1118
279	1119
280	1120
280	1121
280	1122
280	1123
281	1124
281	118
281	1125
281	381
282	1126
282	1127
282	701
282	1128
283	1129
283	1130
283	1131
283	1132
284	411
284	1124
284	1133
284	1134
285	1126
285	1135
285	1136
285	1137
286	1138
286	9
286	1139
286	337
287	1140
287	1141
287	1142
287	1143
288	1144
288	1145
288	1146
288	1147
289	696
289	1148
289	1149
289	1150
290	336
290	9
290	1151
290	338
291	874
291	1152
291	875
291	1153
293	1154
293	1155
293	1156
293	1157
294	357
294	1158
294	1159
294	1160
295	28
295	30
295	1161
295	1162
296	455
296	280
296	507
296	1163
297	1164
297	1165
297	1166
297	1167
298	339
298	1168
298	1169
298	1170
299	327
299	1171
299	722
299	1172
300	1173
300	1174
300	1175
300	1176
301	110
301	711
301	1177
301	1178
302	28
302	1179
302	1180
302	1181
303	115
303	1145
303	1182
303	1183
304	28
304	1180
304	1184
304	356
305	118
305	273
305	711
305	1185
306	374
306	1186
306	383
306	1187
307	1188
307	1189
307	1190
307	1191
308	593
308	1192
308	1193
308	1194
310	735
310	736
310	262
310	1195
311	1196
311	1197
311	1198
311	255
312	1199
312	455
312	1200
312	1201
313	1202
313	1203
313	359
313	1204
314	455
314	1205
314	298
314	1206
315	1207
315	1208
315	1209
315	1210
316	1211
316	1212
316	1213
316	599
317	1209
317	1214
317	1215
317	1216
318	1217
318	1218
318	1219
318	1220
319	510
319	1221
319	1222
319	1223
320	1224
320	1225
320	1226
320	1227
321	878
321	1228
321	1229
322	1230
322	1231
322	1232
322	1233
323	611
323	1234
323	1235
323	535
324	1091
324	1236
324	1237
324	1238
325	837
325	154
325	1239
325	1240
327	837
327	1241
327	767
327	886
328	1242
328	1243
328	1244
328	463
329	1245
329	1246
329	1247
329	1248
330	435
330	427
330	1249
330	1250
331	1251
331	1252
331	1253
331	1254
332	766
332	767
332	1255
332	1256
333	1257
333	376
333	1258
333	1259
334	908
334	1260
334	1261
334	1262
335	1263
335	1264
335	1265
335	1266
336	837
336	970
336	788
336	972
337	907
337	1267
337	1268
337	1269
338	1270
338	1271
338	1272
338	1273
339	1274
339	102
339	1275
339	1276
340	1277
340	1278
340	1279
340	1280
341	37
341	1242
341	1281
341	1282
342	459
342	1283
342	471
342	1247
345	196
345	227
345	1284
345	1285
346	1286
346	1287
346	1288
346	1289
347	606
347	101
347	1290
347	1291
348	1243
348	965
348	1292
348	1293
349	1294
349	1295
349	1296
349	1297
350	1298
350	626
350	1299
350	1300
351	962
351	795
351	1301
351	1302
352	1303
352	1304
352	1305
352	1306
353	68
353	69
353	1307
353	1308
354	521
354	1309
354	1310
354	1311
355	1312
355	1245
355	1313
355	945
356	485
356	1314
356	1057
356	1315
357	1286
357	1288
357	1316
357	1289
358	25
358	540
358	471
358	1317
359	1318
359	1319
359	1320
359	1321
361	1322
361	1323
361	1324
361	1325
362	92
362	1326
362	50
362	1327
363	435
363	1328
363	979
363	1329
364	1330
364	1331
364	1332
364	1333
365	1334
365	1335
365	1336
365	1337
366	1338
366	58
366	1339
366	1340
367	1341
367	1342
367	1343
367	1344
368	1345
368	1346
368	1347
368	1348
369	1349
369	1350
369	1351
369	1352
370	387
370	1016
370	673
370	1017
371	1353
371	1354
371	1355
371	1356
372	1357
372	1358
372	1359
372	1360
373	994
373	1361
373	1362
373	1363
374	48
374	1364
374	1365
374	1366
375	1015
375	68
375	1013
375	1367
376	1368
376	1369
376	1043
376	1370
378	1047
378	1371
378	571
378	1372
379	1373
379	388
379	1374
379	1375
380	1376
380	1377
380	1378
380	1379
381	1246
381	1380
381	1381
381	1138
382	1382
382	1383
382	920
382	1384
383	964
383	1385
383	1386
383	1387
384	1388
384	504
384	1042
384	983
385	1389
385	1320
385	439
385	1390
386	1391
386	1392
386	1393
386	1394
387	1395
387	1396
387	1397
387	1398
388	1399
388	1400
388	620
388	1401
389	1402
389	1403
389	1404
389	1405
390	1406
390	1407
390	1408
390	1278
391	1409
391	1410
391	1411
391	201
392	1412
392	1413
392	1414
392	1415
393	1416
393	1417
393	1418
393	1419
395	1420
395	1421
395	1422
395	1423
396	1424
396	1425
396	1426
396	1427
397	1428
397	1429
397	1430
397	1431
398	1432
398	1433
398	544
398	1434
399	375
399	1435
399	1436
399	1437
400	1438
400	1439
400	658
400	1440
401	1441
401	484
401	333
401	1442
402	1443
402	1444
402	1445
402	1446
403	1441
403	1386
403	1447
403	1448
404	486
404	1449
404	1450
404	1451
405	174
405	1388
405	885
405	1452
406	1453
406	1454
406	1455
406	1456
407	1457
407	1458
407	399
407	1425
408	829
408	1459
408	1460
408	1461
409	1462
409	1463
409	1464
409	1465
708	1466
708	1467
708	1468
708	1469
411	20
411	21
411	683
411	1470
412	390
412	1115
412	1471
412	1472
413	30
413	976
413	1473
413	868
414	274
414	712
414	1474
414	1475
415	1476
415	377
415	1477
415	1478
416	1479
416	698
416	1480
416	1481
417	375
417	1118
417	1482
417	1483
418	1484
418	1136
418	1485
418	1486
419	258
419	174
419	1487
419	1488
420	653
420	339
420	1489
420	383
421	1202
421	380
421	1490
421	1491
422	1492
422	186
422	695
422	1493
423	1494
423	1495
423	1496
423	1497
424	1064
424	1498
424	1499
424	1500
425	696
425	697
425	1501
425	1149
428	174
428	1114
428	1501
428	1502
429	1503
429	1504
429	1505
429	1506
430	1507
430	51
430	1508
430	1509
431	1510
431	1511
431	1512
431	1187
432	60
432	708
432	1513
432	1514
433	1515
433	1516
433	503
433	1517
434	1518
434	1519
434	1520
434	1521
435	696
435	1522
435	1523
435	587
436	1515
436	1524
436	1516
436	1525
437	280
437	1526
437	1527
437	1528
438	455
438	1529
438	1530
438	1531
439	110
439	735
439	506
439	293
440	1503
440	696
440	1532
440	1533
441	328
441	332
441	1534
441	1535
442	588
442	1536
442	1537
442	1538
443	250
443	1539
443	1540
443	1541
445	1542
445	1543
445	1544
445	1189
447	249
447	278
447	1545
447	1546
448	1210
448	374
448	112
448	1186
449	277
449	1547
449	1548
449	1549
450	1550
450	273
450	1551
450	1552
451	455
451	1553
451	1554
451	1555
452	250
452	1556
452	593
452	1557
453	1558
453	1195
453	1559
453	1560
454	1561
454	1562
454	1563
454	1564
455	123
455	1562
455	1171
455	1565
456	715
456	1566
456	1567
456	1533
457	277
457	1568
457	1569
457	739
458	382
458	1570
458	1571
458	1572
459	1207
459	1573
459	1574
459	1575
460	1576
460	1577
460	1578
460	1579
462	1580
462	1581
462	1582
462	1583
463	1584
463	1585
463	1586
463	1587
464	1349
464	540
464	1281
464	213
465	746
465	1588
465	1589
465	1590
466	1591
466	1592
466	1593
466	1594
467	1595
467	471
467	1596
467	1597
468	1598
468	1599
468	1600
468	1601
469	1338
469	1602
469	1603
469	1604
470	1605
470	1606
470	395
470	1607
471	1070
471	1608
471	1609
471	1610
472	14
472	604
472	1611
472	1612
473	1613
473	1614
473	1615
473	1616
474	26
474	1617
474	1618
474	27
475	964
475	1619
475	1620
475	1621
476	1622
476	1623
476	471
476	1624
477	1283
477	1317
477	1625
477	1600
479	1004
479	1005
479	1626
479	1627
480	904
480	13
480	470
480	1628
481	1629
481	1383
481	1630
481	1631
482	1632
482	1633
482	1024
482	1634
483	1388
483	1635
483	1620
483	130
484	1064
484	1636
484	1637
484	1638
485	234
485	375
485	409
485	671
486	1639
486	1640
486	1641
486	1642
487	762
487	445
487	1643
487	1644
488	1645
488	1646
488	1647
488	1648
489	1649
489	1650
489	1651
489	1652
490	1336
490	1653
490	1654
490	1655
491	902
491	87
491	1656
491	1657
492	1658
492	1659
492	1004
492	1660
493	1661
493	1662
493	1663
493	1664
494	1665
494	1666
494	1667
494	1668
496	1669
496	1670
496	1671
496	1672
497	394
497	1673
497	1674
497	1675
498	1676
498	1677
498	1678
498	1679
499	1680
499	153
499	1681
499	612
500	1682
500	175
500	1428
500	771
501	1683
501	1684
501	1685
501	1686
502	1687
502	1688
502	1689
502	1690
503	25
503	1691
503	1692
503	186
504	1667
504	1693
504	1694
504	1695
505	1696
505	1697
505	1698
505	1699
506	1700
506	303
506	235
506	1701
507	226
507	227
507	228
507	1702
508	1703
508	1043
508	1044
508	1704
509	1705
509	1706
509	911
509	1707
510	1708
510	1709
510	1710
510	1711
512	1712
512	435
512	1713
512	1337
513	44
513	1714
513	1715
513	1716
514	1042
514	1337
514	946
514	380
515	571
515	1717
515	1718
515	760
516	1719
516	1720
516	1721
516	1722
517	1723
517	64
517	197
517	664
518	472
518	1042
518	1724
518	1725
519	1726
519	1727
519	1728
519	1729
520	1730
520	1731
520	1732
520	1733
521	1734
521	1659
521	1735
521	847
522	1736
522	1737
522	1005
522	1738
523	1423
523	1739
523	1740
523	1741
524	375
524	1700
524	1742
524	1743
525	100
525	1315
525	1744
525	1745
741	1746
741	1747
741	1748
741	1749
527	1750
527	1476
527	1751
527	1752
528	1441
528	0
528	234
528	1753
529	364
529	1744
529	380
529	1754
530	1755
530	1756
530	234
530	1757
531	1758
531	1759
531	1760
531	1761
532	1762
532	1763
532	1764
532	1765
533	1766
533	1767
533	1768
533	1769
534	1476
534	377
534	1770
534	1771
535	1479
535	1372
535	1772
535	1773
536	1774
536	1775
536	1776
536	1777
537	174
537	697
537	1475
537	384
538	1778
538	1779
538	1780
538	1781
539	1782
539	1783
539	1784
539	1785
540	1786
540	1787
540	1788
540	1789
541	1108
541	1790
541	1791
541	1792
543	587
543	1186
543	1793
543	1794
544	118
544	1795
544	1796
544	82
545	1797
545	1798
545	1799
545	1800
546	710
546	287
546	17
546	1801
547	1802
547	1187
547	1803
547	1804
548	715
548	278
548	1442
548	1805
549	1806
549	1807
549	506
549	1808
550	593
550	1202
550	1809
550	591
551	1810
551	1811
551	1812
551	1813
552	1636
552	1814
552	1815
552	1816
553	110
553	257
553	358
553	733
554	280
554	1817
554	507
554	282
555	269
555	1567
555	1818
555	1532
556	1819
556	347
556	458
556	1820
557	1554
557	1821
557	1822
557	1823
558	455
558	1824
558	1825
558	1826
560	715
560	8
560	298
560	1827
561	277
561	1381
561	1828
561	1829
562	346
562	1830
562	1831
562	1832
563	715
563	287
563	455
563	1833
564	715
564	1834
564	1835
564	148
565	1836
565	1837
565	1838
565	1839
566	1840
566	1841
566	1842
566	1843
567	1844
567	1845
567	1846
567	1847
568	1824
568	1848
568	1849
568	1850
569	1851
569	1852
569	1853
569	1854
570	96
570	1855
570	1856
570	1857
571	1858
571	750
571	1859
571	1860
572	1621
572	1861
572	1862
572	1863
573	626
573	1299
573	1864
573	1865
574	1866
574	1867
574	1868
574	93
576	1869
576	1292
576	1870
576	1441
577	1871
577	1872
577	1873
577	1874
578	902
578	1858
578	87
578	1875
579	967
579	1876
579	96
579	56
580	746
580	1877
580	970
580	1878
581	1879
581	1880
581	1881
581	1882
582	1883
582	1884
582	1885
582	1886
583	1887
583	1888
583	1889
583	1303
584	24
584	540
584	25
584	471
585	388
585	1101
585	1890
585	1891
586	1892
586	227
586	1893
586	1894
587	1895
587	1896
587	1897
587	1898
588	1899
588	1900
588	1901
588	1902
589	1633
589	1639
589	1903
589	1904
590	1905
590	1906
590	1907
590	1908
592	611
592	752
592	1909
592	1910
593	1911
593	1912
593	1913
593	1914
594	95
594	188
594	1899
594	1915
595	1916
595	1681
595	1917
595	1918
596	1919
596	1920
596	1921
596	1922
597	197
597	664
597	1923
597	1924
598	101
598	1925
598	1926
598	1927
599	1928
599	1929
599	103
599	1428
600	987
600	1618
600	988
600	1930
601	194
601	1931
601	1242
601	32
602	1932
602	1933
602	1934
602	933
603	1935
603	561
603	1936
603	1937
604	1349
604	1247
604	51
604	167
605	197
605	1938
605	1939
605	185
606	368
606	1940
606	1941
606	1942
607	1943
607	1944
607	1945
607	1946
610	13
610	1947
610	1948
610	1949
611	1950
611	1951
611	1952
611	560
612	1953
612	1954
612	1955
612	1956
613	1957
613	1958
613	1959
613	1857
614	619
614	620
614	1960
614	1961
615	472
615	194
615	1283
615	966
616	389
616	1962
616	1963
616	1964
617	1965
617	1966
617	1967
617	1968
618	1969
618	1970
618	1971
618	1972
619	1947
619	13
619	1948
619	1973
620	1974
620	1975
620	1976
620	1977
621	102
621	1628
621	1417
621	1892
622	1242
622	1978
622	1605
622	65
623	1979
623	48
623	946
623	995
624	935
624	1280
624	583
624	1980
626	1981
626	1982
626	1983
626	1984
627	1985
627	1931
627	982
627	1986
628	1667
628	1693
628	1947
628	1899
629	32
629	1618
629	1987
629	1988
630	68
630	1015
630	823
630	1989
631	1399
631	619
631	1990
631	1401
632	102
632	1991
632	1417
632	1927
633	17
633	1992
633	1993
633	1994
634	1995
634	191
634	1996
634	1997
635	1998
635	1999
635	946
635	1889
636	459
636	2000
636	1253
636	23
637	2001
637	2002
637	2003
637	2004
638	1321
638	320
638	188
638	1242
639	543
639	2005
639	2006
639	2007
640	2008
640	2009
640	2010
640	2011
758	2012
758	2013
758	235
758	762
642	2014
642	1935
642	419
642	2015
643	2016
643	565
643	2017
643	2018
644	1004
644	2019
644	2020
644	2021
645	1979
645	2022
645	2023
645	2024
646	2025
646	2026
646	1704
646	2027
647	2028
647	225
647	2029
647	2030
648	197
648	2031
648	2032
648	2033
649	1091
649	2034
649	2035
649	2036
650	48
650	375
650	51
650	2037
651	964
651	1713
651	1071
651	2038
652	2039
652	2040
652	2041
652	2042
653	92
653	643
653	2043
653	209
654	233
654	2044
654	2045
654	2046
655	1004
655	387
655	2047
655	2048
656	2049
656	2050
656	1700
656	1436
658	100
658	1750
658	2051
658	1659
659	100
659	92
659	2052
659	1258
660	2053
660	1101
660	847
660	2054
661	2055
661	2056
661	2057
661	2058
662	17
662	2059
662	2060
662	2061
663	1966
663	2062
663	168
663	2063
664	37
664	993
664	2064
664	1042
665	234
665	481
665	2065
665	2066
666	2067
666	2068
666	2069
666	2070
667	2025
667	1043
667	2071
667	2072
668	1315
668	1321
668	2073
668	2074
669	1063
669	2075
669	2076
669	2077
670	2078
670	406
670	2079
670	2080
671	376
671	209
671	1391
671	2081
672	234
672	658
672	2082
672	2083
674	488
674	1979
674	1457
674	371
675	2025
675	2084
675	2085
675	2086
676	499
676	500
676	501
676	2087
677	852
677	1091
677	760
677	2088
678	20
678	1123
678	2089
678	2090
679	2091
679	2092
679	2093
679	2094
680	488
680	2095
680	2096
680	2097
681	2098
681	2099
681	441
681	442
682	2100
682	995
682	2101
682	1087
683	2102
683	2103
683	2104
683	2105
684	2106
684	2107
684	2108
684	2109
685	2110
685	2111
685	2112
685	2113
686	1428
686	1767
686	583
686	2114
687	2115
687	2116
687	49
687	2117
688	234
688	2118
688	2119
688	2120
689	2121
689	2122
689	2123
689	2124
691	978
691	2125
691	2115
691	2126
692	60
692	2127
692	2128
692	2129
693	0
693	380
693	51
693	2130
694	852
694	1118
694	2131
694	582
695	2132
695	2133
695	2134
695	2135
696	2136
696	2137
696	2138
696	2139
697	581
697	1392
697	1803
697	2140
698	2141
698	2142
698	2143
698	2144
699	1484
699	2145
699	2146
699	2147
700	174
700	848
700	2148
700	2149
701	278
701	2150
701	2151
701	2152
702	327
702	1802
702	287
702	2153
703	2154
703	1124
703	2155
703	852
704	278
704	2156
704	1559
704	2157
705	1507
705	2158
705	2159
705	2160
706	2161
706	2162
706	2163
706	2164
710	2165
710	280
710	2166
710	2167
711	277
711	733
711	1381
711	457
712	277
712	1381
712	2168
712	2169
713	1565
713	736
713	2170
713	301
714	280
714	2171
714	2172
714	1571
715	2173
715	1469
715	2174
715	2175
716	287
716	715
716	2176
716	2177
717	2178
717	592
717	2179
717	1551
718	1841
718	1843
718	1842
718	2180
719	2181
719	2182
719	2183
719	2184
720	2179
720	2185
720	2178
720	2186
721	2187
721	2188
721	2189
721	2190
722	2191
722	2192
722	2193
722	2194
723	1294
723	995
723	1295
723	1608
724	2195
724	1317
724	2196
724	2197
726	1388
726	2198
726	2199
726	1667
727	2200
727	2201
727	2202
727	2203
728	1624
728	2204
728	2205
729	2206
729	2207
729	2208
729	2209
730	1957
730	1887
730	2210
730	2211
731	606
731	2212
731	388
731	380
732	2213
732	2214
732	2215
732	1071
733	2216
733	2217
733	1861
733	2218
734	953
734	2219
734	395
734	2220
735	2221
735	2222
735	2223
735	2224
736	2225
736	746
736	777
736	2226
737	2227
737	2228
737	2229
737	2230
738	24
738	540
738	388
738	471
739	942
739	2231
739	2232
739	1239
740	2233
740	2234
740	2235
740	2236
743	59
743	2237
743	991
743	2238
744	1260
744	188
744	209
744	2239
745	2240
745	1277
745	2241
745	2242
746	2243
746	1682
746	49
746	2244
747	1665
747	1666
747	1280
747	1274
748	2245
748	2246
748	2247
748	2248
749	2249
749	934
749	2250
749	1247
750	1628
750	948
750	2251
750	235
751	2219
751	1279
751	2252
751	2253
752	1349
752	994
752	2254
752	1351
753	1279
753	2251
753	234
753	2255
754	659
754	1605
754	1024
754	2150
755	2256
755	392
755	2257
755	1257
756	226
756	227
756	228
756	1899
757	1618
757	435
757	389
757	2258
760	2259
760	2260
760	2261
760	2262
761	2263
761	2264
761	2265
761	2266
762	2267
762	2268
762	2269
762	2270
763	230
763	2271
763	2272
763	2273
764	2274
764	2275
764	2276
764	2277
765	2278
765	95
765	128
765	2279
766	619
766	2280
766	2200
766	2281
767	1628
767	1625
767	2282
767	547
768	964
768	25
768	27
768	2266
769	2283
769	390
769	371
769	2238
770	33
770	2284
770	2285
770	2286
771	2287
771	2288
771	2289
771	830
772	2290
772	2291
772	2292
772	2293
773	2294
773	559
773	2295
773	2296
774	964
774	378
774	1880
774	2297
776	998
776	2243
776	1323
776	2298
777	2299
777	2300
777	2301
777	2302
778	435
778	1712
778	979
778	2303
779	194
779	1890
779	2304
779	2305
780	545
780	2306
780	547
780	2307
781	1428
781	471
781	2308
781	2309
782	226
782	227
782	228
782	2310
783	1979
783	1018
783	2311
783	2312
784	2311
784	2313
784	2314
784	2315
785	1388
785	394
785	2316
785	2317
786	2318
786	2319
786	2320
786	2321
787	949
787	2322
787	2323
787	2324
788	1902
788	2288
788	1326
788	2325
789	1700
789	688
789	2311
789	1744
790	2326
790	175
790	1713
790	1987
791	2283
791	1047
791	436
791	984
794	2327
794	2328
794	2329
794	2330
795	2331
795	2332
795	2333
795	2334
796	1682
796	32
796	1262
796	435
797	2335
797	2336
797	2337
797	2338
798	1041
798	1682
798	2339
798	2340
799	1259
799	484
799	1101
799	2341
800	2342
800	2343
800	2344
800	2345
801	2346
801	1408
801	2347
801	2348
802	2349
802	2350
802	983
802	2351
803	1979
803	1004
803	2116
803	1090
804	771
804	1428
804	1031
804	2352
805	2353
805	2354
805	2355
805	2356
806	2357
806	2042
806	185
806	2112
807	411
807	2031
807	1986
807	2078
808	103
808	2358
808	484
808	2359
810	375
810	100
810	673
810	2360
811	101
811	2361
811	2362
811	2363
812	978
812	1035
812	395
812	2364
813	2365
813	1511
813	1291
813	643
814	2366
814	2367
814	2368
814	2369
815	2370
815	2371
815	1068
815	2372
816	2373
816	491
816	2374
817	2375
817	2376
817	2377
817	2378
818	1429
818	1042
818	303
818	2379
819	197
819	1979
819	2380
819	2381
820	380
820	2382
820	2383
820	2384
821	1979
821	2385
821	2386
821	2387
822	137
822	104
822	2388
822	2389
823	2390
823	2391
823	2392
823	2393
824	375
824	333
824	2394
824	2150
825	1388
825	411
825	2395
825	235
827	1041
827	2339
827	1024
827	2396
828	1041
828	480
828	1371
828	2339
829	2397
829	500
829	2398
829	2399
830	2400
830	2401
830	2402
830	2403
831	2404
831	2405
831	1702
831	2406
832	2407
832	2408
832	710
832	2409
833	194
833	2112
833	2410
833	2411
834	0
834	1734
834	2412
834	2413
835	2414
835	2415
835	1735
835	1071
836	364
836	2416
836	486
836	2417
837	2418
837	2419
837	2420
837	2421
838	1476
838	364
838	2422
838	2423
839	696
839	2424
839	1475
839	717
840	2425
840	1668
840	2426
840	2427
841	1120
841	2428
841	2151
841	2129
842	1927
842	2429
842	2430
842	2431
846	2432
846	2433
846	1474
846	2434
847	1476
847	377
847	2435
847	2436
848	1442
848	698
848	384
848	2437
849	2438
849	1484
849	2439
849	2440
850	375
850	2441
850	2442
850	2443
851	2444
851	2445
851	2446
851	2447
852	848
852	1724
852	817
852	2448
853	852
853	1479
853	1786
853	2449
854	60
854	2450
854	2451
854	2452
855	1504
855	60
855	2453
855	2454
856	333
856	1442
856	385
856	2455
857	1163
857	1795
857	259
857	365
858	1320
858	2456
858	2457
858	2458
859	2459
859	2460
859	698
859	2461
860	1320
860	2462
860	2463
860	1525
861	2464
861	711
861	2465
861	2466
881	2467
881	2468
881	2469
881	2470
882	2471
882	2472
882	1091
882	2473
883	2474
883	545
883	907
883	2475
884	540
884	2476
884	2477
884	1292
885	2478
885	2479
885	2480
885	2481
886	2482
886	2483
886	2484
886	2485
887	2486
887	2487
887	2488
887	2489
888	1277
888	1280
888	1282
888	1278
889	2214
889	951
889	2490
889	2491
890	995
890	462
890	186
890	50
891	197
891	1868
891	2492
891	2261
892	1373
892	1374
892	2493
892	2494
893	1438
893	2495
893	1911
893	2496
894	1635
894	995
894	651
894	951
895	2474
895	1120
895	2497
895	2498
944	2499
944	2254
944	2500
944	2501
897	1665
897	195
897	186
897	2502
898	1351
898	2503
898	2504
898	2505
899	484
899	2506
899	1973
899	2507
900	893
900	2508
900	1361
900	2509
901	1270
901	2510
901	2511
901	2512
902	964
902	2513
902	2514
902	2515
903	939
903	2516
903	528
903	230
904	2517
904	1279
904	2054
904	2518
905	992
905	186
905	435
905	2519
906	2520
906	2521
906	2522
906	2523
907	2524
907	1931
907	2525
907	2526
908	392
908	2527
908	2514
908	1293
909	2528
909	2326
909	1257
909	2529
910	2530
910	2531
910	2532
910	2533
911	32
911	399
911	806
911	983
994	2534
994	2535
994	2536
994	1801
913	2249
913	1243
913	761
913	2537
914	2538
914	2483
914	2539
914	2540
915	25
915	2047
915	188
915	2541
916	2542
916	2243
916	2543
916	2544
917	2545
917	2546
917	2547
917	2548
918	1322
918	2549
918	761
918	2550
919	1719
919	14
919	2361
919	2551
920	2552
920	2553
920	2554
920	13
921	2555
921	2556
921	130
921	2557
922	1979
922	1337
922	16
922	51
923	371
923	49
923	1879
923	2558
924	189
924	2559
924	2560
924	1339
925	1703
925	2561
925	2562
925	2563
926	395
926	2564
926	1366
926	2565
927	1902
927	2566
927	2567
927	2568
929	988
929	2569
929	2570
929	1901
930	471
930	2571
930	801
930	1275
931	2572
931	2573
931	2574
931	2575
932	2326
932	1004
932	98
932	2576
933	1457
933	2577
933	2102
933	2578
934	983
934	2288
934	1880
934	185
935	2579
935	392
935	2580
935	2581
936	2285
936	189
936	2582
936	2583
937	646
937	2584
937	16
937	2585
938	2586
938	2587
938	2588
938	2589
939	1700
939	651
939	1719
939	2590
940	419
940	2591
940	2592
940	2593
941	100
941	643
941	1511
941	2312
942	395
942	2594
942	983
942	2549
943	2595
943	2596
943	2597
943	2598
946	852
946	1691
946	2599
946	2600
947	815
947	543
947	2601
947	2602
948	226
948	228
948	853
948	2603
949	1246
949	2500
949	957
949	2604
950	100
950	2354
950	1712
950	2605
951	2047
951	49
951	2606
951	2607
952	1388
952	129
952	2288
952	339
953	1979
953	2608
953	2050
953	954
954	194
954	1721
954	2609
954	2610
955	1712
955	201
955	2611
955	2612
956	2016
956	1700
956	798
956	2613
957	2614
957	2615
957	2041
957	2616
958	100
958	651
958	2617
958	2618
959	2619
959	557
959	2620
959	2621
960	2565
960	2622
960	50
960	2623
962	304
962	1659
962	2624
962	2625
963	2059
963	643
963	2626
963	644
964	103
964	489
964	388
964	1447
965	100
965	2627
965	502
965	2628
966	60
966	175
966	2629
966	2630
967	197
967	1620
967	235
967	400
968	1737
968	1005
968	2631
968	2632
969	2049
969	381
969	1754
969	2633
970	2634
970	2021
970	96
970	2635
971	409
971	1653
971	2636
971	2637
972	2638
972	2639
972	1726
972	2640
973	2641
973	2642
973	2585
973	2643
974	2644
974	409
974	2645
974	2646
975	375
975	377
975	2647
975	1121
976	1023
976	2648
976	38
976	2360
977	1438
977	2649
977	2650
977	2651
979	2652
979	1769
979	2653
979	1759
980	667
980	2102
980	2654
980	2655
981	1041
981	2656
981	760
981	2657
982	287
982	382
982	2658
982	2659
983	667
983	2660
983	2661
983	2662
984	2663
984	2664
984	2665
984	2666
985	2667
985	2668
985	2669
985	2670
986	60
986	669
986	2671
986	2672
987	2673
987	585
987	2674
987	2675
988	2676
988	2677
988	2678
988	2679
989	1480
989	2680
989	2681
989	1763
990	2682
990	2683
990	588
990	2684
991	1187
991	1805
991	2685
991	2686
992	60
992	2687
992	665
992	2688
993	2689
993	2690
993	2691
993	2692
995	2693
995	2694
995	2695
995	2696
996	278
996	2697
996	284
996	2698
997	1503
997	2699
997	269
997	2700
998	328
998	2166
998	1466
998	456
999	2701
999	2702
999	2703
999	2704
1000	2705
1000	2706
1000	2707
1000	2708
\.


--
-- Data for Name: movie_genre; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.movie_genre (movieid, genreid) FROM stdin;
862	0
862	1
862	2
863	3
863	4
863	5
176	3
176	6
14	0
14	1
14	3
29	8
29	3
29	2
45	0
45	9
61	0
61	1
61	9
78	8
78	3
78	5
94	1
94	3
94	11
110	0
110	1
110	12
127	3
127	9
144	3
144	5
144	13
160	14
160	3
193	15
193	11
210	1
210	15
210	8
226	3
243	18
243	1
243	15
259	3
259	13
275	3
292	3
292	11
309	0
309	8
309	3
326	0
326	1
326	15
343	14
343	3
343	6
344	0
344	1
344	3
360	14
360	3
377	0
377	1
377	12
394	5
394	9
394	2
410	18
410	1
410	3
427	1
427	9
444	3
446	15
446	3
446	11
461	15
461	8
461	5
478	0
478	1
478	9
495	15
495	8
495	3
511	18
511	0
511	8
526	14
526	3
542	15
542	3
542	13
559	15
559	3
559	21
575	15
575	3
591	3
591	13
609	0
609	8
609	2
625	3
625	12
625	13
641	18
641	15
641	3
657	3
673	18
673	1
673	3
690	3
709	8
709	3
725	4
725	5
725	2
742	18
742	1
742	3
759	18
759	3
759	12
775	0
775	8
775	3
792	8
792	3
792	2
793	3
793	2
809	15
826	3
845	4
845	2
880	15
880	3
896	8
896	3
912	3
912	4
912	2
928	0
928	1
928	21
945	0
945	1
945	3
961	8
961	3
961	2
978	15
978	8
843	15
844	18
844	1
844	21
864	3
864	2
865	3
865	4
865	2
866	0
866	1
866	23
867	3
867	4
868	3
868	4
868	9
869	3
870	15
870	8
871	15
871	3
871	13
872	15
872	3
872	13
873	3
873	9
874	1
874	3
874	13
875	3
875	24
875	13
876	18
876	21
876	12
877	4
877	9
878	14
878	3
878	25
879	3
879	5
879	2
177	14
177	3
177	25
178	0
178	1
178	15
179	1
179	15
179	12
180	1
180	3
180	25
181	8
181	3
182	0
182	3
182	2
183	3
183	11
184	15
184	6
184	13
185	3
185	13
186	3
186	12
186	25
187	8
187	3
187	2
188	8
188	2
189	3
190	8
190	3
190	5
191	3
192	1
192	3
192	23
426	3
426	4
608	8
608	3
608	5
1	3
2	8
2	3
3	0
3	8
3	3
4	8
4	3
5	8
5	3
6	0
6	1
6	3
7	8
7	3
8	14
8	3
8	25
9	0
9	1
9	9
10	3
11	0
11	1
11	3
12	3
12	13
13	23
15	0
15	9
16	14
16	8
16	3
17	0
17	1
17	12
18	3
19	14
19	3
19	25
20	15
20	3
20	2
21	3
22	1
22	3
22	9
23	8
23	3
24	18
24	1
24	21
25	3
25	11
26	8
26	3
26	12
27	15
27	3
27	13
28	8
28	3
28	5
77	3
77	27
30	0
30	1
30	12
31	0
31	3
31	5
32	0
32	1
32	3
33	3
33	21
33	12
34	8
34	3
34	2
35	3
35	6
36	14
36	15
36	3
37	3
37	5
37	9
38	8
38	3
38	2
39	14
39	3
39	6
40	0
40	1
40	3
41	3
42	8
42	5
42	2
43	0
43	8
43	3
44	18
44	1
44	3
46	3
46	13
47	18
47	3
47	11
48	1
48	15
48	9
49	23
50	4
50	5
50	2
51	3
51	13
51	11
52	15
52	3
52	21
53	15
53	3
53	13
54	3
55	14
55	3
55	25
56	0
56	8
56	3
57	18
57	3
57	12
58	0
58	14
58	3
59	18
59	0
59	1
60	0
60	1
60	3
62	18
62	1
62	21
63	3
63	23
64	0
64	1
65	15
65	3
66	3
66	21
67	18
67	1
67	21
68	3
68	5
68	2
69	0
69	3
69	5
70	5
70	2
71	18
71	0
71	1
72	8
72	3
73	0
73	1
74	3
74	4
75	3
75	5
75	11
76	4
76	9
79	15
80	8
80	3
80	5
81	3
81	11
82	5
82	2
83	3
83	24
84	15
84	3
84	11
85	3
85	2
85	11
86	3
86	12
86	4
87	8
87	3
87	6
88	8
88	3
88	2
89	3
90	3
91	3
91	5
91	11
92	3
93	3
93	21
707	3
707	13
95	3
95	13
95	9
96	15
96	13
97	15
97	8
98	3
99	3
100	3
100	13
101	3
101	21
101	29
102	18
102	1
102	15
103	14
103	3
103	25
104	8
104	3
104	2
105	3
105	11
106	3
106	2
106	11
107	0
107	1
107	9
108	14
108	3
108	25
109	8
109	3
111	1
111	3
111	2
112	8
112	3
113	15
113	8
113	3
114	8
114	3
114	9
115	1
115	9
116	23
117	1
117	14
117	3
118	15
118	3
118	13
119	1
119	5
119	2
120	5
120	13
120	2
121	15
121	27
121	13
122	3
123	3
124	8
124	3
124	24
125	3
125	5
126	8
126	5
126	2
128	15
128	3
128	21
129	15
129	3
130	0
130	3
130	11
131	0
131	3
132	14
132	15
132	3
133	15
133	8
133	3
134	8
134	3
134	5
135	0
135	3
136	18
136	1
783	0
136	15
137	8
137	3
137	5
138	1
138	15
138	3
139	3
139	11
140	14
140	3
140	29
141	0
141	15
141	8
142	3
143	0
143	14
143	8
145	0
145	3
145	29
146	5
146	2
147	18
147	1
147	15
148	14
148	8
148	3
149	3
149	21
149	29
150	3
151	3
151	12
151	11
152	18
152	1
152	15
153	0
153	3
153	9
154	15
154	8
154	3
155	3
156	0
156	1
157	3
158	14
158	3
158	25
159	18
159	1
159	21
161	0
161	15
161	8
162	0
162	15
162	8
163	8
163	3
163	5
164	8
164	3
164	2
165	8
165	3
165	2
166	8
166	3
167	0
167	15
167	13
168	3
168	23
169	0
169	1
170	15
170	8
170	3
171	18
171	21
171	12
172	0
172	2
173	0
173	3
173	11
174	14
174	3
174	29
175	3
175	9
194	1
194	15
194	3
195	0
195	15
195	13
196	3
196	13
197	3
197	2
198	18
198	3
198	21
199	8
199	3
199	5
200	3
200	13
200	2
201	3
202	0
202	8
202	3
203	0
203	3
203	9
204	3
204	2
205	15
205	3
205	2
206	18
206	1
206	15
207	3
208	15
208	3
208	27
209	15
209	3
209	12
211	3
211	5
211	2
212	18
212	3
212	12
213	14
213	3
213	25
214	18
214	1
214	15
215	15
215	3
215	13
216	14
216	3
216	25
217	0
217	14
217	3
218	0
218	14
218	3
219	14
219	8
219	3
220	18
220	1
220	3
221	5
221	2
222	15
222	3
223	8
223	3
223	5
224	0
224	1
224	9
225	0
225	8
225	3
227	1
227	3
227	12
228	3
228	6
229	14
229	3
229	21
230	18
230	15
230	3
231	18
231	0
231	1
232	1
232	14
232	3
233	8
233	3
233	2
234	15
234	3
234	13
235	3
235	29
236	14
236	3
236	25
237	0
237	3
237	11
238	3
238	13
239	15
239	3
239	27
240	8
240	3
240	5
241	15
241	3
241	13
242	0
242	8
242	3
244	14
244	8
244	3
245	3
245	2
246	18
246	1
246	15
247	18
247	0
247	3
248	1
248	3
248	27
249	3
249	5
249	2
250	3
250	6
250	13
251	15
251	3
252	15
252	8
252	13
253	15
253	8
253	29
254	3
254	13
255	3
256	8
256	3
256	2
257	15
257	3
257	11
258	8
258	3
260	3
260	13
261	3
261	5
261	13
262	15
262	8
262	3
263	0
263	1
263	9
264	14
264	8
264	3
265	3
265	6
265	13
266	3
266	25
266	13
267	15
267	3
268	1
268	3
269	3
269	11
270	3
271	18
271	1
271	12
272	4
272	5
272	9
273	3
273	12
273	6
274	1
274	3
276	0
276	9
276	2
277	14
277	3
278	15
279	3
279	11
280	3
280	29
281	3
282	1
282	3
282	25
283	14
283	3
284	3
284	5
284	2
285	15
285	8
285	3
286	3
287	3
287	5
287	9
288	8
288	3
288	5
289	8
289	3
290	3
290	2
291	14
291	3
291	25
293	3
293	12
294	3
294	4
294	2
295	0
295	15
295	8
296	3
296	23
297	3
297	11
298	3
299	14
299	3
299	25
300	8
300	3
301	1
301	3
301	25
302	1
302	3
303	3
304	3
304	25
305	1
305	3
305	11
306	8
306	3
306	2
307	1
307	3
307	2
308	3
308	24
310	24
310	5
310	2
311	3
311	6
311	13
312	15
312	3
312	13
313	3
313	5
313	13
314	15
314	3
315	3
315	25
315	13
316	3
316	11
317	15
317	13
318	14
318	3
318	25
319	15
319	13
320	3
320	13
321	0
321	1
321	15
322	12
322	4
322	5
323	15
323	3
324	1
324	14
324	3
325	3
325	25
327	0
327	8
327	2
328	15
328	3
328	6
329	14
329	3
330	1
330	3
330	9
331	18
331	1
331	15
332	0
332	3
333	18
333	1
333	3
334	3
334	21
335	3
335	6
335	13
336	8
336	3
336	2
337	3
338	0
338	8
338	2
339	14
339	3
339	2
340	0
340	1
340	15
341	0
341	3
341	5
342	3
342	13
342	9
345	3
345	13
346	0
346	8
346	3
347	14
347	3
347	25
348	3
349	0
349	1
349	15
350	3
350	5
351	3
351	13
352	0
352	14
352	3
353	3
354	0
354	3
354	2
355	3
355	13
356	3
356	2
357	0
357	8
357	3
358	0
358	1
358	9
359	18
359	14
359	3
361	14
361	3
362	1
362	3
362	2
363	0
363	5
363	2
364	8
364	3
364	13
365	8
365	2
366	14
366	3
367	1
367	15
367	9
368	18
368	1
368	15
369	0
369	1
369	2
370	0
370	8
370	2
371	3
372	3
372	13
373	14
373	3
374	14
374	3
374	25
375	15
375	3
375	27
376	0
376	8
376	3
378	1
378	3
378	12
379	18
379	0
379	1
380	15
380	3
380	13
381	8
381	3
382	15
382	3
383	3
383	5
383	9
384	3
385	8
385	3
385	27
386	14
386	3
387	18
387	8
387	5
388	3
389	3
390	18
390	0
390	1
391	0
391	8
391	15
392	3
393	15
393	3
395	18
395	0
395	8
396	18
396	21
396	12
397	15
397	12
397	13
398	8
398	3
399	3
400	18
400	1
400	15
401	3
401	25
401	2
402	18
402	21
402	12
403	1
403	3
403	23
404	15
404	3
405	3
406	18
406	0
406	9
407	1
407	21
407	12
408	3
408	12
408	13
409	3
409	11
708	4
411	0
411	9
412	14
412	3
412	25
413	3
413	25
413	11
414	15
414	3
415	15
415	13
416	1
416	2
417	14
417	8
417	3
418	15
419	14
419	8
419	3
420	4
421	5
421	2
422	3
422	13
423	3
423	21
423	27
424	3
425	14
425	8
425	3
428	15
428	3
428	13
429	3
430	14
430	3
430	21
431	3
431	13
431	11
432	0
432	3
432	23
433	3
434	3
435	3
435	29
436	15
436	3
437	0
437	3
437	23
438	8
438	3
438	5
439	8
439	3
439	24
440	3
441	3
441	24
442	8
442	3
442	24
443	8
443	3
443	24
445	8
445	3
445	4
447	15
447	13
448	3
449	3
449	24
449	5
450	15
450	8
451	8
451	3
451	5
452	8
452	3
452	24
453	3
453	13
454	3
454	24
454	5
455	3
455	13
455	11
456	15
456	8
456	2
457	24
457	5
458	3
458	25
459	1
459	21
459	12
460	15
460	3
462	3
462	11
463	3
463	25
463	2
464	15
464	8
464	3
465	15
465	3
465	13
466	8
466	3
467	15
467	3
467	13
468	3
468	13
469	3
470	18
470	1
470	15
471	1
471	15
471	3
472	15
472	3
473	15
473	3
473	6
474	0
474	1
474	15
475	8
475	3
475	2
476	15
476	3
476	11
477	3
477	9
479	3
479	13
480	0
480	1
480	9
481	8
481	3
482	15
482	3
482	13
483	0
483	1
483	9
484	3
484	13
485	14
485	8
485	3
486	8
486	3
487	3
487	5
487	9
488	8
488	3
488	12
489	0
489	9
489	2
490	3
490	29
491	15
491	3
491	13
492	3
493	3
494	0
494	1
494	9
496	3
496	12
496	5
497	0
497	1
497	3
498	1
498	3
498	12
499	1
499	3
499	12
500	18
500	1
500	15
501	15
501	3
502	3
502	6
503	0
503	1
503	9
504	15
504	4
505	3
505	13
506	8
506	3
506	5
507	1
507	21
507	12
508	0
508	1
508	25
509	3
509	5
509	13
510	15
510	3
510	11
512	0
512	5
512	2
513	8
513	3
513	2
514	1
514	3
514	9
515	1
515	15
515	3
516	3
516	5
516	2
517	18
517	1
517	15
518	3
519	18
519	3
519	21
520	8
520	3
521	8
521	3
521	13
522	3
522	6
522	5
523	18
523	0
523	1
524	8
524	3
524	2
525	3
525	12
525	13
741	18
741	1
741	15
527	15
527	3
528	8
528	3
528	2
529	15
529	3
530	3
530	9
531	15
531	6
532	15
532	21
533	0
533	1
533	15
534	15
534	3
534	13
535	3
535	6
535	27
536	0
536	1
536	4
537	14
537	3
537	25
538	1
538	3
538	12
539	15
539	3
539	21
540	15
541	0
541	1
541	14
543	14
543	3
543	11
544	0
544	1
544	23
545	4
545	2
546	14
546	3
546	25
547	8
547	3
547	5
548	15
548	5
548	13
549	3
549	2
550	1
550	14
550	3
551	3
551	5
552	3
552	13
553	1
553	3
554	1
554	3
554	23
555	3
556	3
556	2
556	23
557	8
557	24
557	2
558	15
558	3
558	12
560	3
560	24
560	13
561	8
561	24
561	5
562	3
562	24
563	15
563	13
564	15
564	3
564	13
565	0
565	1
565	13
566	15
566	6
566	27
567	1
567	4
567	9
568	3
568	4
569	12
569	4
570	0
570	15
570	8
571	0
571	3
571	2
572	3
572	6
573	3
574	0
574	3
574	25
576	14
576	3
576	25
577	1
577	15
577	21
578	0
578	8
578	3
579	18
579	0
579	1
580	14
580	3
580	29
581	3
582	3
582	25
582	11
583	0
583	1
583	9
584	0
584	1
584	9
585	8
585	3
585	5
586	3
586	13
587	18
587	14
587	8
588	14
588	15
588	3
589	3
589	5
590	3
592	15
592	13
593	18
593	0
593	1
594	15
594	3
594	12
595	15
595	3
595	21
596	18
596	14
596	3
597	18
597	1
597	15
598	8
598	3
598	5
599	15
599	3
599	13
600	18
600	0
600	1
601	14
601	15
601	3
602	3
602	2
603	0
603	8
603	3
604	8
604	3
604	5
605	1
605	14
605	8
606	0
606	8
606	3
607	14
607	3
607	25
610	1
610	12
611	3
611	25
611	5
612	8
612	3
612	5
613	3
613	25
613	2
614	15
614	3
615	14
615	3
615	29
616	0
616	2
617	3
617	25
617	11
618	3
618	6
618	13
619	1
619	12
620	3
621	3
621	5
621	13
622	8
622	3
623	14
623	8
623	3
624	0
624	1
624	12
626	0
626	1
626	3
627	15
627	3
628	0
628	15
628	5
629	3
629	12
629	13
630	3
630	21
630	27
631	15
631	8
631	3
632	3
632	13
633	14
633	3
633	29
634	18
634	1
634	15
635	0
635	1
635	9
636	14
636	3
636	6
637	3
638	3
638	13
639	1
639	14
639	3
640	8
640	3
758	14
758	3
758	25
642	0
642	3
642	2
643	0
643	1
643	3
644	18
644	3
644	12
645	14
645	3
645	29
646	0
646	1
646	12
647	3
648	1
648	3
648	13
649	0
649	8
649	2
650	14
650	3
650	2
651	14
651	3
651	21
652	18
652	1
652	15
653	3
653	13
654	8
654	3
654	13
655	3
655	9
655	2
656	0
656	3
656	5
658	14
658	15
658	3
659	3
660	0
660	14
660	3
661	15
661	3
661	21
662	3
662	13
663	15
663	3
664	0
664	8
664	3
665	8
665	3
665	13
666	18
666	0
666	8
667	0
667	8
667	2
668	15
668	3
669	3
669	12
669	6
670	8
670	3
671	3
671	2
672	14
672	3
674	14
674	3
674	25
675	0
675	8
675	3
676	1
676	15
676	9
677	8
677	3
677	25
678	0
678	1
678	9
679	0
679	15
679	12
680	15
681	15
681	8
681	3
682	1
682	15
682	21
683	3
684	15
684	3
685	14
685	3
685	25
686	0
686	15
686	12
687	1
687	14
687	3
688	15
688	8
688	3
689	21
689	9
691	3
691	13
692	23
693	1
693	25
693	11
694	3
694	5
694	2
695	18
695	9
696	8
696	3
696	2
697	0
697	8
697	3
698	3
698	6
698	27
699	21
699	12
699	27
700	3
701	2
702	15
702	3
703	0
703	14
703	8
704	3
704	21
704	27
705	15
705	21
705	12
706	0
706	3
706	25
710	0
710	1
710	3
711	0
711	8
711	3
712	1
712	15
712	24
713	24
713	2
714	1
714	3
714	23
715	5
715	2
716	15
716	21
716	13
717	3
717	4
717	9
718	15
718	27
718	11
719	0
719	8
719	3
720	3
720	4
720	9
721	3
722	3
722	13
723	0
723	1
723	15
724	8
724	3
724	5
726	0
726	1
726	2
727	15
727	3
727	13
728	15
728	4
729	18
729	3
729	21
730	14
730	3
730	13
731	0
731	1
731	15
732	3
732	13
733	15
733	3
734	15
734	3
735	3
735	13
736	3
736	29
737	3
737	6
737	13
738	0
738	1
738	9
739	3
739	6
739	27
740	1
740	15
740	3
743	3
744	15
744	12
744	13
745	18
745	0
745	1
746	3
746	9
746	2
747	0
747	1
747	9
748	3
748	11
749	14
749	3
750	0
750	1
750	9
751	15
752	0
752	1
752	2
753	15
753	3
753	13
754	14
754	3
754	2
755	15
755	3
755	13
756	1
756	21
756	12
757	18
757	1
757	15
760	14
760	8
760	3
761	15
761	3
761	13
762	18
762	1
762	15
763	8
763	3
763	12
764	8
764	3
765	3
765	9
765	2
766	3
767	14
767	3
767	25
768	8
768	3
768	5
769	0
769	8
769	3
770	3
770	25
770	6
771	14
771	3
771	6
772	18
772	1
772	15
773	3
773	2
773	11
774	3
774	13
776	8
776	3
776	2
777	0
777	15
777	12
778	0
778	5
778	2
779	3
779	2
780	14
780	3
780	6
781	15
781	3
782	1
782	21
782	12
783	8
783	3
784	18
784	3
784	21
785	0
785	3
786	3
787	15
787	3
787	13
788	3
789	3
790	15
790	3
791	3
791	25
791	11
794	3
794	6
795	15
795	3
795	6
796	8
796	2
797	18
797	0
797	12
798	1
798	15
798	8
799	1
799	15
799	3
800	18
800	15
800	12
801	15
802	15
802	3
803	8
803	3
803	2
804	15
804	3
804	13
805	3
805	5
805	9
806	15
806	3
806	12
807	15
807	3
807	13
808	0
808	1
808	9
810	14
810	8
810	3
811	14
811	3
811	6
812	8
812	3
812	5
813	3
814	3
814	21
814	12
815	15
815	8
815	3
816	14
816	15
816	3
817	15
818	15
818	3
819	3
820	15
820	3
820	21
821	14
821	3
821	25
822	0
822	1
822	3
823	18
823	1
823	15
824	8
824	3
824	5
825	3
825	2
827	15
827	3
827	2
828	8
828	3
828	2
829	18
829	1
829	15
830	5
830	2
831	15
831	3
832	14
832	3
832	25
833	0
833	3
833	25
834	8
834	3
834	5
835	3
835	5
835	2
836	15
836	12
836	13
837	15
837	8
837	3
838	15
839	3
840	0
840	1
840	9
841	0
841	1
842	3
846	3
846	2
847	15
847	11
848	0
848	8
848	2
849	15
849	23
850	14
850	8
850	3
851	0
851	8
851	3
852	1
852	3
852	2
853	0
853	8
853	3
854	0
854	8
854	2
855	0
855	1
855	11
856	15
857	0
857	1
857	11
858	3
858	13
859	14
859	3
859	25
860	3
860	4
860	2
861	3
861	25
861	11
881	3
882	3
883	14
883	8
883	3
884	3
885	1
885	15
885	3
886	8
886	3
886	13
887	3
888	0
888	1
888	15
889	0
889	8
889	3
890	0
890	14
890	3
891	3
891	25
891	2
892	18
892	0
892	1
893	18
893	1
893	15
894	0
894	8
894	3
895	3
895	29
944	3
944	4
944	9
897	0
897	8
897	3
898	14
898	15
898	3
899	0
899	1
899	3
900	5
900	2
901	0
901	2
902	0
902	8
902	3
903	18
903	1
903	21
904	3
904	6
904	13
905	3
905	23
906	3
906	13
907	18
907	15
907	8
908	15
908	3
908	13
909	0
909	15
909	8
910	0
910	1
910	8
911	14
911	3
911	29
994	3
994	5
994	2
913	1
913	15
913	12
914	3
914	2
915	0
915	1
915	5
916	14
916	3
916	29
917	3
918	3
919	0
919	8
919	3
920	1
920	21
920	12
921	18
921	1
921	21
922	8
922	3
922	5
923	8
923	3
923	5
924	14
924	3
924	6
925	0
925	14
925	3
926	3
926	12
926	5
927	8
927	3
927	2
929	0
929	3
930	3
930	13
930	2
931	0
931	3
931	5
932	0
932	8
932	3
933	4
933	5
933	2
934	3
935	3
936	15
936	3
936	13
937	3
937	5
937	13
938	15
938	3
939	8
939	3
939	2
940	8
940	3
940	2
941	14
941	3
941	21
942	3
943	3
943	9
943	2
946	15
946	3
947	3
948	1
948	21
948	12
949	4
949	5
949	2
950	14
950	8
950	3
951	3
951	25
951	11
952	0
952	8
952	5
953	14
953	3
953	29
954	15
954	8
954	3
955	8
955	3
955	2
956	3
956	11
957	18
957	1
957	21
958	1
958	15
958	3
959	8
959	3
959	2
960	5
960	9
960	2
962	5
962	2
963	3
963	13
964	0
964	1
964	2
965	1
965	3
965	12
966	3
966	13
967	1
967	3
967	25
968	15
968	3
968	13
969	0
969	8
969	3
970	15
971	15
971	8
972	18
972	3
972	13
973	15
973	8
974	15
974	21
975	8
975	3
976	15
976	3
976	13
977	18
977	21
977	12
979	15
979	3
980	0
980	8
980	2
981	8
981	3
981	2
982	3
983	0
983	1
983	9
984	0
984	8
984	2
985	1
985	15
985	21
986	0
986	14
986	8
987	18
987	1
987	3
988	14
988	8
988	3
989	3
989	9
990	15
990	8
990	3
991	3
991	11
991	23
992	1
992	15
992	11
993	18
993	1
993	21
995	15
995	6
995	27
996	15
996	3
996	13
997	3
997	23
998	3
998	13
998	11
999	3
999	11
1000	8
1000	5
1000	2
\.


--
-- Data for Name: movies; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.movies (movieid, poster_link, series_title, released_year, certificate, runtime, genre, imdb_rating, overview, meta_score, director, star1, star2, star3, star4, no_of_votes, gross) FROM stdin;
775	https://m.media-amazon.com/images/M/MV5BODE0NTcxNTQzNF5BMl5BanBnXkFtZTcwMzczOTIzMw@@._V1_.jpg	3:10 to Yuma	2007	A	122 min	Action, Crime, Drama	7.7	A small-time rancher agrees to hold a captured outlaw who's awaiting a train to go to court in Yuma. A battle of wills ensues as the outlaw tries to psych out the rancher.	76	James Mangold	Russell Crowe	Christian Bale	Ben Foster	Logan Lerman	288797	53606916
792	https://m.media-amazon.com/images/M/MV5BNjcxMmQ0MmItYTkzYy00MmUyLTlhOTQtMmJmNjE3MDMwYjdlXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_.jpg	Road to Perdition	2002	A	117 min	Crime, Drama, Thriller	7.7	A mob enforcer's son witnesses a murder, forcing him and his father to take to the road, and his father down a path of redemption and revenge.	72	Sam Mendes	Tom Hanks	Tyler Hoechlin	Rob Maxey	Liam Aiken	246840	104454762
793	https://m.media-amazon.com/images/M/MV5BNThiMDc1YjUtYmE3Zi00MTM1LTkzM2MtNjdlNzQ4ZDlmYjRmXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg	Das Experiment	2001	R	120 min	Drama, Thriller	7.7	For two weeks, 20 male participants are hired to play prisoners and guards in a prison. The "prisoners" have to follow seemingly mild rules, and the "guards" are told to retain order without using physical violence.	60	Oliver Hirschbiegel	Moritz Bleibtreu	Christian Berkel	Oliver Stokowski	Wotan Wilke Möhring	90842	141072
862	https://m.media-amazon.com/images/M/MV5BMTQ2MzE0OTU3NV5BMl5BanBnXkFtZTcwNjQxNTgzNA@@._V1_.jpg	Goldfinger	1964	A	110 min	Action, Adventure, Thriller	7.7	While investigating a gold magnate's smuggling, James Bond uncovers a plot to contaminate the Fort Knox gold reserve.	87	Guy Hamilton	Sean Connery	Gert Fröbe	Honor Blackman	Shirley Eaton	174119	51081062
863	https://m.media-amazon.com/images/M/MV5BMTAxNDA1ODc5MDleQTJeQWpwZ15BbWU4MDg2MDA4OTEx._V1_.jpg	The Birds	1963	A	119 min	Drama, Horror, Mystery	7.7	A wealthy San Francisco socialite pursues a potential boyfriend to a small Northern California town that slowly takes a turn for the bizarre when birds of all kinds suddenly begin to attack people.	90	Alfred Hitchcock	Rod Taylor	Tippi Hedren	Jessica Tandy	Suzanne Pleshette	171739	11403529
176	https://m.media-amazon.com/images/M/MV5BNGIyMWRlYTctMWNlMi00ZGIzLThjOTgtZjQzZjRjNmRhMDdlXkEyXkFqcGdeQXVyMTAwMzUyOTc@._V1_.jpg	Höstsonaten	1978	U	99 min	Drama, Music	8.2	A married daughter who longs for her mother's love is visited by the latter, a successful concert pianist.	\N	Ingmar Bergman	Ingrid Bergman	Liv Ullmann	Lena Nyman	Halvar Björk	26875	\N
14	https://m.media-amazon.com/images/M/MV5BZGMxZTdjZmYtMmE2Ni00ZTdkLWI5NTgtNjlmMjBiNzU2MmI5XkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_.jpg	The Lord of the Rings: The Two Towers	2002	UA	179 min	Action, Adventure, Drama	8.7	While Frodo and Sam edge closer to Mordor with the help of the shifty Gollum, the divided fellowship makes a stand against Sauron's new ally, Saruman, and his hordes of Isengard.	87	Peter Jackson	Elijah Wood	Ian McKellen	Viggo Mortensen	Orlando Bloom	1485555	342551365
29	https://m.media-amazon.com/images/M/MV5BNjNhZTk0ZmEtNjJhMi00YzFlLWE1MmEtYzM1M2ZmMGMwMTU4XkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_.jpg	The Silence of the Lambs	1991	A	118 min	Crime, Drama, Thriller	8.6	A young F.B.I. cadet must receive the help of an incarcerated and manipulative cannibal killer to help catch another serial killer, a madman who skins his victims.	85	Jonathan Demme	Jodie Foster	Anthony Hopkins	Lawrence A. Bonney	Kasi Lemmons	1270197	130742922
45	https://m.media-amazon.com/images/M/MV5BMGU2NzRmZjUtOGUxYS00ZjdjLWEwZWItY2NlM2JhNjkxNTFmXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_.jpg	Terminator 2: Judgment Day	1991	U	137 min	Action, Sci-Fi	8.5	A cyborg, identical to the one who failed to kill Sarah Connor, must now protect her teenage son, John Connor, from a more advanced and powerful cyborg.	75	James Cameron	Arnold Schwarzenegger	Linda Hamilton	Edward Furlong	Robert Patrick	995506	204843350
61	https://m.media-amazon.com/images/M/MV5BMjMxNjY2MDU1OV5BMl5BanBnXkFtZTgwNzY1MTUwNTM@._V1_.jpg	Avengers: Infinity War	2018	UA	149 min	Action, Adventure, Sci-Fi	8.4	The Avengers and their allies must be willing to sacrifice all in an attempt to defeat the powerful Thanos before his blitz of devastation and ruin puts an end to the universe.	68	Anthony Russo	Joe Russo	Robert Downey Jr.	Chris Hemsworth	Mark Ruffalo	834477	678815482
78	https://m.media-amazon.com/images/M/MV5BOTI4NTNhZDMtMWNkZi00MTRmLWJmZDQtMmJkMGVmZTEzODlhXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_.jpg	Tengoku to jigoku	1963	\N	143 min	Crime, Drama, Mystery	8.4	An executive of a shoe company becomes a victim of extortion when his chauffeur's son is kidnapped and held for ransom.	\N	Akira Kurosawa	Toshirô Mifune	Yutaka Sada	Tatsuya Nakadai	Kyôko Kagawa	34357	\N
94	https://m.media-amazon.com/images/M/MV5BOTJiNDEzOWYtMTVjOC00ZjlmLWE0NGMtZmE1OWVmZDQ2OWJhXkEyXkFqcGdeQXVyNTIzOTk5ODM@._V1_.jpg	Inglourious Basterds	2009	A	153 min	Adventure, Drama, War	8.3	In Nazi-occupied France during World War II, a plan to assassinate Nazi leaders by a group of Jewish U.S. soldiers coincides with a theatre owner's vengeful plans for the same.	69	Quentin Tarantino	Brad Pitt	Diane Kruger	Eli Roth	Mélanie Laurent	1267869	120540719
110	https://m.media-amazon.com/images/M/MV5BOWZlMjFiYzgtMTUzNC00Y2IzLTk1NTMtZmNhMTczNTk0ODk1XkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_.jpg	Star Wars: Episode VI - Return of the Jedi	1983	U	131 min	Action, Adventure, Fantasy	8.3	After a daring mission to rescue Han Solo from Jabba the Hutt, the Rebels dispatch to Endor to destroy the second Death Star. Meanwhile, Luke struggles to help Darth Vader back from the dark side without falling into the Emperor's trap.	58	Richard Marquand	Mark Hamill	Harrison Ford	Carrie Fisher	Billy Dee Williams	950470	309125409
127	https://m.media-amazon.com/images/M/MV5BMTg5YWIyMWUtZDY5My00Zjc1LTljOTctYmI0MWRmY2M2NmRkXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg	Metropolis	1927	\N	153 min	Drama, Sci-Fi	8.3	In a futuristic city sharply divided between the working class and the city planners, the son of the city's mastermind falls in love with a working-class prophet who predicts the coming of a savior to mediate their differences.	98	Fritz Lang	Brigitte Helm	Alfred Abel	Gustav Fröhlich	Rudolf Klein-Rogge	159992	1236166
144	https://m.media-amazon.com/images/M/MV5BY2FhZGI5M2QtZWFiZS00NjkwLWE4NWQtMzg3ZDZjNjdkYTJiXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg	El secreto de sus ojos	2009	R	129 min	Drama, Mystery, Romance	8.2	A retired legal counselor writes a novel hoping to find closure for one of his past unresolved homicide cases and for his unreciprocated love with his superior - both of which still haunt him decades later.	80	Juan José Campanella	Ricardo Darín	Soledad Villamil	Pablo Rago	Carla Quevedo	193217	6391436
160	https://m.media-amazon.com/images/M/MV5BMzcwYWFkYzktZjAzNC00OGY1LWI4YTgtNzc5MzVjMDVmNjY0XkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg	A Beautiful Mind	2001	UA	135 min	Biography, Drama	8.2	After John Nash, a brilliant but asocial mathematician, accepts secret work in cryptography, his life takes a turn for the nightmarish.	72	Ron Howard	Russell Crowe	Ed Harris	Jennifer Connelly	Christopher Plummer	848920	170742341
193	https://m.media-amazon.com/images/M/MV5BYTIwNDcyMjktMTczMy00NDM5LTlhNDEtMmE3NGVjOTM2YjQ3XkEyXkFqcGdeQXVyNjc0MzMzNjA@._V1_.jpg	To Be or Not to Be	1942	Passed	99 min	Comedy, War	8.2	During the Nazi occupation of Poland, an acting troupe becomes embroiled in a Polish soldier's efforts to track down a German spy.	86	Ernst Lubitsch	Carole Lombard	Jack Benny	Robert Stack	Felix Bressart	29915	\N
210	https://m.media-amazon.com/images/M/MV5BMzM5NjUxOTEyMl5BMl5BanBnXkFtZTgwNjEyMDM0MDE@._V1_.jpg	The Grand Budapest Hotel	2014	UA	99 min	Adventure, Comedy, Crime	8.1	A writer encounters the owner of an aging high-class hotel, who tells him of his early years serving as a lobby boy in the hotel's glorious years under an exceptional concierge.	88	Wes Anderson	Ralph Fiennes	F. Murray Abraham	Mathieu Amalric	Adrien Brody	707630	59100318
226	https://m.media-amazon.com/images/M/MV5BMTc5NTk2OTU1Nl5BMl5BanBnXkFtZTcwMDc3NjAwMg@@._V1_.jpg	Gran Torino	2008	R	116 min	Drama	8.1	Disgruntled Korean War veteran Walt Kowalski sets out to reform his neighbor, Thao Lor, a Hmong teenager who tried to steal Kowalski's prized possession: a 1972 Gran Torino.	72	Clint Eastwood	Clint Eastwood	Bee Vang	Christopher Carley	Ahney Her	720450	148095302
243	https://m.media-amazon.com/images/M/MV5BZTAzNWZlNmUtZDEzYi00ZjA5LWIwYjEtZGM1NWE1MjE4YWRhXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_.jpg	Finding Nemo	2003	U	100 min	Animation, Adventure, Comedy	8.1	After his son is captured in the Great Barrier Reef and taken to Sydney, a timid clownfish sets out on a journey to bring him home.	90	Andrew Stanton	Lee Unkrich	Albert Brooks	Ellen DeGeneres	Alexander Gould	949565	380843261
259	https://m.media-amazon.com/images/M/MV5BYmNjYzRlM2YtZTZjZC00ODVmLTljZWMtODg1YmYyNDBiNzU3XkEyXkFqcGdeQXVyNTkzNDQ4ODc@._V1_.jpg	Dilwale Dulhania Le Jayenge	1995	U	189 min	Drama, Romance	8.1	When Raj meets Simran in Europe, it isn't love at first sight but when Simran moves to India for an arranged marriage, love makes its presence felt.	\N	Aditya Chopra	Shah Rukh Khan	Kajol	Amrish Puri	Farida Jalal	63516	\N
275	https://m.media-amazon.com/images/M/MV5BZmQzMDE5ZWQtOTU3ZS00ZjdhLWI0OTctZDNkODk4YThmOTRhL2ltYWdlXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_.jpg	Fanny och Alexander	1982	A	188 min	Drama	8.1	Two young Swedish children experience the many comedies and tragedies of their family, the Ekdahls.	100	Ingmar Bergman	Bertil Guve	Pernilla Allwin	Kristina Adolphson	Börje Ahlstedt	57784	4971340
292	https://m.media-amazon.com/images/M/MV5BZWEzMGY4OTQtYTdmMy00M2QwLTliYTQtYWUzYzc3OTA5YzIwXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_.jpg	La battaglia di Algeri	1966	\N	121 min	Drama, War	8.1	In the 1950s, fear and violence escalate as the people of Algiers fight for independence from the French government.	96	Gillo Pontecorvo	Brahim Hadjadj	Jean Martin	Yacef Saadi	Samia Kerbash	53089	55908
309	https://m.media-amazon.com/images/M/MV5BZmI5NTA3MjItYzdhMi00MWMxLTg3OWMtYWQyYjg5MTFmM2U0L2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_.jpg	White Heat	1949	\N	114 min	Action, Crime, Drama	8.1	A psychopathic criminal with a mother complex makes a daring break from prison and leads his old gang in a chemical plant payroll heist.	\N	Raoul Walsh	James Cagney	Virginia Mayo	Edmond O'Brien	Margaret Wycherly	29807	\N
326	https://m.media-amazon.com/images/M/MV5BMjE1NjQ5ODc2NV5BMl5BanBnXkFtZTgwOTM5ODIxNjE@._V1_.jpg	Bajrangi Bhaijaan	2015	UA	163 min	Action, Adventure, Comedy	8	An Indian man with a magnanimous heart takes a young mute Pakistani girl back to her homeland to reunite her with her family.	\N	Kabir Khan	Salman Khan	Harshaali Malhotra	Nawazuddin Siddiqui	Kareena Kapoor	72245	8178001
343	https://m.media-amazon.com/images/M/MV5BMTA2NDc3Njg5NDVeQTJeQWpwZ15BbWU4MDc1NDcxNTUz._V1_.jpg	Bohemian Rhapsody	2018	UA	134 min	Biography, Drama, Music	8	The story of the legendary British rock band Queen and lead singer Freddie Mercury, leading up to their famous performance at Live Aid (1985).	49	Bryan Singer	Rami Malek	Lucy Boynton	Gwilym Lee	Ben Hardy	450349	216428042
344	https://m.media-amazon.com/images/M/MV5BMDE5OWMzM2QtOTU2ZS00NzAyLWI2MDEtOTRlYjIxZGM0OWRjXkEyXkFqcGdeQXVyODE5NzE3OTE@._V1_.jpg	The Revenant	2015	A	156 min	Action, Adventure, Drama	8	A frontiersman on a fur trading expedition in the 1820s fights for survival after being mauled by a bear and left for dead by members of his own hunting team.	76	Alejandro G. Iñárritu	Leonardo DiCaprio	Tom Hardy	Will Poulter	Domhnall Gleeson	705589	183637894
360	https://m.media-amazon.com/images/M/MV5BMTYwMTA4MzgyNF5BMl5BanBnXkFtZTgwMjEyMjE0MDE@._V1_.jpg	Dallas Buyers Club	2013	R	117 min	Biography, Drama	8	In 1985 Dallas, electrician and hustler Ron Woodroof works around the system to help AIDS patients get the medication they need after he is diagnosed with the disease.	80	Jean-Marc Vallée	Matthew McConaughey	Jennifer Garner	Jared Leto	Steve Zahn	441614	27298285
377	https://m.media-amazon.com/images/M/MV5BNGYyZGM5MGMtYTY2Ni00M2Y1LWIzNjQtYWUzM2VlNGVhMDNhXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg	Pirates of the Caribbean: The Curse of the Black Pearl	2003	UA	143 min	Action, Adventure, Fantasy	8	Blacksmith Will Turner teams up with eccentric pirate "Captain" Jack Sparrow to save his love, the governor's daughter, from Jack's former pirate allies, who are now undead.	63	Gore Verbinski	Johnny Depp	Geoffrey Rush	Orlando Bloom	Keira Knightley	1015122	305413918
394	https://m.media-amazon.com/images/M/MV5BN2Y2OWU4MWMtNmIyMy00YzMyLWI0Y2ItMTcyZDc3MTdmZDU4XkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg	Twelve Monkeys	1995	A	129 min	Mystery, Sci-Fi, Thriller	8	In a future world devastated by disease, a convict is sent back in time to gather information about the man-made virus that wiped out most of the human population on the planet.	74	Terry Gilliam	Bruce Willis	Madeleine Stowe	Brad Pitt	Joseph Melito	578443	57141459
410	https://m.media-amazon.com/images/M/MV5BNTg0NmI1ZGQtZTUxNC00NTgxLThjMDUtZmRlYmEzM2MwOWYwXkEyXkFqcGdeQXVyMzM4MjM0Nzg@._V1_.jpg	Tenkû no shiro Rapyuta	1986	U	125 min	Animation, Adventure, Drama	8	A young boy and a girl with a magic crystal must race against pirates and foreign agents in a search for a legendary floating castle.	78	Hayao Miyazaki	Mayumi Tanaka	Keiko Yokozawa	Kotoe Hatsui	Minori Terada	150140	\N
427	https://m.media-amazon.com/images/M/MV5BMTg0NjUwMzg5NF5BMl5BanBnXkFtZTgwNDQ0NjcwMTE@._V1_.jpg	Planet of the Apes	1968	U	112 min	Adventure, Sci-Fi	8	An astronaut crew crash-lands on a planet in the distant future where intelligent talking apes are the dominant species, and humans are the oppressed and enslaved.	79	Franklin J. Schaffner	Charlton Heston	Roddy McDowall	Kim Hunter	Maurice Evans	165167	33395426
444	https://m.media-amazon.com/images/M/MV5BYjUyOGMyMTQtYTM5Yy00MjFiLTk2OGItMWYwMDc2YmM1YzhiXkEyXkFqcGdeQXVyMjA0MzYwMDY@._V1_.jpg	La Strada	1954	\N	108 min	Drama	8	A care-free girl is sold to a traveling entertainer, consequently enduring physical and emotional pain along the way.	\N	Federico Fellini	Anthony Quinn	Giulietta Masina	Richard Basehart	Aldo Silvani	58314	\N
446	https://m.media-amazon.com/images/M/MV5BNDMyNGU0NjUtNTIxMC00ZmU2LWE0ZGItZTdkNGVlODI2ZDcyL2ltYWdlXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_.jpg	Stalag 17	1953	\N	120 min	Comedy, Drama, War	8	When two escaping American World War II prisoners are killed, the German P.O.W. camp barracks black marketeer, J.J. Sefton, is suspected of being an informer.	84	Billy Wilder	William Holden	Don Taylor	Otto Preminger	Robert Strauss	51046	\N
461	https://m.media-amazon.com/images/M/MV5BYmFlOWMwMjAtMDMyMC00N2JjLTllODUtZjY3YWU3NGRkM2I2L2ltYWdlXkEyXkFqcGdeQXVyMjUxODE0MDY@._V1_.jpg	The Thin Man	1934	TV-PG	91 min	Comedy, Crime, Mystery	8	Former detective Nick Charles and his wealthy wife Nora investigate a murder case, mostly for the fun of it.	86	W.S. Van Dyke	William Powell	Myrna Loy	Maureen O'Sullivan	Nat Pendleton	26642	\N
478	https://m.media-amazon.com/images/M/MV5BOTAzODEzNDAzMl5BMl5BanBnXkFtZTgwMDU1MTgzNzE@._V1_.jpg	Star Wars: Episode VII - The Force Awakens	2015	U	138 min	Action, Adventure, Sci-Fi	7.9	As a new threat to the galaxy rises, Rey, a desert scavenger, and Finn, an ex-stormtrooper, must join Han Solo and Chewbacca to search for the one hope of restoring peace.	80	J.J. Abrams	Daisy Ridley	John Boyega	Oscar Isaac	Domhnall Gleeson	860823	936662225
495	https://m.media-amazon.com/images/M/MV5BMTUwOGFiM2QtOWMxYS00MjU2LThmZDMtZDM2MWMzNzllNjdhXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg	In Bruges	2008	R	107 min	Comedy, Crime, Drama	7.9	Guilt-stricken after a job gone wrong, hitman Ray and his partner await orders from their ruthless boss in Bruges, Belgium, the last place in the world Ray wants to be.	67	Martin McDonagh	Colin Farrell	Brendan Gleeson	Ciarán Hinds	Elizabeth Berrington	390334	7757130
511	https://m.media-amazon.com/images/M/MV5BMjYzYWM4YTItZjJiMC00OTM5LTg3NDgtOGQ2Njk2ZWNhN2QwXkEyXkFqcGdeQXVyMzM4MjM0Nzg@._V1_.jpg	Cowboy Bebop: Tengoku no tobira	2001	U	115 min	Animation, Action, Crime	7.9	A terrorist explosion releases a deadly virus on the masses, and it's up the bounty-hunting Bebop crew to catch the cold-blooded culprit.	61	Shin'ichirô Watanabe	Tensai Okamura	Hiroyuki Okiura	Yoshiyuki Takei	Beau Billingslea	42897	1000045
526	https://m.media-amazon.com/images/M/MV5BYjdkNzA4MzYtZThhOS00ZDgzLTlmMDItNmY1ZjI5YjkzZTE1XkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg	My Left Foot: The Story of Christy Brown	1989	U	103 min	Biography, Drama	7.9	Christy Brown, born with cerebral palsy, learns to paint and write with his only controllable limb - his left foot.	97	Jim Sheridan	Daniel Day-Lewis	Brenda Fricker	Alison Whelan	Kirsten Sheridan	68076	14743391
542	https://m.media-amazon.com/images/M/MV5BY2M5Mzg3NjctZTlkNy00MTU0LWFlYTQtY2E2Y2M4NjNiNzllXkEyXkFqcGdeQXVyMTAwMzUyOTc@._V1_.jpg	Harold and Maude	1971	PG	91 min	Comedy, Drama, Romance	7.9	Young, rich, and obsessed with death, Harold finds himself changed forever when he meets lively septuagenarian Maude at a funeral.	62	Hal Ashby	Ruth Gordon	Bud Cort	Vivian Pickles	Cyril Cusack	70826	\N
559	https://m.media-amazon.com/images/M/MV5BNjRkOGEwYTUtY2E5Yy00ODg4LTk2ZWItY2IyMzUxOGVhMTM1XkEyXkFqcGdeQXVyNDk0MDg4NDk@._V1_.jpg	Miracle on 34th Street	1947	\N	96 min	Comedy, Drama, Family	7.9	When a nice old man who claims to be Santa Claus is institutionalized as insane, a young lawyer decides to defend him by arguing in court that he is the real thing.	88	George Seaton	Edmund Gwenn	Maureen O'Hara	John Payne	Gene Lockhart	41625	2650000
575	https://m.media-amazon.com/images/M/MV5BNDQzZmQ5MjItYmJlNy00MGI2LWExMDQtMjBiNjNmMzc5NTk1XkEyXkFqcGdeQXVyNjY1OTY4MTk@._V1_.jpg	Perfetti sconosciuti	2016	\N	96 min	Comedy, Drama	7.8	Seven long-time friends get together for a dinner. When they decide to share with each other the content of every text message, email and phone call they receive, many secrets start to unveil and the equilibrium trembles.	\N	Paolo Genovese	Giuseppe Battiston	Anna Foglietta	Marco Giallini	Edoardo Leo	57168	\N
591	https://m.media-amazon.com/images/M/MV5BMTUwMzc1NjIzMV5BMl5BanBnXkFtZTgwODUyMTIxMTE@._V1_.jpg	The Lunchbox	2013	U	104 min	Drama, Romance	7.8	A mistaken delivery in Mumbai's famously efficient lunchbox delivery system connects a young housewife to an older man in the dusk of his life as they build a fantasy world together through notes in the lunchbox.	76	Ritesh Batra	Irrfan Khan	Nimrat Kaur	Nawazuddin Siddiqui	Lillete Dubey	50523	4231500
609	https://m.media-amazon.com/images/M/MV5BY2ViOTU5MDQtZTRiZi00YjViLWFiY2ItOTRhNWYyN2ZiMzUyXkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_.jpg	Chugyeokja	2008	\N	125 min	Action, Crime, Thriller	7.8	A disgraced ex-policeman who runs a small ring of prostitutes finds himself in a race against time when one of his women goes missing.	64	Hong-jin Na	Kim Yoon-seok	Jung-woo Ha	Yeong-hie Seo	Yoo-Jeong Kim	58468	\N
625	https://m.media-amazon.com/images/M/MV5BMTg4ODkzMDQ3Nl5BMl5BanBnXkFtZTgwNTEwMTkxMDE@._V1_.jpg	Mr. Nobody	2009	R	141 min	Drama, Fantasy, Romance	7.8	A boy stands on a station platform as a train is about to leave. Should he go with his mother or stay with his father? Infinite possibilities arise from this decision. As long as he doesn't choose, anything is possible.	63	Jaco Van Dormael	Jared Leto	Sarah Polley	Diane Kruger	Linh Dan Pham	216421	3600
641	https://m.media-amazon.com/images/M/MV5BNGRiOTIwNTAtYWM2Yy00Yzc4LTkyZjEtNTM3NTIyZTNhMzg1XkEyXkFqcGdeQXVyODIyOTEyMzY@._V1_.jpg	Les triplettes de Belleville	2003	PG-13	80 min	Animation, Comedy, Drama	7.8	When her grandson is kidnapped during the Tour de France, Madame Souza and her beloved pooch Bruno team up with the Belleville Sisters--an aged song-and-dance team from the days of Fred Astaire--to rescue him.	91	Sylvain Chomet	Michèle Caucheteux	Jean-Claude Donda	Michel Robin	Monica Viegas	50622	7002255
657	https://m.media-amazon.com/images/M/MV5BNDYwZTU2MzktNWYxMS00NTYzLTgzOWEtMTRiYjc5NGY2Nzg1XkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg	Breaking the Waves	1996	R	159 min	Drama	7.8	Oilman Jan is paralyzed in an accident. His wife, who prayed for his return, feels guilty; even more, when Jan urges her to have sex with another.	76	Lars von Trier	Emily Watson	Stellan Skarsgård	Katrin Cartlidge	Jean-Marc Barr	62428	4040691
673	https://m.media-amazon.com/images/M/MV5BOTc0ODM1Njk1NF5BMl5BanBnXkFtZTcwMDI5OTEyNw@@._V1_.jpg	Majo no takkyûbin	1989	U	103 min	Animation, Adventure, Drama	7.8	A young witch, on her mandatory year of independent life, finds fitting into a new community difficult while she supports herself by running an air courier service.	83	Hayao Miyazaki	Kirsten Dunst	Minami Takayama	Rei Sakuma	Kappei Yamaguchi	124193	\N
690	https://m.media-amazon.com/images/M/MV5BNDM3YjNlYmMtOGY3NS00MmRjLWIyY2UtNDA0MWM3OTNlZTY2XkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg	Kramer vs. Kramer	1979	A	105 min	Drama	7.8	Ted Kramer's wife leaves him, allowing for a lost bond to be rediscovered between Ted and his son, Billy. But a heated custody battle ensues over the divorced couple's son, deepening the wounds left by the separation.	77	Robert Benton	Dustin Hoffman	Meryl Streep	Jane Alexander	Justin Henry	133351	106260000
709	https://m.media-amazon.com/images/M/MV5BNzk5MDk2MjktY2I3NS00ODZkLTk3OTktY2Q3ZDE2MmQ2M2ZmXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_.jpg	À bout de souffle	1960	U	90 min	Crime, Drama	7.8	A small-time thief steals a car and impulsively murders a motorcycle policeman. Wanted by the authorities, he reunites with a hip American journalism student and attempts to persuade her to run away with him to Italy.	\N	Jean-Luc Godard	Jean-Paul Belmondo	Jean Seberg	Daniel Boulanger	Henri-Jacques Huet	73251	336705
725	https://m.media-amazon.com/images/M/MV5BMjUxMDQwNjcyNl5BMl5BanBnXkFtZTgwNzcwMzc0MTI@._V1_.jpg	Get Out	2017	R	104 min	Horror, Mystery, Thriller	7.7	A young African-American visits his white girlfriend's parents for the weekend, where his simmering uneasiness about their reception of him eventually reaches a boiling point.	85	Jordan Peele	Daniel Kaluuya	Allison Williams	Bradley Whitford	Catherine Keener	492851	176040665
742	https://m.media-amazon.com/images/M/MV5BNjg0OTM5OTQyNV5BMl5BanBnXkFtZTgwNDg5NDQ0NTE@._V1_.jpg	Le Petit Prince	2015	PG	108 min	Animation, Adventure, Drama	7.7	A little girl lives in a very grown-up world with her mother, who tries to prepare her for it. Her neighbor, the Aviator, introduces the girl to an extraordinary world where anything is possible, the world of the Little Prince.	70	Mark Osborne	Jeff Bridges	Mackenzie Foy	Rachel McAdams	Marion Cotillard	56720	1339152
759	https://m.media-amazon.com/images/M/MV5BNDliMTMxOWEtODM3Yi00N2QwLTg4YTAtNTE5YzBlNTA2NjhlXkEyXkFqcGdeQXVyNjE5MjUyOTM@._V1_.jpg	Papurika	2006	U	90 min	Animation, Drama, Fantasy	7.7	When a machine that allows therapists to enter their patients' dreams is stolen, all Hell breaks loose. Only a young female therapist, Paprika, can stop it.	81	Satoshi Kon	Megumi Hayashibara	Tôru Emori	Katsunosuke Hori	Tôru Furuya	71379	881302
809	https://m.media-amazon.com/images/M/MV5BZjFkOWM5NDUtODYwOS00ZDg0LWFkZGUtYzBkYzNjZjU3ODE3XkEyXkFqcGdeQXVyNzQzNzQxNzI@._V1_.jpg	Le dîner de cons	1998	PG-13	80 min	Comedy	7.7	A few friends have a weekly fools' dinner, where each brings a fool along. Pierre finds a champion fool for next dinner. Surprise.	73	Francis Veber	Thierry Lhermitte	Jacques Villeret	Francis Huster	Daniel Prévost	37424	4065116
826	https://m.media-amazon.com/images/M/MV5BOWQ1ZWE0MTQtMmEwOS00YjA3LTgyZTAtNjY5ODEyZTJjNDI2XkEyXkFqcGdeQXVyNjE5MjUyOTM@._V1_.jpg	Fried Green Tomatoes	1991	PG-13	130 min	Drama	7.7	A housewife who is unhappy with her life befriends an old lady in a nursing home and is enthralled by the tales she tells of people she used to know.	64	Jon Avnet	Kathy Bates	Jessica Tandy	Mary Stuart Masterson	Mary-Louise Parker	66941	82418501
845	https://m.media-amazon.com/images/M/MV5BNzk1OGU2NmMtNTdhZC00NjdlLWE5YTMtZTQ0MGExZTQzOGQyXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg	Halloween	1978	A	91 min	Horror, Thriller	7.7	Fifteen years after murdering his sister on Halloween night 1963, Michael Myers escapes from a mental hospital and returns to the small town of Haddonfield, Illinois to kill again.	87	John Carpenter	Donald Pleasence	Jamie Lee Curtis	Tony Moran	Nancy Kyes	233106	47000000
880	https://m.media-amazon.com/images/M/MV5BOTg4ZTNkZmUtMzNlZi00YmFjLTk1MmUtNWQwNTM0YjcyNTNkXkEyXkFqcGdeQXVyNjg2NjQwMDQ@._V1_.jpg	Once Upon a Time... in Hollywood	2019	A	161 min	Comedy, Drama	7.6	A faded television actor and his stunt double strive to achieve fame and success in the final years of Hollywood's Golden Age in 1969 Los Angeles.	83	Quentin Tarantino	Leonardo DiCaprio	Brad Pitt	Margot Robbie	Emile Hirsch	551309	142502728
896	https://m.media-amazon.com/images/M/MV5BYTYxZjQ2YTktNmVkMC00ZTY4LThkZmItMDc4MTJiYjVhZjM0L2ltYWdlXkEyXkFqcGdeQXVyMjgyNjk3MzE@._V1_.jpg	Leviafan	2014	R	140 min	Crime, Drama	7.6	In a Russian coastal town, Kolya is forced to fight the corrupt mayor when he is told that his house will be demolished. He recruits a lawyer friend to help, but the man's arrival brings further misfortune for Kolya and his family.	92	Andrey Zvyagintsev	Aleksey Serebryakov	Elena Lyadova	Roman Madyanov	Vladimir Vdovichenkov	49397	1092800
912	https://m.media-amazon.com/images/M/MV5BYmFmNjY5NDYtZjlhNi00YjQ5LTgzNzctNWRiNWUzNmIyNjc4XkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg	La piel que habito	2011	R	120 min	Drama, Horror, Thriller	7.6	A brilliant plastic surgeon, haunted by past tragedies, creates a type of synthetic skin that withstands any kind of damage. His guinea pig: a mysterious and volatile woman who holds the key to his obsession.	70	Pedro Almodóvar	Antonio Banderas	Elena Anaya	Jan Cornet	Marisa Paredes	138959	3185812
928	https://m.media-amazon.com/images/M/MV5BNzU3NDg4NTAyNV5BMl5BanBnXkFtZTcwOTg2ODg1Mg@@._V1_.jpg	Harry Potter and the Half-Blood Prince	2009	UA	153 min	Action, Adventure, Family	7.6	As Harry Potter begins his sixth year at Hogwarts, he discovers an old book marked as "the property of the Half-Blood Prince" and begins to learn more about Lord Voldemort's dark past.	78	David Yates	Daniel Radcliffe	Emma Watson	Rupert Grint	Michael Gambon	474827	301959197
945	https://m.media-amazon.com/images/M/MV5BMDc2MGYwYzAtNzE2Yi00YmU3LTkxMDUtODk2YjhiNDM5NDIyXkEyXkFqcGdeQXVyMTEwNDU1MzEy._V1_.jpg	Batoru rowaiaru	2000	\N	114 min	Action, Adventure, Drama	7.6	In the future, the Japanese government captures a class of ninth-grade students and forces them to kill each other under the revolutionary "Battle Royale" act.	81	Kinji Fukasaku	Tatsuya Fujiwara	Aki Maeda	Tarô Yamamoto	Takeshi Kitano	169091	\N
961	https://m.media-amazon.com/images/M/MV5BMzk1MmI4NzAtOGRiNS00YjY1LTllNmEtZDhiZDM4MjU2NTMxXkEyXkFqcGdeQXVyNjc3MjQzNTI@._V1_.jpg	Sleepers	1996	UA	147 min	Crime, Drama, Thriller	7.6	After a prank goes disastrously wrong, a group of boys are sent to a detention center where they are brutalized. Thirteen years later, an unexpected random encounter with a former guard gives them a chance for revenge.	49	Barry Levinson	Robert De Niro	Kevin Bacon	Brad Pitt	Jason Patric	186734	49100000
978	https://m.media-amazon.com/images/M/MV5BODk1ZWM4ZjItMjFhZi00MDMxLTgxNmYtODFhNWZlZTkwM2UwXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg	The Naked Gun: From the Files of Police Squad!	1988	U	85 min	Comedy, Crime	7.6	Incompetent police Detective Frank Drebin must foil an attempt to assassinate Queen Elizabeth II.	76	David Zucker	Leslie Nielsen	Priscilla Presley	O.J. Simpson	Ricardo Montalban	152871	78756177
866	https://m.media-amazon.com/images/M/MV5BMzYyNzU0MTM1OF5BMl5BanBnXkFtZTcwMzE1ODE1NA@@._V1_.jpg	The Magnificent Seven	1960	Approved	128 min	Action, Adventure, Western	7.7	Seven gunfighters are hired by Mexican peasants to liberate their village from oppressive bandits.	74	John Sturges	Yul Brynner	Steve McQueen	Charles Bronson	Eli Wallach	87719	4905000
867	https://m.media-amazon.com/images/M/MV5BNzBiMWRhNzQtMjZhZS00NzFmLWE5YWMtOWY4NzIxMjYzZTEyXkEyXkFqcGdeQXVyMzg2MzE2OTE@._V1_.jpg	Les yeux sans visage	1960	\N	90 min	Drama, Horror	7.7	A surgeon causes an accident which leaves his daughter disfigured, and goes to extremes to give her a new face.	90	Georges Franju	Pierre Brasseur	Alida Valli	Juliette Mayniel	Alexandre Rignault	27620	52709
868	https://m.media-amazon.com/images/M/MV5BYTExYjM3MDYtMzg4MC00MjU4LTljZjAtYzdlMTFmYTJmYTE4XkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_.jpg	Invasion of the Body Snatchers	1956	Approved	80 min	Drama, Horror, Sci-Fi	7.7	A small-town doctor learns that the population of his community is being replaced by emotionless alien duplicates.	92	Don Siegel	Kevin McCarthy	Dana Wynter	Larry Gates	King Donovan	44839	\N
869	https://m.media-amazon.com/images/M/MV5BMTg2ODcxOTU1OV5BMl5BanBnXkFtZTgwNzA3ODI1MDE@._V1_.jpg	Rebel Without a Cause	1955	PG-13	111 min	Drama	7.7	A rebellious young man with a troubled past comes to a new town, finding friends and enemies.	89	Nicholas Ray	James Dean	Natalie Wood	Sal Mineo	Jim Backus	83363	\N
870	https://m.media-amazon.com/images/M/MV5BYTVlM2JmOGQtNWEwYy00NDQzLWIyZmEtOGZhMzgxZGRjZDA0XkEyXkFqcGdeQXVyMDI2NDg0NQ@@._V1_.jpg	The Ladykillers	1955	\N	91 min	Comedy, Crime	7.7	Five oddball criminals planning a bank robbery rent rooms on a cul-de-sac from an octogenarian widow under the pretext that they are classical musicians.	91	Alexander Mackendrick	Alec Guinness	Peter Sellers	Cecil Parker	Herbert Lom	26464	\N
871	https://m.media-amazon.com/images/M/MV5BYmFlNTA1NWItODQxNC00YjFmLWE3ZWYtMzg3YTkwYmMxMjY2XkEyXkFqcGdeQXVyMTMxMTY0OTQ@._V1_.jpg	Sabrina	1954	Passed	113 min	Comedy, Drama, Romance	7.7	A playboy becomes interested in the daughter of his family's chauffeur, but it's his more serious brother who would be the better man for her.	72	Billy Wilder	Humphrey Bogart	Audrey Hepburn	William Holden	Walter Hampden	59415	\N
872	https://m.media-amazon.com/images/M/MV5BMWM1ZDhlM2MtNDNmMi00MDk4LTg5MjgtODE4ODk1MjYxOTIwXkEyXkFqcGdeQXVyNjc0MzMzNjA@._V1_.jpg	The Quiet Man	1952	Passed	129 min	Comedy, Drama, Romance	7.7	A retired American boxer returns to the village of his birth in Ireland, where he falls for a spirited redhead whose brother is contemptuous of their union.	\N	John Ford	John Wayne	Maureen O'Hara	Barry Fitzgerald	Ward Bond	34677	10550000
873	https://m.media-amazon.com/images/M/MV5BMTU5NTBmYTAtOTgyYi00NGM0LWE0ODctZjNiYWM5MmIxYzE4XkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_.jpg	The Day the Earth Stood Still	1951	U	92 min	Drama, Sci-Fi	7.7	An alien lands and tells the people of Earth that they must live peacefully or be destroyed as a danger to other planets.	\N	Robert Wise	Michael Rennie	Patricia Neal	Hugh Marlowe	Sam Jaffe	76315	\N
874	https://m.media-amazon.com/images/M/MV5BYzM3YjE2NGMtODY3Zi00NTY0LWE4Y2EtMTE5YzNmM2U1NTg2XkEyXkFqcGdeQXVyMTY5Nzc4MDY@._V1_.jpg	The African Queen	1951	PG	105 min	Adventure, Drama, Romance	7.7	In WWI Africa, a gin-swilling riverboat captain is persuaded by a strait-laced missionary to use his boat to attack an enemy warship.	91	John Huston	Humphrey Bogart	Katharine Hepburn	Robert Morley	Peter Bull	71481	536118
875	https://m.media-amazon.com/images/M/MV5BYWUxMzViZTUtNTYxNy00YjY4LWJmMjYtMzNlOThjNjhiZmZkXkEyXkFqcGdeQXVyMDI2NDg0NQ@@._V1_.jpg	Gilda	1946	Approved	110 min	Drama, Film-Noir, Romance	7.7	A small-time gambler hired to work in a Buenos Aires casino discovers his employer's new wife is his former lover.	\N	Charles Vidor	Rita Hayworth	Glenn Ford	George Macready	Joseph Calleia	27991	\N
876	https://m.media-amazon.com/images/M/MV5BMjAxMTI1Njk3OF5BMl5BanBnXkFtZTgwNjkzODk4NTE@._V1_.jpg	Fantasia	1940	G	125 min	Animation, Family, Fantasy	7.7	A collection of animated interpretations of great works of Western classical music.	96	James Algar	Samuel Armstrong	Ford Beebe Jr.	Norman Ferguson	David Hand	88662	76408097
877	https://m.media-amazon.com/images/M/MV5BYjllMmE0Y2YtYWIwZi00OWY1LWJhNWItYzM2MmNiYmFiZmRmXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_.jpg	The Invisible Man	1933	TV-PG	71 min	Horror, Sci-Fi	7.7	A scientist finds a way of becoming invisible, but in doing so, he becomes murderously insane.	87	James Whale	Claude Rains	Gloria Stuart	William Harrigan	Henry Travers	30683	\N
878	https://m.media-amazon.com/images/M/MV5BODQ0M2Y5M2QtZGIwMC00MzJjLThlMzYtNmE3ZTMzZTYzOGEwXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_.jpg	Dark Waters	2019	PG-13	126 min	Biography, Drama, History	7.6	A corporate defense attorney takes on an environmental lawsuit against a chemical company that exposes a lengthy history of pollution.	73	Todd Haynes	Mark Ruffalo	Anne Hathaway	Tim Robbins	Bill Pullman	60408	\N
879	https://m.media-amazon.com/images/M/MV5BMjIwOTA3NDI3MF5BMl5BanBnXkFtZTgwNzIzMzA5NTM@._V1_.jpg	Searching	2018	U/A	102 min	Drama, Mystery, Thriller	7.6	After his teenage daughter goes missing, a desperate father tries to find clues on her laptop.	71	Aneesh Chaganty	John Cho	Debra Messing	Joseph Lee	Michelle La	140840	26020957
179	https://m.media-amazon.com/images/M/MV5BN2IyNTE4YzUtZWU0Mi00MGIwLTgyMmQtMzQ4YzQxYWNlYWE2XkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_.jpg	Monty Python and the Holy Grail	1975	PG	91 min	Adventure, Comedy, Fantasy	8.2	King Arthur and his Knights of the Round Table embark on a surreal, low-budget search for the Holy Grail, encountering many, very silly obstacles.	91	Terry Gilliam	Terry Jones	Graham Chapman	John Cleese	Eric Idle	500875	1229197
180	https://m.media-amazon.com/images/M/MV5BNzA2NmYxMWUtNzBlMC00MWM2LTkwNmQtYTFlZjQwODNhOWE0XkEyXkFqcGdeQXVyNTIzOTk5ODM@._V1_.jpg	The Great Escape	1963	U	172 min	Adventure, Drama, History	8.2	Allied prisoners of war plan for several hundred of their number to escape from a German camp during World War II.	86	John Sturges	Steve McQueen	James Garner	Richard Attenborough	Charles Bronson	224730	12100000
181	https://m.media-amazon.com/images/M/MV5BNmVmYzcwNzMtMWM1NS00MWIyLThlMDEtYzUwZDgzODE1NmE2XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_.jpg	To Kill a Mockingbird	1962	U	129 min	Crime, Drama	8.2	Atticus Finch, a lawyer in the Depression-era South, defends a black man against an undeserved rape charge, and his children against prejudice.	88	Robert Mulligan	Gregory Peck	John Megna	Frank Overton	Rosemary Murphy	293811	\N
182	https://m.media-amazon.com/images/M/MV5BZThiZjAzZjgtNDU3MC00YThhLThjYWUtZGRkYjc2ZWZlOTVjXkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_.jpg	Yôjinbô	1961	\N	110 min	Action, Drama, Thriller	8.2	A crafty ronin comes to a town divided by two criminal gangs and decides to play them against each other to free the town.	\N	Akira Kurosawa	Toshirô Mifune	Eijirô Tôno	Tatsuya Nakadai	Yôko Tsukasa	111244	\N
183	https://m.media-amazon.com/images/M/MV5BNDc2ODQ5NTE2MV5BMl5BanBnXkFtZTcwODExMjUyNA@@._V1_.jpg	Judgment at Nuremberg	1961	A	179 min	Drama, War	8.2	In 1948, an American court in occupied Germany tries four Nazis judged for war crimes.	60	Stanley Kramer	Spencer Tracy	Burt Lancaster	Richard Widmark	Marlene Dietrich	69458	\N
184	https://m.media-amazon.com/images/M/MV5BNzAyOGIxYjAtMGY2NC00ZTgyLWIwMWEtYzY0OWQ4NDFjOTc5XkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_.jpg	Some Like It Hot	1959	U	121 min	Comedy, Music, Romance	8.2	After two male musicians witness a mob hit, they flee the state in an all-female band disguised as women, but further complications set in.	98	Billy Wilder	Marilyn Monroe	Tony Curtis	Jack Lemmon	George Raft	243943	25000000
185	https://m.media-amazon.com/images/M/MV5BZjJhNTBmNTgtMDViOC00NDY2LWE4N2ItMDJiM2ZiYmQzYzliXkEyXkFqcGdeQXVyMzg1ODEwNQ@@._V1_.jpg	Smultronstället	1957	U	91 min	Drama, Romance	8.2	After living a life marked by coldness, an aging professor is forced to confront the emptiness of his existence.	88	Ingmar Bergman	Victor Sjöström	Bibi Andersson	Ingrid Thulin	Gunnar Björnstrand	96381	\N
186	https://m.media-amazon.com/images/M/MV5BM2I1ZWU4YjMtYzU0My00YmMzLWFmNTAtZDJhZGYwMmI3YWQ5XkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_.jpg	Det sjunde inseglet	1957	A	96 min	Drama, Fantasy, History	8.2	A man seeks answers about life, death, and the existence of God as he plays chess against the Grim Reaper during the Black Plague.	88	Ingmar Bergman	Max von Sydow	Gunnar Björnstrand	Bengt Ekerot	Nils Poppe	164939	\N
187	https://m.media-amazon.com/images/M/MV5BNjZmZGRiMDgtNDkwNi00OTZhLWFhZmMtYTdkYjgyNThhOWY3XkEyXkFqcGdeQXVyMTA1NTM1NDI2._V1_.jpg	Du rififi chez les hommes	1955	\N	118 min	Crime, Drama, Thriller	8.2	Four men plan a technically perfect crime, but the human element intervenes...	97	Jules Dassin	Jean Servais	Carl Möhner	Robert Manuel	Janine Darcey	28810	57226
188	https://m.media-amazon.com/images/M/MV5BOWIwODIxYWItZDI4MS00YzhhLWE3MmYtMzlhZDIwOTMzZmE5L2ltYWdlXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_.jpg	Dial M for Murder	1954	A	105 min	Crime, Thriller	8.2	A former tennis player tries to arrange his wife's murder after learning of her affair.	75	Alfred Hitchcock	Ray Milland	Grace Kelly	Robert Cummings	John Williams	158335	12562
189	https://m.media-amazon.com/images/M/MV5BYWQ4ZTRiODktNjAzZC00Nzg1LTk1YWQtNDFmNDI0NmZiNGIwXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_.jpg	Tôkyô monogatari	1953	U	136 min	Drama	8.2	An old couple visit their children and grandchildren in the city, but receive little attention.	\N	Yasujirô Ozu	Chishû Ryû	Chieko Higashiyama	Sô Yamamura	Setsuko Hara	53153	\N
190	https://m.media-amazon.com/images/M/MV5BMjEzMzA4NDE2OF5BMl5BanBnXkFtZTcwNTc5MDI2NQ@@._V1_.jpg	Rashômon	1950	\N	88 min	Crime, Drama, Mystery	8.2	The rape of a bride and the murder of her samurai husband are recalled from the perspectives of a bandit, the bride, the samurai's ghost and a woodcutter.	98	Akira Kurosawa	Toshirô Mifune	Machiko Kyô	Masayuki Mori	Takashi Shimura	152572	96568
191	https://m.media-amazon.com/images/M/MV5BMTY2MTAzODI5NV5BMl5BanBnXkFtZTgwMjM4NzQ0MjE@._V1_.jpg	All About Eve	1950	Passed	138 min	Drama	8.2	A seemingly timid but secretly ruthless ingénue insinuates herself into the lives of an aging Broadway star and her circle of theater friends.	98	Joseph L. Mankiewicz	Bette Davis	Anne Baxter	George Sanders	Celeste Holm	120539	10177
192	https://m.media-amazon.com/images/M/MV5BOTJlZWMxYzEtMjlkMS00ODE0LThlM2ItMDI3NGQ2YjhmMzkxXkEyXkFqcGdeQXVyMDI2NDg0NQ@@._V1_.jpg	The Treasure of the Sierra Madre	1948	Passed	126 min	Adventure, Drama, Western	8.2	Two Americans searching for work in Mexico convince an old prospector to help them mine for gold in the Sierra Madre Mountains.	98	John Huston	Humphrey Bogart	Walter Huston	Tim Holt	Bruce Bennett	114304	5014000
4	https://m.media-amazon.com/images/M/MV5BMWMwMGQzZTItY2JlNC00OWZiLWIyMDctNDk2ZDQ2YjRjMWQ0XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_.jpg	The Godfather: Part II	1974	A	202 min	Crime, Drama	9	The early life and career of Vito Corleone in 1920s New York City is portrayed, while his son, Michael, expands and tightens his grip on the family crime syndicate.	90	Francis Ford Coppola	Al Pacino	Robert De Niro	Robert Duvall	Diane Keaton	1129952	57300000
5	https://m.media-amazon.com/images/M/MV5BMWU4N2FjNzYtNTVkNC00NzQ0LTg0MjAtYTJlMjFhNGUxZDFmXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_.jpg	12 Angry Men	1957	U	96 min	Crime, Drama	9	A jury holdout attempts to prevent a miscarriage of justice by forcing his colleagues to reconsider the evidence.	96	Sidney Lumet	Henry Fonda	Lee J. Cobb	Martin Balsam	John Fiedler	689845	4360000
6	https://m.media-amazon.com/images/M/MV5BNzA5ZDNlZWMtM2NhNS00NDJjLTk4NDItYTRmY2EwMWZlMTY3XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_.jpg	The Lord of the Rings: The Return of the King	2003	U	201 min	Action, Adventure, Drama	8.9	Gandalf and Aragorn lead the World of Men against Sauron's army to draw his gaze from Frodo and Sam as they approach Mount Doom with the One Ring.	94	Peter Jackson	Elijah Wood	Viggo Mortensen	Ian McKellen	Orlando Bloom	1642758	377845905
7	https://m.media-amazon.com/images/M/MV5BNGNhMDIzZTUtNTBlZi00MTRlLWFjM2ItYzViMjE3YzI5MjljXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_.jpg	Pulp Fiction	1994	A	154 min	Crime, Drama	8.9	The lives of two mob hitmen, a boxer, a gangster and his wife, and a pair of diner bandits intertwine in four tales of violence and redemption.	94	Quentin Tarantino	John Travolta	Uma Thurman	Samuel L. Jackson	Bruce Willis	1826188	107928762
8	https://m.media-amazon.com/images/M/MV5BNDE4OTMxMTctNmRhYy00NWE2LTg3YzItYTk3M2UwOTU5Njg4XkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_.jpg	Schindler's List	1993	A	195 min	Biography, Drama, History	8.9	In German-occupied Poland during World War II, industrialist Oskar Schindler gradually becomes concerned for his Jewish workforce after witnessing their persecution by the Nazis.	94	Steven Spielberg	Liam Neeson	Ralph Fiennes	Ben Kingsley	Caroline Goodall	1213505	96898818
9	https://m.media-amazon.com/images/M/MV5BMjAxMzY3NjcxNF5BMl5BanBnXkFtZTcwNTI5OTM0Mw@@._V1_.jpg	Inception	2010	UA	148 min	Action, Adventure, Sci-Fi	8.8	A thief who steals corporate secrets through the use of dream-sharing technology is given the inverse task of planting an idea into the mind of a C.E.O.	74	Christopher Nolan	Leonardo DiCaprio	Joseph Gordon-Levitt	Elliot Page	Ken Watanabe	2067042	292576195
10	https://m.media-amazon.com/images/M/MV5BMmEzNTkxYjQtZTc0MC00YTVjLTg5ZTEtZWMwOWVlYzY0NWIwXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_.jpg	Fight Club	1999	A	139 min	Drama	8.8	An insomniac office worker and a devil-may-care soapmaker form an underground fight club that evolves into something much, much more.	66	David Fincher	Brad Pitt	Edward Norton	Meat Loaf	Zach Grenier	1854740	37030102
11	https://m.media-amazon.com/images/M/MV5BN2EyZjM3NzUtNWUzMi00MTgxLWI0NTctMzY4M2VlOTdjZWRiXkEyXkFqcGdeQXVyNDUzOTQ5MjY@._V1_.jpg	The Lord of the Rings: The Fellowship of the Ring	2001	U	178 min	Action, Adventure, Drama	8.8	A meek Hobbit from the Shire and eight companions set out on a journey to destroy the powerful One Ring and save Middle-earth from the Dark Lord Sauron.	92	Peter Jackson	Elijah Wood	Ian McKellen	Orlando Bloom	Sean Bean	1661481	315544750
12	https://m.media-amazon.com/images/M/MV5BNWIwODRlZTUtY2U3ZS00Yzg1LWJhNzYtMmZiYmEyNmU1NjMzXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg	Forrest Gump	1994	UA	142 min	Drama, Romance	8.8	The presidencies of Kennedy and Johnson, the events of Vietnam, Watergate and other historical events unfold through the perspective of an Alabama man with an IQ of 75, whose only desire is to be reunited with his childhood sweetheart.	82	Robert Zemeckis	Tom Hanks	Robin Wright	Gary Sinise	Sally Field	1809221	330252182
13	https://m.media-amazon.com/images/M/MV5BOTQ5NDI3MTI4MF5BMl5BanBnXkFtZTgwNDQ4ODE5MDE@._V1_.jpg	Il buono, il brutto, il cattivo	1966	A	161 min	Western	8.8	A bounty hunting scam joins two men in an uneasy alliance against a third in a race to find a fortune in gold buried in a remote cemetery.	90	Sergio Leone	Clint Eastwood	Eli Wallach	Lee Van Cleef	Aldo Giuffrè	688390	6100000
16	https://m.media-amazon.com/images/M/MV5BY2NkZjEzMDgtN2RjYy00YzM1LWI4ZmQtMjIwYjFjNmI3ZGEwXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_.jpg	Goodfellas	1990	A	146 min	Biography, Crime, Drama	8.7	The story of Henry Hill and his life in the mob, covering his relationship with his wife Karen Hill and his mob partners Jimmy Conway and Tommy DeVito in the Italian-American crime syndicate.	90	Martin Scorsese	Robert De Niro	Ray Liotta	Joe Pesci	Lorraine Bracco	1020727	46836394
17	https://m.media-amazon.com/images/M/MV5BYmU1NDRjNDgtMzhiMi00NjZmLTg5NGItZDNiZjU5NTU4OTE0XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_.jpg	Star Wars: Episode V - The Empire Strikes Back	1980	UA	124 min	Action, Adventure, Fantasy	8.7	After the Rebels are brutally overpowered by the Empire on the ice planet Hoth, Luke Skywalker begins Jedi training with Yoda, while his friends are pursued by Darth Vader and a bounty hunter named Boba Fett all over the galaxy.	82	Irvin Kershner	Mark Hamill	Harrison Ford	Carrie Fisher	Billy Dee Williams	1159315	290475067
18	https://m.media-amazon.com/images/M/MV5BZjA0OWVhOTAtYWQxNi00YzNhLWI4ZjYtNjFjZTEyYjJlNDVlL2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg	One Flew Over the Cuckoo's Nest	1975	A	133 min	Drama	8.7	A criminal pleads insanity and is admitted to a mental institution, where he rebels against the oppressive nurse and rallies up the scared patients.	83	Milos Forman	Jack Nicholson	Louise Fletcher	Michael Berryman	Peter Brocco	918088	112000000
19	https://m.media-amazon.com/images/M/MV5BNjViNWRjYWEtZTI0NC00N2E3LTk0NGQtMjY4NTM3OGNkZjY0XkEyXkFqcGdeQXVyMjUxMTY3ODM@._V1_.jpg	Hamilton	2020	PG-13	160 min	Biography, Drama, History	8.6	The real life of one of America's foremost founding fathers and first Secretary of the Treasury, Alexander Hamilton. Captured live on Broadway from the Richard Rodgers Theater with the original Broadway cast.	90	Thomas Kail	Lin-Manuel Miranda	Phillipa Soo	Leslie Odom Jr.	Renée Elise Goldsberry	55291	\N
20	https://m.media-amazon.com/images/M/MV5BYWZjMjk3ZTItODQ2ZC00NTY5LWE0ZDYtZTI3MjcwN2Q5NTVkXkEyXkFqcGdeQXVyODk4OTc3MTY@._V1_.jpg	Gisaengchung	2019	A	132 min	Comedy, Drama, Thriller	8.6	Greed and class discrimination threaten the newly formed symbiotic relationship between the wealthy Park family and the destitute Kim clan.	96	Bong Joon Ho	Kang-ho Song	Lee Sun-kyun	Cho Yeo-jeong	Choi Woo-sik	552778	53367844
21	https://m.media-amazon.com/images/M/MV5BOTc2ZTlmYmItMDBhYS00YmMzLWI4ZjAtMTI5YTBjOTFiMGEwXkEyXkFqcGdeQXVyODE5NzE3OTE@._V1_.jpg	Soorarai Pottru	2020	U	153 min	Drama	8.6	Nedumaaran Rajangam "Maara" sets out to make the common man fly and in the process takes on the world's most capital intensive industry and several enemies who stand in his way.	\N	Sudha Kongara	Suriya	Madhavan	Paresh Rawal	Aparna Balamurali	54995	\N
22	https://m.media-amazon.com/images/M/MV5BZjdkOTU3MDktN2IxOS00OGEyLWFmMjktY2FiMmZkNWIyODZiXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg	Interstellar	2014	UA	169 min	Adventure, Drama, Sci-Fi	8.6	A team of explorers travel through a wormhole in space in an attempt to ensure humanity's survival.	74	Christopher Nolan	Matthew McConaughey	Anne Hathaway	Jessica Chastain	Mackenzie Foy	1512360	188020017
23	https://m.media-amazon.com/images/M/MV5BOTMwYjc5ZmItYTFjZC00ZGQ3LTlkNTMtMjZiNTZlMWQzNzI5XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_.jpg	Cidade de Deus	2002	A	130 min	Crime, Drama	8.6	In the slums of Rio, two kids' paths diverge as one struggles to become a photographer and the other a kingpin.	79	Fernando Meirelles	Kátia Lund	Alexandre Rodrigues	Leandro Firmino	Matheus Nachtergaele	699256	7563397
24	https://m.media-amazon.com/images/M/MV5BMjlmZmI5MDctNDE2YS00YWE0LWE5ZWItZDBhYWQ0NTcxNWRhXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg	Sen to Chihiro no kamikakushi	2001	U	125 min	Animation, Adventure, Family	8.6	During her family's move to the suburbs, a sullen 10-year-old girl wanders into a world ruled by gods, witches, and spirits, and where humans are changed into beasts.	96	Hayao Miyazaki	Daveigh Chase	Suzanne Pleshette	Miyu Irino	Rumi Hiiragi	651376	10055859
25	https://m.media-amazon.com/images/M/MV5BZjhkMDM4MWItZTVjOC00ZDRhLThmYTAtM2I5NzBmNmNlMzI1XkEyXkFqcGdeQXVyNDYyMDk5MTU@._V1_.jpg	Saving Private Ryan	1998	R	169 min	Drama, War	8.6	Following the Normandy Landings, a group of U.S. soldiers go behind enemy lines to retrieve a paratrooper whose brothers have been killed in action.	91	Steven Spielberg	Tom Hanks	Matt Damon	Tom Sizemore	Edward Burns	1235804	216540909
26	https://m.media-amazon.com/images/M/MV5BMTUxMzQyNjA5MF5BMl5BanBnXkFtZTYwOTU2NTY3._V1_.jpg	The Green Mile	1999	A	189 min	Crime, Drama, Fantasy	8.6	The lives of guards on Death Row are affected by one of their charges: a black man accused of child murder and rape, yet who has a mysterious gift.	61	Frank Darabont	Tom Hanks	Michael Clarke Duncan	David Morse	Bonnie Hunt	1147794	136801374
27	https://m.media-amazon.com/images/M/MV5BYmJmM2Q4NmMtYThmNC00ZjRlLWEyZmItZTIwOTBlZDQ3NTQ1XkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg	La vita è bella	1997	U	116 min	Comedy, Drama, Romance	8.6	When an open-minded Jewish librarian and his son become victims of the Holocaust, he uses a perfect mixture of will, humor, and imagination to protect his son from the dangers around their camp.	59	Roberto Benigni	Roberto Benigni	Nicoletta Braschi	Giorgio Cantarini	Giustino Durano	623629	57598247
28	https://m.media-amazon.com/images/M/MV5BOTUwODM5MTctZjczMi00OTk4LTg3NWUtNmVhMTAzNTNjYjcyXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_.jpg	Se7en	1995	A	127 min	Crime, Drama, Mystery	8.6	Two detectives, a rookie and a veteran, hunt a serial killer who uses the seven deadly sins as his motives.	65	David Fincher	Morgan Freeman	Brad Pitt	Kevin Spacey	Andrew Kevin Walker	1445096	100125643
77	https://m.media-amazon.com/images/M/MV5BYmYzNmM2MDctZGY3Yi00NjRiLWIxZjctYjgzYTcxYTNhYTMyXkEyXkFqcGdeQXVyMjUxMTY3ODM@._V1_.jpg	Anand	1971	U	122 min	Drama, Musical	8.4	The story of a terminally ill man who wishes to live life to the fullest before the inevitable occurs, as told by his best friend.	\N	Hrishikesh Mukherjee	Rajesh Khanna	Amitabh Bachchan	Sumita Sanyal	Ramesh Deo	30273	\N
31	https://m.media-amazon.com/images/M/MV5BYjBmYTQ1NjItZWU5MS00YjI0LTg2OTYtYmFkN2JkMmNiNWVkXkEyXkFqcGdeQXVyMTMxMTY0OTQ@._V1_.jpg	Seppuku	1962	\N	133 min	Action, Drama, Mystery	8.6	When a ronin requesting seppuku at a feudal lord's palace is told of the brutal suicide of another ronin who previously visited, he reveals how their pasts are intertwined - and in doing so challenges the clan's integrity.	85	Masaki Kobayashi	Tatsuya Nakadai	Akira Ishihama	Shima Iwashita	Tetsurô Tanba	42004	\N
33	https://m.media-amazon.com/images/M/MV5BZjc4NDZhZWMtNGEzYS00ZWU2LThlM2ItNTA0YzQ0OTExMTE2XkEyXkFqcGdeQXVyNjUwMzI2NzU@._V1_.jpg	It's a Wonderful Life	1946	PG	130 min	Drama, Family, Fantasy	8.6	An angel is sent from Heaven to help a desperately frustrated businessman by showing him what life would have been like if he had never existed.	89	Frank Capra	James Stewart	Donna Reed	Lionel Barrymore	Thomas Mitchell	405801	\N
34	https://m.media-amazon.com/images/M/MV5BNGVjNWI4ZGUtNzE0MS00YTJmLWE0ZDctN2ZiYTk2YmI3NTYyXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_.jpg	Joker	2019	A	122 min	Crime, Drama, Thriller	8.5	In Gotham City, mentally troubled comedian Arthur Fleck is disregarded and mistreated by society. He then embarks on a downward spiral of revolution and bloody crime. This path brings him face-to-face with his alter-ego: the Joker.	59	Todd Phillips	Joaquin Phoenix	Robert De Niro	Zazie Beetz	Frances Conroy	939252	335451311
35	https://m.media-amazon.com/images/M/MV5BOTA5NDZlZGUtMjAxOS00YTRkLTkwYmMtYWQ0NWEwZDZiNjEzXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg	Whiplash	2014	A	106 min	Drama, Music	8.5	A promising young drummer enrolls at a cut-throat music conservatory where his dreams of greatness are mentored by an instructor who will stop at nothing to realize a student's potential.	88	Damien Chazelle	Miles Teller	J.K. Simmons	Melissa Benoist	Paul Reiser	717585	13092000
36	https://m.media-amazon.com/images/M/MV5BMTYxNDA3MDQwNl5BMl5BanBnXkFtZTcwNTU4Mzc1Nw@@._V1_.jpg	The Intouchables	2011	UA	112 min	Biography, Comedy, Drama	8.5	After he becomes a quadriplegic from a paragliding accident, an aristocrat hires a young man from the projects to be his caregiver.	57	Olivier Nakache	Éric Toledano	François Cluzet	Omar Sy	Anne Le Ny	760360	13182281
37	https://m.media-amazon.com/images/M/MV5BMjA4NDI0MTIxNF5BMl5BanBnXkFtZTYwNTM0MzY2._V1_.jpg	The Prestige	2006	U	130 min	Drama, Mystery, Sci-Fi	8.5	After a tragic accident, two stage magicians engage in a battle to create the ultimate illusion while sacrificing everything they have to outwit each other.	66	Christopher Nolan	Christian Bale	Hugh Jackman	Scarlett Johansson	Michael Caine	1190259	53089891
38	https://m.media-amazon.com/images/M/MV5BMTI1MTY2OTIxNV5BMl5BanBnXkFtZTYwNjQ4NjY3._V1_.jpg	The Departed	2006	A	151 min	Crime, Drama, Thriller	8.5	An undercover cop and a mole in the police attempt to identify each other while infiltrating an Irish gang in South Boston.	85	Martin Scorsese	Leonardo DiCaprio	Matt Damon	Jack Nicholson	Mark Wahlberg	1189773	132384315
39	https://m.media-amazon.com/images/M/MV5BOWRiZDIxZjktMTA1NC00MDQ2LWEzMjUtMTliZmY3NjQ3ODJiXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_.jpg	The Pianist	2002	R	150 min	Biography, Drama, Music	8.5	A Polish Jewish musician struggles to survive the destruction of the Warsaw ghetto of World War II.	85	Roman Polanski	Adrien Brody	Thomas Kretschmann	Frank Finlay	Emilia Fox	729603	32572577
40	https://m.media-amazon.com/images/M/MV5BMDliMmNhNDEtODUyOS00MjNlLTgxODEtN2U3NzIxMGVkZTA1L2ltYWdlXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_.jpg	Gladiator	2000	UA	155 min	Action, Adventure, Drama	8.5	A former Roman General sets out to exact vengeance against the corrupt emperor who murdered his family and sent him into slavery.	67	Ridley Scott	Russell Crowe	Joaquin Phoenix	Connie Nielsen	Oliver Reed	1341460	187705427
41	https://m.media-amazon.com/images/M/MV5BZjA0MTM4MTQtNzY5MC00NzY3LWI1ZTgtYzcxMjkyMzU4MDZiXkEyXkFqcGdeQXVyNDYyMDk5MTU@._V1_.jpg	American History X	1998	R	119 min	Drama	8.5	A former neo-nazi skinhead tries to prevent his younger brother from going down the same wrong path that he did.	62	Tony Kaye	Edward Norton	Edward Furlong	Beverly D'Angelo	Jennifer Lien	1034705	6719864
42	https://m.media-amazon.com/images/M/MV5BYTViNjMyNmUtNDFkNC00ZDRlLThmMDUtZDU2YWE4NGI2ZjVmXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_.jpg	The Usual Suspects	1995	A	106 min	Crime, Mystery, Thriller	8.5	A sole survivor tells of the twisty events leading up to a horrific gun battle on a boat, which began when five criminals met at a seemingly random police lineup.	77	Bryan Singer	Kevin Spacey	Gabriel Byrne	Chazz Palminteri	Stephen Baldwin	991208	23341568
43	https://m.media-amazon.com/images/M/MV5BODllNWE0MmEtYjUwZi00ZjY3LThmNmQtZjZlMjI2YTZjYmQ0XkEyXkFqcGdeQXVyNTc1NTQxODI@._V1_.jpg	Léon	1994	A	110 min	Action, Crime, Drama	8.5	Mathilda, a 12-year-old girl, is reluctantly taken in by Léon, a professional assassin, after her family is murdered. An unusual relationship forms as she becomes his protégée and learns the assassin's trade.	64	Luc Besson	Jean Reno	Gary Oldman	Natalie Portman	Danny Aiello	1035236	19501238
44	https://m.media-amazon.com/images/M/MV5BYTYxNGMyZTYtMjE3MS00MzNjLWFjNmYtMDk3N2FmM2JiM2M1XkEyXkFqcGdeQXVyNjY5NDU4NzI@._V1_.jpg	The Lion King	1994	U	88 min	Animation, Adventure, Drama	8.5	Lion prince Simba and his father are targeted by his bitter uncle, who wants to ascend the throne himself.	88	Roger Allers	Rob Minkoff	Matthew Broderick	Jeremy Irons	James Earl Jones	942045	422783777
48	https://m.media-amazon.com/images/M/MV5BZmU0M2Y1OGUtZjIxNi00ZjBkLTg1MjgtOWIyNThiZWIwYjRiXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg	Back to the Future	1985	U	116 min	Adventure, Comedy, Sci-Fi	8.5	Marty McFly, a 17-year-old high school student, is accidentally sent thirty years into the past in a time-traveling DeLorean invented by his close friend, the eccentric scientist Doc Brown.	87	Robert Zemeckis	Michael J. Fox	Christopher Lloyd	Lea Thompson	Crispin Glover	1058081	210609762
49	https://m.media-amazon.com/images/M/MV5BZGI5MjBmYzYtMzJhZi00NGI1LTk3MzItYjBjMzcxM2U3MDdiXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_.jpg	Once Upon a Time in the West	1968	U	165 min	Western	8.5	A mysterious stranger with a harmonica joins forces with a notorious desperado to protect a beautiful widow from a ruthless assassin working for the railroad.	80	Sergio Leone	Henry Fonda	Charles Bronson	Claudia Cardinale	Jason Robards	302844	5321508
50	https://m.media-amazon.com/images/M/MV5BNTQwNDM1YzItNDAxZC00NWY2LTk0M2UtNDIwNWI5OGUyNWUxXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_.jpg	Psycho	1960	A	109 min	Horror, Mystery, Thriller	8.5	A Phoenix secretary embezzles $40,000 from her employer's client, goes on the run, and checks into a remote motel run by a young man under the domination of his mother.	97	Alfred Hitchcock	Anthony Perkins	Janet Leigh	Vera Miles	John Gavin	604211	32000000
51	https://m.media-amazon.com/images/M/MV5BY2IzZGY2YmEtYzljNS00NTM5LTgwMzUtMzM1NjQ4NGI0OTk0XkEyXkFqcGdeQXVyNDYyMDk5MTU@._V1_.jpg	Casablanca	1942	U	102 min	Drama, Romance, War	8.5	A cynical expatriate American cafe owner struggles to decide whether or not to help his former lover and her fugitive husband escape the Nazis in French Morocco.	100	Michael Curtiz	Humphrey Bogart	Ingrid Bergman	Paul Henreid	Claude Rains	522093	1024560
52	https://m.media-amazon.com/images/M/MV5BYjJiZjMzYzktNjU0NS00OTkxLWEwYzItYzdhYWJjN2QzMTRlL2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_.jpg	Modern Times	1936	G	87 min	Comedy, Drama, Family	8.5	The Tramp struggles to live in modern industrial society with the help of a young homeless woman.	96	Charles Chaplin	Charles Chaplin	Paulette Goddard	Henry Bergman	Tiny Sandford	217881	163245
53	https://m.media-amazon.com/images/M/MV5BY2I4MmM1N2EtM2YzOS00OWUzLTkzYzctNDc5NDg2N2IyODJmXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_.jpg	City Lights	1931	G	87 min	Comedy, Drama, Romance	8.5	With the aid of a wealthy erratic tippler, a dewy-eyed tramp who has fallen in love with a sightless flower girl accumulates money to be able to help her medically.	99	Charles Chaplin	Charles Chaplin	Virginia Cherrill	Florence Lee	Harry Myers	167839	19181
54	https://m.media-amazon.com/images/M/MV5BMmExNzU2ZWMtYzUwYi00YmM2LTkxZTQtNmVhNjY0NTMyMWI2XkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg	Capharnaüm	2018	A	126 min	Drama	8.4	While serving a five-year sentence for a violent crime, a 12-year-old boy sues his parents for neglect.	75	Nadine Labaki	Zain Al Rafeea	Yordanos Shiferaw	Boluwatife Treasure Bankole	Kawsar Al Haddad	62635	1661096
55	https://m.media-amazon.com/images/M/MV5BNWJhMDlmZGUtYzcxNS00NDRiLWIwNjktNDY1Mjg3ZjBkYzY0XkEyXkFqcGdeQXVyMTU4MjUwMjI@._V1_.jpg	Ayla: The Daughter of War	2017	\N	125 min	Biography, Drama, History	8.4	In 1950, amid-st the ravages of the Korean War, Sergeant Süleyman stumbles upon a half-frozen little girl, with no parents and no help in sight. Frantic, scared and on the verge of death, ...                See full summary »	\N	Can Ulkay	Erdem Can	Çetin Tekindor	Ismail Hacioglu	Kyung-jin Lee	34112	\N
56	https://m.media-amazon.com/images/M/MV5BY2FiMTFmMzMtZDI2ZC00NDQyLWExYTUtOWNmZWM1ZDg5YjVjXkEyXkFqcGdeQXVyODIwMDI1NjM@._V1_.jpg	Vikram Vedha	2017	UA	147 min	Action, Crime, Drama	8.4	Vikram, a no-nonsense police officer, accompanied by Simon, his partner, is on the hunt to capture Vedha, a smuggler and a murderer. Vedha tries to change Vikram's life, which leads to a conflict.	\N	Gayatri	Pushkar	Madhavan	Vijay Sethupathi	Shraddha Srinath	28401	\N
57	https://m.media-amazon.com/images/M/MV5BODRmZDVmNzUtZDA4ZC00NjhkLWI2M2UtN2M0ZDIzNDcxYThjL2ltYWdlXkEyXkFqcGdeQXVyNTk0MzMzODA@._V1_.jpg	Kimi no na wa.	2016	U	106 min	Animation, Drama, Fantasy	8.4	Two strangers find themselves linked in a bizarre way. When a connection forms, will distance be the only thing to keep them apart?	79	Makoto Shinkai	Ryûnosuke Kamiki	Mone Kamishiraishi	Ryô Narita	Aoi Yûki	194838	5017246
58	https://m.media-amazon.com/images/M/MV5BMTQ4MzQzMzM2Nl5BMl5BanBnXkFtZTgwMTQ1NzU3MDI@._V1_.jpg	Dangal	2016	U	161 min	Action, Biography, Drama	8.4	Former wrestler Mahavir Singh Phogat and his two wrestler daughters struggle towards glory at the Commonwealth Games in the face of societal oppression.	\N	Nitesh Tiwari	Aamir Khan	Sakshi Tanwar	Fatima Sana Shaikh	Sanya Malhotra	156479	12391761
59	https://m.media-amazon.com/images/M/MV5BMjMwNDkxMTgzOF5BMl5BanBnXkFtZTgwNTkwNTQ3NjM@._V1_.jpg	Spider-Man: Into the Spider-Verse	2018	U	117 min	Animation, Action, Adventure	8.4	Teen Miles Morales becomes the Spider-Man of his universe, and must join with five spider-powered individuals from other dimensions to stop a threat for all realities.	87	Bob Persichetti	Peter Ramsey	Rodney Rothman	Shameik Moore	Jake Johnson	375110	190241310
60	https://m.media-amazon.com/images/M/MV5BMTc5MDE2ODcwNV5BMl5BanBnXkFtZTgwMzI2NzQ2NzM@._V1_.jpg	Avengers: Endgame	2019	UA	181 min	Action, Adventure, Drama	8.4	After the devastating events of Avengers: Infinity War (2018), the universe is in ruins. With the help of remaining allies, the Avengers assemble once more in order to reverse Thanos' actions and restore balance to the universe.	78	Anthony Russo	Joe Russo	Robert Downey Jr.	Chris Evans	Mark Ruffalo	809955	858373000
64	https://m.media-amazon.com/images/M/MV5BMTk4ODQzNDY3Ml5BMl5BanBnXkFtZTcwODA0NTM4Nw@@._V1_.jpg	The Dark Knight Rises	2012	UA	164 min	Action, Adventure	8.4	Eight years after the Joker's reign of anarchy, Batman, with the help of the enigmatic Catwoman, is forced from his exile to save Gotham City from the brutal guerrilla terrorist Bane.	78	Christopher Nolan	Christian Bale	Tom Hardy	Anne Hathaway	Gary Oldman	1516346	448139099
65	https://m.media-amazon.com/images/M/MV5BNTkyOGVjMGEtNmQzZi00NzFlLTlhOWQtODYyMDc2ZGJmYzFhXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_.jpg	3 Idiots	2009	UA	170 min	Comedy, Drama	8.4	Two friends are searching for their long lost companion. They revisit their college days and recall the memories of their friend who inspired them to think differently, even as the rest of the world called them "idiots".	67	Rajkumar Hirani	Aamir Khan	Madhavan	Mona Singh	Sharman Joshi	344445	6532908
66	https://m.media-amazon.com/images/M/MV5BMDhjZWViN2MtNzgxOS00NmI4LThiZDQtZDI3MzM4MDE4NTc0XkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg	Taare Zameen Par	2007	U	165 min	Drama, Family	8.4	An eight-year-old boy is thought to be a lazy trouble-maker, until the new art teacher has the patience and compassion to discover the real problem behind his struggles in school.	\N	Aamir Khan	Amole Gupte	Darsheel Safary	Aamir Khan	Tisca Chopra	168895	1223869
67	https://m.media-amazon.com/images/M/MV5BMjExMTg5OTU0NF5BMl5BanBnXkFtZTcwMjMxMzMzMw@@._V1_.jpg	WALL·E	2008	U	98 min	Animation, Adventure, Family	8.4	In the distant future, a small waste-collecting robot inadvertently embarks on a space journey that will ultimately decide the fate of mankind.	95	Andrew Stanton	Ben Burtt	Elissa Knight	Jeff Garlin	Fred Willard	999790	223808164
68	https://m.media-amazon.com/images/M/MV5BOThkM2EzYmMtNDE3NS00NjlhLTg4YzktYTdhNzgyOWY3ZDYzXkEyXkFqcGdeQXVyNzQzNzQxNzI@._V1_.jpg	The Lives of Others	2006	A	137 min	Drama, Mystery, Thriller	8.4	In 1984 East Berlin, an agent of the secret police, conducting surveillance on a writer and his lover, finds himself becoming increasingly absorbed by their lives.	89	Florian Henckel von Donnersmarck	Ulrich Mühe	Martina Gedeck	Sebastian Koch	Ulrich Tukur	358685	11286112
69	https://m.media-amazon.com/images/M/MV5BMTI3NTQyMzU5M15BMl5BanBnXkFtZTcwMTM2MjgyMQ@@._V1_.jpg	Oldeuboi	2003	A	101 min	Action, Drama, Mystery	8.4	After being kidnapped and imprisoned for fifteen years, Oh Dae-Su is released, only to find that he must find his captor in five days.	77	Chan-wook Park	Choi Min-sik	Yoo Ji-Tae	Kang Hye-jeong	Kim Byeong-Ok	515451	707481
70	https://m.media-amazon.com/images/M/MV5BZTcyNjk1MjgtOWI3Mi00YzQwLWI5MTktMzY4ZmI2NDAyNzYzXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_.jpg	Memento	2000	UA	113 min	Mystery, Thriller	8.4	A man with short-term memory loss attempts to track down his wife's murderer.	80	Christopher Nolan	Guy Pearce	Carrie-Anne Moss	Joe Pantoliano	Mark Boone Junior	1125712	25544867
71	https://m.media-amazon.com/images/M/MV5BNGIzY2IzODQtNThmMi00ZDE4LWI5YzAtNzNlZTM1ZjYyYjUyXkEyXkFqcGdeQXVyODEzNjM5OTQ@._V1_.jpg	Mononoke-hime	1997	U	134 min	Animation, Action, Adventure	8.4	On a journey to find the cure for a Tatarigami's curse, Ashitaka finds himself in the middle of a war between the forest gods and Tatara, a mining colony. In this quest he also meets San, the Mononoke Hime.	76	Hayao Miyazaki	Yôji Matsuda	Yuriko Ishida	Yûko Tanaka	Billy Crudup	343171	2375308
72	https://m.media-amazon.com/images/M/MV5BMGFkNWI4MTMtNGQ0OC00MWVmLTk3MTktOGYxN2Y2YWVkZWE2XkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_.jpg	Once Upon a Time in America	1984	A	229 min	Crime, Drama	8.4	A former Prohibition-era Jewish gangster returns to the Lower East Side of Manhattan over thirty years later, where he once again must confront the ghosts and regrets of his old life.	\N	Sergio Leone	Robert De Niro	James Woods	Elizabeth McGovern	Treat Williams	311365	5321508
73	https://m.media-amazon.com/images/M/MV5BMjA0ODEzMTc1Nl5BMl5BanBnXkFtZTcwODM2MjAxNA@@._V1_.jpg	Raiders of the Lost Ark	1981	A	115 min	Action, Adventure	8.4	In 1936, archaeologist and adventurer Indiana Jones is hired by the U.S. government to find the Ark of the Covenant before Adolf Hitler's Nazis can obtain its awesome powers.	85	Steven Spielberg	Harrison Ford	Karen Allen	Paul Freeman	John Rhys-Davies	884112	248159971
74	https://m.media-amazon.com/images/M/MV5BZWFlYmY2MGEtZjVkYS00YzU4LTg0YjQtYzY1ZGE3NTA5NGQxXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg	The Shining	1980	A	146 min	Drama, Horror	8.4	A family heads to an isolated hotel for the winter where a sinister presence influences the father into violence, while his psychic son sees horrific forebodings from both past and future.	66	Stanley Kubrick	Jack Nicholson	Shelley Duvall	Danny Lloyd	Scatman Crothers	898237	44017374
75	https://m.media-amazon.com/images/M/MV5BMDdhODg0MjYtYzBiOS00ZmI5LWEwZGYtZDEyNDU4MmQyNzFkXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_.jpg	Apocalypse Now	1979	R	147 min	Drama, Mystery, War	8.4	A U.S. Army officer serving in Vietnam is tasked with assassinating a renegade Special Forces Colonel who sees himself as a god.	94	Francis Ford Coppola	Martin Sheen	Marlon Brando	Robert Duvall	Frederic Forrest	606398	83471511
76	https://m.media-amazon.com/images/M/MV5BMmQ2MmU3NzktZjAxOC00ZDZhLTk4YzEtMDMyMzcxY2IwMDAyXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_.jpg	Alien	1979	R	117 min	Horror, Sci-Fi	8.4	After a space merchant vessel receives an unknown transmission as a distress call, one of the crew is attacked by a mysterious life form and they soon realize that its life cycle has merely begun.	89	Ridley Scott	Sigourney Weaver	Tom Skerritt	John Hurt	Veronica Cartwright	787806	78900000
80	https://m.media-amazon.com/images/M/MV5BNDQwODU5OWYtNDcyNi00MDQ1LThiOGMtZDkwNWJiM2Y3MDg0XkEyXkFqcGdeQXVyMDI2NDg0NQ@@._V1_.jpg	Witness for the Prosecution	1957	U	116 min	Crime, Drama, Mystery	8.4	A veteran British barrister must defend his client in a murder trial that has surprise after surprise.	\N	Billy Wilder	Tyrone Power	Marlene Dietrich	Charles Laughton	Elsa Lanchester	108862	8175000
81	https://m.media-amazon.com/images/M/MV5BNjViMmRkOTEtM2ViOS00ODg0LWJhYWEtNTBlOGQxNDczOGY3XkEyXkFqcGdeQXVyMDI2NDg0NQ@@._V1_.jpg	Paths of Glory	1957	A	88 min	Drama, War	8.4	After refusing to attack an enemy position, a general accuses the soldiers of cowardice and their commanding officer must defend them.	90	Stanley Kubrick	Kirk Douglas	Ralph Meeker	Adolphe Menjou	George Macready	178092	\N
82	https://m.media-amazon.com/images/M/MV5BNGUxYWM3M2MtMGM3Mi00ZmRiLWE0NGQtZjE5ODI2OTJhNTU0XkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg	Rear Window	1954	U	112 min	Mystery, Thriller	8.4	A wheelchair-bound photographer spies on his neighbors from his apartment window and becomes convinced one of them has committed murder.	100	Alfred Hitchcock	James Stewart	Grace Kelly	Wendell Corey	Thelma Ritter	444074	36764313
84	https://m.media-amazon.com/images/M/MV5BMmExYWJjNTktNGUyZS00ODhmLTkxYzAtNWIzOGEyMGNiMmUwXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_.jpg	The Great Dictator	1940	Passed	125 min	Comedy, Drama, War	8.4	Dictator Adenoid Hynkel tries to expand his empire while a poor Jewish barber tries to avoid persecution from Hynkel's regime.	\N	Charles Chaplin	Charles Chaplin	Paulette Goddard	Jack Oakie	Reginald Gardiner	203150	288475
85	https://m.media-amazon.com/images/M/MV5BOTdmNTFjNDEtNzg0My00ZjkxLTg1ZDAtZTdkMDc2ZmFiNWQ1XkEyXkFqcGdeQXVyNTAzNzgwNTg@._V1_.jpg	1917	2019	R	119 min	Drama, Thriller, War	8.3	April 6th, 1917. As a regiment assembles to wage war deep in enemy territory, two soldiers are assigned to race against time and deliver a message that will stop 1,600 men from walking straight into a deadly trap.	78	Sam Mendes	Dean-Charles Chapman	George MacKay	Daniel Mays	Colin Firth	425844	159227644
86	https://m.media-amazon.com/images/M/MV5BYmQxNmU4ZjgtYzE5Mi00ZDlhLTlhOTctMzJkNjk2ZGUyZGEwXkEyXkFqcGdeQXVyMzgxMDA0Nzk@._V1_.jpg	Tumbbad	2018	A	104 min	Drama, Fantasy, Horror	8.3	A mythological story about a goddess who created the entire universe. The plot revolves around the consequences when humans build a temple for her first-born.	\N	Rahi Anil Barve	Anand Gandhi	Adesh Prasad	Sohum Shah	Jyoti Malshe	27793	\N
87	https://m.media-amazon.com/images/M/MV5BZWZhMjhhZmYtOTIzOC00MGYzLWI1OGYtM2ZkN2IxNTI4ZWI3XkEyXkFqcGdeQXVyNDAzNDk0MTQ@._V1_.jpg	Andhadhun	2018	UA	139 min	Crime, Drama, Music	8.3	A series of mysterious events change the life of a blind pianist, who must now report a crime that he should technically know nothing of.	\N	Sriram Raghavan	Ayushmann Khurrana	Tabu	Radhika Apte	Anil Dhawan	71875	1373943
88	https://m.media-amazon.com/images/M/MV5BYmY3MzYwMGUtOWMxYS00OGVhLWFjNmUtYzlkNGVmY2ZkMjA3XkEyXkFqcGdeQXVyMTExNDQ2MTI@._V1_.jpg	Drishyam	2013	U	160 min	Crime, Drama, Thriller	8.3	A man goes to extreme lengths to save his family from punishment after the family commits an accidental crime.	\N	Jeethu Joseph	Mohanlal	Meena	Asha Sharath	Ansiba	30722	\N
89	https://m.media-amazon.com/images/M/MV5BMTg2NDg3ODg4NF5BMl5BanBnXkFtZTcwNzk3NTc3Nw@@._V1_.jpg	Jagten	2012	R	115 min	Drama	8.3	A teacher lives a lonely life, all the while struggling over his son's custody. His life slowly gets better as he finds love and receives good news from his son, but his new luck is about to be brutally shattered by an innocent little lie.	77	Thomas Vinterberg	Mads Mikkelsen	Thomas Bo Larsen	Annika Wedderkopp	Lasse Fogelstrøm	281623	687185
90	https://m.media-amazon.com/images/M/MV5BN2JmMjViMjMtZTM5Mi00ZGZkLTk5YzctZDg5MjFjZDE4NjNkXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg	Jodaeiye Nader az Simin	2011	PG-13	123 min	Drama	8.3	A married couple are faced with a difficult decision - to improve the life of their child by moving to another country or to stay in Iran and look after a deteriorating parent who has Alzheimer's disease.	95	Asghar Farhadi	Payman Maadi	Leila Hatami	Sareh Bayat	Shahab Hosseini	220002	7098492
91	https://m.media-amazon.com/images/M/MV5BMWE3MGYzZjktY2Q5Mi00Y2NiLWIyYWUtMmIyNzA3YmZlMGFhXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg	Incendies	2010	R	131 min	Drama, Mystery, War	8.3	Twins journey to the Middle East to discover their family history and fulfill their mother's last wishes.	80	Denis Villeneuve	Lubna Azabal	Mélissa Désormeaux-Poulin	Maxim Gaudette	Mustafa Kamel	150023	6857096
92	https://m.media-amazon.com/images/M/MV5BOGE3N2QxN2YtM2ZlNS00MWIyLWE1NDAtYWFlN2FiYjY1MjczXkEyXkFqcGdeQXVyOTUwNzc0ODc@._V1_.jpg	Miracle in cell NO.7	2019	TV-14	132 min	Drama	8.3	A story of love between a mentally-ill father who was wrongly accused of murder and his lovely six years old daughter. The prison would be their home. Based on the 2013 Korean movie 7-beon-bang-ui seon-mul (2013).	\N	Mehmet Ada Öztekin	Aras Bulut Iynemli	Nisa Sofiya Aksongur	Deniz Baysal	Celile Toyon Uysal	33935	\N
93	https://m.media-amazon.com/images/M/MV5BNjAzMzEwYzctNjc1MC00Nzg5LWFmMGItMTgzYmMyNTY2OTQ4XkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_.jpg	Babam ve Oglum	2005	\N	112 min	Drama, Family	8.3	The family of a left-wing journalist is torn apart after the military coup of Turkey in 1980.	\N	Çagan Irmak	Çetin Tekindor	Fikret Kuskan	Hümeyra	Ege Tanman	78925	\N
707	https://m.media-amazon.com/images/M/MV5BZTM1MTRiNDctMTFiMC00NGM1LTkyMWQtNTY1M2JjZDczOWQ3XkEyXkFqcGdeQXVyMDI3OTIzOA@@._V1_.jpg	Jules et Jim	1962	\N	105 min	Drama, Romance	7.8	Decades of a love triangle concerning two friends and an impulsive woman.	97	François Truffaut	Jeanne Moreau	Oskar Werner	Henri Serre	Vanna Urbino	37605	\N
96	https://m.media-amazon.com/images/M/MV5BNDg4NjM1YjMtYmNhZC00MjM0LWFiZmYtNGY1YjA3MzZmODc5XkEyXkFqcGdeQXVyNDk3NzU2MTQ@._V1_.jpg	Amélie	2001	U	122 min	Comedy, Romance	8.3	Amélie is an innocent and naive girl in Paris with her own sense of justice. She decides to help those around her and, along the way, discovers love.	69	Jean-Pierre Jeunet	Audrey Tautou	Mathieu Kassovitz	Rufus	Lorella Cravotta	703810	33225499
97	https://m.media-amazon.com/images/M/MV5BMTA2NDYxOGYtYjU1Mi00Y2QzLTgxMTQtMWI1MGI0ZGQ5MmU4XkEyXkFqcGdeQXVyNDk3NzU2MTQ@._V1_.jpg	Snatch	2000	UA	104 min	Comedy, Crime	8.3	Unscrupulous boxing promoters, violent bookmakers, a Russian gangster, incompetent amateur robbers and supposedly Jewish jewelers fight to track down a priceless stolen diamond.	55	Guy Ritchie	Jason Statham	Brad Pitt	Benicio Del Toro	Dennis Farina	782001	30328156
99	https://m.media-amazon.com/images/M/MV5BNTBmZWJkNjctNDhiNC00MGE2LWEwOTctZTk5OGVhMWMyNmVhXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg	American Beauty	1999	UA	122 min	Drama	8.3	A sexually frustrated suburban father has a mid-life crisis after becoming infatuated with his daughter's best friend.	84	Sam Mendes	Kevin Spacey	Annette Bening	Thora Birch	Wes Bentley	1069738	130096601
100	https://m.media-amazon.com/images/M/MV5BOTI0MzcxMTYtZDVkMy00NjY1LTgyMTYtZmUxN2M3NmQ2NWJhXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg	Good Will Hunting	1997	U	126 min	Drama, Romance	8.3	Will Hunting, a janitor at M.I.T., has a gift for mathematics, but needs help from a psychologist to find direction in his life.	70	Gus Van Sant	Robin Williams	Matt Damon	Ben Affleck	Stellan Skarsgård	861606	138433435
101	https://m.media-amazon.com/images/M/MV5BZTYwZWQ4ZTQtZWU0MS00N2YwLWEzMDItZWFkZWY0MWVjODVhXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_.jpg	Bacheha-Ye aseman	1997	PG	89 min	Drama, Family, Sport	8.3	After a boy loses his sister's pair of shoes, he goes on a series of adventures in order to find them. When he can't, he tries a new way to "win" a new pair.	77	Majid Majidi	Mohammad Amir Naji	Amir Farrokh Hashemian	Bahare Seddiqi	Nafise Jafar-Mohammadi	65341	933933
102	https://m.media-amazon.com/images/M/MV5BMDU2ZWJlMjktMTRhMy00ZTA5LWEzNDgtYmNmZTEwZTViZWJkXkEyXkFqcGdeQXVyNDQ2OTk4MzI@._V1_.jpg	Toy Story	1995	U	81 min	Animation, Adventure, Comedy	8.3	A cowboy doll is profoundly threatened and jealous when a new spaceman figure supplants him as top toy in a boy's room.	95	John Lasseter	Tom Hanks	Tim Allen	Don Rickles	Jim Varney	887429	191796233
103	https://m.media-amazon.com/images/M/MV5BMzkzMmU0YTYtOWM3My00YzBmLWI0YzctOGYyNTkwMWE5MTJkXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_.jpg	Braveheart	1995	A	178 min	Biography, Drama, History	8.3	Scottish warrior William Wallace leads his countrymen in a rebellion to free his homeland from the tyranny of King Edward I of England.	68	Mel Gibson	Mel Gibson	Sophie Marceau	Patrick McGoohan	Angus Macfadyen	959181	75600000
104	https://m.media-amazon.com/images/M/MV5BZmExNmEwYWItYmQzOS00YjA5LTk2MjktZjEyZDE1Y2QxNjA1XkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg	Reservoir Dogs	1992	R	99 min	Crime, Drama, Thriller	8.3	When a simple jewelry heist goes horribly wrong, the surviving criminals begin to suspect that one of them is a police informant.	79	Quentin Tarantino	Harvey Keitel	Tim Roth	Michael Madsen	Chris Penn	918562	2832029
105	https://m.media-amazon.com/images/M/MV5BNzkxODk0NjEtYjc4Mi00ZDI0LTgyYjEtYzc1NDkxY2YzYTgyXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_.jpg	Full Metal Jacket	1987	UA	116 min	Drama, War	8.3	A pragmatic U.S. Marine observes the dehumanizing effects the Vietnam War has on his fellow recruits from their brutal boot camp training to the bloody street fighting in Hue.	76	Stanley Kubrick	Matthew Modine	R. Lee Ermey	Vincent D'Onofrio	Adam Baldwin	675146	46357676
106	https://m.media-amazon.com/images/M/MV5BODM4Njg0NTAtYjI5Ny00ZjAxLTkwNmItZTMxMWU5M2U3M2RjXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_.jpg	Idi i smotri	1985	A	142 min	Drama, Thriller, War	8.3	After finding an old rifle, a young boy joins the Soviet resistance movement against ruthless German forces and experiences the horrors of World War II.	\N	Elem Klimov	Aleksey Kravchenko	Olga Mironova	Liubomiras Laucevicius	Vladas Bagdonas	59056	\N
107	https://m.media-amazon.com/images/M/MV5BZGU2OGY5ZTYtMWNhYy00NjZiLWI0NjUtZmNhY2JhNDRmODU3XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_.jpg	Aliens	1986	U	137 min	Action, Adventure, Sci-Fi	8.3	Fifty-seven years after surviving an apocalyptic attack aboard her space vessel by merciless space creatures, Officer Ripley awakens from hyper-sleep and tries to warn anyone who will listen about the predators.	84	James Cameron	Sigourney Weaver	Michael Biehn	Carrie Henn	Paul Reiser	652719	85160248
108	https://m.media-amazon.com/images/M/MV5BNWJlNzUzNGMtYTAwMS00ZjI2LWFmNWQtODcxNWUxODA5YmU1XkEyXkFqcGdeQXVyNTIzOTk5ODM@._V1_.jpg	Amadeus	1984	R	160 min	Biography, Drama, History	8.3	The life, success and troubles of Wolfgang Amadeus Mozart, as told by Antonio Salieri, the contemporaneous composer who was insanely jealous of Mozart's talent and claimed to have murdered him.	88	Milos Forman	F. Murray Abraham	Tom Hulce	Elizabeth Berridge	Roy Dotrice	369007	51973029
109	https://m.media-amazon.com/images/M/MV5BNjdjNGQ4NDEtNTEwYS00MTgxLTliYzQtYzE2ZDRiZjFhZmNlXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_.jpg	Scarface	1983	A	170 min	Crime, Drama	8.3	In 1980 Miami, a determined Cuban immigrant takes over a drug cartel and succumbs to greed.	65	Brian De Palma	Al Pacino	Michelle Pfeiffer	Steven Bauer	Mary Elizabeth Mastrantonio	740911	45598982
113	https://m.media-amazon.com/images/M/MV5BNGU3NjQ4YTMtZGJjOS00YTQ3LThmNmItMTI5MDE2ODI3NzY3XkEyXkFqcGdeQXVyMjUzOTY1NTc@._V1_.jpg	The Sting	1973	U	129 min	Comedy, Crime, Drama	8.3	Two grifters team up to pull off the ultimate con.	83	George Roy Hill	Paul Newman	Robert Redford	Robert Shaw	Charles Durning	241513	159600000
114	https://m.media-amazon.com/images/M/MV5BMTY3MjM1Mzc4N15BMl5BanBnXkFtZTgwODM0NzAxMDE@._V1_.jpg	A Clockwork Orange	1971	A	136 min	Crime, Drama, Sci-Fi	8.3	In the future, a sadistic gang leader is imprisoned and volunteers for a conduct-aversion experiment, but it doesn't go as planned.	77	Stanley Kubrick	Malcolm McDowell	Patrick Magee	Michael Bates	Warren Clarke	757904	6207725
115	https://m.media-amazon.com/images/M/MV5BMmNlYzRiNDctZWNhMi00MzI4LThkZTctMTUzMmZkMmFmNThmXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_.jpg	2001: A Space Odyssey	1968	U	149 min	Adventure, Sci-Fi	8.3	After discovering a mysterious artifact buried beneath the Lunar surface, mankind sets off on a quest to find its origins with help from intelligent supercomputer H.A.L. 9000.	84	Stanley Kubrick	Keir Dullea	Gary Lockwood	William Sylvester	Daniel Richter	603517	56954992
116	https://m.media-amazon.com/images/M/MV5BNWM1NmYyM2ItMTFhNy00NDU0LThlYWUtYjQyYTJmOTY0ZmM0XkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_.jpg	Per qualche dollaro in più	1965	U	132 min	Western	8.3	Two bounty hunters with the same intentions team up to track down a Western outlaw.	74	Sergio Leone	Clint Eastwood	Lee Van Cleef	Gian Maria Volontè	Mara Krupp	232772	15000000
117	https://m.media-amazon.com/images/M/MV5BYWY5ZjhjNGYtZmI2Ny00ODM0LWFkNzgtZmI1YzA2N2MxMzA0XkEyXkFqcGdeQXVyNjUwNzk3NDc@._V1_.jpg	Lawrence of Arabia	1962	U	228 min	Adventure, Biography, Drama	8.3	The story of T.E. Lawrence, the English officer who successfully united and led the diverse, often warring, Arab tribes during World War I in order to fight the Turks.	100	David Lean	Peter O'Toole	Alec Guinness	Anthony Quinn	Jack Hawkins	268085	44824144
118	https://m.media-amazon.com/images/M/MV5BNzkwODFjNzItMmMwNi00MTU5LWE2MzktM2M4ZDczZGM1MmViXkEyXkFqcGdeQXVyNDY2MTk1ODk@._V1_.jpg	The Apartment	1960	U	125 min	Comedy, Drama, Romance	8.3	A man tries to rise in his company by letting its executives use his apartment for trysts, but complications and a romance of his own ensue.	94	Billy Wilder	Jack Lemmon	Shirley MacLaine	Fred MacMurray	Ray Walston	164363	18600000
119	https://m.media-amazon.com/images/M/MV5BZDA3NDExMTUtMDlhOC00MmQ5LWExZGUtYmI1NGVlZWI4OWNiXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_.jpg	North by Northwest	1959	U	136 min	Adventure, Mystery, Thriller	8.3	A New York City advertising executive goes on the run after being mistaken for a government agent by a group of foreign spies.	98	Alfred Hitchcock	Cary Grant	Eva Marie Saint	James Mason	Jessie Royce Landis	299198	13275000
120	https://m.media-amazon.com/images/M/MV5BYTE4ODEwZDUtNDFjOC00NjAxLWEzYTQtYTI1NGVmZmFlNjdiL2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_.jpg	Vertigo	1958	A	128 min	Mystery, Romance, Thriller	8.3	A former police detective juggles wrestling with his personal demons and becoming obsessed with a hauntingly beautiful woman.	100	Alfred Hitchcock	James Stewart	Kim Novak	Barbara Bel Geddes	Tom Helmore	364368	3200000
121	https://m.media-amazon.com/images/M/MV5BZDRjNGViMjQtOThlMi00MTA3LThkYzQtNzJkYjBkMGE0YzE1XkEyXkFqcGdeQXVyNDYyMDk5MTU@._V1_.jpg	Singin' in the Rain	1952	G	103 min	Comedy, Musical, Romance	8.3	A silent film production company and cast make a difficult transition to sound.	99	Stanley Donen	Gene Kelly	Gene Kelly	Donald O'Connor	Debbie Reynolds	218957	8819028
122	https://m.media-amazon.com/images/M/MV5BZmM0NGY3Y2MtMTA1YS00YmQzLTk2YTctYWFhMDkzMDRjZWQzXkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_.jpg	Ikiru	1952	\N	143 min	Drama	8.3	A bureaucrat tries to find a meaning in his life after he discovers he has terminal cancer.	\N	Akira Kurosawa	Takashi Shimura	Nobuo Kaneko	Shin'ichi Himori	Haruo Tanaka	68463	55240
123	https://m.media-amazon.com/images/M/MV5BNmI1ODdjODctMDlmMC00ZWViLWI5MzYtYzRhNDdjYmM3MzFjXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg	Ladri di biciclette	1948	\N	89 min	Drama	8.3	In post-war Italy, a working-class man's bicycle is stolen. He and his son set out to find it.	\N	Vittorio De Sica	Lamberto Maggiorani	Enzo Staiola	Lianella Carell	Elena Altieri	146427	332930
843	https://m.media-amazon.com/images/M/MV5BZjA3YjdhMWEtYjc2Ni00YzVlLWI0MTUtMGZmNTJjNmU0Yzk2XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_.jpg	Airplane!	1980	U	88 min	Comedy	7.7	A man afraid to fly must ensure that a plane lands safely after the pilots become sick.	78	Jim Abrahams	David Zucker	Jerry Zucker	Robert Hays	Julie Hagerty	214882	83400000
844	https://m.media-amazon.com/images/M/MV5BYzYyNjg3OTctNzA2ZS00NjkzLWE4MmYtZDAzZWQ0NzkyMTJhXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg	Rupan sansei: Kariosutoro no shiro	1979	U	100 min	Animation, Adventure, Family	7.7	A dashing thief, his gang of desperadoes and an intrepid policeman struggle to free a princess from an evil count's clutches, and learn the hidden secret to a fabulous treasure that she holds part of a key to.	71	Hayao Miyazaki	Yasuo Yamada	Eiko Masuyama	Kiyoshi Kobayashi	Makio Inoue	27014	\N
124	https://m.media-amazon.com/images/M/MV5BOTdlNjgyZGUtOTczYi00MDdhLTljZmMtYTEwZmRiOWFkYjRhXkEyXkFqcGdeQXVyNDY2MTk1ODk@._V1_.jpg	Double Indemnity	1944	Passed	107 min	Crime, Drama, Film-Noir	8.3	An insurance representative lets himself be talked by a seductive housewife into a murder/insurance fraud scheme that arouses the suspicion of an insurance investigator.	95	Billy Wilder	Fred MacMurray	Barbara Stanwyck	Edward G. Robinson	Byron Barr	143525	5720000
125	https://m.media-amazon.com/images/M/MV5BYjBiOTYxZWItMzdiZi00NjlkLWIzZTYtYmFhZjhiMTljOTdkXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_.jpg	Citizen Kane	1941	UA	119 min	Drama, Mystery	8.3	Following the death of publishing tycoon Charles Foster Kane, reporters scramble to uncover the meaning of his final utterance; 'Rosebud'.	100	Orson Welles	Orson Welles	Joseph Cotten	Dorothy Comingore	Agnes Moorehead	403351	1585634
126	https://m.media-amazon.com/images/M/MV5BODA4ODk3OTEzMF5BMl5BanBnXkFtZTgwMTQ2ODMwMzE@._V1_.jpg	M - Eine Stadt sucht einen Mörder	1931	Passed	117 min	Crime, Mystery, Thriller	8.3	When the police in a German city are unable to catch a child-murderer, other criminals join in the manhunt.	\N	Fritz Lang	Peter Lorre	Ellen Widmann	Inge Landgut	Otto Wernicke	143434	28877
130	https://m.media-amazon.com/images/M/MV5BMWU4ZjNlNTQtOGE2MS00NDI0LWFlYjMtMmY3ZWVkMjJkNGRmXkEyXkFqcGdeQXVyNjE1OTQ0NjA@._V1_.jpg	Uri: The Surgical Strike	2018	UA	138 min	Action, Drama, War	8.2	Indian army special forces execute a covert operation, avenging the killing of fellow army men at their base by a terrorist group.	\N	Aditya Dhar	Vicky Kaushal	Paresh Rawal	Mohit Raina	Yami Gautam	43444	4186168
131	https://m.media-amazon.com/images/M/MV5BZDNlNzBjMGUtYTA0Yy00OTI2LWJmZjMtODliYmUyYTI0OGFmXkEyXkFqcGdeQXVyODIwMDI1NjM@._V1_.jpg	K.G.F: Chapter 1	2018	UA	156 min	Action, Drama	8.2	In the 1970s, a fierce rebel rises against brutal oppression and becomes the symbol of hope to legions of downtrodden people.	\N	Prashanth Neel	Yash	Srinidhi Shetty	Ramachandra Raju	Archana Jois	36680	\N
132	https://m.media-amazon.com/images/M/MV5BYzIzYmJlYTYtNGNiYy00N2EwLTk4ZjItMGYyZTJiOTVkM2RlXkEyXkFqcGdeQXVyODY1NDk1NjE@._V1_.jpg	Green Book	2018	UA	130 min	Biography, Comedy, Drama	8.2	A working-class Italian-American bouncer becomes the driver of an African-American classical pianist on a tour of venues through the 1960s American South.	69	Peter Farrelly	Viggo Mortensen	Mahershala Ali	Linda Cardellini	Sebastian Maniscalco	377884	85080171
133	https://m.media-amazon.com/images/M/MV5BMjI0ODcxNzM1N15BMl5BanBnXkFtZTgwMzIwMTEwNDI@._V1_.jpg	Three Billboards Outside Ebbing, Missouri	2017	A	115 min	Comedy, Crime, Drama	8.2	A mother personally challenges the local authorities to solve her daughter's murder when they fail to catch the culprit.	88	Martin McDonagh	Frances McDormand	Woody Harrelson	Sam Rockwell	Caleb Landry Jones	432610	54513740
134	https://m.media-amazon.com/images/M/MV5BMTYzODg0Mjc4M15BMl5BanBnXkFtZTgwNzY4Mzc3NjE@._V1_.jpg	Talvar	2015	UA	132 min	Crime, Drama, Mystery	8.2	An experienced investigator confronts several conflicting theories about the perpetrators of a violent double homicide.	\N	Meghna Gulzar	Irrfan Khan	Konkona Sen Sharma	Neeraj Kabi	Sohum Shah	31142	342370
135	https://m.media-amazon.com/images/M/MV5BOGNlNmRkMjctNDgxMC00NzFhLWIzY2YtZDk3ZDE0NWZhZDBlXkEyXkFqcGdeQXVyODIwMDI1NjM@._V1_.jpg	Baahubali 2: The Conclusion	2017	UA	167 min	Action, Drama	8.2	When Shiva, the son of Bahubali, learns about his heritage, he begins to look for answers. His story is juxtaposed with past events that unfolded in the Mahishmati Kingdom.	\N	S.S. Rajamouli	Prabhas	Rana Daggubati	Anushka Shetty	Tamannaah Bhatia	75348	20186659
136	https://m.media-amazon.com/images/M/MV5BMWYwOThjM2ItZGYxNy00NTQwLWFlZWEtM2MzM2Q5MmY3NDU5XkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_.jpg	Klaus	2019	PG	96 min	Animation, Adventure, Comedy	8.2	A simple act of kindness always sparks another, even in a frozen, faraway place. When Smeerensburg's new postman, Jesper, befriends toymaker Klaus, their gifts melt an age-old feud and deliver a sleigh full of holiday traditions.	65	Sergio Pablos	Carlos Martínez López	Jason Schwartzman	J.K. Simmons	Rashida Jones	104761	\N
137	https://m.media-amazon.com/images/M/MV5BYmJhZmJlYTItZmZlNy00MGY0LTg0ZGMtNWFkYWU5NTA1YTNhXkEyXkFqcGdeQXVyODE5NzE3OTE@._V1_.jpg	Drishyam	2015	UA	163 min	Crime, Drama, Mystery	8.2	Desperate measures are taken by a man who tries to save his family from the dark side of the law, after they commit an unexpected crime.	\N	Nishikant Kamat	Ajay Devgn	Shriya Saran	Tabu	Rajat Kapoor	70367	739478
138	https://m.media-amazon.com/images/M/MV5BNWYyOWRlOWItZWM5MS00ZjJkLWI0MTUtYTE3NTI5MDAwYjgyXkEyXkFqcGdeQXVyODE5NzE3OTE@._V1_.jpg	Queen	2013	UA	146 min	Adventure, Comedy, Drama	8.2	A Delhi girl from a traditional family sets out on a solo honeymoon after her marriage gets cancelled.	\N	Vikas Bahl	Kangana Ranaut	Rajkummar Rao	Lisa Haydon	Jeffrey Ho	60701	1429534
139	https://m.media-amazon.com/images/M/MV5BMTgwNzA3MDQzOV5BMl5BanBnXkFtZTgwNTE5MDE5NDE@._V1_.jpg	Mandariinid	2013	\N	87 min	Drama, War	8.2	In 1992, war rages in Abkhazia, a breakaway region of Georgia. An Estonian man Ivo has decided to stay behind and harvest his crops of tangerines. In a bloody conflict at his door, a wounded man is left behind, and Ivo takes him in.	73	Zaza Urushadze	Lembit Ulfsak	Elmo Nüganen	Giorgi Nakashidze	Misha Meskhi	40382	144501
140	https://m.media-amazon.com/images/M/MV5BMTY1Nzg4MjcwN15BMl5BanBnXkFtZTcwOTc1NTk1OQ@@._V1_.jpg	Bhaag Milkha Bhaag	2013	U	186 min	Biography, Drama, Sport	8.2	The truth behind the ascension of Milkha Singh who was scarred because of the India-Pakistan partition.	\N	Rakeysh Omprakash Mehra	Farhan Akhtar	Sonam Kapoor	Pawan Malhotra	Art Malik	61137	1626289
141	https://m.media-amazon.com/images/M/MV5BMTc5NjY4MjUwNF5BMl5BanBnXkFtZTgwODM3NzM5MzE@._V1_.jpg	Gangs of Wasseypur	2012	A	321 min	Action, Comedy, Crime	8.2	A clash between Sultan and Shahid Khan leads to the expulsion of Khan from Wasseypur, and ignites a deadly blood feud spanning three generations.	89	Anurag Kashyap	Manoj Bajpayee	Richa Chadha	Nawazuddin Siddiqui	Tigmanshu Dhulia	82365	\N
142	https://m.media-amazon.com/images/M/MV5BNzgxMzExMzUwNV5BMl5BanBnXkFtZTcwMDc2MjUwNA@@._V1_.jpg	Udaan	2010	UA	134 min	Drama	8.2	Expelled from his school, a 16-year old boy returns home to his abusive and oppressive father.	\N	Vikramaditya Motwane	Rajat Barmecha	Ronit Roy	Manjot Singh	Ram Kapoor	42341	7461
143	https://m.media-amazon.com/images/M/MV5BNTgwODM5OTMzN15BMl5BanBnXkFtZTcwMTA3NzI1Nw@@._V1_.jpg	Paan Singh Tomar	2012	UA	135 min	Action, Biography, Crime	8.2	The story of Paan Singh Tomar, an Indian athlete and seven-time national steeplechase champion who becomes one of the most feared dacoits in Chambal Valley after his retirement.	\N	Tigmanshu Dhulia	Irrfan Khan	Mahie Gill	Rajesh Abhay	Hemendra Dandotiya	33237	39567
147	https://m.media-amazon.com/images/M/MV5BMTk3NDE2NzI4NF5BMl5BanBnXkFtZTgwNzE1MzEyMTE@._V1_.jpg	Up	2009	U	96 min	Animation, Adventure, Comedy	8.2	78-year-old Carl Fredricksen travels to Paradise Falls in his house equipped with balloons, inadvertently taking a young stowaway.	88	Pete Docter	Bob Peterson	Edward Asner	Jordan Nagai	John Ratzenberger	935507	293004164
148	https://m.media-amazon.com/images/M/MV5BMjIxMjgxNTk0MF5BMl5BanBnXkFtZTgwNjIyOTg2MDE@._V1_.jpg	The Wolf of Wall Street	2013	A	180 min	Biography, Crime, Drama	8.2	Based on the true story of Jordan Belfort, from his rise to a wealthy stock-broker living the high life to his fall involving crime, corruption and the federal government.	75	Martin Scorsese	Leonardo DiCaprio	Jonah Hill	Margot Robbie	Matthew McConaughey	1187498	116900694
149	https://m.media-amazon.com/images/M/MV5BMTUzODMyNzk4NV5BMl5BanBnXkFtZTgwNTk1NTYyNTM@._V1_.jpg	Chak De! India	2007	U	153 min	Drama, Family, Sport	8.2	Kabir Khan is the coach of the Indian Women's National Hockey Team and his dream is to make his all girls team emerge victorious against all odds.	68	Shimit Amin	Shah Rukh Khan	Vidya Malvade	Sagarika Ghatge	Shilpa Shukla	74129	1113541
150	https://m.media-amazon.com/images/M/MV5BMjAxODQ4MDU5NV5BMl5BanBnXkFtZTcwMDU4MjU1MQ@@._V1_.jpg	There Will Be Blood	2007	A	158 min	Drama	8.2	A story of family, religion, hatred, oil and madness, focusing on a turn-of-the-century prospector in the early days of the business.	93	Paul Thomas Anderson	Daniel Day-Lewis	Paul Dano	Ciarán Hinds	Martin Stringer	517359	40222514
151	https://m.media-amazon.com/images/M/MV5BMTU3ODg2NjQ5NF5BMl5BanBnXkFtZTcwMDEwODgzMQ@@._V1_.jpg	Pan's Labyrinth	2006	UA	118 min	Drama, Fantasy, War	8.2	In the Falangist Spain of 1944, the bookish young stepdaughter of a sadistic army officer escapes into an eerie but captivating fantasy world.	98	Guillermo del Toro	Ivana Baquero	Ariadna Gil	Sergi López	Maribel Verdú	618623	37634615
152	https://m.media-amazon.com/images/M/MV5BMTgxOTY4Mjc0MF5BMl5BanBnXkFtZTcwNTA4MDQyMw@@._V1_.jpg	Toy Story 3	2010	U	103 min	Animation, Adventure, Comedy	8.2	The toys are mistakenly delivered to a day-care center instead of the attic right before Andy leaves for college, and it's up to Woody to convince the other toys that they weren't abandoned and to return home.	92	Lee Unkrich	Tom Hanks	Tim Allen	Joan Cusack	Ned Beatty	757032	415004880
153	https://m.media-amazon.com/images/M/MV5BOTI5ODc3NzExNV5BMl5BanBnXkFtZTcwNzYxNzQzMw@@._V1_.jpg	V for Vendetta	2005	A	132 min	Action, Drama, Sci-Fi	8.2	In a future British tyranny, a shadowy freedom fighter, known only by the alias of "V", plots to overthrow it with the help of a young woman.	62	James McTeigue	Hugo Weaving	Natalie Portman	Rupert Graves	Stephen Rea	1032749	70511035
154	https://m.media-amazon.com/images/M/MV5BYThmZDA0YmQtMWJhNy00MDQwLTk0Y2YtMDhmZTE5ZjhlNjliXkEyXkFqcGdeQXVyODE5NzE3OTE@._V1_.jpg	Rang De Basanti	2006	UA	167 min	Comedy, Crime, Drama	8.2	The story of six young Indians who assist an English woman to film a documentary on the freedom fighters from their past, and the events that lead them to relive the long-forgotten saga of freedom.	\N	Rakeysh Omprakash Mehra	Aamir Khan	Soha Ali Khan	Siddharth	Sharman Joshi	111937	2197331
155	https://m.media-amazon.com/images/M/MV5BNTI5MmE5M2UtZjIzYS00M2JjLWIwNDItYTY2ZWNiODBmYTBiXkEyXkFqcGdeQXVyNjQ2MjQ5NzM@._V1_.jpg	Black	2005	U	122 min	Drama	8.2	The cathartic tale of a young woman who can't see, hear or talk and the teacher who brings a ray of light into her dark world.	\N	Sanjay Leela Bhansali	Amitabh Bachchan	Rani Mukerji	Shernaz Patel	Ayesha Kapoor	33354	733094
156	https://m.media-amazon.com/images/M/MV5BOTY4YjI2N2MtYmFlMC00ZjcyLTg3YjEtMDQyM2ZjYzQ5YWFkXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg	Batman Begins	2005	UA	140 min	Action, Adventure	8.2	After training with his mentor, Batman begins his fight to free crime-ridden Gotham City from corruption.	70	Christopher Nolan	Christian Bale	Michael Caine	Ken Watanabe	Liam Neeson	1308302	206852432
157	https://m.media-amazon.com/images/M/MV5BYzExOTcwNjYtZTljMC00YTQ2LWI2YjYtNWFlYzQ0YTJhNzJmXkEyXkFqcGdeQXVyNjQ2MjQ5NzM@._V1_.jpg	Swades: We, the People	2004	U	210 min	Drama	8.2	A successful Indian scientist returns to an Indian village to take his nanny to America with him and in the process rediscovers his roots.	\N	Ashutosh Gowariker	Shah Rukh Khan	Gayatri Joshi	Kishori Ballal	Smit Sheth	83005	1223240
158	https://m.media-amazon.com/images/M/MV5BMTU0NTU5NTAyMl5BMl5BanBnXkFtZTYwNzYwMDg2._V1_.jpg	Der Untergang	2004	R	156 min	Biography, Drama, History	8.2	Traudl Junge, the final secretary for Adolf Hitler, tells of the Nazi dictator's final days in his Berlin bunker at the end of WWII.	82	Oliver Hirschbiegel	Bruno Ganz	Alexandra Maria Lara	Ulrich Matthes	Juliane Köhler	331308	5509040
159	https://m.media-amazon.com/images/M/MV5BNmM4YTFmMmItMGE3Yy00MmRkLTlmZGEtMzZlOTQzYjk3MzA2XkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg	Hauru no ugoku shiro	2004	U	119 min	Animation, Adventure, Family	8.2	When an unconfident young woman is cursed with an old body by a spiteful witch, her only chance of breaking the spell lies with a self-indulgent yet insecure young wizard and his companions in his legged, walking castle.	80	Hayao Miyazaki	Chieko Baishô	Takuya Kimura	Tatsuya Gashûin	Akihiro Miwa	333915	4711096
162	https://m.media-amazon.com/images/M/MV5BMTAyN2JmZmEtNjAyMy00NzYwLThmY2MtYWQ3OGNhNjExMmM4XkEyXkFqcGdeQXVyNDk3NzU2MTQ@._V1_.jpg	Lock, Stock and Two Smoking Barrels	1998	A	107 min	Action, Comedy, Crime	8.2	A botched card game in London triggers four friends, thugs, weed-growers, hard gangsters, loan sharks and debt collectors to collide with each other in a series of unexpected events, all for the sake of weed, cash and two antique shotguns.	66	Guy Ritchie	Jason Flemyng	Dexter Fletcher	Nick Moran	Jason Statham	535216	3897569
163	https://m.media-amazon.com/images/M/MV5BMDQ2YzEyZGItYWRhOS00MjBmLTkzMDUtMTdjYzkyMmQxZTJlXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_.jpg	L.A. Confidential	1997	A	138 min	Crime, Drama, Mystery	8.2	As corruption grows in 1950s Los Angeles, three policemen - one strait-laced, one brutal, and one sleazy - investigate a series of murders with their own brand of justice.	90	Curtis Hanson	Kevin Spacey	Russell Crowe	Guy Pearce	Kim Basinger	531967	64616940
165	https://m.media-amazon.com/images/M/MV5BNGMwNzUwNjYtZWM5NS00YzMyLWI4NjAtNjM0ZDBiMzE1YWExXkEyXkFqcGdeQXVyNDk3NzU2MTQ@._V1_.jpg	Heat	1995	A	170 min	Crime, Drama, Thriller	8.2	A group of professional bank robbers start to feel the heat from police when they unknowingly leave a clue at their latest heist.	76	Michael Mann	Al Pacino	Robert De Niro	Val Kilmer	Jon Voight	577113	67436818
166	https://m.media-amazon.com/images/M/MV5BMTcxOWYzNDYtYmM4YS00N2NkLTk0NTAtNjg1ODgwZjAxYzI3XkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_.jpg	Casino	1995	A	178 min	Crime, Drama	8.2	A tale of greed, deception, money, power, and murder occur between two best friends: a mafia enforcer and a casino executive compete against each other over a gambling empire, and over a fast-living and fast-loving socialite.	73	Martin Scorsese	Robert De Niro	Sharon Stone	Joe Pesci	James Woods	466276	42438300
167	https://m.media-amazon.com/images/M/MV5BZTIwYzRjMGYtZWQ0Ni00NDZhLThhZDYtOGViZGJiZTkwMzk2XkEyXkFqcGdeQXVyODE5NzE3OTE@._V1_.jpg	Andaz Apna Apna	1994	U	160 min	Action, Comedy, Romance	8.2	Two slackers competing for the affections of an heiress inadvertently become her protectors from an evil criminal.	\N	Rajkumar Santoshi	Aamir Khan	Salman Khan	Raveena Tandon	Karisma Kapoor	49300	\N
168	https://m.media-amazon.com/images/M/MV5BODM3YWY4NmQtN2Y3Ni00OTg0LWFhZGQtZWE3ZWY4MTJlOWU4XkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_.jpg	Unforgiven	1992	A	130 min	Drama, Western	8.2	Retired Old West gunslinger William Munny reluctantly takes on one last job, with the help of his old partner Ned Logan and a young man, The "Schofield Kid."	85	Clint Eastwood	Clint Eastwood	Gene Hackman	Morgan Freeman	Richard Harris	375935	101157447
169	https://m.media-amazon.com/images/M/MV5BMjNkMzc2N2QtNjVlNS00ZTk5LTg0MTgtODY2MDAwNTMwZjBjXkEyXkFqcGdeQXVyNDk3NzU2MTQ@._V1_.jpg	Indiana Jones and the Last Crusade	1989	U	127 min	Action, Adventure	8.2	In 1938, after his father Professor Henry Jones, Sr. goes missing while pursuing the Holy Grail, Professor Henry "Indiana" Jones, Jr. finds himself up against Adolf Hitler's Nazis again to stop them from obtaining its powers.	65	Steven Spielberg	Harrison Ford	Sean Connery	Alison Doody	Denholm Elliott	692366	197171806
170	https://m.media-amazon.com/images/M/MV5BODI2ZjVlMGQtMWE5ZS00MjJiLWIyMWYtMGU5NmIxNDc0OTMyXkEyXkFqcGdeQXVyMTQ3Njg3MQ@@._V1_.jpg	Dom za vesanje	1988	R	142 min	Comedy, Crime, Drama	8.2	In this luminous tale set in the area around Sarajevo and in Italy, Perhan, an engaging young Romany (gypsy) with telekinetic powers, is seduced by the quick-cash world of petty crime, which threatens to destroy him and those he loves.	\N	Emir Kusturica	Davor Dujmovic	Bora Todorovic	Ljubica Adzovic	Husnija Hasimovic	26402	280015
171	https://m.media-amazon.com/images/M/MV5BYzJjMTYyMjQtZDI0My00ZjE2LTkyNGYtOTllNGQxNDMyZjE0XkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg	Tonari no Totoro	1988	U	86 min	Animation, Family, Fantasy	8.2	When two girls move to the country to be near their ailing mother, they have adventures with the wondrous forest spirits who live nearby.	86	Hayao Miyazaki	Hitoshi Takagi	Noriko Hidaka	Chika Sakamoto	Shigesato Itoi	291180	1105564
172	https://m.media-amazon.com/images/M/MV5BZjRlNDUxZjAtOGQ4OC00OTNlLTgxNmQtYTBmMDgwZmNmNjkxXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_.jpg	Die Hard	1988	A	132 min	Action, Thriller	8.2	An NYPD officer tries to save his wife and several others taken hostage by German terrorists during a Christmas party at the Nakatomi Plaza in Los Angeles.	72	John McTiernan	Bruce Willis	Alan Rickman	Bonnie Bedelia	Reginald VelJohnson	793164	83008852
173	https://m.media-amazon.com/images/M/MV5BZDBjZTM4ZmEtOTA5ZC00NTQzLTkyNzYtMmUxNGU2YjI5YjU5L2ltYWdlXkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_.jpg	Ran	1985	U	162 min	Action, Drama, War	8.2	In Medieval Japan, an elderly warlord retires, handing over his empire to his three sons. However, he vastly underestimates how the new-found power will corrupt them and cause them to turn on each other...and him.	96	Akira Kurosawa	Tatsuya Nakadai	Akira Terao	Jinpachi Nezu	Daisuke Ryû	112505	4135750
174	https://m.media-amazon.com/images/M/MV5BYjRmODkzNDItMTNhNi00YjJlLTg0ZjAtODlhZTM0YzgzYThlXkEyXkFqcGdeQXVyNzQ1ODk3MTQ@._V1_.jpg	Raging Bull	1980	A	129 min	Biography, Drama, Sport	8.2	The life of boxer Jake LaMotta, whose violence and temper that led him to the top in the ring destroyed his life outside of it.	89	Martin Scorsese	Robert De Niro	Cathy Moriarty	Joe Pesci	Frank Vincent	321860	23383987
175	https://m.media-amazon.com/images/M/MV5BMDgwODNmMGItMDcwYi00OWZjLTgyZjAtMGYwMmI4N2Q0NmJmXkEyXkFqcGdeQXVyNzY1MTU0Njk@._V1_.jpg	Stalker	1979	U	162 min	Drama, Sci-Fi	8.2	A guide leads two men through an area known as the Zone to find a room that grants wishes.	\N	Andrei Tarkovsky	Alisa Freyndlikh	Aleksandr Kaydanovskiy	Anatoliy Solonitsyn	Nikolay Grinko	116945	234723
196	https://m.media-amazon.com/images/M/MV5BNjgwNjkwOWYtYmM3My00NzI1LTk5OGItYWY0OTMyZTY4OTg2XkEyXkFqcGdeQXVyODk4OTc3MTY@._V1_.jpg	Portrait de la jeune fille en feu	2019	R	122 min	Drama, Romance	8.1	On an isolated island in Brittany at the end of the eighteenth century, a female painter is obliged to paint a wedding portrait of a young woman.	95	Céline Sciamma	Noémie Merlant	Adèle Haenel	Luàna Bajrami	Valeria Golino	63134	3759854
197	https://m.media-amazon.com/images/M/MV5BNGI1MTI1YTQtY2QwYi00YzUzLTg3NWYtNzExZDlhOTZmZWU0XkEyXkFqcGdeQXVyMDkwNTkwNg@@._V1_.jpg	Pink	2016	UA	136 min	Drama, Thriller	8.1	When three young women are implicated in a crime, a retired lawyer steps forward to help them clear their names.	\N	Aniruddha Roy Chowdhury	Taapsee Pannu	Amitabh Bachchan	Kirti Kulhari	Andrea Tariang	39216	1241223
864	https://m.media-amazon.com/images/M/MV5BOWNlMTJmMWUtYjk0MC00M2U4LWI1ODItZDgxNDZiODFmNjc5XkEyXkFqcGdeQXVyMTAwMzUyOTc@._V1_.jpg	Cape Fear	1962	Passed	106 min	Drama, Thriller	7.7	A lawyer's family is stalked by a man he once helped put in jail.	76	J. Lee Thompson	Gregory Peck	Robert Mitchum	Polly Bergen	Lori Martin	26457	\N
865	https://m.media-amazon.com/images/M/MV5BZjM3ZTAzZDYtZmFjZS00YmQ1LWJlOWEtN2I4MDRmYzY5YmRlL2ltYWdlXkEyXkFqcGdeQXVyMjgyNjk3MzE@._V1_.jpg	Peeping Tom	1960	\N	101 min	Drama, Horror, Thriller	7.7	A young man murders women, using a movie camera to film their dying expressions of terror.	\N	Michael Powell	Karlheinz Böhm	Anna Massey	Moira Shearer	Maxine Audley	31354	83957
198	https://m.media-amazon.com/images/M/MV5BZGRkOGMxYTUtZTBhYS00NzI3LWEzMDQtOWRhMmNjNjJjMzM4XkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg	Koe no katachi	2016	16	130 min	Animation, Drama, Family	8.1	A young man is ostracized by his classmates after he bullies a deaf girl to the point where she moves away. Years later, he sets off on a path for redemption.	78	Naoko Yamada	Miyu Irino	Saori Hayami	Aoi Yûki	Kenshô Ono	47708	\N
199	https://m.media-amazon.com/images/M/MV5BMDk0YzAwYjktMWFiZi00Y2FmLWJmMmMtMzUyZDZmMmU5MjkzXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg	Contratiempo	2016	TV-MA	106 min	Crime, Drama, Mystery	8.1	A successful entrepreneur accused of murder and a witness preparation expert have less than three hours to come up with an impregnable defense.	\N	Oriol Paulo	Mario Casas	Ana Wagener	Jose Coronado	Bárbara Lennie	141516	\N
200	https://m.media-amazon.com/images/M/MV5BNDJhYTk2MTctZmVmOS00OTViLTgxNjQtMzQxOTRiMDdmNGRjXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg	Ah-ga-ssi	2016	A	145 min	Drama, Romance, Thriller	8.1	A woman is hired as a handmaiden to a Japanese heiress, but secretly she is involved in a plot to defraud her.	84	Chan-wook Park	Kim Min-hee	Jung-woo Ha	Cho Jin-woong	Moon So-Ri	113649	2006788
201	https://m.media-amazon.com/images/M/MV5BMGI3YWFmNDQtNjc0Ny00ZDBjLThlNjYtZTc1ZTk5MzU2YTVjXkEyXkFqcGdeQXVyNzA4ODc3ODU@._V1_.jpg	Mommy	2014	R	139 min	Drama	8.1	A widowed single mother, raising her violent son alone, finds new hope when a mysterious neighbor inserts herself into their household.	74	Xavier Dolan	Anne Dorval	Antoine Olivier Pilon	Suzanne Clément	Patrick Huard	50700	3492754
202	https://m.media-amazon.com/images/M/MV5BMjA1NTEwMDMxMF5BMl5BanBnXkFtZTgwODkzMzI0MjE@._V1_.jpg	Haider	2014	UA	160 min	Action, Crime, Drama	8.1	A young man returns to Kashmir after his father's disappearance to confront his uncle, whom he suspects of playing a role in his father's fate.	\N	Vishal Bhardwaj	Shahid Kapoor	Tabu	Shraddha Kapoor	Kay Kay Menon	50445	901610
203	https://m.media-amazon.com/images/M/MV5BYzc5MTU4N2EtYTkyMi00NjdhLTg3NWEtMTY4OTEyMzJhZTAzXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_.jpg	Logan	2017	A	137 min	Action, Drama, Sci-Fi	8.1	In a future where mutants are nearly extinct, an elderly and weary Logan leads a quiet life. But when Laura, a mutant child pursued by scientists, comes to him for help, he must get her to safety.	77	James Mangold	Hugh Jackman	Patrick Stewart	Dafne Keen	Boyd Holbrook	647884	226277068
204	https://m.media-amazon.com/images/M/MV5BMjE4NzgzNzEwMl5BMl5BanBnXkFtZTgwMTMzMDE0NjE@._V1_.jpg	Room	2015	R	118 min	Drama, Thriller	8.1	Held captive for 7 years in an enclosed space, a woman and her young son finally gain their freedom, allowing the boy to experience the outside world for the first time.	86	Lenny Abrahamson	Brie Larson	Jacob Tremblay	Sean Bridgers	Wendy Crewson	371538	14677674
205	https://m.media-amazon.com/images/M/MV5BNGQzY2Y0MTgtMDA4OC00NjM3LWI0ZGQtNTJlM2UxZDQxZjI0XkEyXkFqcGdeQXVyNDUzOTQ5MjY@._V1_.jpg	Relatos salvajes	2014	R	122 min	Comedy, Drama, Thriller	8.1	Six short stories that explore the extremities of human behavior involving people in distress.	77	Damián Szifron	Darío Grandinetti	María Marull	Mónica Villa	Diego Starosta	177059	3107072
206	https://m.media-amazon.com/images/M/MV5BZGE1MDg5M2MtNTkyZS00MTY5LTg1YzUtZTlhZmM1Y2EwNmFmXkEyXkFqcGdeQXVyNjA3OTI0MDc@._V1_.jpg	Soul	2020	U	100 min	Animation, Adventure, Comedy	8.1	After landing the gig of a lifetime, a New York jazz pianist suddenly finds himself trapped in a strange land between Earth and the afterlife.	83	Pete Docter	Kemp Powers	Jamie Foxx	Tina Fey	Graham Norton	159171	\N
207	https://m.media-amazon.com/images/M/MV5BYzE2MjEwMTQtOTQ2Mi00ZWExLTkyMjUtNmJjMjBlYWFjZDdlXkEyXkFqcGdeQXVyMTI3ODAyMzE2._V1_.jpg	Kis Uykusu	2014	\N	196 min	Drama	8.1	A hotel owner and landlord in a remote Turkish village deals with conflicts within his family and a tenant behind on his rent.	88	Nuri Bilge Ceylan	Haluk Bilginer	Melisa Sözen	Demet Akbag	Ayberk Pekcan	46547	165520
208	https://m.media-amazon.com/images/M/MV5BMTYzOTE2NjkxN15BMl5BanBnXkFtZTgwMDgzMTg0MzE@._V1_.jpg	PK	2014	UA	153 min	Comedy, Drama, Musical	8.1	An alien on Earth loses the only device he can use to communicate with his spaceship. His innocent nature and child-like questions force the country to evaluate the impact of religion on its people.	\N	Rajkumar Hirani	Aamir Khan	Anushka Sharma	Sanjay Dutt	Boman Irani	163061	10616104
209	https://m.media-amazon.com/images/M/MV5BMGNhYjUwNmYtNDQxNi00NDdmLTljMDAtZWM1NDQyZTk3ZDYwXkEyXkFqcGdeQXVyODE5NzE3OTE@._V1_.jpg	OMG: Oh My God!	2012	U	125 min	Comedy, Drama, Fantasy	8.1	A shopkeeper takes God to court when his shop is destroyed by an earthquake.	\N	Umesh Shukla	Paresh Rawal	Akshay Kumar	Mithun Chakraborty	Mahesh Manjrekar	51739	923221
213	https://m.media-amazon.com/images/M/MV5BMjQ1NjM3MTUxNV5BMl5BanBnXkFtZTgwMDc5MTY5OTE@._V1_.jpg	Hacksaw Ridge	2016	A	139 min	Biography, Drama, History	8.1	World War II American Army Medic Desmond T. Doss, who served during the Battle of Okinawa, refuses to kill people, and becomes the first man in American history to receive the Medal of Honor without firing a shot.	71	Mel Gibson	Andrew Garfield	Sam Worthington	Luke Bracey	Teresa Palmer	435928	67209615
214	https://m.media-amazon.com/images/M/MV5BOTgxMDQwMDk0OF5BMl5BanBnXkFtZTgwNjU5OTg2NDE@._V1_.jpg	Inside Out	2015	U	95 min	Animation, Adventure, Comedy	8.1	After young Riley is uprooted from her Midwest life and moved to San Francisco, her emotions - Joy, Fear, Anger, Disgust and Sadness - conflict on how best to navigate a new city, house, and school.	94	Pete Docter	Ronnie Del Carmen	Amy Poehler	Bill Hader	Lewis Black	616228	356461711
215	https://m.media-amazon.com/images/M/MV5BMTQzMTEyODY2Ml5BMl5BanBnXkFtZTgwMjA0MDUyMjE@._V1_.jpg	Barfi!	2012	U	151 min	Comedy, Drama, Romance	8.1	Three young people learn that love can neither be defined nor contained by society's definition of normal and abnormal.	\N	Anurag Basu	Ranbir Kapoor	Priyanka Chopra	Ileana D'Cruz	Saurabh Shukla	75721	2804874
216	https://m.media-amazon.com/images/M/MV5BMjExMTEzODkyN15BMl5BanBnXkFtZTcwNTU4NTc4OQ@@._V1_.jpg	12 Years a Slave	2013	A	134 min	Biography, Drama, History	8.1	In the antebellum United States, Solomon Northup, a free black man from upstate New York, is abducted and sold into slavery.	96	Steve McQueen	Chiwetel Ejiofor	Michael Kenneth Williams	Michael Fassbender	Brad Pitt	640533	56671993
217	https://m.media-amazon.com/images/M/MV5BOWEwODJmZDItYTNmZC00OGM4LThlNDktOTQzZjIzMGQxODA4XkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_.jpg	Rush	2013	UA	123 min	Action, Biography, Drama	8.1	The merciless 1970s rivalry between Formula One rivals James Hunt and Niki Lauda.	74	Ron Howard	Daniel Brühl	Chris Hemsworth	Olivia Wilde	Alexandra Maria Lara	432811	26947624
218	https://m.media-amazon.com/images/M/MV5BM2UwMDVmMDItM2I2Yi00NGZmLTk4ZTUtY2JjNTQ3OGQ5ZjM2XkEyXkFqcGdeQXVyMTA1OTYzOTUx._V1_.jpg	Ford v Ferrari	2019	UA	152 min	Action, Biography, Drama	8.1	American car designer Carroll Shelby and driver Ken Miles battle corporate interference and the laws of physics to build a revolutionary race car for Ford in order to defeat Ferrari at the 24 Hours of Le Mans in 1966.	81	James Mangold	Matt Damon	Christian Bale	Jon Bernthal	Caitriona Balfe	291289	117624028
219	https://m.media-amazon.com/images/M/MV5BMjIyOTM5OTIzNV5BMl5BanBnXkFtZTgwMDkzODE2NjE@._V1_.jpg	Spotlight	2015	A	129 min	Biography, Crime, Drama	8.1	The true story of how the Boston Globe uncovered the massive scandal of child molestation and cover-up within the local Catholic Archdiocese, shaking the entire Catholic Church to its core.	93	Tom McCarthy	Mark Ruffalo	Michael Keaton	Rachel McAdams	Liev Schreiber	420316	45055776
220	https://m.media-amazon.com/images/M/MV5BMTQ2MDMwNjEwNV5BMl5BanBnXkFtZTgwOTkxMzI0MzE@._V1_.jpg	Song of the Sea	2014	PG	93 min	Animation, Adventure, Drama	8.1	Ben, a young Irish boy, and his little sister Saoirse, a girl who can turn into a seal, go on an adventure to free the fairies and save the spirit world.	85	Tomm Moore	David Rawle	Brendan Gleeson	Lisa Hannigan	Fionnula Flanagan	51679	857524
221	https://m.media-amazon.com/images/M/MV5BMTQ1NDI0NzkyOF5BMl5BanBnXkFtZTcwNzAyNzE2Nw@@._V1_.jpg	Kahaani	2012	UA	122 min	Mystery, Thriller	8.1	A pregnant woman's search for her missing husband takes her from London to Kolkata, but everyone she questions denies having ever met him.	\N	Sujoy Ghosh	Vidya Balan	Parambrata Chattopadhyay	Indraneil Sengupta	Nawazuddin Siddiqui	57806	1035953
222	https://m.media-amazon.com/images/M/MV5BZGFmMjM5OWMtZTRiNC00ODhlLThlYTItYTcyZDMyYmMyYjFjXkEyXkFqcGdeQXVyNDUzOTQ5MjY@._V1_.jpg	Zindagi Na Milegi Dobara	2011	U	155 min	Comedy, Drama	8.1	Three friends decide to turn their fantasy vacation into reality after one of their friends gets engaged.	\N	Zoya Akhtar	Hrithik Roshan	Farhan Akhtar	Abhay Deol	Katrina Kaif	67927	3108485
223	https://m.media-amazon.com/images/M/MV5BMTg0NTIzMjQ1NV5BMl5BanBnXkFtZTcwNDc3MzM5OQ@@._V1_.jpg	Prisoners	2013	A	153 min	Crime, Drama, Mystery	8.1	When Keller Dover's daughter and her friend go missing, he takes matters into his own hands as the police pursue multiple leads and the pressure mounts.	70	Denis Villeneuve	Hugh Jackman	Jake Gyllenhaal	Viola Davis	Melissa Leo	601149	61002302
224	https://m.media-amazon.com/images/M/MV5BN2EwM2I5OWMtMGQyMi00Zjg1LWJkNTctZTdjYTA4OGUwZjMyXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg	Mad Max: Fury Road	2015	UA	120 min	Action, Adventure, Sci-Fi	8.1	In a post-apocalyptic wasteland, a woman rebels against a tyrannical ruler in search for her homeland with the aid of a group of female prisoners, a psychotic worshiper, and a drifter named Max.	90	George Miller	Tom Hardy	Charlize Theron	Nicholas Hoult	Zoë Kravitz	882316	154058340
225	https://m.media-amazon.com/images/M/MV5BOTcwMzdiMWItMjZlOS00MzAzLTg5OTItNTA4OGYyMjBhMmRiXkEyXkFqcGdeQXVyODE5NzE3OTE@._V1_.jpg	A Wednesday	2008	UA	104 min	Action, Crime, Drama	8.1	A retiring police officer reminisces about the most astounding day of his career. About a case that was never filed but continues to haunt him in his memories - the case of a man and a Wednesday.	\N	Neeraj Pandey	Anupam Kher	Naseeruddin Shah	Jimmy Sheirgill	Aamir Bashir	73891	\N
229	https://m.media-amazon.com/images/M/MV5BNzE4NDg5OWMtMzg3NC00ZDRjLTllMDMtZTRjNWZmNjBmMGZlXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg	Hachi: A Dog's Tale	2009	G	93 min	Biography, Drama, Family	8.1	A college professor bonds with an abandoned dog he takes into his home.	\N	Lasse Hallström	Richard Gere	Joan Allen	Cary-Hiroyuki Tagawa	Sarah Roemer	253575	\N
230	https://m.media-amazon.com/images/M/MV5BMDgzYjQwMDMtNGUzYi00MTRmLWIyMGMtNjE1OGZkNzY2YWIzL2ltYWdlXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_.jpg	Mary and Max	2009	\N	92 min	Animation, Comedy, Drama	8.1	A tale of friendship between two unlikely pen pals: Mary, a lonely, eight-year-old girl living in the suburbs of Melbourne, and Max, a forty-four-year old, severely obese man living in New York.	\N	Adam Elliot	Toni Collette	Philip Seymour Hoffman	Eric Bana	Barry Humphries	164462	\N
231	https://m.media-amazon.com/images/M/MV5BMjA5NDQyMjc2NF5BMl5BanBnXkFtZTcwMjg5ODcyMw@@._V1_.jpg	How to Train Your Dragon	2010	U	98 min	Animation, Action, Adventure	8.1	A hapless young Viking who aspires to hunt dragons becomes the unlikely friend of a young dragon himself, and learns there may be more to the creatures than he assumed.	75	Dean DeBlois	Chris Sanders	Jay Baruchel	Gerard Butler	Christopher Mintz-Plasse	666773	217581231
232	https://m.media-amazon.com/images/M/MV5BMTAwNDEyODU1MjheQTJeQWpwZ15BbWU2MDc3NDQwNw@@._V1_.jpg	Into the Wild	2007	R	148 min	Adventure, Biography, Drama	8.1	After graduating from Emory University, top student and athlete Christopher McCandless abandons his possessions, gives his entire $24,000 savings account to charity and hitchhikes to Alaska to live in the wilderness. Along the way, Christopher encounters a series of characters that shape his life.	73	Sean Penn	Emile Hirsch	Vince Vaughn	Catherine Keener	Marcia Gay Harden	572921	18354356
233	https://m.media-amazon.com/images/M/MV5BMjA5Njk3MjM4OV5BMl5BanBnXkFtZTcwMTc5MTE1MQ@@._V1_.jpg	No Country for Old Men	2007	R	122 min	Crime, Drama, Thriller	8.1	Violence and mayhem ensue after a hunter stumbles upon a drug deal gone wrong and more than two million dollars in cash near the Rio Grande.	91	Ethan Coen	Joel Coen	Tommy Lee Jones	Javier Bardem	Josh Brolin	856916	74283625
234	https://m.media-amazon.com/images/M/MV5BN2ZmMDMwODgtMzA5MS00MGU0LWEyYTgtYzQ5MmQzMzU2NTVkXkEyXkFqcGdeQXVyODE5NzE3OTE@._V1_.jpg	Lage Raho Munna Bhai	2006	U	144 min	Comedy, Drama, Romance	8.1	Munna Bhai embarks on a journey with Mahatma Gandhi in order to fight against a corrupt property dealer.	\N	Rajkumar Hirani	Sanjay Dutt	Arshad Warsi	Vidya Balan	Boman Irani	43137	2217561
235	https://m.media-amazon.com/images/M/MV5BMTkxNzA1NDQxOV5BMl5BanBnXkFtZTcwNTkyMTIzMw@@._V1_.jpg	Million Dollar Baby	2004	UA	132 min	Drama, Sport	8.1	A determined woman works with a hardened boxing trainer to become a professional.	86	Clint Eastwood	Hilary Swank	Clint Eastwood	Morgan Freeman	Jay Baruchel	635975	100492203
236	https://m.media-amazon.com/images/M/MV5BZGJjYmIzZmQtNWE4Yy00ZGVmLWJkZGEtMzUzNmQ4ZWFlMjRhXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg	Hotel Rwanda	2004	PG-13	121 min	Biography, Drama, History	8.1	Paul Rusesabagina, a hotel manager, houses over a thousand Tutsi refugees during their struggle against the Hutu militia in Rwanda, Africa.	79	Terry George	Don Cheadle	Sophie Okonedo	Joaquin Phoenix	Xolani Mali	334320	23530892
237	https://m.media-amazon.com/images/M/MV5BNjAxZTEzNzQtYjdlNy00ZTJmLTkwZDUtOTAwNTM3YjI2MWUyL2ltYWdlXkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_.jpg	Taegukgi hwinalrimyeo	2004	R	140 min	Action, Drama, War	8.1	When two brothers are forced to fight in the Korean War, the elder decides to take the riskiest missions if it will help shield the younger from battle.	64	Je-kyu Kang	Jang Dong-Gun	Won Bin	Eun-ju Lee	Hyeong-jin Kong	37820	1111061
238	https://m.media-amazon.com/images/M/MV5BMTQ1MjAwNTM5Ml5BMl5BanBnXkFtZTYwNDM0MTc3._V1_.jpg	Before Sunset	2004	R	80 min	Drama, Romance	8.1	Nine years after Jesse and Celine first met, they encounter each other again on the French leg of Jesse's book tour.	90	Richard Linklater	Ethan Hawke	Julie Delpy	Vernon Dobtcheff	Louise Lemoine Torrès	236311	5820649
239	https://m.media-amazon.com/images/M/MV5BMzQ4MTBlYTQtMzJkYS00OGNjLTk1MWYtNzQ0OTQ0OWEyOWU1XkEyXkFqcGdeQXVyNDgyODgxNjE@._V1_.jpg	Munna Bhai M.B.B.S.	2003	U	156 min	Comedy, Drama, Musical	8.1	A gangster sets out to fulfill his father's dream of becoming a doctor.	\N	Rajkumar Hirani	Sanjay Dutt	Arshad Warsi	Gracy Singh	Sunil Dutt	73992	\N
240	https://m.media-amazon.com/images/M/MV5BOGViNTg4YTktYTQ2Ni00MTU0LTk2NWUtMTI4OTc1YTM0NzQ2XkEyXkFqcGdeQXVyMDM2NDM2MQ@@._V1_.jpg	Salinui chueok	2003	UA	131 min	Crime, Drama, Mystery	8.1	In a small Korean province in 1986, two detectives struggle with the case of multiple young women being found raped and murdered by an unknown culprit.	82	Bong Joon Ho	Kang-ho Song	Kim Sang-kyung	Roe-ha Kim	Jae-ho Song	139558	14131
241	https://m.media-amazon.com/images/M/MV5BMjRjMTYwMTYtMmRkNi00MmVkLWE0MjQtNmM3YjI0NWFhZDNmXkEyXkFqcGdeQXVyODE5NzE3OTE@._V1_.jpg	Dil Chahta Hai	2001	Unrated	183 min	Comedy, Drama, Romance	8.1	Three inseparable childhood friends are just out of college. Nothing comes between them - until they each fall in love, and their wildly different approaches to relationships creates tension.	\N	Farhan Akhtar	Aamir Khan	Saif Ali Khan	Akshaye Khanna	Preity Zinta	66803	300000
242	https://m.media-amazon.com/images/M/MV5BNzM3NDFhYTAtYmU5Mi00NGRmLTljYjgtMDkyODQ4MjNkMGY2XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_.jpg	Kill Bill: Vol. 1	2003	R	111 min	Action, Crime, Drama	8.1	After awakening from a four-year coma, a former assassin wreaks vengeance on the team of assassins who betrayed her.	69	Quentin Tarantino	Uma Thurman	David Carradine	Daryl Hannah	Michael Madsen	1000639	70099045
246	https://m.media-amazon.com/images/M/MV5BMTY1NTI0ODUyOF5BMl5BanBnXkFtZTgwNTEyNjQ0MDE@._V1_.jpg	Monsters, Inc.	2001	U	92 min	Animation, Adventure, Comedy	8.1	In order to power the city, monsters have to scare children so that they scream. However, the children are toxic to the monsters, and after a child gets through, 2 monsters realize things may not be what they think.	79	Pete Docter	David Silverman	Lee Unkrich	Billy Crystal	John Goodman	815505	289916256
247	https://m.media-amazon.com/images/M/MV5BZjJhMThkNTQtNjkxNy00MDdjLTg4MWQtMTI2MmQ3MDVmODUzXkEyXkFqcGdeQXVyMTAwOTA3NzY3._V1_.jpg	Shin seiki Evangelion Gekijô-ban: Air/Magokoro wo, kimi ni	1997	UA	87 min	Animation, Action, Drama	8.1	Concurrent theatrical ending of the TV series Shin seiki evangerion (1995).	\N	Hideaki Anno	Kazuya Tsurumaki	Megumi Ogata	Megumi Hayashibara	Yûko Miyamura	38847	\N
248	https://m.media-amazon.com/images/M/MV5BNDYxNWUzZmYtOGQxMC00MTdkLTkxOTctYzkyOGIwNWQxZjhmXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_.jpg	Lagaan: Once Upon a Time in India	2001	U	224 min	Adventure, Drama, Musical	8.1	The people of a small village in Victorian India stake their future on a game of cricket against their ruthless British rulers.	84	Ashutosh Gowariker	Aamir Khan	Raghuvir Yadav	Gracy Singh	Rachel Shelley	105036	70147
249	https://m.media-amazon.com/images/M/MV5BMWM4NTFhYjctNzUyNi00NGMwLTk3NTYtMDIyNTZmMzRlYmQyXkEyXkFqcGdeQXVyMTAwMzUyOTc@._V1_.jpg	The Sixth Sense	1999	A	107 min	Drama, Mystery, Thriller	8.1	A boy who communicates with spirits seeks the help of a disheartened child psychologist.	64	M. Night Shyamalan	Bruce Willis	Haley Joel Osment	Toni Collette	Olivia Williams	911573	293506292
250	https://m.media-amazon.com/images/M/MV5BMzIwOTdmNjQtOWQ1ZS00ZWQ4LWIxYTMtOWFkM2NjODJiMGY4L2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyNTI4MjkwNjA@._V1_.jpg	La leggenda del pianista sull'oceano	1998	U	169 min	Drama, Music, Romance	8.1	A baby boy, discovered in 1900 on an ocean liner, grows into a musical prodigy, never setting foot on land.	58	Giuseppe Tornatore	Tim Roth	Pruitt Taylor Vince	Mélanie Thierry	Bill Nunn	59020	259127
251	https://m.media-amazon.com/images/M/MV5BMDIzODcyY2EtMmY2MC00ZWVlLTgwMzAtMjQwOWUyNmJjNTYyXkEyXkFqcGdeQXVyNDk3NzU2MTQ@._V1_.jpg	The Truman Show	1998	U	103 min	Comedy, Drama	8.1	An insurance salesman discovers his whole life is actually a reality TV show.	90	Peter Weir	Jim Carrey	Ed Harris	Laura Linney	Noah Emmerich	939631	125618201
252	https://m.media-amazon.com/images/M/MV5BMmExZTZhN2QtMzg5Mi00Y2M5LTlmMWYtNTUzMzUwMGM2OGQ3XkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_.jpg	Crna macka, beli macor	1998	R	127 min	Comedy, Crime, Romance	8.1	Matko and his son Zare live on the banks of the Danube river and get by through hustling and basically doing anything to make a living. In order to pay off a business debt Matko agrees to marry off Zare to the sister of a local gangster.	73	Emir Kusturica	Bajram Severdzan	Srdjan 'Zika' Todorovic	Branka Katic	Florijan Ajdini	50862	348660
253	https://m.media-amazon.com/images/M/MV5BMTQ0NjUzMDMyOF5BMl5BanBnXkFtZTgwODA1OTU0MDE@._V1_.jpg	The Big Lebowski	1998	R	117 min	Comedy, Crime, Sport	8.1	Jeff "The Dude" Lebowski, mistaken for a millionaire of the same name, seeks restitution for his ruined rug and enlists his bowling buddies to help get it.	71	Joel Coen	Ethan Coen	Jeff Bridges	John Goodman	Julianne Moore	732620	17498804
254	https://m.media-amazon.com/images/M/MV5BYjZjODRlMjQtMjJlYy00ZDBjLTkyYTQtZGQxZTk5NzJhYmNmXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg	Fa yeung nin wah	2000	U	98 min	Drama, Romance	8.1	Two neighbors, a woman and a man, form a strong bond after both suspect extramarital activities of their spouses. However, they agree to keep their bond platonic so as not to commit similar wrongs.	85	Kar-Wai Wong	Tony Chiu-Wai Leung	Maggie Cheung	Ping Lam Siu	Tung Cho 'Joe' Cheung	124383	2734044
255	https://m.media-amazon.com/images/M/MV5BMzA5Zjc3ZTMtMmU5YS00YTMwLWI4MWUtYTU0YTVmNjVmODZhXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_.jpg	Trainspotting	1996	A	93 min	Drama	8.1	Renton, deeply immersed in the Edinburgh drug scene, tries to clean up and get out, despite the allure of the drugs and influence of friends.	83	Danny Boyle	Ewan McGregor	Ewen Bremner	Jonny Lee Miller	Kevin McKidd	634716	16501785
256	https://m.media-amazon.com/images/M/MV5BNDJiZDgyZjctYmRjMS00ZjdkLTkwMTEtNGU1NDg3NDQ0Yzk1XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_.jpg	Fargo	1996	A	98 min	Crime, Drama, Thriller	8.1	Jerry Lundegaard's inept crime falls apart due to his and his henchmen's bungling and the persistent police work of the quite pregnant Marge Gunderson.	85	Joel Coen	Ethan Coen	William H. Macy	Frances McDormand	Steve Buscemi	617444	24611975
257	https://m.media-amazon.com/images/M/MV5BNzI4YTVmMWEtMWQ3MS00OGE1LWE5YjMtNjc4NWJmYjRmZTQyXkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_.jpg	Underground	1995	\N	170 min	Comedy, Drama, War	8.1	A group of Serbian socialists prepares for the war in a surreal underground filled by parties, tragedies, love and hate.	\N	Emir Kusturica	Predrag 'Miki' Manojlovic	Lazar Ristovski	Mirjana Jokovic	Slavko Stimac	55220	171082
258	https://m.media-amazon.com/images/M/MV5BNDNiOTA5YjktY2Q0Ni00ODgzLWE5MWItNGExOWRlYjY2MjBlXkEyXkFqcGdeQXVyNjQ2MjQ5NzM@._V1_.jpg	La haine	1995	UA	98 min	Crime, Drama	8.1	24 hours in the lives of three young men in the French suburbs the day after a violent riot.	\N	Mathieu Kassovitz	Vincent Cassel	Hubert Koundé	Saïd Taghmaoui	Abdel Ahmed Ghili	150345	309811
262	https://m.media-amazon.com/images/M/MV5BMGQ5MzljNzYtMDM1My00NmI0LThlYzQtMTg0ZmQ0MTk1YjkxXkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_.jpg	Chung Hing sam lam	1994	U	102 min	Comedy, Crime, Drama	8.1	Two melancholy Hong Kong policemen fall in love: one with a mysterious female underworld figure, the other with a beautiful and ethereal server at a late-night restaurant he frequents.	77	Kar-Wai Wong	Brigitte Lin	Takeshi Kaneshiro	Tony Chiu-Wai Leung	Faye Wong	63122	600200
263	https://m.media-amazon.com/images/M/MV5BMjM2MDgxMDg0Nl5BMl5BanBnXkFtZTgwNTM2OTM5NDE@._V1_.jpg	Jurassic Park	1993	UA	127 min	Action, Adventure, Sci-Fi	8.1	A pragmatic paleontologist visiting an almost complete theme park is tasked with protecting a couple of kids after a power failure causes the park's cloned dinosaurs to run loose.	68	Steven Spielberg	Sam Neill	Laura Dern	Jeff Goldblum	Richard Attenborough	867615	402453882
264	https://m.media-amazon.com/images/M/MV5BMmYyOTgwYWItYmU3Ny00M2E2LTk0NWMtMDVlNmQ0MWZiMTMxXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_.jpg	In the Name of the Father	1993	UA	133 min	Biography, Crime, Drama	8.1	A man's coerced confession to an I.R.A. bombing he did not commit results in the imprisonment of his father as well. An English lawyer fights to free them.	84	Jim Sheridan	Daniel Day-Lewis	Pete Postlethwaite	Alison Crosbie	Philip King	156842	25010410
265	https://m.media-amazon.com/images/M/MV5BYmFhZmM3Y2MtNDA1Ny00NjkzLWJkM2EtYWU1ZjEwYmNjZDQ0XkEyXkFqcGdeQXVyMTMxMTY0OTQ@._V1_.jpg	Ba wang bie ji	1993	R	171 min	Drama, Music, Romance	8.1	Two boys meet at an opera training school in Peking in 1924. Their resulting friendship will span nearly 70 years and will endure some of the most troublesome times in China's history.	\N	Kaige Chen	Leslie Cheung	Fengyi Zhang	Gong Li	You Ge	25088	5216888
266	https://m.media-amazon.com/images/M/MV5BMjEzNjY5NDcwNV5BMl5BanBnXkFtZTcwNzEwMzg4NA@@._V1_.jpg	Dà hóng denglong gaogao guà	1991	PG	125 min	Drama, History, Romance	8.1	A young woman becomes the fourth wife of a wealthy lord, and must learn to live with the strict rules and tensions within the household.	\N	Yimou Zhang	Gong Li	Jingwu Ma	Saifei He	Cuifen Cao	29662	2603061
267	https://m.media-amazon.com/images/M/MV5BOGYwYWNjMzgtNGU4ZC00NWQ2LWEwZjUtMzE1Zjc3NjY3YTU1XkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg	Dead Poets Society	1989	U	128 min	Comedy, Drama	8.1	Maverick teacher John Keating uses poetry to embolden his boarding school students to new heights of self-expression.	79	Peter Weir	Robin Williams	Robert Sean Leonard	Ethan Hawke	Josh Charles	425457	95860116
268	https://m.media-amazon.com/images/M/MV5BODJmY2Y2OGQtMDg2My00N2Q3LWJmZTUtYTc2ODBjZDVlNDlhXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg	Stand by Me	1986	U	89 min	Adventure, Drama	8.1	After the death of one of his friends, a writer recounts a childhood journey with his friends to find the body of a missing boy.	75	Rob Reiner	Wil Wheaton	River Phoenix	Corey Feldman	Jerry O'Connell	363401	52287414
269	https://m.media-amazon.com/images/M/MV5BMzRjZjdlMjQtODVkYS00N2YzLWJlYWYtMGVlN2E5MWEwMWQzXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg	Platoon	1986	A	120 min	Drama, War	8.1	Chris Taylor, a neophyte recruit in Vietnam, finds himself caught in a battle of wills between two sergeants, one good and the other evil. A shrewd examination of the brutality of war and the duality of man in conflict.	92	Oliver Stone	Charlie Sheen	Tom Berenger	Willem Dafoe	Keith David	381222	138530565
270	https://m.media-amazon.com/images/M/MV5BM2RjMmU3ZWItYzBlMy00ZmJkLWE5YzgtNTVkODdhOWM3NGZhXkEyXkFqcGdeQXVyNDA5Mjg5MjA@._V1_.jpg	Paris, Texas	1984	U	145 min	Drama	8.1	Travis Henderson, an aimless drifter who has been missing for four years, wanders out of the desert and must reconnect with society, himself, his life, and his family.	78	Wim Wenders	Harry Dean Stanton	Nastassja Kinski	Dean Stockwell	Aurore Clément	91188	2181987
271	https://m.media-amazon.com/images/M/MV5BZWFkN2ZhODAtYTNkZS00Y2NjLWIzNDYtNzJjNDNlMzAyNTIyXkEyXkFqcGdeQXVyODEzNjM5OTQ@._V1_.jpg	Kaze no tani no Naushika	1984	U	117 min	Animation, Adventure, Fantasy	8.1	Warrior and pacifist Princess Nausicaä desperately struggles to prevent two warring nations from destroying themselves and their dying planet.	86	Hayao Miyazaki	Sumi Shimamoto	Mahito Tsujimura	Hisako Kyôda	Gorô Naya	150924	495770
272	https://m.media-amazon.com/images/M/MV5BNGViZWZmM2EtNGYzZi00ZDAyLTk3ODMtNzIyZTBjN2Y1NmM1XkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_.jpg	The Thing	1982	A	109 min	Horror, Mystery, Sci-Fi	8.1	A research team in Antarctica is hunted by a shape-shifting alien that assumes the appearance of its victims.	57	John Carpenter	Kurt Russell	Wilford Brimley	Keith David	Richard Masur	371271	13782838
273	https://m.media-amazon.com/images/M/MV5BZDhlZTYxOTYtYTk3Ny00ZDljLTk3ZmItZTcxZWU5YTIyYmFkXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg	Pink Floyd: The Wall	1982	UA	95 min	Drama, Fantasy, Music	8.1	A confined but troubled rock star descends into madness in the midst of his physical and social isolation from everyone.	47	Alan Parker	Bob Geldof	Christine Hargreaves	James Laurenson	Eleanor David	76081	22244207
274	https://m.media-amazon.com/images/M/MV5BYjIzNTYxMTctZjAwNS00YzI3LWExMGMtMGQxNGM5ZTc1NzhlXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg	Fitzcarraldo	1982	R	158 min	Adventure, Drama	8.1	The story of Brian Sweeney Fitzgerald, an extremely determined man who intends to build an opera house in the middle of a jungle.	\N	Werner Herzog	Klaus Kinski	Claudia Cardinale	José Lewgoy	Miguel Ángel Fuentes	31595	\N
278	https://m.media-amazon.com/images/M/MV5BMzAwNjU1OTktYjY3Mi00NDY5LWFlZWUtZjhjNGE0OTkwZDkwXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg	Life of Brian	1979	R	94 min	Comedy	8.1	Born on the original Christmas in the stable next door to Jesus Christ, Brian of Nazareth spends his life being mistaken for a messiah.	77	Terry Jones	Graham Chapman	John Cleese	Michael Palin	Terry Gilliam	367250	20045115
279	https://m.media-amazon.com/images/M/MV5BNDhmNTA0ZDMtYjhkNS00NzEzLWIzYTItOGNkMTVmYjE2YmI3XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_.jpg	The Deer Hunter	1978	A	183 min	Drama, War	8.1	An in-depth examination of the ways in which the U.S. Vietnam War impacts and disrupts the lives of people in a small industrial town in Pennsylvania.	86	Michael Cimino	Robert De Niro	Christopher Walken	John Cazale	John Savage	311361	48979328
280	https://m.media-amazon.com/images/M/MV5BMTY5MDMzODUyOF5BMl5BanBnXkFtZTcwMTQ3NTMyNA@@._V1_.jpg	Rocky	1976	U	120 min	Drama, Sport	8.1	A small-time boxer gets a supremely rare chance to fight a heavy-weight champion in a bout in which he strives to go the distance for his self-respect.	70	John G. Avildsen	Sylvester Stallone	Talia Shire	Burt Young	Carl Weathers	518546	117235247
281	https://m.media-amazon.com/images/M/MV5BZGNjYjM2MzItZGQzZi00NmY3LTgxOGUtMTQ2MWQxNWQ2MmMwXkEyXkFqcGdeQXVyNzM0MTUwNTY@._V1_.jpg	Network	1976	UA	121 min	Drama	8.1	A television network cynically exploits a deranged former anchor's ravings and revelations about the news media for its own profit.	83	Sidney Lumet	Faye Dunaway	William Holden	Peter Finch	Robert Duvall	144911	\N
282	https://m.media-amazon.com/images/M/MV5BNmY0MWY2NDctZDdmMi00MjA1LTk0ZTQtZDMyZTQ1NTNlYzVjXkEyXkFqcGdeQXVyMjUzOTY1NTc@._V1_.jpg	Barry Lyndon	1975	PG	185 min	Adventure, Drama, History	8.1	An Irish rogue wins the heart of a rich widow and assumes her dead husband's aristocratic position in 18th-century England.	89	Stanley Kubrick	Ryan O'Neal	Marisa Berenson	Patrick Magee	Hardy Krüger	149843	\N
283	https://m.media-amazon.com/images/M/MV5BMTg1MDg3OTk3M15BMl5BanBnXkFtZTgwMDEzMzE5MTE@._V1_.jpg	Zerkalo	1975	G	107 min	Biography, Drama	8.1	A dying man in his forties remembers his past. His childhood, his mother, the war, personal moments and things that tell of the recent history of all the Russian nation.	\N	Andrei Tarkovsky	Margarita Terekhova	Filipp Yankovskiy	Ignat Daniltsev	Oleg Yankovskiy	40081	177345
284	https://m.media-amazon.com/images/M/MV5BOGMwYmY5ZmEtMzY1Yi00OWJiLTk1Y2MtMzI2MjBhYmZkNTQ0XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_.jpg	Chinatown	1974	UA	130 min	Drama, Mystery, Thriller	8.1	A private detective hired to expose an adulterer finds himself caught up in a web of deceit, corruption, and murder.	92	Roman Polanski	Jack Nicholson	Faye Dunaway	John Huston	Perry Lopez	294230	29000000
285	https://m.media-amazon.com/images/M/MV5BOWVmYzQwY2MtOTBjNi00MDNhLWI5OGMtN2RiMDYxODI3MjU5XkEyXkFqcGdeQXVyMjUzOTY1NTc@._V1_.jpg	Paper Moon	1973	U	102 min	Comedy, Crime, Drama	8.1	During the Great Depression, a con man finds himself saddled with a young girl who may or may not be his daughter, and the two forge an unlikely partnership.	77	Peter Bogdanovich	Ryan O'Neal	Tatum O'Neal	Madeline Kahn	John Hillerman	42285	30933743
286	https://m.media-amazon.com/images/M/MV5BMTg3NzYzOTEtNmE2Ni00M2EyLWJhMjctNjMyMTk4ZTViOGUzXkEyXkFqcGdeQXVyNzQxNDExNTU@._V1_.jpg	Viskningar och rop	1972	A	91 min	Drama	8.1	When a woman dying of cancer in early twentieth-century Sweden is visited by her two sisters, long-repressed feelings between the siblings rise to the surface.	\N	Ingmar Bergman	Harriet Andersson	Liv Ullmann	Kari Sylwan	Ingrid Thulin	30206	1742348
287	https://m.media-amazon.com/images/M/MV5BZmY4Yjc0OWQtZDRhMy00ODc2LWI2NGYtMWFlODYyN2VlNDQyXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_.jpg	Solaris	1972	PG	167 min	Drama, Mystery, Sci-Fi	8.1	A psychologist is sent to a station orbiting a distant planet in order to discover what has caused the crew to go insane.	90	Andrei Tarkovsky	Natalya Bondarchuk	Donatas Banionis	Jüri Järvet	Vladislav Dvorzhetskiy	81021	\N
288	https://m.media-amazon.com/images/M/MV5BMWFjZjRiM2QtZmRkOC00MDUxLTlhYmQtYmY5ZTNiMTI5Nzc2L2ltYWdlXkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_.jpg	Le samouraï	1967	GP	105 min	Crime, Drama, Mystery	8.1	After professional hitman Jef Costello is seen by witnesses his efforts to provide himself an alibi drive him further into a corner.	\N	Jean-Pierre Melville	Alain Delon	François Périer	Nathalie Delon	Cathy Rosier	45434	39481
289	https://m.media-amazon.com/images/M/MV5BOWFlNzZhYmYtYTI5YS00MDQyLWIyNTUtNTRjMWUwNTEzNjA0XkEyXkFqcGdeQXVyNjUwNzk3NDc@._V1_.jpg	Cool Hand Luke	1967	A	127 min	Crime, Drama	8.1	A laid back Southern man is sentenced to two years in a rural prison, but refuses to conform.	92	Stuart Rosenberg	Paul Newman	George Kennedy	Strother Martin	J.D. Cannon	161984	16217773
290	https://m.media-amazon.com/images/M/MV5BMTM0YzExY2EtMjUyZi00ZmIwLWFkYTktNjY5NmVkYTdkMjI5XkEyXkFqcGdeQXVyNzQxNDExNTU@._V1_.jpg	Persona	1966	\N	85 min	Drama, Thriller	8.1	A nurse is put in charge of a mute actress and finds that their personae are melding together.	86	Ingmar Bergman	Bibi Andersson	Liv Ullmann	Margaretha Krook	Gunnar Björnstrand	103191	\N
291	https://m.media-amazon.com/images/M/MV5BNjM2MjMwNzUzN15BMl5BanBnXkFtZTgwMjEzMzE5MTE@._V1_.jpg	Andrei Rublev	1966	R	205 min	Biography, Drama, History	8.1	The life, times and afflictions of the fifteenth-century Russian iconographer St. Andrei Rublev.	\N	Andrei Tarkovsky	Anatoliy Solonitsyn	Ivan Lapikov	Nikolay Grinko	Nikolay Sergeev	46947	102021
295	https://m.media-amazon.com/images/M/MV5BZmY3MDlmODctYTY3Yi00NzYyLWIxNTUtYjVlZWZjMmMwZTBkXkEyXkFqcGdeQXVyMzAxNjg3MjQ@._V1_.jpg	Sanjuro	1962	U	96 min	Action, Comedy, Crime	8.1	A crafty samurai helps a young man and his fellow clansmen save his uncle, who has been framed and imprisoned by a corrupt superintendent.	\N	Akira Kurosawa	Toshirô Mifune	Tatsuya Nakadai	Keiju Kobayashi	Yûnosuke Itô	33044	\N
296	https://m.media-amazon.com/images/M/MV5BMGEyNzhkYzktMGMyZS00YzRiLWJlYjktZjJkOTU5ZDY0ZGI4XkEyXkFqcGdeQXVyNjUwNzk3NDc@._V1_.jpg	The Man Who Shot Liberty Valance	1962	\N	123 min	Drama, Western	8.1	A senator returns to a western town for the funeral of an old friend and tells the story of his origins.	94	John Ford	James Stewart	John Wayne	Vera Miles	Lee Marvin	68827	\N
297	https://m.media-amazon.com/images/M/MV5BYTYzYzBhYjQtNDQxYS00MmUwLTkyZjgtZWVkOWFjNzE5OTI2XkEyXkFqcGdeQXVyNjMxMjkwMjI@._V1_.jpg	Ivanovo detstvo	1962	\N	95 min	Drama, War	8.1	In WW2, twelve year old Soviet orphan Ivan Bondarev works for the Soviet army as a scout behind the German lines and strikes a friendship with three sympathetic Soviet officers.	\N	Andrei Tarkovsky	Eduard Abalov	Nikolay Burlyaev	Valentin Zubkov	Evgeniy Zharikov	31728	\N
298	https://m.media-amazon.com/images/M/MV5BZjgyMzZkMGUtNTBhZC00OTkzLWI4ZmMtYzcwMzc5MjQ0YTM3XkEyXkFqcGdeQXVyMTMxMTY0OTQ@._V1_.jpg	Jungfrukällan	1960	A	89 min	Drama	8.1	An innocent yet pampered young virgin and her family's pregnant and jealous servant set out to deliver candles to church, but only one returns from events that transpire in the woods along the way.	\N	Ingmar Bergman	Max von Sydow	Birgitta Valberg	Gunnel Lindblom	Birgitta Pettersson	26697	1526000
299	https://m.media-amazon.com/images/M/MV5BMGQ5ODNkNWYtYTgxZS00YjJkLThhODAtYzUwNGNiYjRmNjdkXkEyXkFqcGdeQXVyMTg2NTc4MzA@._V1_.jpg	Inherit the Wind	1960	Passed	128 min	Biography, Drama, History	8.1	Based on a real-life case in 1925, two great lawyers argue the case for and against a science teacher accused of the crime of teaching evolution.	75	Stanley Kramer	Spencer Tracy	Fredric March	Gene Kelly	Dick York	27254	\N
300	https://m.media-amazon.com/images/M/MV5BYTQ4MjA4NmYtYjRhNi00MTEwLTg0NjgtNjk3ODJlZGU4NjRkL2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_.jpg	Les quatre cents coups	1959	\N	99 min	Crime, Drama	8.1	A young boy, left without attention, delves into a life of petty crime.	\N	François Truffaut	Jean-Pierre Léaud	Albert Rémy	Claire Maurier	Guy Decomble	105291	\N
301	https://m.media-amazon.com/images/M/MV5BNjgxY2JiZDYtZmMwOC00ZmJjLWJmODUtMTNmNWNmYWI5ODkwL2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_.jpg	Ben-Hur	1959	U	212 min	Adventure, Drama, History	8.1	After a Jewish prince is betrayed and sent into slavery by a Roman friend, he regains his freedom and comes back for revenge.	90	William Wyler	Charlton Heston	Jack Hawkins	Stephen Boyd	Haya Harareet	219466	74700000
302	https://m.media-amazon.com/images/M/MV5BYjJkN2Y5MTktZDRhOS00NTUwLWFiMzEtMTVlNWU4ODM0Y2E5XkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_.jpg	Kakushi-toride no san-akunin	1958	\N	139 min	Adventure, Drama	8.1	Lured by gold, two greedy peasants unknowingly escort a princess and her general across enemy lines.	\N	Akira Kurosawa	Toshirô Mifune	Misa Uehara	Minoru Chiaki	Kamatari Fujiwara	34797	\N
303	https://m.media-amazon.com/images/M/MV5BOTdhNmUxZmQtNmMwNC00MzE3LWE1MTUtZDgxZTYwYjEzZjcwXkEyXkFqcGdeQXVyNTA1NjYyMDk@._V1_.jpg	Le notti di Cabiria	1957	\N	110 min	Drama	8.1	A waifish prostitute wanders the streets of Rome looking for true love but finds only heartbreak.	\N	Federico Fellini	Giulietta Masina	François Périer	Franca Marzi	Dorian Gray	42940	752045
304	https://m.media-amazon.com/images/M/MV5BNGYxZjA2M2ItYTRmNS00NzRmLWJkYzgtYTdiNGFlZDI5ZjNmXkEyXkFqcGdeQXVyNDE5MTU2MDE@._V1_.jpg	Kumonosu-jô	1957	\N	110 min	Drama, History	8.1	A war-hardened general, egged on by his ambitious wife, works to fulfill a prophecy that he would become lord of Spider's Web Castle.	\N	Akira Kurosawa	Toshirô Mifune	Minoru Chiaki	Isuzu Yamada	Takashi Shimura	46678	\N
305	https://m.media-amazon.com/images/M/MV5BMGVhNjhjODktODgxYS00MDdhLTlkZjktYTkyNzQxMTU0ZDYxXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_.jpg	The Bridge on the River Kwai	1957	PG	161 min	Adventure, Drama, War	8.1	British POWs are forced to build a railway bridge across the river Kwai for their Japanese captors, not knowing that the allied forces are planning to destroy it.	87	David Lean	William Holden	Alec Guinness	Jack Hawkins	Sessue Hayakawa	203463	44908000
306	https://m.media-amazon.com/images/M/MV5BY2I0MWFiZDMtNWQyYy00Njk5LTk3MDktZjZjNTNmZmVkYjkxXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_.jpg	On the Waterfront	1954	A	108 min	Crime, Drama, Thriller	8.1	An ex-prize fighter turned longshoreman struggles to stand up to his corrupt union bosses.	91	Elia Kazan	Marlon Brando	Karl Malden	Lee J. Cobb	Rod Steiger	142107	9600000
307	https://m.media-amazon.com/images/M/MV5BZDdkNzMwZmUtY2Q5MS00ZmM2LWJhYjItYTBjMWY0MGM4MDRjXkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_.jpg	Le salaire de la peur	1953	U	131 min	Adventure, Drama, Thriller	8.1	In a decrepit South American village, four men are hired to transport an urgent nitroglycerine shipment without the equipment that would make it safe.	85	Henri-Georges Clouzot	Yves Montand	Charles Vanel	Peter van Eyck	Folco Lulli	54588	\N
308	https://m.media-amazon.com/images/M/MV5BNDUzZjlhZTYtN2E5MS00ODQ3LWI1ZjgtNzdiZmI0NTZiZTljXkEyXkFqcGdeQXVyMjI4MjA5MzA@._V1_.jpg	Ace in the Hole	1951	Approved	111 min	Drama, Film-Noir	8.1	A frustrated former big-city journalist now stuck working for an Albuquerque newspaper exploits a story about a man trapped in a cave to rekindle his career, but the situation quickly escalates into an out-of-control circus.	72	Billy Wilder	Kirk Douglas	Jan Sterling	Robert Arthur	Porter Hall	31568	3969893
312	https://m.media-amazon.com/images/M/MV5BNzc1MTcyNTQ5N15BMl5BanBnXkFtZTgwMzgwMDI0MjE@._V1_.jpg	The Shop Around the Corner	1940	\N	99 min	Comedy, Drama, Romance	8.1	Two employees at a gift shop can barely stand each other, without realizing that they are falling in love through the post as each other's anonymous pen pal.	96	Ernst Lubitsch	Margaret Sullavan	James Stewart	Frank Morgan	Joseph Schildkraut	28450	203300
313	https://m.media-amazon.com/images/M/MV5BYTcxYWExOTMtMWFmYy00ZjgzLWI0YjktNWEzYzJkZTg0NDdmL2ltYWdlXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_.jpg	Rebecca	1940	Approved	130 min	Drama, Mystery, Romance	8.1	A self-conscious woman juggles adjusting to her new role as an aristocrat's wife and avoiding being intimidated by his first wife's spectral presence.	86	Alfred Hitchcock	Laurence Olivier	Joan Fontaine	George Sanders	Judith Anderson	123942	4360000
314	https://m.media-amazon.com/images/M/MV5BZTYwYjYxYzgtMDE1Ni00NzU4LWJlMTEtODQ5YmJmMGJhZjI5L2ltYWdlXkEyXkFqcGdeQXVyMDI2NDg0NQ@@._V1_.jpg	Mr. Smith Goes to Washington	1939	Passed	129 min	Comedy, Drama	8.1	A naive man is appointed to fill a vacancy in the United States Senate. His plans promptly collide with political corruption, but he doesn't back down.	73	Frank Capra	James Stewart	Jean Arthur	Claude Rains	Edward Arnold	107017	9600000
315	https://m.media-amazon.com/images/M/MV5BYjUyZWZkM2UtMzYxYy00ZmQ3LWFmZTQtOGE2YjBkNjA3YWZlXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_.jpg	Gone with the Wind	1939	U	238 min	Drama, History, Romance	8.1	A manipulative woman and a roguish man conduct a turbulent romance during the American Civil War and Reconstruction periods.	97	Victor Fleming	George Cukor	Sam Wood	Clark Gable	Vivien Leigh	290074	198676459
316	https://m.media-amazon.com/images/M/MV5BMTg3MTI5NTk0N15BMl5BanBnXkFtZTgwMjU1MDM5MTE@._V1_.jpg	La Grande Illusion	1937	\N	113 min	Drama, War	8.1	During WWI, two French soldiers are captured and imprisoned in a German P.O.W. camp. Several escape attempts follow until they are eventually sent to a seemingly inescapable fortress.	\N	Jean Renoir	Jean Gabin	Dita Parlo	Pierre Fresnay	Erich von Stroheim	33829	172885
317	https://m.media-amazon.com/images/M/MV5BYzJmMWE5NjAtNWMyZS00NmFiLWIwMDgtZDE2NzczYWFhNzIzXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_.jpg	It Happened One Night	1934	Approved	105 min	Comedy, Romance	8.1	A renegade reporter and a crazy young heiress meet on a bus heading for New York, and end up stuck with each other when the bus leaves them behind at one of the stops.	87	Frank Capra	Clark Gable	Claudette Colbert	Walter Connolly	Roscoe Karns	94016	4360000
318	https://m.media-amazon.com/images/M/MV5BNjBjNDJiYTUtOWY0OS00OGVmLTg2YzctMTE0NzVhODM1ZWJmXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_.jpg	La passion de Jeanne d'Arc	1928	Passed	110 min	Biography, Drama, History	8.1	In 1431, Jeanne d'Arc is placed on trial on charges of heresy. The ecclesiastical jurists attempt to force Jeanne to recant her claims of holy visions.	\N	Carl Theodor Dreyer	Maria Falconetti	Eugene Silvain	André Berley	Maurice Schutz	47676	21877
319	https://m.media-amazon.com/images/M/MV5BM2QwYWQ0MWMtNzcwOC00N2Q2LWE1MDEtZmQxZjhiM2U1YzFhXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg	The Circus	1928	Passed	72 min	Comedy, Romance	8.1	The Tramp finds work and the girl of his dreams at a circus.	90	Charles Chaplin	Charles Chaplin	Merna Kennedy	Al Ernest Garcia	Harry Crocker	30205	\N
320	https://m.media-amazon.com/images/M/MV5BNDVkYmYwM2ItNzRiMy00NWQ4LTlhMjMtNDI1ZDYyOGVmMzJjXkEyXkFqcGdeQXVyNTgzMzU5MDI@._V1_.jpg	Sunrise: A Song of Two Humans	1927	Passed	94 min	Drama, Romance	8.1	An allegorical tale about a man fighting the good and evil within him. Both sides are made flesh - one a sophisticated woman he is attracted to and the other his wife.	\N	F.W. Murnau	George O'Brien	Janet Gaynor	Margaret Livingston	Bodil Rosing	46865	539540
321	https://m.media-amazon.com/images/M/MV5BYmRiMDFlYjYtOTMwYy00OGY2LWE0Y2QtYzQxOGNhZmUwNTIxXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_.jpg	The General	1926	Passed	67 min	Action, Adventure, Comedy	8.1	When Union spies steal an engineer's beloved locomotive, he pursues it single-handedly and straight through enemy lines.	\N	Clyde Bruckman	Buster Keaton	Buster Keaton	Marion Mack	Glen Cavender	81156	1033895
322	https://m.media-amazon.com/images/M/MV5BNWJiNGJiMTEtMGM3OC00ZWNlLTgwZTgtMzdhNTRiZjk5MTQ1XkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg	Das Cabinet des Dr. Caligari	1920	\N	76 min	Fantasy, Horror, Mystery	8.1	Hypnotist Dr. Caligari uses a somnambulist, Cesare, to commit murders.	\N	Robert Wiene	Werner Krauss	Conrad Veidt	Friedrich Feher	Lil Dagover	57428	\N
323	https://m.media-amazon.com/images/M/MV5BNjZlMDdmN2YtYThmZi00NGQzLTk0ZTQtNTUyZDFmODExOGNiXkEyXkFqcGdeQXVyODE5NzE3OTE@._V1_.jpg	Badhaai ho	2018	UA	124 min	Comedy, Drama	8	A man is embarrassed when he finds out his mother is pregnant.	\N	Amit Ravindernath Sharma	Ayushmann Khurrana	Neena Gupta	Gajraj Rao	Sanya Malhotra	27978	\N
324	https://m.media-amazon.com/images/M/MV5BNjJkYTc5N2UtMGRlMC00M2FmLTk0ZWMtOTYxNDUwNjI2YzljXkEyXkFqcGdeQXVyNDg4NjY5OTQ@._V1_.jpg	Togo	2019	U	113 min	Adventure, Biography, Drama	8	The story of Togo, the sled dog who led the 1925 serum run yet was considered by most to be too small and weak to lead such an intense race.	69	Ericson Core	Willem Dafoe	Julianne Nicholson	Christopher Heyerdahl	Richard Dormer	37556	\N
325	https://m.media-amazon.com/images/M/MV5BMGE1ZTkyOTMtMTdiZS00YzI2LTlmYWQtOTE5YWY0NWVlNjlmXkEyXkFqcGdeQXVyNjQ3ODkxMjE@._V1_.jpg	Airlift	2016	UA	130 min	Drama, History	8	When Iraq invades Kuwait in August 1990, a callous Indian businessman becomes the spokesperson for more than 170,000 stranded countrymen.	\N	Raja Menon	Akshay Kumar	Nimrat Kaur	Kumud Mishra	Prakash Belawadi	52897	\N
328	https://m.media-amazon.com/images/M/MV5BMzUzNDM2NzM2MV5BMl5BanBnXkFtZTgwNTM3NTg4OTE@._V1_.jpg	La La Land	2016	A	128 min	Comedy, Drama, Music	8	While navigating their careers in Los Angeles, a pianist and an actress fall in love while attempting to reconcile their aspirations for the future.	94	Damien Chazelle	Ryan Gosling	Emma Stone	Rosemarie DeWitt	J.K. Simmons	505918	151101803
329	https://m.media-amazon.com/images/M/MV5BMjA3NjkzNjg2MF5BMl5BanBnXkFtZTgwMDkyMzgzMDI@._V1_.jpg	Lion	2016	U	118 min	Biography, Drama	8	A five-year-old Indian boy is adopted by an Australian couple after getting lost hundreds of kilometers from home. 25 years later, he sets out to find his lost family.	69	Garth Davis	Dev Patel	Nicole Kidman	Rooney Mara	Sunny Pawar	213970	51739495
330	https://m.media-amazon.com/images/M/MV5BMTc2MTQ3MDA1Nl5BMl5BanBnXkFtZTgwODA3OTI4NjE@._V1_.jpg	The Martian	2015	UA	144 min	Adventure, Drama, Sci-Fi	8	An astronaut becomes stranded on Mars after his team assume him dead, and must rely on his ingenuity to find a way to signal to Earth that he is alive.	80	Ridley Scott	Matt Damon	Jessica Chastain	Kristen Wiig	Kate Mara	760094	228433663
331	https://m.media-amazon.com/images/M/MV5BOTMyMjEyNzIzMV5BMl5BanBnXkFtZTgwNzIyNjU0NzE@._V1_.jpg	Zootopia	2016	U	108 min	Animation, Adventure, Comedy	8	In a city of anthropomorphic animals, a rookie bunny cop and a cynical con artist fox must work together to uncover a conspiracy.	78	Byron Howard	Rich Moore	Jared Bush	Ginnifer Goodwin	Jason Bateman	434143	341268248
332	https://m.media-amazon.com/images/M/MV5BYWVlMjVhZWYtNWViNC00ODFkLTk1MmItYjU1MDY5ZDdhMTU3XkEyXkFqcGdeQXVyODIwMDI1NjM@._V1_.jpg	Bãhubali: The Beginning	2015	UA	159 min	Action, Drama	8	In ancient India, an adventurous and daring man becomes involved in a decades-old feud between two warring peoples.	\N	S.S. Rajamouli	Prabhas	Rana Daggubati	Ramya Krishnan	Sathyaraj	102972	6738000
333	https://m.media-amazon.com/images/M/MV5BNThmMWMyMWMtOWRiNy00MGY0LTg1OTUtNjYzODg2MjdlZGU5XkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg	Kaguyahime no monogatari	2013	U	137 min	Animation, Adventure, Drama	8	Found inside a shining stalk of bamboo by an old bamboo cutter and his wife, a tiny girl grows rapidly into an exquisite young lady. The mysterious young princess enthralls all who encounter her, but ultimately she must confront her fate, the punishment for her crime.	89	Isao Takahata	Chloë Grace Moretz	James Caan	Mary Steenburgen	James Marsden	38746	1506975
334	https://m.media-amazon.com/images/M/MV5BYjFhOWY0OTgtNDkzMC00YWJkLTk1NGEtYWUxNjhmMmQ5ZjYyXkEyXkFqcGdeQXVyMjMxOTE0ODA@._V1_.jpg	Wonder	2017	U	113 min	Drama, Family	8	Based on the New York Times bestseller, this movie tells the incredibly inspiring and heartwarming story of August Pullman, a boy with facial differences who enters the fifth grade, attending a mainstream elementary school for the first time.	66	Stephen Chbosky	Jacob Tremblay	Owen Wilson	Izabela Vidovic	Julia Roberts	141923	132422809
335	https://m.media-amazon.com/images/M/MV5BZDkzMTQ1YTMtMWY4Ny00MzExLTkzYzEtNzZhOTczNzU2NTU1XkEyXkFqcGdeQXVyODY3NjMyMDU@._V1_.jpg	Gully Boy	2019	UA	154 min	Drama, Music, Romance	8	A coming-of-age story based on the lives of street rappers in Mumbai.	65	Zoya Akhtar	Vijay Varma	Nakul Roshan Sahdev	Ranveer Singh	Vijay Raaz	31886	5566534
336	https://m.media-amazon.com/images/M/MV5BMTQ1NDI5MjMzNF5BMl5BanBnXkFtZTcwMTc0MDQwOQ@@._V1_.jpg	Special Chabbis	2013	UA	144 min	Crime, Drama, Thriller	8	A gang of con-men rob prominent rich businessmen and politicians by posing as C.B.I and income tax officers.	\N	Neeraj Pandey	Akshay Kumar	Anupam Kher	Manoj Bajpayee	Jimmy Sheirgill	51069	1079369
337	https://m.media-amazon.com/images/M/MV5BMTEwNjE2OTM4NDZeQTJeQWpwZ15BbWU3MDE2MTE4OTk@._V1_.jpg	Short Term 12	2013	R	96 min	Drama	8	A 20-something supervising staff member of a residential treatment facility navigates the troubled waters of that world alongside her co-worker and longtime boyfriend.	82	Destin Daniel Cretton	Brie Larson	Frantz Turner	John Gallagher Jr.	Kaitlyn Dever	81770	1010414
338	https://m.media-amazon.com/images/M/MV5BMTg5MTE2NjA4OV5BMl5BanBnXkFtZTgwMTUyMjczMTE@._V1_.jpg	Serbuan maut 2: Berandal	2014	A	150 min	Action, Crime, Thriller	8	Only a short time after the first raid, Rama goes undercover with the thugs of Jakarta and plans to bring down the syndicate and uncover the corruption within his police force.	71	Gareth Evans	Iko Uwais	Yayan Ruhian	Arifin Putra	Oka Antara	114316	2625803
339	https://m.media-amazon.com/images/M/MV5BOTgwMzFiMWYtZDhlNS00ODNkLWJiODAtZDVhNzgyNzJhYjQ4L2ltYWdlXkEyXkFqcGdeQXVyNzEzOTYxNTQ@._V1_.jpg	The Imitation Game	2014	UA	114 min	Biography, Drama, Thriller	8	During World War II, the English mathematical genius Alan Turing tries to crack the German Enigma code with help from fellow mathematicians.	73	Morten Tyldum	Benedict Cumberbatch	Keira Knightley	Matthew Goode	Allen Leech	685201	91125683
340	https://m.media-amazon.com/images/M/MV5BMTAwMjU5OTgxNjZeQTJeQWpwZ15BbWU4MDUxNDYxODEx._V1_.jpg	Guardians of the Galaxy	2014	UA	121 min	Action, Adventure, Comedy	8	A group of intergalactic criminals must pull together to stop a fanatical warrior with plans to purge the universe.	76	James Gunn	Chris Pratt	Vin Diesel	Bradley Cooper	Zoe Saldana	1043455	333176600
341	https://m.media-amazon.com/images/M/MV5BNzA1Njg4NzYxOV5BMl5BanBnXkFtZTgwODk5NjU3MzI@._V1_.jpg	Blade Runner 2049	2017	UA	164 min	Action, Drama, Mystery	8	Young Blade Runner K's discovery of a long-buried secret leads him to track down former Blade Runner Rick Deckard, who's been missing for thirty years.	81	Denis Villeneuve	Harrison Ford	Ryan Gosling	Ana de Armas	Dave Bautista	461823	92054159
342	https://m.media-amazon.com/images/M/MV5BMjA1Nzk0OTM2OF5BMl5BanBnXkFtZTgwNjU2NjEwMDE@._V1_.jpg	Her	2013	A	126 min	Drama, Romance, Sci-Fi	8	In a near future, a lonely writer develops an unlikely relationship with an operating system designed to meet his every need.	90	Spike Jonze	Joaquin Phoenix	Amy Adams	Scarlett Johansson	Rooney Mara	540772	25568251
346	https://m.media-amazon.com/images/M/MV5BMjEzMzMxOTUyNV5BMl5BanBnXkFtZTcwNjI3MDc5Ng@@._V1_.jpg	Tropa de Elite 2: O Inimigo Agora é Outro	2010	\N	115 min	Action, Crime, Drama	8	After a prison riot, former-Captain Nascimento, now a high ranking security officer in Rio de Janeiro, is swept into a bloody political dispute that involves government officials and paramilitary groups.	71	José Padilha	Wagner Moura	Irandhir Santos	André Ramiro	Milhem Cortaz	79200	100119
347	https://m.media-amazon.com/images/M/MV5BMzU5MjEwMTg2Nl5BMl5BanBnXkFtZTcwNzM3MTYxNA@@._V1_.jpg	The King's Speech	2010	U	118 min	Biography, Drama, History	8	The story of King George VI, his impromptu ascension to the throne of the British Empire in 1936, and the speech therapist who helped the unsure monarch overcome his stammer.	88	Tom Hooper	Colin Firth	Geoffrey Rush	Helena Bonham Carter	Derek Jacobi	639603	138797449
348	https://m.media-amazon.com/images/M/MV5BMTM5OTMyMjIxOV5BMl5BanBnXkFtZTcwNzU4MjIwNQ@@._V1_.jpg	The Help	2011	UA	146 min	Drama	8	An aspiring author during the civil rights movement of the 1960s decides to write a book detailing the African American maids' point of view on the white families for which they work, and the hardships they go through on a daily basis.	62	Tate Taylor	Emma Stone	Viola Davis	Octavia Spencer	Bryce Dallas Howard	428521	169708112
349	https://m.media-amazon.com/images/M/MV5BYzE5MjY1ZDgtMTkyNC00MTMyLThhMjAtZGI5OTE1NzFlZGJjXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_.jpg	Deadpool	2016	R	108 min	Action, Adventure, Comedy	8	A wisecracking mercenary gets experimented on and becomes immortal but ugly, and sets out to track down the man who ruined his looks.	65	Tim Miller	Ryan Reynolds	Morena Baccarin	T.J. Miller	Ed Skrein	902669	363070709
350	https://m.media-amazon.com/images/M/MV5BMTQ0MzQxODQ0MV5BMl5BanBnXkFtZTgwNTQ0NzY4NDE@._V1_.jpg	Darbareye Elly	2009	TV-PG	119 min	Drama, Mystery	8	The mysterious disappearance of a kindergarten teacher during a picnic in the north of Iran is followed by a series of misadventures for her fellow travelers.	87	Asghar Farhadi	Golshifteh Farahani	Shahab Hosseini	Taraneh Alidoosti	Merila Zare'i	45803	106662
351	https://m.media-amazon.com/images/M/MV5BYjU1NjczNzYtYmFjOC00NzkxLTg4YTUtNGYzMTk3NTU0ZDE3XkEyXkFqcGdeQXVyNDUzOTQ5MjY@._V1_.jpg	Dev.D	2009	A	144 min	Drama, Romance	8	After breaking up with his childhood sweetheart, a young man finds solace in drugs. Meanwhile, a teenage girl is caught in the world of prostitution. Will they be destroyed, or will they find redemption?	\N	Anurag Kashyap	Abhay Deol	Mahie Gill	Kalki Koechlin	Dibyendu Bhattacharya	28749	10950
352	https://m.media-amazon.com/images/M/MV5BNTFmMjM3M2UtOTIyZC00Zjk3LTkzODUtYTdhNGRmNzFhYzcyXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg	Yip Man	2008	R	106 min	Action, Biography, Drama	8	During the Japanese invasion of China, a wealthy martial artist is forced to leave his home when his city is occupied. With little means of providing for themselves, Ip Man and the remaining members of the city must find a way to survive.	59	Wilson Yip	Donnie Yen	Simon Yam	Siu-Wong Fan	Ka Tung Lam	211427	\N
354	https://m.media-amazon.com/images/M/MV5BMjE2NjEyMDg0M15BMl5BanBnXkFtZTcwODYyODg5Mg@@._V1_.jpg	Nefes: Vatan Sagolsun	2009	\N	128 min	Action, Drama, Thriller	8	Story of 40-man Turkish task force who must defend a relay station.	\N	Levent Semerci	Erdem Can	Mete Horozoglu	Ilker Kizmaz	Baris Bagci	31838	\N
355	https://m.media-amazon.com/images/M/MV5BZmNjZWI3NzktYWI1Mi00OTAyLWJkNTYtMzUwYTFlZDA0Y2UwXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_.jpg	Slumdog Millionaire	2008	UA	120 min	Drama, Romance	8	A Mumbai teenager reflects on his life after being accused of cheating on the Indian version of "Who Wants to be a Millionaire?".	84	Danny Boyle	Loveleen Tandan	Dev Patel	Freida Pinto	Saurabh Shukla	798882	141319928
356	https://m.media-amazon.com/images/M/MV5BNzY2NzI4OTE5MF5BMl5BanBnXkFtZTcwMjMyNDY4Mw@@._V1_.jpg	Black Swan	2010	A	108 min	Drama, Thriller	8	A committed dancer struggles to maintain her sanity after winning the lead role in a production of Tchaikovsky's "Swan Lake".	79	Darren Aronofsky	Natalie Portman	Mila Kunis	Vincent Cassel	Winona Ryder	699673	106954678
357	https://m.media-amazon.com/images/M/MV5BYmI1ODU5ZjMtNWUyNC00YzllLThjNzktODE1M2E4OTVmY2E5XkEyXkFqcGdeQXVyMTExNzQzMDE0._V1_.jpg	Tropa de Elite	2007	R	115 min	Action, Crime, Drama	8	In 1997 Rio de Janeiro, Captain Nascimento has to find a substitute for his position while trying to take down drug dealers and criminals before the Pope visits.	33	José Padilha	Wagner Moura	André Ramiro	Caio Junqueira	Milhem Cortaz	98097	8060
358	https://m.media-amazon.com/images/M/MV5BNDYxNjQyMjAtNTdiOS00NGYwLWFmNTAtNThmYjU5ZGI2YTI1XkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg	The Avengers	2012	UA	143 min	Action, Adventure, Sci-Fi	8	Earth's mightiest heroes must come together and learn to fight as a team if they are going to stop the mischievous Loki and his alien army from enslaving humanity.	69	Joss Whedon	Robert Downey Jr.	Chris Evans	Scarlett Johansson	Jeremy Renner	1260806	623279547
359	https://m.media-amazon.com/images/M/MV5BMGRkZThmYzEtYjQxZC00OWEzLThjYjAtYzFkMjY0NGZkZWI4XkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_.jpg	Persepolis	2007	PG-13	96 min	Animation, Biography, Drama	8	A precocious and outspoken Iranian girl grows up during the Islamic Revolution.	90	Vincent Paronnaud	Marjane Satrapi	Chiara Mastroianni	Catherine Deneuve	Gena Rowlands	88656	4445756
363	https://m.media-amazon.com/images/M/MV5BNGNiNmU2YTMtZmU4OS00MjM0LTlmYWUtMjVlYjAzYjE2N2RjXkEyXkFqcGdeQXVyNDk3NzU2MTQ@._V1_.jpg	The Bourne Ultimatum	2007	UA	115 min	Action, Mystery, Thriller	8	Jason Bourne dodges a ruthless C.I.A. official and his Agents from a new assassination program while searching for the origins of his life as a trained killer.	85	Paul Greengrass	Matt Damon	Edgar Ramírez	Joan Allen	Julia Stiles	604694	227471070
364	https://m.media-amazon.com/images/M/MV5BMTM1ODIwNzM5OV5BMl5BanBnXkFtZTcwNjk5MDkyMQ@@._V1_.jpg	Bin-jip	2004	U	88 min	Crime, Drama, Romance	8	A transient young man breaks into empty homes to partake of the vacationing residents' lives for a few days.	72	Ki-duk Kim	Seung-Yun Lee	Hee Jae	Hyuk-ho Kwon	Jin-mo Joo	50610	238507
365	https://m.media-amazon.com/images/M/MV5BODZmYjMwNzEtNzVhNC00ZTRmLTk2M2UtNzE1MTQ2ZDAxNjc2XkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg	Sin City	2005	A	124 min	Crime, Thriller	8	A movie that explores the dark and miserable town, Basin City, tells the story of three different people, all caught up in violent corruption.	74	Frank Miller	Quentin Tarantino	Robert Rodriguez	Mickey Rourke	Clive Owen	738512	74103820
366	https://m.media-amazon.com/images/M/MV5BMTc3MjkzMDkxN15BMl5BanBnXkFtZTcwODAyMTU1MQ@@._V1_.jpg	Le scaphandre et le papillon	2007	PG-13	112 min	Biography, Drama	8	The true story of Elle editor Jean-Dominique Bauby who suffers a stroke and has to live with an almost totally paralyzed body; only his left eye isn't paralyzed.	92	Julian Schnabel	Laura Obiols	Mathieu Amalric	Emmanuelle Seigner	Marie-Josée Croze	103284	5990075
367	https://m.media-amazon.com/images/M/MV5BMjE0MTY2MDI3NV5BMl5BanBnXkFtZTcwNTc1MzEzMQ@@._V1_.jpg	G.O.R.A.	2004	\N	127 min	Adventure, Comedy, Sci-Fi	8	A slick young Turk kidnapped by extraterrestrials shows his great « humanitarian spirit » by outwitting the evil commander-in-chief of the planet of G.O.R.A.	\N	Ömer Faruk Sorak	Cem Yilmaz	Özge Özberk	Ozan Güven	Safak Sezer	56960	\N
368	https://m.media-amazon.com/images/M/MV5BMTMzODU0NTkxMF5BMl5BanBnXkFtZTcwMjQ4MzMzMw@@._V1_.jpg	Ratatouille	2007	U	111 min	Animation, Adventure, Comedy	8	A rat who can cook makes an unusual alliance with a young kitchen worker at a famous restaurant.	96	Brad Bird	Jan Pinkava	Brad Garrett	Lou Romano	Patton Oswalt	641645	206445654
369	https://m.media-amazon.com/images/M/MV5BMDI5ZWJhOWItYTlhOC00YWNhLTlkNzctNDU5YTI1M2E1MWZhXkEyXkFqcGdeQXVyNTIzOTk5ODM@._V1_.jpg	Casino Royale	2006	PG-13	144 min	Action, Adventure, Thriller	8	After earning 00 status and a licence to kill, Secret Agent James Bond sets out on his first mission as 007. Bond must defeat a private banker funding terrorists in a high-stakes game of poker at Casino Royale, Montenegro.	80	Martin Campbell	Daniel Craig	Eva Green	Judi Dench	Jeffrey Wright	582239	167445960
370	https://m.media-amazon.com/images/M/MV5BNmFiYmJmN2QtNWQwMi00MzliLThiOWMtZjQxNGRhZTQ1MjgyXkEyXkFqcGdeQXVyNzQ1ODk3MTQ@._V1_.jpg	Kill Bill: Vol. 2	2004	A	137 min	Action, Crime, Thriller	8	The Bride continues her quest of vengeance against her former boss and lover Bill, the reclusive bouncer Budd, and the treacherous, one-eyed Elle.	83	Quentin Tarantino	Uma Thurman	David Carradine	Michael Madsen	Daryl Hannah	683900	66208183
371	https://m.media-amazon.com/images/M/MV5BYmViZTY1OWEtMTQxMy00OGQ5LTgzZjAtYTQzOTYxNjliYTI4XkEyXkFqcGdeQXVyNjkxOTM4ODY@._V1_.jpg	Vozvrashchenie	2003	\N	110 min	Drama	8	In the Russian wilderness, two brothers face a range of new, conflicting emotions when their father - a man they know only through a single photograph - resurfaces.	82	Andrey Zvyagintsev	Vladimir Garin	Ivan Dobronravov	Konstantin Lavronenko	Nataliya Vdovina	42399	502028
372	https://m.media-amazon.com/images/M/MV5BZGYxOTRlM2MtNWRjZS00NDk2LWExM2EtMDFiYTgyMGJkZGYyXkEyXkFqcGdeQXVyMTA1NTM1NDI2._V1_.jpg	Bom Yeoareum Gaeul Gyeoul Geurigo Bom	2003	R	103 min	Drama, Romance	8	A boy is raised by a Buddhist monk in an isolated floating temple where the years pass like the seasons.	85	Ki-duk Kim	Ki-duk Kim	Yeong-su Oh	Jong-ho Kim	Kim Young-Min	77520	2380788
373	https://m.media-amazon.com/images/M/MV5BMjE0NDk2NjgwMV5BMl5BanBnXkFtZTYwMTgyMzA3._V1_.jpg	Mar adentro	2014	U	126 min	Biography, Drama	8	The factual story of Spaniard Ramon Sampedro, who fought a thirty-year campaign in favor of euthanasia and his own right to die.	74	Alejandro Amenábar	Javier Bardem	Belén Rueda	Lola Dueñas	Mabel Rivera	77554	2086345
374	https://m.media-amazon.com/images/M/MV5BODEyYmQxZjUtZGQ0NS00ZTAwLTkwOGQtNGY2NzEwMWE0MDc3XkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg	Cinderella Man	2005	UA	144 min	Biography, Drama, History	8	The story of James J. Braddock, a supposedly washed-up boxer who came back to become a champion and an inspiration in the 1930s.	69	Ron Howard	Russell Crowe	Renée Zellweger	Craig Bierko	Paul Giamatti	176151	61649911
375	https://m.media-amazon.com/images/M/MV5BYmVjNDIxODAtNWZiZi00ZDBlLWJmOTUtNDNjMGExNTViMzE1XkEyXkFqcGdeQXVyNTE0MDc0NTM@._V1_.jpg	Kal Ho Naa Ho	2003	U	186 min	Comedy, Drama, Musical	8	Naina, an introverted, perpetually depressed girl's life changes when she meets Aman. But Aman has a secret of his own which changes their lives forever. Embroiled in all this is Rohit, Naina's best friend who conceals his love for her.	54	Nikkhil Advani	Preity Zinta	Shah Rukh Khan	Saif Ali Khan	Jaya Bachchan	63460	1787378
376	https://m.media-amazon.com/images/M/MV5BM2U0NTcxOTktN2MwZS00N2Q2LWJlYWItMTg0NWIyMDIxNzU5L2ltYWdlXkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_.jpg	Mou gaan dou	2002	UA	101 min	Action, Crime, Drama	8	A story between a mole in the police department and an undercover cop. Their objectives are the same: to find out who is the mole, and who is the cop.	75	Andrew Lau	Alan Mak	Andy Lau	Tony Chiu-Wai Leung	Anthony Chau-Sang Wong	117857	169659
380	https://m.media-amazon.com/images/M/MV5BMjM2NTYxMTE3OV5BMl5BanBnXkFtZTgwNDgwNjgwMzE@._V1_.jpg	Yeopgijeogin geunyeo	2001	\N	137 min	Comedy, Drama, Romance	8	A young man sees a drunk, cute woman standing too close to the tracks at a metro station in Seoul and pulls her back. She ends up getting him into trouble repeatedly after that, starting on the train.	\N	Jae-young Kwak	Tae-Hyun Cha	Jun Ji-Hyun	In-mun Kim	Song Wok-suk	45403	\N
381	https://m.media-amazon.com/images/M/MV5BMTkwNTg2MTI1NF5BMl5BanBnXkFtZTcwMDM1MzUyMQ@@._V1_.jpg	Dogville	2003	R	178 min	Crime, Drama	8	A woman on the run from the mob is reluctantly accepted in a small Colorado community in exchange for labor, but when a search visits the town she finds out that their support has a price.	60	Lars von Trier	Nicole Kidman	Paul Bettany	Lauren Bacall	Harriet Andersson	137963	1530386
383	https://m.media-amazon.com/images/M/MV5BZjZlZDlkYTktMmU1My00ZDBiLWFlNjEtYTBhNjVhOTM4ZjJjXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg	Donnie Darko	2001	R	113 min	Drama, Mystery, Sci-Fi	8	After narrowly escaping a bizarre accident, a troubled teenager is plagued by visions of a man in a large rabbit suit who manipulates him to commit a series of crimes.	88	Richard Kelly	Jake Gyllenhaal	Jena Malone	Mary McDonnell	Holmes Osborne	740086	1480006
384	https://m.media-amazon.com/images/M/MV5BZjk3YThkNDktNjZjMS00MTBiLTllNTAtYzkzMTU0N2QwYjJjXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg	Magnolia	1999	R	188 min	Drama	8	An epic mosaic of interrelated characters in search of love, forgiveness, and meaning in the San Fernando Valley.	77	Paul Thomas Anderson	Tom Cruise	Jason Robards	Julianne Moore	Philip Seymour Hoffman	289742	22455976
385	https://m.media-amazon.com/images/M/MV5BNDVkYWMxNWEtNjc2MC00OGI5LWI3NmUtYWUwNDQyOTc3YmY5XkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg	Dancer in the Dark	2000	U	140 min	Crime, Drama, Musical	8	An East European girl travels to the United States with her young son, expecting it to be like a Hollywood film.	61	Lars von Trier	Björk	Catherine Deneuve	David Morse	Peter Stormare	102285	4184036
386	https://m.media-amazon.com/images/M/MV5BNmE1MDk4OWEtYjk1NS00MWU2LTk5ZWItYjZhYmRkODRjMDc0XkEyXkFqcGdeQXVyNjE5MjUyOTM@._V1_.jpg	The Straight Story	1999	U	112 min	Biography, Drama	8	An old man makes a long journey by lawnmower to mend his relationship with an ill brother.	86	David Lynch	Richard Farnsworth	Sissy Spacek	Jane Galloway Heitz	Joseph A. Carpenter	82002	6203044
387	https://m.media-amazon.com/images/M/MV5BMmMzOWNhNTYtYmY0My00OGJiLWIzNDUtZWRhNGY0NWFjNzFmXkEyXkFqcGdeQXVyNjUxMDQ0MTg@._V1_.jpg	Pâfekuto burû	1997	A	81 min	Animation, Crime, Mystery	8	A pop singer gives up her career to become an actress, but she slowly goes insane when she starts being stalked by an obsessed fan and what seems to be a ghost of her past.	\N	Satoshi Kon	Junko Iwao	Rica Matsumoto	Shinpachi Tsuji	Masaaki Ôkura	58192	776665
388	https://m.media-amazon.com/images/M/MV5BYTg3Yjc4N2QtZDdlNC00NmU2LWFiYjktYjI3NTMwMjk4M2FmXkEyXkFqcGdeQXVyMjgyNjk3MzE@._V1_.jpg	Festen	1998	R	105 min	Drama	8	At Helge's 60th birthday party, some unpleasant family truths are revealed.	82	Thomas Vinterberg	Ulrich Thomsen	Henning Moritzen	Thomas Bo Larsen	Paprika Steen	78341	1647780
389	https://m.media-amazon.com/images/M/MV5BMjE3ZDA5ZmUtYTk1ZS00NmZmLWJhNTItYjIwZjUwN2RjNzIyXkEyXkFqcGdeQXVyMTkzODUwNzk@._V1_.jpg	Central do Brasil	1998	R	110 min	Drama	8	An emotive journey of a former school teacher, who writes letters for illiterate people, and a young boy, whose mother has just died, as they search for the father he never knew.	80	Walter Salles	Fernanda Montenegro	Vinícius de Oliveira	Marília Pêra	Soia Lira	36419	5595428
390	https://m.media-amazon.com/images/M/MV5BMjIxNDU2Njk0OV5BMl5BanBnXkFtZTgwODc3Njc3NjE@._V1_.jpg	The Iron Giant	1999	PG	86 min	Animation, Action, Adventure	8	A young boy befriends a giant robot from outer space that a paranoid government agent wants to destroy.	85	Brad Bird	Eli Marienthal	Harry Connick Jr.	Jennifer Aniston	Vin Diesel	172083	23159305
391	https://m.media-amazon.com/images/M/MV5BMTk2MjcxNjMzN15BMl5BanBnXkFtZTgwMTE3OTEwNjE@._V1_.jpg	Knockin' on Heaven's Door	1997	\N	87 min	Action, Crime, Comedy	8	Two terminally ill patients escape from a hospital, steal a car and rush towards the sea.	\N	Thomas Jahn	Til Schweiger	Jan Josef Liefers	Thierry van Werveke	Moritz Bleibtreu	27721	3296
392	https://m.media-amazon.com/images/M/MV5BNGY5NWIxMjAtODBjNC00MmZhLTk1ZTAtNGRhYThlOTNjMTQwXkEyXkFqcGdeQXVyNTc1NTQxODI@._V1_.jpg	Sling Blade	1996	R	135 min	Drama	8	Karl Childers, a simple man hospitalized since his childhood murder of his mother and her lover, is released to start a new life in a small town.	84	Billy Bob Thornton	Billy Bob Thornton	Dwight Yoakam	J.T. Walsh	John Ritter	86838	24475416
393	https://m.media-amazon.com/images/M/MV5BY2QzMTIxNjItNGQyNy00MjQzLWJiYTItMzIyZjdkYjYyYjRlXkEyXkFqcGdeQXVyMTAwMzUyOTc@._V1_.jpg	Secrets & Lies	1996	U	136 min	Comedy, Drama	8	Following the death of her adoptive parents, a successful young black optometrist establishes contact with her biological mother -- a lonely white factory worker living in poverty in East London.	91	Mike Leigh	Timothy Spall	Brenda Blethyn	Phyllis Logan	Claire Rushbrook	37564	13417292
397	https://m.media-amazon.com/images/M/MV5BZWIxNzM5YzQtY2FmMS00Yjc3LWI1ZjUtNGVjMjMzZTIxZTIxXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_.jpg	Groundhog Day	1993	U	101 min	Comedy, Fantasy, Romance	8	A weatherman finds himself inexplicably living the same day over and over again.	72	Harold Ramis	Bill Murray	Andie MacDowell	Chris Elliott	Stephen Tobolowsky	577991	70906973
398	https://m.media-amazon.com/images/M/MV5BNzZmMjAxNjQtZjQzOS00NjU4LWI0NDktZjlkZTgwNjVmNzU3XkEyXkFqcGdeQXVyNTI4MjkwNjA@._V1_.jpg	Bound by Honor	1993	R	180 min	Crime, Drama	8	Based on the true life experiences of poet Jimmy Santiago Baca, the film focuses on step-brothers Paco and Cruz, and their bi-racial cousin Miklo.	47	Taylor Hackford	Damian Chapa	Jesse Borrego	Benjamin Bratt	Enrique Castillo	28825	4496583
399	https://m.media-amazon.com/images/M/MV5BZTM3ZjA3NTctZThkYy00ODYyLTk2ZjItZmE0MmZlMTk3YjQwXkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_.jpg	Scent of a Woman	1992	UA	156 min	Drama	8	A prep school student needing money agrees to "babysit" a blind man, but the job is not at all what he anticipated.	59	Martin Brest	Al Pacino	Chris O'Donnell	James Rebhorn	Gabrielle Anwar	263918	63895607
400	https://m.media-amazon.com/images/M/MV5BY2Q2NDI1MjUtM2Q5ZS00MTFlLWJiYWEtNTZmNjQ3OGJkZDgxXkEyXkFqcGdeQXVyNTI4MjkwNjA@._V1_.jpg	Aladdin	1992	U	90 min	Animation, Adventure, Comedy	8	A kindhearted street urchin and a power-hungry Grand Vizier vie for a magic lamp that has the power to make their deepest wishes come true.	86	Ron Clements	John Musker	Scott Weinger	Robin Williams	Linda Larkin	373845	217350219
401	https://m.media-amazon.com/images/M/MV5BYjYyODExMDctZjgwYy00ZjQwLWI4OWYtOGFlYjA4ZjEzNmY1XkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_.jpg	JFK	1991	UA	189 min	Drama, History, Thriller	8	New Orleans District Attorney Jim Garrison discovers there's more to the Kennedy assassination than the official story.	72	Oliver Stone	Kevin Costner	Gary Oldman	Jack Lemmon	Walter Matthau	142110	70405498
402	https://m.media-amazon.com/images/M/MV5BMzE5MDM1NDktY2I0OC00YWI5LTk2NzUtYjczNDczOWQxYjM0XkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg	Beauty and the Beast	1991	G	84 min	Animation, Family, Fantasy	8	A prince cursed to spend his days as a hideous monster sets out to regain his humanity by earning a young woman's love.	95	Gary Trousdale	Kirk Wise	Paige O'Hara	Robby Benson	Jesse Corti	417178	218967620
403	https://m.media-amazon.com/images/M/MV5BMTY3OTI5NDczN15BMl5BanBnXkFtZTcwNDA0NDY3Mw@@._V1_.jpg	Dances with Wolves	1990	U	181 min	Adventure, Drama, Western	8	Lieutenant John Dunbar, assigned to a remote western Civil War outpost, befriends wolves and Indians, making him an intolerable aberration in the military.	72	Kevin Costner	Kevin Costner	Mary McDonnell	Graham Greene	Rodney A. Grant	240266	184208848
404	https://m.media-amazon.com/images/M/MV5BODA2MjU1NTI1MV5BMl5BanBnXkFtZTgwOTU4ODIwMjE@._V1_.jpg	Do the Right Thing	1989	R	120 min	Comedy, Drama	8	On the hottest day of the year on a street in the Bedford-Stuyvesant section of Brooklyn, everyone's hate and bigotry smolders and builds until it explodes into violence.	93	Spike Lee	Danny Aiello	Ossie Davis	Ruby Dee	Richard Edson	89429	27545445
405	https://m.media-amazon.com/images/M/MV5BMzVjNzI4NzYtMjE4NS00M2IzLWFkOWMtOTYwMWUzN2ZlNGVjL2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg	Rain Man	1988	U	133 min	Drama	8	Selfish yuppie Charlie Babbitt's father left a fortune to his savant brother Raymond and a pittance to Charlie; they travel cross-country.	65	Barry Levinson	Dustin Hoffman	Tom Cruise	Valeria Golino	Gerald R. Molen	473064	178800000
406	https://m.media-amazon.com/images/M/MV5BM2ZiZTk1ODgtMTZkNS00NTYxLWIxZTUtNWExZGYwZTRjODViXkEyXkFqcGdeQXVyMTE2MzA3MDM@._V1_.jpg	Akira	1988	UA	124 min	Animation, Action, Sci-Fi	8	A secret military project endangers Neo-Tokyo when it turns a biker gang member into a rampaging psychic psychopath who can only be stopped by two teenagers and a group of psychics.	\N	Katsuhiro Ôtomo	Mitsuo Iwata	Nozomu Sasaki	Mami Koyama	Tesshô Genda	164918	553171
407	https://m.media-amazon.com/images/M/MV5BMGM4M2Q5N2MtNThkZS00NTc1LTk1NTItNWEyZjJjNDRmNDk5XkEyXkFqcGdeQXVyMjA0MDQ0Mjc@._V1_.jpg	The Princess Bride	1987	U	98 min	Adventure, Family, Fantasy	8	While home sick in bed, a young boy's grandfather reads him the story of a farmboy-turned-pirate who encounters numerous obstacles, enemies and allies in his quest to be reunited with his true love.	77	Rob Reiner	Cary Elwes	Mandy Patinkin	Robin Wright	Chris Sarandon	393899	30857814
408	https://m.media-amazon.com/images/M/MV5BMzMxZjUzOGQtOTFlOS00MzliLWJhNTUtOTgyNzYzMWQ2YzhmXkEyXkFqcGdeQXVyNjQ2MjQ5NzM@._V1_.jpg	Der Himmel über Berlin	1987	U	128 min	Drama, Fantasy, Romance	8	An angel tires of overseeing human activity and wishes to become human when he falls in love with a mortal.	79	Wim Wenders	Bruno Ganz	Solveig Dommartin	Otto Sander	Curt Bois	64722	3333969
409	https://m.media-amazon.com/images/M/MV5BZmYxOTA5YTEtNDY3Ni00YTE5LWE1MTgtYjc4ZWUxNWY3ZTkxXkEyXkFqcGdeQXVyNjQ2MjQ5NzM@._V1_.jpg	Au revoir les enfants	1987	U	104 min	Drama, War	8	A French boarding school run by priests seems to be a haven from World War II until a new student arrives. He becomes the roommate of the top student in his class. Rivals at first, the roommates form a bond and share a secret.	88	Louis Malle	Gaspard Manesse	Raphael Fejtö	Francine Racette	Stanislas Carré de Malberg	31163	4542825
708	https://m.media-amazon.com/images/M/MV5BNGQyNjBjNTUtNTM1OS00YzcyLWFhNTgtNTU0MDg3NzBlMDQzXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_.jpg	The Innocents	1961	A	100 min	Horror	7.8	A young governess for two children becomes convinced that the house and grounds are haunted.	88	Jack Clayton	Deborah Kerr	Peter Wyngarde	Megs Jenkins	Michael Redgrave	27007	2616000
412	https://m.media-amazon.com/images/M/MV5BMzJiZDRmOWUtYjE2MS00Mjc1LTg1ZDYtNTQxYWJkZTg1OTM4XkEyXkFqcGdeQXVyNjUwNzk3NDc@._V1_.jpg	Gandhi	1982	U	191 min	Biography, Drama, History	8	The life of the lawyer who became the famed leader of the Indian revolts against the British rule through his philosophy of nonviolent protest.	79	Richard Attenborough	Ben Kingsley	John Gielgud	Rohini Hattangadi	Roshan Seth	217664	52767889
413	https://m.media-amazon.com/images/M/MV5BMzFhNWVmNWItNGM5OC00NjZhLTk3YTQtMjE1ODUyOThlMjNmL2ltYWdlXkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_.jpg	Kagemusha	1980	U	180 min	Drama, History, War	8	A petty thief with an utter resemblance to a samurai warlord is hired as the lord's double. When the warlord later dies the thief is forced to take up arms in his place.	84	Akira Kurosawa	Tatsuya Nakadai	Tsutomu Yamazaki	Ken'ichi Hagiwara	Jinpachi Nezu	32195	\N
415	https://m.media-amazon.com/images/M/MV5BZDg1OGQ4YzgtM2Y2NS00NjA3LWFjYTctMDRlMDI3NWE1OTUyXkEyXkFqcGdeQXVyMjUzOTY1NTc@._V1_.jpg	Annie Hall	1977	A	93 min	Comedy, Romance	8	Neurotic New York comedian Alvy Singer falls in love with the ditzy Annie Hall.	92	Woody Allen	Woody Allen	Diane Keaton	Tony Roberts	Carol Kane	251823	39200000
416	https://m.media-amazon.com/images/M/MV5BMmVmODY1MzEtYTMwZC00MzNhLWFkNDMtZjAwM2EwODUxZTA5XkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_.jpg	Jaws	1975	A	124 min	Adventure, Thriller	8	When a killer shark unleashes chaos on a beach community, it's up to a local sheriff, a marine biologist, and an old seafarer to hunt the beast down.	87	Steven Spielberg	Roy Scheider	Robert Shaw	Richard Dreyfuss	Lorraine Gary	543388	260000000
417	https://m.media-amazon.com/images/M/MV5BODExZmE2ZWItYTIzOC00MzI1LTgyNTktMDBhNmFhY2Y4OTQ3XkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_.jpg	Dog Day Afternoon	1975	U	125 min	Biography, Crime, Drama	8	Three amateur bank robbers plan to hold up a bank. A nice simple robbery: Walk in, take the money, and run. Unfortunately, the supposedly uncomplicated heist suddenly becomes a bizarre nightmare as everything that could go wrong does.	86	Sidney Lumet	Al Pacino	John Cazale	Penelope Allen	Sully Boyar	235652	50000000
418	https://m.media-amazon.com/images/M/MV5BMTEwNjg2MjM2ODFeQTJeQWpwZ15BbWU4MDQ1MDU5OTEx._V1_.jpg	Young Frankenstein	1974	A	106 min	Comedy	8	An American grandson of the infamous scientist, struggling to prove that his grandfather was not as insane as people believe, is invited to Transylvania, where he discovers the process that reanimates a dead body.	80	Mel Brooks	Gene Wilder	Madeline Kahn	Marty Feldman	Peter Boyle	143359	86300000
419	https://m.media-amazon.com/images/M/MV5BZGRjZjQ0NzAtYmZlNS00Zjc1LTk1YWItMDY5YzQxMzA4MTAzXkEyXkFqcGdeQXVyMjI4MjA5MzA@._V1_.jpg	Papillon	1973	R	151 min	Biography, Crime, Drama	8	A man befriends a fellow criminal as the two of them begin serving their sentence on a dreadful prison island, which inspires the man to plot his escape.	58	Franklin J. Schaffner	Steve McQueen	Dustin Hoffman	Victor Jory	Don Gordon	121627	53267000
420	https://m.media-amazon.com/images/M/MV5BYjhmMGMxZDYtMTkyNy00YWVmLTgyYmUtYTU3ZjcwNTBjN2I1XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_.jpg	The Exorcist	1973	A	122 min	Horror	8	When a 12-year-old girl is possessed by a mysterious entity, her mother seeks the help of two priests to save her.	81	William Friedkin	Ellen Burstyn	Max von Sydow	Linda Blair	Lee J. Cobb	362393	232906145
421	https://m.media-amazon.com/images/M/MV5BM2EzZmFmMmItODY3Zi00NjdjLWE0MTYtZWQ3MGIyM2M4YjZhXkEyXkFqcGdeQXVyMzg2MzE2OTE@._V1_.jpg	Sleuth	1972	PG	138 min	Mystery, Thriller	8	A man who loves games and theater invites his wife's lover to meet him, setting up a battle of wits with potentially deadly results.	\N	Joseph L. Mankiewicz	Laurence Olivier	Michael Caine	Alec Cawthorne	John Matthews	44748	4081254
422	https://m.media-amazon.com/images/M/MV5BNmVjNzZkZjQtYmM5ZC00M2I0LWJhNzktNDk3MGU1NWMxMjFjXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_.jpg	The Last Picture Show	1971	R	118 min	Drama, Romance	8	In 1951, a group of high schoolers come of age in a bleak, isolated, atrophied North Texas town that is slowly dying, both culturally and economically.	93	Peter Bogdanovich	Timothy Bottoms	Jeff Bridges	Cybill Shepherd	Ben Johnson	42456	29133000
423	https://m.media-amazon.com/images/M/MV5BMWMxNDYzNmUtYjFmNC00MGM2LWFmNzMtODhlMGNkNDg5MjE5XkEyXkFqcGdeQXVyNjE5MjUyOTM@._V1_.jpg	Fiddler on the Roof	1971	G	181 min	Drama, Family, Musical	8	In prerevolutionary Russia, a Jewish peasant contends with marrying off three of his daughters while growing anti-Semitic sentiment threatens his village.	67	Norman Jewison	Topol	Norma Crane	Leonard Frey	Molly Picon	39491	80500000
424	https://m.media-amazon.com/images/M/MV5BODFlYzU4YTItN2EwYi00ODI3LTkwNTQtMDdkNjM3YjMyMTgyXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_.jpg	Il conformista	1970	UA	113 min	Drama	8	A weak-willed Italian man becomes a fascist flunky who goes abroad to arrange the assassination of his old teacher, now a political dissident.	100	Bernardo Bertolucci	Jean-Louis Trintignant	Stefania Sandrelli	Gastone Moschin	Enzo Tarascio	27067	541940
425	https://m.media-amazon.com/images/M/MV5BMTkyMTM2NDk5Nl5BMl5BanBnXkFtZTgwNzY1NzEyMDE@._V1_.jpg	Butch Cassidy and the Sundance Kid	1969	PG	110 min	Biography, Crime, Drama	8	Wyoming, early 1900s. Butch Cassidy and The Sundance Kid are the leaders of a band of outlaws. After a train robbery goes wrong they find themselves on the run with a posse hard on their heels. Their solution - escape to Bolivia.	66	George Roy Hill	Paul Newman	Robert Redford	Katharine Ross	Strother Martin	201888	102308889
430	https://m.media-amazon.com/images/M/MV5BODIxNjhkYjEtYzUyMi00YTNjLWE1YjktNjAyY2I2MWNkNmNmL2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg	The Sound of Music	1965	U	172 min	Biography, Drama, Family	8	A woman leaves an Austrian convent to become a governess to the children of a Naval officer widower.	63	Robert Wise	Julie Andrews	Christopher Plummer	Eleanor Parker	Richard Haydn	205425	163214286
431	https://m.media-amazon.com/images/M/MV5BNzdmZTk4MTktZmExNi00OWEwLTgxZDctNTE4NWMwNjc1Nzg2XkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_.jpg	Doctor Zhivago	1965	A	197 min	Drama, Romance, War	8	The life of a Russian physician and poet who, although married to another, falls in love with a political activist's wife and experiences hardship during World War I and then the October Revolution.	69	David Lean	Omar Sharif	Julie Christie	Geraldine Chaplin	Rod Steiger	69903	111722000
432	https://m.media-amazon.com/images/M/MV5BYjA1MGVlMGItNzgxMC00OWY4LWI4YjEtNTNmYWIzMGUxOGQzXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_.jpg	Per un pugno di dollari	1964	A	99 min	Action, Drama, Western	8	A wandering gunfighter plays two rival families against each other in a town torn apart by greed, pride, and revenge.	65	Sergio Leone	Clint Eastwood	Gian Maria Volontè	Marianne Koch	Wolfgang Lukschy	198219	14500000
433	https://m.media-amazon.com/images/M/MV5BMTQ4MTA0NjEzMF5BMl5BanBnXkFtZTgwMDg4NDYxMzE@._V1_.jpg	8½	1963	\N	138 min	Drama	8	A harried movie director retreats into his memories and fantasies.	91	Federico Fellini	Marcello Mastroianni	Anouk Aimée	Claudia Cardinale	Sandra Milo	108844	50690
434	https://m.media-amazon.com/images/M/MV5BNjMyZmI5NmItY2JlMi00NzU3LWI5ZGItZjhkOTE0YjEyN2Q4XkEyXkFqcGdeQXVyNDkzNTM2ODg@._V1_.jpg	Vivre sa vie: Film en douze tableaux	1962	\N	80 min	Drama	8	Twelve episodic tales in the life of a Parisian woman and her slow descent into prostitution.	\N	Jean-Luc Godard	Anna Karina	Sady Rebbot	André S. Labarthe	Guylaine Schlumberger	28057	\N
435	https://m.media-amazon.com/images/M/MV5BNjhjODI2NTItMGE1ZS00NThiLWE1MmYtOWE3YzcyNzY1MTJlXkEyXkFqcGdeQXVyNTc1NTQxODI@._V1_.jpg	The Hustler	1961	A	134 min	Drama, Sport	8	An up-and-coming pool player plays a long-time champion in a single high-stakes match.	90	Robert Rossen	Paul Newman	Jackie Gleason	Piper Laurie	George C. Scott	75067	8284000
436	https://m.media-amazon.com/images/M/MV5BODQ0NzY5NGEtYTc5NC00Yjg4LTg4Y2QtZjE2MTkyYTNmNmU2L2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_.jpg	La dolce vita	1960	A	174 min	Comedy, Drama	8	A series of stories following a week in the life of a philandering paparazzo journalist living in Rome.	95	Federico Fellini	Marcello Mastroianni	Anita Ekberg	Anouk Aimée	Yvonne Furneaux	66621	19516000
437	https://m.media-amazon.com/images/M/MV5BZDVhMTk1NjUtYjc0OS00OTE1LTk1NTYtYWMzMDI5OTlmYzU2XkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_.jpg	Rio Bravo	1959	Passed	141 min	Action, Drama, Western	8	A small-town sheriff in the American West enlists the help of a cripple, a drunk, and a young gunfighter in his efforts to hold in jail the brother of the local bad guy.	93	Howard Hawks	John Wayne	Dean Martin	Ricky Nelson	Angie Dickinson	56305	12535000
438	https://m.media-amazon.com/images/M/MV5BMzM0MzE2ZTAtZTBjZS00MTk5LTg5OTEtNjNmYmQ5NzU2OTUyXkEyXkFqcGdeQXVyNDY2MTk1ODk@._V1_.jpg	Anatomy of a Murder	1959	\N	161 min	Crime, Drama, Mystery	8	In a murder trial, the defendant says he suffered temporary insanity after the victim raped his wife. What is the truth, and will he win his case?	95	Otto Preminger	James Stewart	Lee Remick	Ben Gazzara	Arthur O'Connell	59847	11900000
439	https://m.media-amazon.com/images/M/MV5BOTA1MjA3M2EtMmJjZS00OWViLTkwMTEtM2E5ZDk0NTAyNGJiXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_.jpg	Touch of Evil	1958	PG-13	95 min	Crime, Drama, Film-Noir	8	A stark, perverse story of murder, kidnapping, and police corruption in a Mexican border town.	99	Orson Welles	Charlton Heston	Orson Welles	Janet Leigh	Joseph Calleia	98431	2237659
440	https://m.media-amazon.com/images/M/MV5BMzFhNTMwNDMtZjY3Yy00NzY3LWI1ZWQtZTQxMWJmODVhZWFkXkEyXkFqcGdeQXVyNjQzNDI3NzY@._V1_.jpg	Cat on a Hot Tin Roof	1958	A	108 min	Drama	8	Brick is an alcoholic ex-football player who drinks his days away and resists the affections of his wife. A reunion with his terminal father jogs a host of memories and revelations for both father and son.	84	Richard Brooks	Elizabeth Taylor	Paul Newman	Burl Ives	Jack Carson	45062	17570324
441	https://m.media-amazon.com/images/M/MV5BMjE5NTU3YWYtOWIxNi00YWZhLTg2NzktYzVjZWY5MDQ4NzVlXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_.jpg	Sweet Smell of Success	1957	Approved	96 min	Drama, Film-Noir	8	Powerful but unethical Broadway columnist J.J. Hunsecker coerces unscrupulous press agent Sidney Falco into breaking up his sister's romance with a jazz musician.	100	Alexander Mackendrick	Burt Lancaster	Tony Curtis	Susan Harrison	Martin Milner	28137	\N
442	https://m.media-amazon.com/images/M/MV5BMDE5ZjAwY2YtOWM5Yi00ZWNlLWE5ODQtYjA4NzA1NGFkZDU5XkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_.jpg	The Killing	1956	Approved	84 min	Crime, Drama, Film-Noir	8	Crook Johnny Clay assembles a five man team to plan and execute a daring race-track robbery.	91	Stanley Kubrick	Sterling Hayden	Coleen Gray	Vince Edwards	Jay C. Flippen	81702	\N
443	https://m.media-amazon.com/images/M/MV5BYTNjN2M2MzYtZGEwMi00Mzc5LWEwYTMtODM1ZmRiZjFiNTU0L2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_.jpg	The Night of the Hunter	1955	\N	92 min	Crime, Drama, Film-Noir	8	A religious fanatic marries a gullible widow whose young children are reluctant to tell him where their real daddy hid the $10,000 he'd stolen in a robbery.	99	Charles Laughton	Robert Mitchum	Shelley Winters	Lillian Gish	James Gleason	81980	654000
448	https://m.media-amazon.com/images/M/MV5BNzk2M2Y3MzYtNGMzMi00Y2FjLTkwODQtNmExYWU3ZWY3NzExXkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_.jpg	A Streetcar Named Desire	1951	A	122 min	Drama	8	Disturbed Blanche DuBois moves in with her sister in New Orleans and is tormented by her brutish brother-in-law while her reality crumbles around her.	97	Elia Kazan	Vivien Leigh	Marlon Brando	Kim Hunter	Karl Malden	99182	8000000
449	https://m.media-amazon.com/images/M/MV5BNjRmZjcwZTQtYWY0ZS00ODAwLTg4YTktZDhlZDMwMTM1MGFkXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_.jpg	In a Lonely Place	1950	\N	94 min	Drama, Film-Noir, Mystery	8	A potentially violent screenwriter is a murder suspect until his lovely neighbor clears him. However, she soon starts to have her doubts.	\N	Nicholas Ray	Humphrey Bogart	Gloria Grahame	Frank Lovejoy	Carl Benton Reid	26784	\N
450	https://m.media-amazon.com/images/M/MV5BZjc1Yzc0ZmItMzU1OS00OWVlLThmYTctMWNlYmFlMjkxMzc0XkEyXkFqcGdeQXVyNTA1NjYyMDk@._V1_.jpg	Kind Hearts and Coronets	1949	U	106 min	Comedy, Crime	8	A distant poor relative of the Duke D'Ascoyne plots to inherit the title by murdering the eight other heirs who stand ahead of him in the line of succession.	\N	Robert Hamer	Dennis Price	Alec Guinness	Valerie Hobson	Joan Greenwood	34485	\N
451	https://m.media-amazon.com/images/M/MV5BYWFjMDNlYzItY2VlMS00ZTRkLWJjYTEtYjI5NmFlMGE3MzQ2XkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_.jpg	Rope	1948	A	80 min	Crime, Drama, Mystery	8	Two men attempt to prove they committed the perfect crime by hosting a dinner party after strangling their former classmate to death.	73	Alfred Hitchcock	James Stewart	John Dall	Farley Granger	Dick Hogan	129783	\N
452	https://m.media-amazon.com/images/M/MV5BMDE0MjYxYmMtM2VhMC00MjhiLTg5NjItMDkzZGM5MGVlYjMxL2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_.jpg	Out of the Past	1947	\N	97 min	Crime, Drama, Film-Noir	8	A private eye escapes his past to run a gas station in a small town, but his past catches up with him. Now he must return to the big city world of danger, corruption, double crosses and duplicitous dames.	\N	Jacques Tourneur	Robert Mitchum	Jane Greer	Kirk Douglas	Rhonda Fleming	32784	\N
454	https://m.media-amazon.com/images/M/MV5BYjkxOGM5OTktNTRmZi00MjhlLWE2MDktNzY3NjY3NmRjNDUyXkEyXkFqcGdeQXVyNDY2MTk1ODk@._V1_.jpg	Laura	1944	Passed	88 min	Drama, Film-Noir, Mystery	8	A police detective falls in love with the woman whose murder he is investigating.	\N	Otto Preminger	Gene Tierney	Dana Andrews	Clifton Webb	Vincent Price	42725	4360000
455	https://m.media-amazon.com/images/M/MV5BY2RmNTRjYzctODI4Ni00MzQyLWEyNTAtNjU0N2JkMTNhNjJkXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_.jpg	The Best Years of Our Lives	1946	Approved	170 min	Drama, Romance, War	8	Three World War II veterans return home to small-town America to discover that they and their families have been irreparably changed.	93	William Wyler	Myrna Loy	Dana Andrews	Fredric March	Teresa Wright	57259	23650000
456	https://m.media-amazon.com/images/M/MV5BZDVlNTBjMjctNjAzNS00ZGJhLTg2NzMtNzIwYTIzYTBiMDkyXkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_.jpg	Arsenic and Old Lace	1942	\N	118 min	Comedy, Crime, Thriller	8	A writer of books on the futility of marriage risks his reputation when he decides to get married. Things get even more complicated when he learns on his wedding day that his beloved maiden aunts are habitual murderers.	\N	Frank Capra	Cary Grant	Priscilla Lane	Raymond Massey	Jack Carson	65101	\N
457	https://m.media-amazon.com/images/M/MV5BZjIwNGM1ZTUtOThjYS00NDdiLTk2ZDYtNGY5YjJkNzliM2JjL2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyMDI2NDg0NQ@@._V1_.jpg	The Maltese Falcon	1941	\N	100 min	Film-Noir, Mystery	8	A private detective takes on a case that involves him with three eccentric criminals, a gorgeous liar, and their quest for a priceless statuette.	96	John Huston	Humphrey Bogart	Mary Astor	Gladys George	Peter Lorre	148928	2108060
458	https://m.media-amazon.com/images/M/MV5BNzJiOGI2MjctYjUyMS00ZjkzLWE2ZmUtOTg4NTZkOTNhZDc1L2ltYWdlXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_.jpg	The Grapes of Wrath	1940	Passed	129 min	Drama, History	8	A poor Midwest family is forced off their land. They travel to California, suffering the misfortunes of the homeless in the Great Depression.	96	John Ford	Henry Fonda	Jane Darwell	John Carradine	Charley Grapewin	85559	55000
459	https://m.media-amazon.com/images/M/MV5BNjUyMTc4MDExMV5BMl5BanBnXkFtZTgwNDg0NDIwMjE@._V1_.jpg	The Wizard of Oz	1939	U	102 min	Adventure, Family, Fantasy	8	Dorothy Gale is swept away from a farm in Kansas to a magical land of Oz in a tornado and embarks on a quest with her new friends to see the Wizard who can help her return home to Kansas and help her friends as well.	92	Victor Fleming	George Cukor	Mervyn LeRoy	Norman Taurog	Richard Thorpe	371379	2076020
460	https://m.media-amazon.com/images/M/MV5BYTE4NjYxMGEtZmQxZi00YWVmLWJjZTctYTJmNDFmZGEwNDVhXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_.jpg	La règle du jeu	1939	\N	110 min	Comedy, Drama	8	A bourgeois life in France at the onset of World War II, as the rich and their poor servants meet up at a French chateau.	\N	Jean Renoir	Marcel Dalio	Nora Gregor	Paulette Dubost	Mila Parély	26725	\N
464	https://m.media-amazon.com/images/M/MV5BMGUwZjliMTAtNzAxZi00MWNiLWE2NzgtZGUxMGQxZjhhNDRiXkEyXkFqcGdeQXVyNjU1NzU3MzE@._V1_.jpg	Knives Out	2019	UA	130 min	Comedy, Crime, Drama	7.9	A detective investigates the death of a patriarch of an eccentric, combative family.	82	Rian Johnson	Daniel Craig	Chris Evans	Ana de Armas	Jamie Lee Curtis	454203	165359751
465	https://m.media-amazon.com/images/M/MV5BNmI0MTliMTAtMmJhNC00NTJmLTllMzQtMDI3NzA1ODMyZWI1XkEyXkFqcGdeQXVyODE5NzE3OTE@._V1_.jpg	Dil Bechara	2020	UA	101 min	Comedy, Drama, Romance	7.9	The emotional journey of two hopelessly in love youngsters, a young girl, Kizie, suffering from cancer, and a boy, Manny, whom she meets at a support group.	\N	Mukesh Chhabra	Sushant Singh Rajput	Sanjana Sanghi	Sahil Vaid	Saswata Chatterjee	111478	\N
466	https://m.media-amazon.com/images/M/MV5BYWZmOTY0MDAtMGRlMS00YjFlLWFkZTUtYmJhYWNlN2JjMmZkXkEyXkFqcGdeQXVyODAzODU1NDQ@._V1_.jpg	Manbiki kazoku	2018	A	121 min	Crime, Drama	7.9	A family of small-time crooks take in a child they find outside in the cold.	93	Hirokazu Koreeda	Lily Franky	Sakura Andô	Kirin Kiki	Mayu Matsuoka	62754	3313513
467	https://m.media-amazon.com/images/M/MV5BZGVmY2RjNDgtMTc3Yy00YmY0LTgwODItYzBjNWJhNTRlYjdkXkEyXkFqcGdeQXVyMjM4NTM5NDY@._V1_.jpg	Marriage Story	2019	U	137 min	Comedy, Drama, Romance	7.9	Noah Baumbach's incisive and compassionate look at a marriage breaking up and a family staying together.	94	Noah Baumbach	Adam Driver	Scarlett Johansson	Julia Greer	Azhy Robertson	246644	2000000
468	https://m.media-amazon.com/images/M/MV5BNDk3NTEwNjc0MV5BMl5BanBnXkFtZTgwNzYxNTMwMzI@._V1_.jpg	Call Me by Your Name	2017	UA	132 min	Drama, Romance	7.9	In 1980s Italy, romance blossoms between a seventeen-year-old student and the older man hired as his father's research assistant.	93	Luca Guadagnino	Armie Hammer	Timothée Chalamet	Michael Stuhlbarg	Amira Casar	212651	18095701
469	https://m.media-amazon.com/images/M/MV5BMTQ4NTMzMTk4NV5BMl5BanBnXkFtZTgwNTU5MjE4MDI@._V1_.jpg	I, Daniel Blake	2016	UA	100 min	Drama	7.9	After having suffered a heart-attack, a 59-year-old carpenter must fight the bureaucratic forces of the system in order to receive Employment and Support Allowance.	78	Ken Loach	Laura Obiols	Dave Johns	Hayley Squires	Sharon Percy	53818	258168
470	https://m.media-amazon.com/images/M/MV5BZDQwOWQ2NmUtZThjZi00MGM0LTkzNDctMzcyMjcyOGI1OGRkXkEyXkFqcGdeQXVyMTA3MDk2NDg2._V1_.jpg	Isle of Dogs	2018	U	101 min	Animation, Adventure, Comedy	7.9	Set in Japan, Isle of Dogs follows a boy's odyssey in search of his lost dog.	82	Wes Anderson	Bryan Cranston	Koyu Rankin	Edward Norton	Bob Balaban	139114	32015231
471	https://m.media-amazon.com/images/M/MV5BMjI1MDQ2MDg5Ml5BMl5BanBnXkFtZTgwMjc2NjM5ODE@._V1_.jpg	Hunt for the Wilderpeople	2016	UA	101 min	Adventure, Comedy, Drama	7.9	A national manhunt is ordered for a rebellious kid and his foster uncle who go missing in the wild New Zealand bush.	81	Taika Waititi	Sam Neill	Julian Dennison	Rima Te Wiata	Rachel House	111483	5202582
472	https://m.media-amazon.com/images/M/MV5BMjE5OTM0OTY5NF5BMl5BanBnXkFtZTgwMDcxOTQ3ODE@._V1_.jpg	Captain Fantastic	2016	R	118 min	Comedy, Drama	7.9	In the forests of the Pacific Northwest, a father devoted to raising his six kids with a rigorous physical and intellectual education is forced to leave his paradise and enter the world, challenging his idea of what it means to be a parent.	72	Matt Ross	Viggo Mortensen	George MacKay	Samantha Isler	Annalise Basso	189400	5875006
473	https://m.media-amazon.com/images/M/MV5BMjEzODA3MDcxMl5BMl5BanBnXkFtZTgwODgxNDk3NzE@._V1_.jpg	Sing Street	2016	PG-13	106 min	Comedy, Drama, Music	7.9	A boy growing up in Dublin during the 1980s escapes his strained family life by starting a band to impress the mysterious girl he likes.	79	John Carney	Ferdia Walsh-Peelo	Aidan Gillen	Maria Doyle Kennedy	Jack Reynor	85109	3237118
474	https://m.media-amazon.com/images/M/MV5BMjMyNDkzMzI1OF5BMl5BanBnXkFtZTgwODcxODg5MjI@._V1_.jpg	Thor: Ragnarok	2017	UA	130 min	Action, Adventure, Comedy	7.9	Imprisoned on the planet Sakaar, Thor must race against time to return to Asgard and stop Ragnarök, the destruction of his world, at the hands of the powerful and ruthless villain Hela.	74	Taika Waititi	Chris Hemsworth	Tom Hiddleston	Cate Blanchett	Mark Ruffalo	587775	315058289
475	https://m.media-amazon.com/images/M/MV5BN2U1YzdhYWMtZWUzMi00OWI1LWFkM2ItNWVjM2YxMGQ2MmNhXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_.jpg	Nightcrawler	2014	A	117 min	Crime, Drama, Thriller	7.9	When Louis Bloom, a con man desperate for work, muscles into the world of L.A. crime journalism, he blurs the line between observer and participant to become the star of his own story.	76	Dan Gilroy	Jake Gyllenhaal	Rene Russo	Bill Paxton	Riz Ahmed	466134	32381218
476	https://m.media-amazon.com/images/M/MV5BZjU0Yzk2MzEtMjAzYy00MzY0LTg2YmItM2RkNzdkY2ZhN2JkXkEyXkFqcGdeQXVyNDg4NjY5OTQ@._V1_.jpg	Jojo Rabbit	2019	UA	108 min	Comedy, Drama, War	7.9	A young boy in Hitler's army finds out his mother is hiding a Jewish girl in their home.	58	Taika Waititi	Roman Griffin Davis	Thomasin McKenzie	Scarlett Johansson	Taika Waititi	297918	349555
477	https://m.media-amazon.com/images/M/MV5BMTExMzU0ODcxNDheQTJeQWpwZ15BbWU4MDE1OTI4MzAy._V1_.jpg	Arrival	2016	UA	116 min	Drama, Sci-Fi	7.9	A linguist works with the military to communicate with alien lifeforms after twelve mysterious spacecrafts appear around the world.	81	Denis Villeneuve	Amy Adams	Jeremy Renner	Forest Whitaker	Michael Stuhlbarg	594181	100546139
481	https://m.media-amazon.com/images/M/MV5BYTRkMDRiYmEtNGM4YS00NzM3LWI4MTMtYzk1MmVjMjM3ODg1XkEyXkFqcGdeQXVyMjgyNjk3MzE@._V1_.jpg	Bir Zamanlar Anadolu'da	2011	\N	157 min	Crime, Drama	7.9	A group of men set out in search of a dead body in the Anatolian steppes.	82	Nuri Bilge Ceylan	Muhammet Uzuner	Yilmaz Erdogan	Taner Birsel	Ahmet Mümtaz Taylan	41995	138730
482	https://m.media-amazon.com/images/M/MV5BMDUyZWU5N2UtOWFlMy00MTI0LTk0ZDYtMzFhNjljODBhZDA5XkEyXkFqcGdeQXVyNzA4ODc3ODU@._V1_.jpg	The Artist	2011	U	100 min	Comedy, Drama, Romance	7.9	An egomaniacal film star develops a relationship with a young dancer against the backdrop of Hollywood's silent era.	89	Michel Hazanavicius	Jean Dujardin	Bérénice Bejo	John Goodman	James Cromwell	230624	44671682
483	https://m.media-amazon.com/images/M/MV5BMTc5OTk4MTM3M15BMl5BanBnXkFtZTgwODcxNjg3MDE@._V1_.jpg	Edge of Tomorrow	2014	UA	113 min	Action, Adventure, Sci-Fi	7.9	A soldier fighting aliens gets to relive the same day over and over again, the day restarting every time he dies.	71	Doug Liman	Tom Cruise	Emily Blunt	Bill Paxton	Brendan Gleeson	600004	100206256
484	https://m.media-amazon.com/images/M/MV5BMTk1NTc3NDc4MF5BMl5BanBnXkFtZTcwNjYwNDk0OA@@._V1_.jpg	Amour	2012	UA	127 min	Drama, Romance	7.9	Georges and Anne are an octogenarian couple. They are cultivated, retired music teachers. Their daughter, also a musician, lives in Britain with her family. One day, Anne has a stroke, and the couple's bond of love is severely tested.	94	Michael Haneke	Jean-Louis Trintignant	Emmanuelle Riva	Isabelle Huppert	Alexandre Tharaud	93090	6739492
485	https://m.media-amazon.com/images/M/MV5BMGUyM2ZiZmUtMWY0OC00NTQ4LThkOGUtNjY2NjkzMDJiMWMwXkEyXkFqcGdeQXVyMzY0MTE3NzU@._V1_.jpg	The Irishman	2019	R	209 min	Biography, Crime, Drama	7.9	An old man recalls his time painting houses for his friend, Jimmy Hoffa, through the 1950-70s.	94	Martin Scorsese	Robert De Niro	Al Pacino	Joe Pesci	Harvey Keitel	324720	7000000
487	https://m.media-amazon.com/images/M/MV5BMTgzODgyNTQwOV5BMl5BanBnXkFtZTcwNzc0NTc0Mg@@._V1_.jpg	Moon	2009	R	97 min	Drama, Mystery, Sci-Fi	7.9	Astronaut Sam Bell has a quintessentially personal encounter toward the end of his three-year stint on the Moon, where he, working alongside his computer, GERTY, sends back to Earth parcels of a resource that has helped diminish our planet's power problems.	67	Duncan Jones	Sam Rockwell	Kevin Spacey	Dominique McElligott	Rosie Shaw	335152	5009677
488	https://m.media-amazon.com/images/M/MV5BOWM4NTY2NTMtZDZlZS00NTgyLWEzZDMtODE3ZGI1MzI3ZmU5XkEyXkFqcGdeQXVyNzI1NzMxNzM@._V1_.jpg	Låt den rätte komma in	2008	R	114 min	Crime, Drama, Fantasy	7.9	Oskar, an overlooked and bullied boy, finds love and revenge through Eli, a beautiful but peculiar girl.	82	Tomas Alfredson	Kåre Hedebrant	Lina Leandersson	Per Ragnar	Henrik Dahl	205609	2122065
489	https://m.media-amazon.com/images/M/MV5BYmQ5MzFjYWMtMTMwNC00ZGU5LWI3YTQtYzhkMGExNGFlY2Q0XkEyXkFqcGdeQXVyNTIzOTk5ODM@._V1_.jpg	District 9	2009	A	112 min	Action, Sci-Fi, Thriller	7.9	Violence ensues after an extraterrestrial race forced to live in slum-like conditions on Earth finds a kindred spirit in a government agent exposed to their biotechnology.	81	Neill Blomkamp	Sharlto Copley	David James	Jason Cope	Nathalie Boltt	638202	115646235
490	https://m.media-amazon.com/images/M/MV5BMTc5MjYyOTg4MF5BMl5BanBnXkFtZTcwNDc2MzQwMg@@._V1_.jpg	The Wrestler	2008	UA	109 min	Drama, Sport	7.9	A faded professional wrestler must retire, but finds his quest for a new life outside the ring a dispiriting struggle.	80	Darren Aronofsky	Mickey Rourke	Marisa Tomei	Evan Rachel Wood	Mark Margolis	289415	26236603
491	https://m.media-amazon.com/images/M/MV5BYmIzYmY4MGItM2I4YS00OWZhLWFmMzQtYzI2MWY1MmM3NGU1XkEyXkFqcGdeQXVyNjQ2MjQ5NzM@._V1_.jpg	Jab We Met	2007	U	138 min	Comedy, Drama, Romance	7.9	A depressed wealthy businessman finds his life changing after he meets a spunky and care-free young woman.	\N	Imtiaz Ali	Shahid Kapoor	Kareena Kapoor	Tarun Arora	Dara Singh	47720	410800
492	https://m.media-amazon.com/images/M/MV5BMTYzNDc2MDc0N15BMl5BanBnXkFtZTgwOTcwMDQ5MTE@._V1_.jpg	Boyhood	2014	A	165 min	Drama	7.9	The life of Mason, from early childhood to his arrival at college.	100	Richard Linklater	Ellar Coltrane	Patricia Arquette	Ethan Hawke	Elijah Smith	335533	25379975
493	https://m.media-amazon.com/images/M/MV5BYzU1YWUzNjYtNmVhZi00ODUyLTg4M2ItMTFlMmU1Mzc5OTE5XkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg	4 luni, 3 saptamâni si 2 zile	2007	\N	113 min	Drama	7.9	A woman assists her friend in arranging an illegal abortion in 1980s Romania.	97	Cristian Mungiu	Anamaria Marinca	Laura Vasiliu	Vlad Ivanov	Alexandru Potocean	56625	1185783
494	https://m.media-amazon.com/images/M/MV5BMjE5NDQ5OTE4Ml5BMl5BanBnXkFtZTcwOTE3NDIzMw@@._V1_.jpg	Star Trek	2009	UA	127 min	Action, Adventure, Sci-Fi	7.9	The brash James T. Kirk tries to live up to his father's legacy with Mr. Spock keeping him in check as a vengeful Romulan from the future creates black holes to destroy the Federation one planet at a time.	82	J.J. Abrams	Chris Pine	Zachary Quinto	Simon Pegg	Leonard Nimoy	577336	257730019
498	https://m.media-amazon.com/images/M/MV5BMjAzODUwMjM1M15BMl5BanBnXkFtZTcwNjU2MjU2MQ@@._V1_.jpg	The Fall	2006	R	117 min	Adventure, Drama, Fantasy	7.9	In a hospital on the outskirts of 1920s Los Angeles, an injured stuntman begins to tell a fellow patient, a little girl with a broken arm, a fantastic story of five mythical heroes. Thanks to his fractured state of mind and her vivid imagination, the line between fiction and reality blurs as the tale advances.	64	Tarsem Singh	Lee Pace	Catinca Untaru	Justine Waddell	Kim Uylenbroek	107290	2280348
499	https://m.media-amazon.com/images/M/MV5BNTg2OTY2ODg5OF5BMl5BanBnXkFtZTcwODM5MTYxOA@@._V1_.jpg	Life of Pi	2012	U	127 min	Adventure, Drama, Fantasy	7.9	A young man who survives a disaster at sea is hurtled into an epic journey of adventure and discovery. While cast away, he forms an unexpected connection with another survivor: a fearsome Bengal tiger.	79	Ang Lee	Suraj Sharma	Irrfan Khan	Adil Hussain	Tabu	580708	124987023
500	https://m.media-amazon.com/images/M/MV5BOGUwYTU4NGEtNDM4MS00NDRjLTkwNmQtOTkwMWMyMjhmMjdlXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg	Fantastic Mr. Fox	2009	PG	87 min	Animation, Adventure, Comedy	7.9	An urbane fox cannot resist returning to his farm raiding ways and then must help his community survive the farmers' retaliation.	83	Wes Anderson	George Clooney	Meryl Streep	Bill Murray	Jason Schwartzman	199696	21002919
501	https://m.media-amazon.com/images/M/MV5BMTU3MDc2MjUwMV5BMl5BanBnXkFtZTcwNzQyMDAzMQ@@._V1_.jpg	C.R.A.Z.Y.	2005	\N	129 min	Comedy, Drama	7.9	A young French-Canadian, growing up in the 1960s and 1970s, struggles to reconcile his emerging homosexuality with his father's conservative values and his own Catholic beliefs.	81	Jean-Marc Vallée	Michel Côté	Marc-André Grondin	Danielle Proulx	Émile Vallée	31476	\N
502	https://m.media-amazon.com/images/M/MV5BOGY1M2MwOTEtZDIyNi00YjNlLWExYmEtNzBjOGI3N2QzNTg5XkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg	Les choristes	2004	PG-13	97 min	Drama, Music	7.9	The new teacher at a severely administered boys' boarding school works to positively affect the students' lives through music.	56	Christophe Barratier	Gérard Jugnot	François Berléand	Jean-Baptiste Maunier	Kad Merad	57430	3635164
503	https://m.media-amazon.com/images/M/MV5BMTczNTI2ODUwOF5BMl5BanBnXkFtZTcwMTU0NTIzMw@@._V1_.jpg	Iron Man	2008	UA	126 min	Action, Adventure, Sci-Fi	7.9	After being held captive in an Afghan cave, billionaire engineer Tony Stark creates a unique weaponized suit of armor to fight evil.	79	Jon Favreau	Robert Downey Jr.	Gwyneth Paltrow	Terrence Howard	Jeff Bridges	939644	318412101
504	https://m.media-amazon.com/images/M/MV5BMTg5Mjk2NDMtZTk0Ny00YTQ0LWIzYWEtMWI5MGQ0Mjg1OTNkXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_.jpg	Shaun of the Dead	2004	UA	99 min	Comedy, Horror	7.9	A man's uneventful life is disrupted by the zombie apocalypse.	76	Edgar Wright	Simon Pegg	Nick Frost	Kate Ashfield	Lucy Davis	512249	13542874
505	https://m.media-amazon.com/images/M/MV5BODBiNzYxNzYtMjkyMi00MjUyLWJkM2YtZjNkMDhhYmEwMTRiL2ltYWdlXkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_.jpg	Gegen die Wand	2004	R	121 min	Drama, Romance	7.9	With the intention to break free from the strict familial restrictions, a suicidal young woman sets up a marriage of convenience with a forty-year-old addict, an act that will lead to an outburst of envious love.	78	Fatih Akin	Birol Ünel	Sibel Kekilli	Güven Kiraç	Zarah Jane McKenzie	51325	\N
506	https://m.media-amazon.com/images/M/MV5BMTIzNDUyMjA4MV5BMl5BanBnXkFtZTYwNDc4ODM3._V1_.jpg	Mystic River	2003	A	138 min	Crime, Drama, Mystery	7.9	The lives of three men who were childhood friends are shattered when one of them has a family tragedy.	84	Clint Eastwood	Sean Penn	Tim Robbins	Kevin Bacon	Emmy Rossum	419420	90135191
507	https://m.media-amazon.com/images/M/MV5BMTY4NTIwODg0N15BMl5BanBnXkFtZTcwOTc0MjEzMw@@._V1_.jpg	Harry Potter and the Prisoner of Azkaban	2004	U	142 min	Adventure, Family, Fantasy	7.9	Harry Potter, Ron and Hermione return to Hogwarts School of Witchcraft and Wizardry for their third year of study, where they delve into the mystery surrounding an escaped prisoner who poses a dangerous threat to the young wizard.	82	Alfonso Cuarón	Daniel Radcliffe	Emma Watson	Rupert Grint	Richard Griffiths	552493	249358727
508	https://m.media-amazon.com/images/M/MV5BMWQ2MjQ0OTctMWE1OC00NjZjLTk3ZDAtNTk3NTZiYWMxYTlmXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg	Ying xiong	2002	PG-13	120 min	Action, Adventure, History	7.9	A defense officer, Nameless, was summoned by the King of Qin regarding his success of terminating three warriors.	85	Yimou Zhang	Jet Li	Tony Chiu-Wai Leung	Maggie Cheung	Ziyi Zhang	173999	53710019
509	https://m.media-amazon.com/images/M/MV5BYmVmMGQ3NzEtM2FiNi00YThhLWFkZjYtM2Y0MjZjNGE4NzM0XkEyXkFqcGdeQXVyODc0OTEyNDU@._V1_.jpg	Hable con ella	2002	R	112 min	Drama, Mystery, Romance	7.9	Two men share an odd friendship while they care for two women who are both in deep comas.	86	Pedro Almodóvar	Rosario Flores	Javier Cámara	Darío Grandinetti	Leonor Watling	104691	9284265
510	https://m.media-amazon.com/images/M/MV5BMGFkNjNmZWMtNDdiOS00ZWM3LWE1ZTMtZDU3MGQyMzIyNzZhXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg	No Man's Land	2001	R	98 min	Comedy, Drama, War	7.9	Bosnia and Herzegovina during 1993 at the time of the heaviest fighting between the two warring sides. Two soldiers from opposing sides in the conflict, Nino and Ciki, become trapped in no man's land, whilst a third soldier becomes a living booby trap.	84	Danis Tanovic	Branko Djuric	Rene Bitorajac	Filip Sovagovic	Georges Siatidis	44618	1059830
513	https://m.media-amazon.com/images/M/MV5BMTYxMDdlYjItMDVkYy00MjYzLThhMTYtYjIzZjZiODk1ZWRmXkEyXkFqcGdeQXVyNDk3NzU2MTQ@._V1_.jpg	Nueve reinas	2000	R	114 min	Crime, Drama, Thriller	7.9	Two con artists try to swindle a stamp collector by selling him a sheet of counterfeit rare stamps (the "nine queens").	80	Fabián Bielinsky	Ricardo Darín	Gastón Pauls	Graciela Tenenbaum	María Mercedes Villagra	49721	1221261
514	https://m.media-amazon.com/images/M/MV5BMTQ5NTI2NTI4NF5BMl5BanBnXkFtZTcwNjk2NDA2OQ@@._V1_.jpg	Children of Men	2006	A	109 min	Adventure, Drama, Sci-Fi	7.9	In 2027, in a chaotic world in which women have become somehow infertile, a former activist agrees to help transport a miraculously pregnant woman to a sanctuary at sea.	84	Alfonso Cuarón	Julianne Moore	Clive Owen	Chiwetel Ejiofor	Michael Caine	465113	35552383
515	https://m.media-amazon.com/images/M/MV5BMzY1ZjMwMGEtYTY1ZS00ZDllLTk0ZmUtYzA3ZTA4NmYwNGNkXkEyXkFqcGdeQXVyNDk3NzU2MTQ@._V1_.jpg	Almost Famous	2000	A	122 min	Adventure, Comedy, Drama	7.9	A high-school boy is given the chance to write a story for Rolling Stone Magazine about an up-and-coming rock band as he accompanies them on their concert tour.	90	Cameron Crowe	Billy Crudup	Patrick Fugit	Kate Hudson	Frances McDormand	252586	32534850
516	https://m.media-amazon.com/images/M/MV5BYjBhZmViNTItMGExMy00MGNmLTkwZDItMDVlMTQ4ODVkYTMwXkEyXkFqcGdeQXVyNzM0MTUwNTY@._V1_.jpg	Mulholland Dr.	2001	R	147 min	Drama, Mystery, Thriller	7.9	After a car wreck on the winding Mulholland Drive renders a woman amnesiac, she and a perky Hollywood-hopeful search for clues and answers across Los Angeles in a twisting venture beyond dreams and reality.	85	David Lynch	Naomi Watts	Laura Harring	Justin Theroux	Jeanne Bates	322031	7220243
517	https://m.media-amazon.com/images/M/MV5BMWM5ZDcxMTYtNTEyNS00MDRkLWI3YTItNThmMGExMWY4NDIwXkEyXkFqcGdeQXVyNjUwNzk3NDc@._V1_.jpg	Toy Story 2	1999	U	92 min	Animation, Adventure, Comedy	7.9	When Woody is stolen by a toy collector, Buzz and his friends set out on a rescue mission to save Woody before he becomes a museum toy property with his roundup gang Jessie, Prospector, and Bullseye.	88	John Lasseter	Ash Brannon	Lee Unkrich	Tom Hanks	Tim Allen	527512	245852179
518	https://m.media-amazon.com/images/M/MV5BY2E2YWYxY2QtZmJmZi00MjJlLWFiYWItZTk5Y2IyMWQ1ZThhXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg	Boogie Nights	1997	R	155 min	Drama	7.9	Back when sex was safe, pleasure was a business and business was booming, an idealistic porn producer aspires to elevate his craft to an art when he discovers a hot young talent.	85	Paul Thomas Anderson	Mark Wahlberg	Julianne Moore	Burt Reynolds	Luis Guzmán	239473	26400640
519	https://m.media-amazon.com/images/M/MV5BZDg0MWNmNjktMGEwZC00ZDlmLWI1MTUtMDBmNjQzMWM2NjBjXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg	Mimi wo sumaseba	1995	U	111 min	Animation, Drama, Family	7.9	A love story between a girl who loves reading books, and a boy who has previously checked out all of the library books she chooses.	75	Yoshifumi Kondô	Yoko Honna	Issey Takahashi	Takashi Tachibana	Shigeru Muroi	51943	\N
520	https://m.media-amazon.com/images/M/MV5BYTY4MTdjZDMtOTBiMC00MDEwLThhMjUtMjlhMjdlYTBmMzk3XkEyXkFqcGdeQXVyNjMwMjk0MTQ@._V1_.jpg	Once Were Warriors	1994	A	102 min	Crime, Drama	7.9	A family descended from Maori warriors is bedeviled by a violent father and the societal problems of being treated as outcasts.	77	Lee Tamahori	Rena Owen	Temuera Morrison	Mamaengaroa Kerr-Bell	Julian Arahanga	31590	2201126
521	https://m.media-amazon.com/images/M/MV5BMDViNjFjOWMtZGZhMi00NmIyLThmYzktODA4MzJhZDZhMDc5XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_.jpg	True Romance	1993	R	119 min	Crime, Drama, Romance	7.9	In Detroit, a lonely pop culture geek marries a call girl, steals cocaine from her pimp, and tries to sell it in Hollywood. Meanwhile, the owners of the cocaine, the Mob, track them down in an attempt to reclaim it.	59	Tony Scott	Christian Slater	Patricia Arquette	Dennis Hopper	Val Kilmer	206918	12281500
522	https://m.media-amazon.com/images/M/MV5BMjg5OGU4OGYtNTZmNy00MjQ1LWIzYzgtMTllMGY2NzlkNzYwXkEyXkFqcGdeQXVyMTI3ODAyMzE2._V1_.jpg	Trois couleurs: Bleu	1993	U	94 min	Drama, Music, Mystery	7.9	A woman struggles to find a way to live her life after the death of her husband and child.	85	Krzysztof Kieslowski	Juliette Binoche	Zbigniew Zamachowski	Julie Delpy	Benoît Régent	89836	1324974
523	https://m.media-amazon.com/images/M/MV5BOTMyZGI4N2YtMzdkNi00MDZmLTg4NmItMzg0ODY5NjdhZjYwL2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyMzM4MjM0Nzg@._V1_.jpg	Jûbê ninpûchô	1993	A	94 min	Animation, Action, Adventure	7.9	A vagabond swordsman is aided by a beautiful ninja girl and a crafty spy in confronting a demonic clan of killers - with a ghost from his past as their leader - who are bent on overthrowing the Tokugawa Shogunate.	\N	Yoshiaki Kawajiri	Kôichi Yamadera	Emi Shinohara	Takeshi Aono	Osamu Saka	34529	\N
524	https://m.media-amazon.com/images/M/MV5BN2I2N2Q1YmMtMzZkMC00Y2JjLWJmOWUtNjc2OTM2ZTk1MjUyXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_.jpg	Carlito's Way	1993	A	144 min	Crime, Drama, Thriller	7.9	A Puerto Rican former convict, just released from prison, pledges to stay away from drugs and violence despite the pressure around him and lead on to a better life outside of N.Y.C.	65	Brian De Palma	Al Pacino	Sean Penn	Penelope Ann Miller	John Leguizamo	201000	36948322
525	https://m.media-amazon.com/images/M/MV5BNDUxN2I5NDUtZjdlMC00NjlmLTg0OTQtNjk0NjAxZjFmZTUzXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg	Edward Scissorhands	1990	U	105 min	Drama, Fantasy, Romance	7.9	An artificial man, who was incompletely constructed and has scissors for hands, leads a solitary life. Then one day, a suburban lady meets him and introduces him to her world.	74	Tim Burton	Johnny Depp	Winona Ryder	Dianne Wiest	Anthony Michael Hall	447368	56362352
741	https://m.media-amazon.com/images/M/MV5BNzMxNTExOTkyMF5BMl5BanBnXkFtZTcwMzEyNDc0OA@@._V1_.jpg	Wreck-It Ralph	2012	U	101 min	Animation, Adventure, Comedy	7.7	A video game villain wants to be a hero and sets out to fulfill his dream, but his quest brings havoc to the whole arcade where he lives.	72	Rich Moore	John C. Reilly	Jack McBrayer	Jane Lynch	Sarah Silverman	380195	189422889
529	https://m.media-amazon.com/images/M/MV5BMWZiNWUwYjMtM2Y1Yi00MTZmLWEwYzctNjVmYWM0OTFlZDFhXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg	Hannah and Her Sisters	1986	PG-13	107 min	Comedy, Drama	7.9	Between two Thanksgivings two years apart, Hannah's husband falls in love with her sister Lee, while her hypochondriac ex-husband rekindles his relationship with her sister Holly.	90	Woody Allen	Mia Farrow	Dianne Wiest	Michael Caine	Barbara Hershey	67176	40084041
530	https://m.media-amazon.com/images/M/MV5BMzIwM2IwYTItYmM4Zi00OWMzLTkwNjAtYWRmYWNmY2RhMDk0XkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_.jpg	Brazil	1985	U	132 min	Drama, Sci-Fi	7.9	A bureaucrat in a dystopic society becomes an enemy of the state as he pursues the woman of his dreams.	84	Terry Gilliam	Jonathan Pryce	Kim Greist	Robert De Niro	Katherine Helmond	187567	9929135
531	https://m.media-amazon.com/images/M/MV5BMTQ2MTIzMzg5Nl5BMl5BanBnXkFtZTgwOTc5NDI1MDE@._V1_.jpg	This Is Spinal Tap	1984	R	82 min	Comedy, Music	7.9	Spinal Tap, one of England's loudest bands, is chronicled by film director Marty DiBergi on what proves to be a fateful tour.	92	Rob Reiner	Rob Reiner	Michael McKean	Christopher Guest	Kimberly Stringer	128812	188751
532	https://m.media-amazon.com/images/M/MV5BOWMyNjE0MzEtMzVjNy00NjIxLTg0ZjMtMWJhNGI1YmVjYTczL2ltYWdlXkEyXkFqcGdeQXVyNzc5MjA3OA@@._V1_.jpg	A Christmas Story	1983	U	93 min	Comedy, Family	7.9	In the 1940s, a young boy named Ralphie attempts to convince his parents, his teacher and Santa that a Red Ryder BB gun really is the perfect Christmas gift.	77	Bob Clark	Peter Billingsley	Melinda Dillon	Darren McGavin	Scott Schwartz	132947	20605209
533	https://m.media-amazon.com/images/M/MV5BYTdlMDExOGUtN2I3MS00MjY5LWE1NTAtYzc3MzIxN2M3OWY1XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_.jpg	The Blues Brothers	1980	U	133 min	Action, Adventure, Comedy	7.9	Jake Blues, just released from prison, puts together his old band to save the Catholic home where he and his brother Elwood were raised.	60	John Landis	John Belushi	Dan Aykroyd	Cab Calloway	John Candy	183182	57229890
534	https://m.media-amazon.com/images/M/MV5BMzdmY2I3MmEtOGFiZi00MTg1LWIxY2QtNWUwM2NmNWNlY2U5XkEyXkFqcGdeQXVyNDk3NzU2MTQ@._V1_.jpg	Manhattan	1979	R	96 min	Comedy, Drama, Romance	7.9	The life of a divorced television writer dating a teenage girl is further complicated when he falls in love with his best friend's mistress.	83	Woody Allen	Woody Allen	Diane Keaton	Mariel Hemingway	Michael Murphy	131436	45700000
535	https://m.media-amazon.com/images/M/MV5BZWE4N2JkNDUtZDU4MC00ZjNhLTlkMjYtOTNkMjZhMDAwMDMyXkEyXkFqcGdeQXVyMTA0MjU0Ng@@._V1_.jpg	All That Jazz	1979	A	123 min	Drama, Music, Musical	7.9	Director/choreographer Bob Fosse tells his own life story as he details the sordid career of Joe Gideon, a womanizing, drug-using dancer.	72	Bob Fosse	Roy Scheider	Jessica Lange	Ann Reinking	Leland Palmer	28223	37823676
536	https://m.media-amazon.com/images/M/MV5BMzc1YTIyNjctYzhlNy00ZmYzLWI2ZWQtMzk4MmQwYzA0NGQ1XkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg	Dawn of the Dead	1978	A	127 min	Action, Adventure, Horror	7.9	Following an ever-growing epidemic of zombies that have risen from the dead, two Philadelphia S.W.A.T. team members, a traffic reporter, and his television executive girlfriend seek refuge in a secluded shopping mall.	71	George A. Romero	David Emge	Ken Foree	Scott H. Reiniger	Gaylen Ross	111512	5100000
537	https://m.media-amazon.com/images/M/MV5BOWI2YWQxM2MtY2U4Yi00YjgzLTgwNzktN2ExNTgzNTIzMmUzXkEyXkFqcGdeQXVyMTAwMzUyOTc@._V1_.jpg	All the President's Men	1976	U	138 min	Biography, Drama, History	7.9	"The Washington Post" reporters Bob Woodward and Carl Bernstein uncover the details of the Watergate scandal that leads to President Richard Nixon's resignation.	84	Alan J. Pakula	Dustin Hoffman	Robert Redford	Jack Warden	Martin Balsam	103031	70600000
538	https://m.media-amazon.com/images/M/MV5BN2IzM2I5NTQtMTIyMy00YWM2LWI1OGMtNjI0MWIyNDZkZGFkXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg	La montaña sagrada	1973	R	114 min	Adventure, Drama, Fantasy	7.9	In a corrupt, greed-fueled world, a powerful alchemist leads a messianic character and seven materialistic figures to the Holy Mountain, where they hope to achieve enlightenment.	76	Alejandro Jodorowsky	Alejandro Jodorowsky	Horacio Salinas	Zamira Saunders	Juan Ferrara	37183	61001
539	https://m.media-amazon.com/images/M/MV5BZDI2OTg2NDQtMzc0MC00MjRiLWI1NzAtMjY2ZDMwMmUyNzBiXkEyXkFqcGdeQXVyNzM0MTUwNTY@._V1_.jpg	Amarcord	1973	R	123 min	Comedy, Drama, Family	7.9	A series of comedic and nostalgic vignettes set in a 1930s Italian coastal town.	\N	Federico Fellini	Magali Noël	Bruno Zanin	Pupella Maggio	Armando Brancia	39897	\N
540	https://m.media-amazon.com/images/M/MV5BYzQ5NjJiYWQtYjAzMC00NGU0LWFlMDYtNGFiYjFlMWI1NWM0XkEyXkFqcGdeQXVyODQ0OTczOQ@@._V1_.jpg	Le charme discret de la bourgeoisie	1972	PG	102 min	Comedy	7.9	A surreal, virtually plotless series of dreams centered around six middle-class people and their consistently interrupted attempts to have a meal together.	93	Luis Buñuel	Fernando Rey	Delphine Seyrig	Paul Frankeur	Bulle Ogier	38737	198809
541	https://m.media-amazon.com/images/M/MV5BMjRkY2VhYzMtZWQyNS00OTY2LWE5NTAtYjlhNmQyYzE5MmUxXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg	Aguirre, der Zorn Gottes	1972	\N	95 min	Action, Adventure, Biography	7.9	In the 16th century, the ruthless and insane Don Lope de Aguirre leads a Spanish expedition in search of El Dorado.	\N	Werner Herzog	Klaus Kinski	Ruy Guerra	Helena Rojo	Del Negro	52397	\N
545	https://m.media-amazon.com/images/M/MV5BMzRmN2E1ZDUtZDc2ZC00ZmI3LTkwOTctNzE2ZDIzMGJiMTYzXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg	Night of the Living Dead	1968	\N	96 min	Horror, Thriller	7.9	A ragtag group of Pennsylvanians barricade themselves in an old farmhouse to remain safe from a horde of flesh-eating ghouls that are ravaging the East Coast of the United States.	89	George A. Romero	Duane Jones	Judith O'Dea	Karl Hardman	Marilyn Eastman	116557	89029
546	https://m.media-amazon.com/images/M/MV5BMTkzNzYyMzA5N15BMl5BanBnXkFtZTgwODcwODQ3MDI@._V1_.jpg	The Lion in Winter	1968	PG	134 min	Biography, Drama, History	7.9	1183 A.D.: King Henry II's three sons all want to inherit the throne, but he won't commit to a choice. They and his wife variously plot to force him.	\N	Anthony Harvey	Peter O'Toole	Katharine Hepburn	Anthony Hopkins	John Castle	29003	22276975
547	https://m.media-amazon.com/images/M/MV5BZjZhZTZkNWItZGE1My00MTRkLWI2ZDktMWZkZTIxZWYxOTgzXkEyXkFqcGdeQXVyNDY2MTk1ODk@._V1_.jpg	In the Heat of the Night	1967	U	110 min	Crime, Drama, Mystery	7.9	A black police detective is asked to investigate a murder in a racially hostile southern town.	75	Norman Jewison	Sidney Poitier	Rod Steiger	Warren Oates	Lee Grant	67804	24379978
548	https://m.media-amazon.com/images/M/MV5BMTA0Y2UyMDUtZGZiOS00ZmVkLTg3NmItODQyNTY1ZjU1MWE4L2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_.jpg	Charade	1963	U	113 min	Comedy, Mystery, Romance	7.9	Romance and suspense ensue in Paris as a woman is pursued by several men who want a fortune her murdered husband had stolen. Whom can she trust?	83	Stanley Donen	Cary Grant	Audrey Hepburn	Walter Matthau	James Coburn	68689	13474588
549	https://m.media-amazon.com/images/M/MV5BOTY0ZTA1ZjUtN2MyNi00ZGRmLWExYmMtOTkyNzI1NGQ2Y2RlXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_.jpg	The Manchurian Candidate	1962	PG-13	126 min	Drama, Thriller	7.9	A former prisoner of war is brainwashed as an unwitting assassin for an international Communist conspiracy.	94	John Frankenheimer	Frank Sinatra	Laurence Harvey	Janet Leigh	Angela Lansbury	71122	\N
550	https://m.media-amazon.com/images/M/MV5BMjc4MTUxN2UtMmU1NC00MjQyLTk3YTYtZTQ0YzEzZDc0Njc0XkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_.jpg	Spartacus	1960	A	197 min	Adventure, Biography, Drama	7.9	The slave Spartacus leads a violent revolt against the decadent Roman Republic.	87	Stanley Kubrick	Kirk Douglas	Laurence Olivier	Jean Simmons	Charles Laughton	124339	30000000
551	https://m.media-amazon.com/images/M/MV5BZDFlODBmZTYtMWU4MS00MzY4LWFmYzYtYzAzZmU1MGUzMDE5XkEyXkFqcGdeQXVyNTc1NDM0NDU@._V1_.jpg	L'avventura	1960	U	144 min	Drama, Mystery	7.9	A woman disappears during a Mediterranean boating trip. During the search, her lover and her best friend become attracted to each other.	\N	Michelangelo Antonioni	Gabriele Ferzetti	Monica Vitti	Lea Massari	Dominique Blanchar	26542	\N
552	https://m.media-amazon.com/images/M/MV5BMzY2NTA1MzUwN15BMl5BanBnXkFtZTgwOTc4NTU4MjE@._V1_.jpg	Hiroshima mon amour	1959	\N	90 min	Drama, Romance	7.9	A French actress filming an anti-war film in Hiroshima has an affair with a married Japanese architect as they share their differing perspectives on war.	\N	Alain Resnais	Emmanuelle Riva	Eiji Okada	Stella Dassas	Pierre Barbaud	28421	88300
553	https://m.media-amazon.com/images/M/MV5BODcxYjUxZDgtYTQ5Zi00YmQ1LWJmZmItODZkOTYyNDhiNWM3XkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_.jpg	The Ten Commandments	1956	U	220 min	Adventure, Drama	7.9	Moses, an Egyptian Prince, learns of his true heritage as a Hebrew and his divine mission as the deliverer of his people.	\N	Cecil B. DeMille	Charlton Heston	Yul Brynner	Anne Baxter	Edward G. Robinson	63560	93740000
554	https://m.media-amazon.com/images/M/MV5BYWQ3YWJiMDEtMDBhNS00YjY1LTkzNmEtY2U4Njg4MjQ3YWE3XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_.jpg	The Searchers	1956	Passed	119 min	Adventure, Drama, Western	7.9	An American Civil War veteran embarks on a journey to rescue his niece from the Comanches.	94	John Ford	John Wayne	Jeffrey Hunter	Vera Miles	Ward Bond	80316	\N
555	https://m.media-amazon.com/images/M/MV5BMzE1MzdjNmUtOWU5MS00OTgwLWIzYjYtYTYwYTM0NDkyOTU1XkEyXkFqcGdeQXVyMTY5Nzc4MDY@._V1_.jpg	East of Eden	1955	U	118 min	Drama	7.9	Two brothers struggle to maintain their strict, Bible-toting father's favor.	72	Elia Kazan	James Dean	Raymond Massey	Julie Harris	Burl Ives	40313	\N
556	https://m.media-amazon.com/images/M/MV5BOWIzZGUxZmItOThkMS00Y2QxLTg0MTYtMDdhMjRlNTNlYTI3L2ltYWdlXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_.jpg	High Noon	1952	PG	85 min	Drama, Thriller, Western	7.9	A town Marshal, despite the disagreements of his newlywed bride and the townspeople around him, must face a gang of deadly killers alone at high noon when the gang leader, an outlaw he sent up years ago, arrives on the noon train.	89	Fred Zinnemann	Gary Cooper	Grace Kelly	Thomas Mitchell	Lloyd Bridges	97222	9450000
557	https://m.media-amazon.com/images/M/MV5BNzkwNjk4ODgtYjRmMi00ODdhLWIyNjUtNWQyMjg2N2E2NjlhXkEyXkFqcGdeQXVyNjE5MjUyOTM@._V1_.jpg	Strangers on a Train	1951	A	101 min	Crime, Film-Noir, Thriller	7.9	A psychopath forces a tennis star to comply with his theory that two strangers can get away with murder.	88	Alfred Hitchcock	Farley Granger	Robert Walker	Ruth Roman	Leo G. Carroll	123341	7630000
558	https://m.media-amazon.com/images/M/MV5BMzg2YTFkNjgtM2ZkNS00MWVkLWIwMTEtZTgzMDM2MmUxNDE2XkEyXkFqcGdeQXVyMjI4MjA5MzA@._V1_.jpg	Harvey	1950	Approved	104 min	Comedy, Drama, Fantasy	7.9	Due to his insistence that he has an invisible six foot-tall rabbit for a best friend, a whimsical middle-aged man is thought by his family to be insane - but he may be wiser than anyone knows.	\N	Henry Koster	James Stewart	Wallace Ford	William H. Lynn	Victoria Horne	52573	\N
562	https://m.media-amazon.com/images/M/MV5BMTk4NDQ0NjgyNF5BMl5BanBnXkFtZTgwMTE3NTkxMTE@._V1_.jpg	The Lost Weekend	1945	Passed	101 min	Drama, Film-Noir	7.9	The desperate life of a chronic alcoholic is followed through a four-day drinking bout.	\N	Billy Wilder	Ray Milland	Jane Wyman	Phillip Terry	Howard Da Silva	33549	9460000
563	https://m.media-amazon.com/images/M/MV5BYjQ4ZDA4NGMtMTkwYi00NThiLThhZDUtZTEzNTAxOWYyY2E4XkEyXkFqcGdeQXVyMjUxODE0MDY@._V1_.jpg	The Philadelphia Story	1940	\N	112 min	Comedy, Romance	7.9	When a rich woman's ex-husband and a tabloid-type reporter turn up just before her planned remarriage, she begins to learn the truth about herself.	96	George Cukor	Cary Grant	Katharine Hepburn	James Stewart	Ruth Hussey	63550	\N
564	https://m.media-amazon.com/images/M/MV5BZDVmZTZkYjMtNmViZC00ODEzLTgwNDAtNmQ3OGQwOWY5YjFmXkEyXkFqcGdeQXVyNDY2MTk1ODk@._V1_.jpg	His Girl Friday	1940	Passed	92 min	Comedy, Drama, Romance	7.9	A newspaper editor uses every trick in the book to keep his ace reporter ex-wife from remarrying.	\N	Howard Hawks	Cary Grant	Rosalind Russell	Ralph Bellamy	Gene Lockhart	53667	296000
565	https://m.media-amazon.com/images/M/MV5BYjZjOTU3MTMtYTM5YS00YjZmLThmNmMtODcwOTM1NmRiMWM2XkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_.jpg	The Adventures of Robin Hood	1938	PG	102 min	Action, Adventure, Romance	7.9	When Prince John and the Norman Lords begin oppressing the Saxon masses in King Richard's absence, a Saxon lord fights back as the outlaw leader of a rebel guerrilla army.	97	Michael Curtiz	William Keighley	Errol Flynn	Olivia de Havilland	Basil Rathbone	47175	3981000
566	https://m.media-amazon.com/images/M/MV5BYTJmNmQxNGItNDNlMC00MDU3LWFhNzMtZDQ2NDY0ZTVkNjE3XkEyXkFqcGdeQXVyMDI2NDg0NQ@@._V1_.jpg	A Night at the Opera	1935	Passed	96 min	Comedy, Music, Musical	7.9	A sly business manager and two wacky friends of two opera singers help them achieve success while humiliating their stuffy and snobbish enemies.	\N	Sam Wood	Edmund Goulding	Groucho Marx	Chico Marx	Harpo Marx	30580	2537520
567	https://m.media-amazon.com/images/M/MV5BZTY3YjYxZGQtMTM2YS00ZmYwLWFlM2QtOWFlMTU1NTAyZDQ2XkEyXkFqcGdeQXVyNTgyNTA4MjM@._V1_.jpg	King Kong	1933	Passed	100 min	Adventure, Horror, Sci-Fi	7.9	A film crew goes to a tropical island for an exotic location shoot and discovers a colossal ape who takes a shine to their female blonde star. He is then captured and brought back to New York City for public exhibition.	90	Merian C. Cooper	Ernest B. Schoedsack	Fay Wray	Robert Armstrong	Bruce Cabot	78991	10000000
568	https://m.media-amazon.com/images/M/MV5BMjMyYjgyOTQtZDVlZS00NTQ0LWJiNDItNGRlZmM3Yzc0N2Y0XkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_.jpg	Freaks	1932	\N	64 min	Drama, Horror	7.9	A circus' beautiful trapeze artist agrees to marry the leader of side-show performers, but his deformed friends discover she is only marrying him for his inheritance.	80	Tod Browning	Wallace Ford	Leila Hyams	Olga Baclanova	Roscoe Ates	42117	\N
569	https://m.media-amazon.com/images/M/MV5BMTAxYjEyMTctZTg3Ni00MGZmLWIxMmMtOGM2NTFiY2U3MmExXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_.jpg	Nosferatu	1922	\N	94 min	Fantasy, Horror	7.9	Vampire Count Orlok expresses interest in a new residence and real estate agent Hutter's wife.	\N	F.W. Murnau	Max Schreck	Alexander Granach	Gustav von Wangenheim	Greta Schröder	88794	\N
570	https://m.media-amazon.com/images/M/MV5BMTlkMmVmYjktYTc2NC00ZGZjLWEyOWUtMjc2MDMwMjQwOTA5XkEyXkFqcGdeQXVyNTI4MzE4MDU@._V1_.jpg	The Gentlemen	2019	A	113 min	Action, Comedy, Crime	7.8	An American expat tries to sell off his highly profitable marijuana empire in London, triggering plots, schemes, bribery and blackmail in an attempt to steal his domain out from under him.	51	Guy Ritchie	Matthew McConaughey	Charlie Hunnam	Michelle Dockery	Jeremy Strong	237392	\N
571	https://m.media-amazon.com/images/M/MV5BZmVhN2JlYjEtZWFkOS00YzE0LThiNDMtMGI3NDA1MTk2ZDQ2XkEyXkFqcGdeQXVyODE5NzE3OTE@._V1_.jpg	Raazi	2018	UA	138 min	Action, Drama, Thriller	7.8	A Kashmiri woman agrees to marry a Pakistani army officer in order to spy on Pakistan during the Indo-Pakistan War of 1971.	\N	Meghna Gulzar	Alia Bhatt	Vicky Kaushal	Rajit Kapoor	Shishir Sharma	25344	\N
572	https://m.media-amazon.com/images/M/MV5BNjcyYjg0M2ItMzMyZS00NmM1LTlhZDMtN2MxN2RhNWY4YTkwXkEyXkFqcGdeQXVyNjY1MTg4Mzc@._V1_.jpg	Sound of Metal	2019	R	120 min	Drama, Music	7.8	A heavy-metal drummer's life is thrown into freefall when he begins to lose his hearing.	81	Darius Marder	Riz Ahmed	Olivia Cooke	Paul Raci	Lauren Ridloff	27187	\N
573	https://m.media-amazon.com/images/M/MV5BMTBkMjMyN2UtNzVjNi00Y2ZiLTk2MDYtN2Y0MjgzYjAxNzE4XkEyXkFqcGdeQXVyNjkxOTM4ODY@._V1_.jpg	Forushande	2016	UA	124 min	Drama	7.8	While both participating in a production of "Death of a Salesman," a teacher's wife is assaulted in her new home, which leaves him determined to find the perpetrator over his wife's traumatized objections.	85	Asghar Farhadi	Shahab Hosseini	Taraneh Alidoosti	Babak Karimi	Mina Sadati	51240	2402067
574	https://m.media-amazon.com/images/M/MV5BN2YyZjQ0NTEtNzU5MS00NGZkLTg0MTEtYzJmMWY3MWRhZjM2XkEyXkFqcGdeQXVyMDA4NzMyOA@@._V1_.jpg	Dunkirk	2017	UA	106 min	Action, Drama, History	7.8	Allied soldiers from Belgium, the British Empire, and France are surrounded by the German Army and evacuated during a fierce battle in World War II.	94	Christopher Nolan	Fionn Whitehead	Barry Keoghan	Mark Rylance	Tom Hardy	555092	188373161
578	https://m.media-amazon.com/images/M/MV5BY2YxNjQxYWYtYzNkMi00YTgyLWIwZTMtYzgyYjZlZmYzZTA0XkEyXkFqcGdeQXVyMTA4NjE0NjEy._V1_.jpg	Udta Punjab	2016	A	148 min	Action, Crime, Drama	7.8	A story that revolves around drug abuse in the affluent north Indian State of Punjab and how the youth there have succumbed to it en-masse resulting in a socio-economic decline.	\N	Abhishek Chaubey	Shahid Kapoor	Alia Bhatt	Kareena Kapoor	Diljit Dosanjh	27175	\N
579	https://m.media-amazon.com/images/M/MV5BMjA2Mzg2NDMzNl5BMl5BanBnXkFtZTgwMjcwODUzOTE@._V1_.jpg	Kubo and the Two Strings	2016	PG	101 min	Animation, Action, Adventure	7.8	A young boy named Kubo must locate a magical suit of armour worn by his late father in order to defeat a vengeful spirit from the past.	84	Travis Knight	Charlize Theron	Art Parkinson	Matthew McConaughey	Ralph Fiennes	118035	48023088
580	https://m.media-amazon.com/images/M/MV5BZjAzZjZiMmQtMDZmOC00NjVmLTkyNTItOGI2Mzg4NTBhZTA1XkEyXkFqcGdeQXVyODE5NzE3OTE@._V1_.jpg	M.S. Dhoni: The Untold Story	2016	U	184 min	Biography, Drama, Sport	7.8	The untold story of Mahendra Singh Dhoni's journey from ticket collector to trophy collector - the world-cup-winning captain of the Indian Cricket Team.	\N	Neeraj Pandey	Sushant Singh Rajput	Kiara Advani	Anupam Kher	Disha Patani	40416	1782795
581	https://m.media-amazon.com/images/M/MV5BMTYxMjk0NDg4Ml5BMl5BanBnXkFtZTgwODcyNjA5OTE@._V1_.jpg	Manchester by the Sea	2016	UA	137 min	Drama	7.8	A depressed uncle is asked to take care of his teenage nephew after the boy's father dies.	96	Kenneth Lonergan	Casey Affleck	Michelle Williams	Kyle Chandler	Lucas Hedges	246963	47695120
582	https://m.media-amazon.com/images/M/MV5BMjA0MzQzNjM1Ml5BMl5BanBnXkFtZTgwNjM5MjU5NjE@._V1_.jpg	Under sandet	2015	R	100 min	Drama, History, War	7.8	In post-World War II Denmark, a group of young German POWs are forced to clear a beach of thousands of land mines under the watch of a Danish Sergeant who slowly learns to appreciate their plight.	75	Martin Zandvliet	Roland Møller	Louis Hofmann	Joel Basman	Mikkel Boe Følsgaard	35539	435266
583	https://m.media-amazon.com/images/M/MV5BMjEwMzMxODIzOV5BMl5BanBnXkFtZTgwNzg3OTAzMDI@._V1_.jpg	Rogue One	2016	UA	133 min	Action, Adventure, Sci-Fi	7.8	The daughter of an Imperial scientist joins the Rebel Alliance in a risky move to steal the plans for the Death Star.	65	Gareth Edwards	Felicity Jones	Diego Luna	Alan Tudyk	Donnie Yen	556608	532177324
584	https://m.media-amazon.com/images/M/MV5BMjQ0MTgyNjAxMV5BMl5BanBnXkFtZTgwNjUzMDkyODE@._V1_.jpg	Captain America: Civil War	2016	UA	147 min	Action, Adventure, Sci-Fi	7.8	Political involvement in the Avengers' affairs causes a rift between Captain America and Iron Man.	75	Anthony Russo	Joe Russo	Chris Evans	Robert Downey Jr.	Scarlett Johansson	663649	408084349
585	https://m.media-amazon.com/images/M/MV5BMjA1MTc1NTg5NV5BMl5BanBnXkFtZTgwOTM2MDEzNzE@._V1_.jpg	The Hateful Eight	2015	A	168 min	Crime, Drama, Mystery	7.8	In the dead of a Wyoming winter, a bounty hunter and his prisoner find shelter in a cabin currently inhabited by a collection of nefarious characters.	68	Quentin Tarantino	Samuel L. Jackson	Kurt Russell	Jennifer Jason Leigh	Walton Goggins	517059	54117416
586	https://m.media-amazon.com/images/M/MV5BY2QzYTQyYzItMzAwYi00YjZlLThjNTUtNzMyMDdkYzJiNWM4XkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_.jpg	Little Women	2019	U	135 min	Drama, Romance	7.8	Jo March reflects back and forth on her life, telling the beloved story of the March sisters - four young women, each determined to live life on her own terms.	91	Greta Gerwig	Saoirse Ronan	Emma Watson	Florence Pugh	Eliza Scanlen	143250	108101214
587	https://m.media-amazon.com/images/M/MV5BMTU3NjE2NjgwN15BMl5BanBnXkFtZTgwNDYzMzEwMzI@._V1_.jpg	Loving Vincent	2017	UA	94 min	Animation, Biography, Crime	7.8	In a story depicted in oil painted animation, a young man comes to the last hometown of painter Vincent van Gogh (Robert Gulaczyk) to deliver the troubled artist's final letter and ends up investigating his final days there.	62	Dorota Kobiela	Hugh Welchman	Douglas Booth	Jerome Flynn	Robert Gulaczyk	50778	6735118
588	https://m.media-amazon.com/images/M/MV5BMTU2OTcyOTE3MF5BMl5BanBnXkFtZTgwNTg5Mjc1MjE@._V1_.jpg	Pride	2014	R	119 min	Biography, Comedy, Drama	7.8	U.K. gay activists work to help miners during their lengthy strike of the National Union of Mineworkers in the summer of 1984.	79	Matthew Warchus	Bill Nighy	Imelda Staunton	Dominic West	Paddy Considine	51841	\N
589	https://m.media-amazon.com/images/M/MV5BMTcxNTgzNDg1N15BMl5BanBnXkFtZTgwNjg4MzI1MDE@._V1_.jpg	Le passé	2013	PG-13	130 min	Drama, Mystery	7.8	An Iranian man deserts his French wife and her two children to return to his homeland. Meanwhile, his wife starts up a new relationship, a reality her husband confronts upon his wife's request for a divorce.	85	Asghar Farhadi	Bérénice Bejo	Tahar Rahim	Ali Mosaffa	Pauline Burlet	45002	1330596
590	https://m.media-amazon.com/images/M/MV5BNjg5NmI3NmUtZDQ2Mi00ZTI0LWE0YzAtOGRhOWJmNDJkOWNkXkEyXkFqcGdeQXVyMzIzNDU1NTY@._V1_.jpg	La grande bellezza	2013	\N	141 min	Drama	7.8	Jep Gambardella has seduced his way through the lavish nightlife of Rome for decades, but after his 65th birthday and a shock from the past, Jep looks past the nightclubs and parties to find a timeless landscape of absurd, exquisite beauty.	86	Paolo Sorrentino	Toni Servillo	Carlo Verdone	Sabrina Ferilli	Carlo Buccirosso	81125	2852400
593	https://m.media-amazon.com/images/M/MV5BMDliOTIzNmUtOTllOC00NDU3LWFiNjYtMGM0NDc1YTMxNjYxXkEyXkFqcGdeQXVyNTM3NzExMDQ@._V1_.jpg	Big Hero 6	2014	U	102 min	Animation, Action, Adventure	7.8	A special bond develops between plus-sized inflatable robot Baymax and prodigy Hiro Hamada, who together team up with a group of friends to form a band of high-tech heroes.	74	Don Hall	Chris Williams	Ryan Potter	Scott Adsit	Jamie Chung	410983	222527828
594	https://m.media-amazon.com/images/M/MV5BMTA1ODUzMDA3NzFeQTJeQWpwZ15BbWU3MDgxMTYxNTk@._V1_.jpg	About Time	2013	R	123 min	Comedy, Drama, Fantasy	7.8	At the age of 21, Tim discovers he can travel in time and change what happens and has happened in his own life. His decision to make his world a better place by getting a girlfriend turns out not to be as easy as you might think.	55	Richard Curtis	Domhnall Gleeson	Rachel McAdams	Bill Nighy	Lydia Wilson	303032	15322921
595	https://m.media-amazon.com/images/M/MV5BMjQ5YWVmYmYtOWFiZC00NGMxLWEwODctZDM2MWI4YWViN2E5XkEyXkFqcGdeQXVyNjQ2MjQ5NzM@._V1_.jpg	English Vinglish	2012	U	134 min	Comedy, Drama, Family	7.8	A quiet, sweet tempered housewife endures small slights from her well-educated husband and daughter every day because of her inability to speak and understand English.	\N	Gauri Shinde	Sridevi	Adil Hussain	Mehdi Nebbou	Priya Anand	33618	1670773
596	https://m.media-amazon.com/images/M/MV5BMTU4NDg0MzkzNV5BMl5BanBnXkFtZTgwODA3Mzc1MDE@._V1_.jpg	Kaze tachinu	2013	PG-13	126 min	Animation, Biography, Drama	7.8	A look at the life of Jiro Horikoshi, the man who designed Japanese fighter planes during World War II.	83	Hayao Miyazaki	Hideaki Anno	Hidetoshi Nishijima	Miori Takimoto	Masahiko Nishimura	73690	5209580
597	https://m.media-amazon.com/images/M/MV5BMTYzMDM4NzkxOV5BMl5BanBnXkFtZTgwNzM1Mzg2NzM@._V1_.jpg	Toy Story 4	2019	U	100 min	Animation, Adventure, Comedy	7.8	When a new toy called "Forky" joins Woody and the gang, a road trip alongside old and new friends reveals how big the world can be for a toy.	84	Josh Cooley	Tom Hanks	Tim Allen	Annie Potts	Tony Hale	203177	434038008
598	https://m.media-amazon.com/images/M/MV5BMTQ4MzQ3NjA0N15BMl5BanBnXkFtZTgwODQyNjQ4MDE@._V1_.jpg	La migliore offerta	2013	R	131 min	Crime, Drama, Mystery	7.8	A lonely art expert working for a mysterious and reclusive heiress finds not only her art worth examining.	49	Giuseppe Tornatore	Geoffrey Rush	Jim Sturgess	Sylvia Hoeks	Donald Sutherland	108399	85433
599	https://m.media-amazon.com/images/M/MV5BMzllMWI1ZDQtMmFhNS00NzJkLThmMTMtNzFmMmMyYjU3ZGVjXkEyXkFqcGdeQXVyMDI2NDg0NQ@@._V1_.jpg	Moonrise Kingdom	2012	A	94 min	Comedy, Drama, Romance	7.8	A pair of young lovers flee their New England town, which causes a local search party to fan out to find them.	84	Wes Anderson	Jared Gilman	Kara Hayward	Bruce Willis	Bill Murray	318789	45512466
600	https://m.media-amazon.com/images/M/MV5BMzMwMTAwODczN15BMl5BanBnXkFtZTgwMDk2NDA4MTE@._V1_.jpg	How to Train Your Dragon 2	2014	U	102 min	Animation, Action, Adventure	7.8	When Hiccup and Toothless discover an ice cave that is home to hundreds of new wild dragons and the mysterious Dragon Rider, the two friends find themselves at the center of a battle to protect the peace.	76	Dean DeBlois	Jay Baruchel	Cate Blanchett	Gerard Butler	Craig Ferguson	305611	177002924
601	https://m.media-amazon.com/images/M/MV5BNDc4MThhN2EtZjMzNC00ZDJmLThiZTgtNThlY2UxZWMzNjdkXkEyXkFqcGdeQXVyNDk3NzU2MTQ@._V1_.jpg	The Big Short	2015	A	130 min	Biography, Comedy, Drama	7.8	In 2006-2007 a group of investors bet against the US mortgage market. In their research they discover how flawed and corrupt the market is.	81	Adam McKay	Christian Bale	Steve Carell	Ryan Gosling	Brad Pitt	362942	70259870
602	https://m.media-amazon.com/images/M/MV5BYzM2OGQ2NzUtNzlmYi00ZDg4LWExODgtMDVmOTU2Yzg2N2U5XkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg	Kokuhaku	2010	\N	106 min	Drama, Thriller	7.8	A psychological thriller of a grieving mother turned cold-blooded avenger with a twisty master plan to pay back those who were responsible for her daughter's death.	\N	Tetsuya Nakashima	Takako Matsu	Yoshino Kimura	Masaki Okada	Yukito Nishii	35713	\N
603	https://m.media-amazon.com/images/M/MV5BZjRmNjc5MTYtYjc3My00ZjNiLTg4YjUtMTQ0ZTFkZmMxMDUzXkEyXkFqcGdeQXVyNDY5MTUyNjU@._V1_.jpg	Ang-ma-reul bo-at-da	2010	\N	144 min	Action, Crime, Drama	7.8	A secret agent exacts revenge on a serial killer through a series of captures and releases.	67	Jee-woon Kim	Lee Byung-Hun	Choi Min-sik	Jeon Gook-Hwan	Ho-jin Chun	111252	128392
604	https://m.media-amazon.com/images/M/MV5BMTczNDk4NTQ0OV5BMl5BanBnXkFtZTcwNDAxMDgxNw@@._V1_.jpg	The Girl with the Dragon Tattoo	2011	R	158 min	Crime, Drama, Mystery	7.8	Journalist Mikael Blomkvist is aided in his search for a woman who has been missing for forty years by Lisbeth Salander, a young computer hacker.	71	David Fincher	Daniel Craig	Rooney Mara	Christopher Plummer	Stellan Skarsgård	423010	102515793
605	https://m.media-amazon.com/images/M/MV5BODhiZWRhMjctNDUyMS00NmUwLTgwYmItMjJhOWNkZWQ3ZTQxXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg	Captain Phillips	2013	UA	134 min	Adventure, Biography, Crime	7.8	The true story of Captain Richard Phillips and the 2009 hijacking by Somali pirates of the U.S.-flagged MV Maersk Alabama, the first American cargo ship to be hijacked in two hundred years.	82	Paul Greengrass	Tom Hanks	Barkhad Abdi	Barkhad Abdirahman	Catherine Keener	421244	107100855
606	https://m.media-amazon.com/images/M/MV5BMTgzMTkxNjAxNV5BMl5BanBnXkFtZTgwMDU3MDE0MjE@._V1_.jpg	Ajeossi	2010	R	119 min	Action, Crime, Drama	7.8	A quiet pawnshop keeper with a violent past takes on a drug-and-organ trafficking ring in hope of saving the child who is his only friend.	\N	Jeong-beom Lee	Won Bin	Sae-ron Kim	Tae-hoon Kim	Hee-won Kim	62848	6460
607	https://m.media-amazon.com/images/M/MV5BMTA5MzkyMzIxNjJeQTJeQWpwZ15BbWU4MDU0MDk0OTUx._V1_.jpg	Straight Outta Compton	2015	R	147 min	Biography, Drama, History	7.8	The rap group NWA emerges from the mean streets of Compton in Los Angeles, California, in the mid-1980s and revolutionizes Hip Hop culture with their music and tales about life in the hood.	72	F. Gary Gray	O'Shea Jackson Jr.	Corey Hawkins	Jason Mitchell	Neil Brown Jr.	179264	161197785
612	https://m.media-amazon.com/images/M/MV5BMTc2Mjc0MDg3MV5BMl5BanBnXkFtZTcwMjUzMDkxMw@@._V1_.jpg	Män som hatar kvinnor	2009	R	152 min	Crime, Drama, Mystery	7.8	A journalist is aided by a young female hacker in his search for the killer of a woman who has been dead for forty years.	76	Niels Arden Oplev	Michael Nyqvist	Noomi Rapace	Ewa Fröling	Lena Endre	208994	10095170
613	https://m.media-amazon.com/images/M/MV5BYjYzOGE1MjUtODgyMy00ZDAxLTljYTgtNzk0Njg2YWQwMTZhXkEyXkFqcGdeQXVyMDM2NDM2MQ@@._V1_.jpg	The Trial of the Chicago 7	2020	R	129 min	Drama, History, Thriller	7.8	The story of 7 people on trial stemming from various charges surrounding the uprising at the 1968 Democratic National Convention in Chicago, Illinois.	77	Aaron Sorkin	Eddie Redmayne	Alex Sharp	Sacha Baron Cohen	Jeremy Strong	89896	\N
614	https://m.media-amazon.com/images/M/MV5BOTNjM2Y2ZjgtMDc5NS00MDQ1LTgyNGYtYzYwMTAyNWQwYTMyXkEyXkFqcGdeQXVyMjE4NzUxNDA@._V1_.jpg	Druk	2020	\N	117 min	Comedy, Drama	7.8	Four friends, all high school teachers, test a theory that they will improve their lives by maintaining a constant level of alcohol in their blood.	81	Thomas Vinterberg	Mads Mikkelsen	Thomas Bo Larsen	Magnus Millang	Lars Ranthe	33931	\N
615	https://m.media-amazon.com/images/M/MV5BMTM0ODk3MjM1MV5BMl5BanBnXkFtZTcwNzc1MDIwNA@@._V1_.jpg	The Fighter	2010	UA	116 min	Biography, Drama, Sport	7.8	Based on the story of Micky Ward, a fledgling boxer who tries to escape the shadow of his more famous but troubled older boxing brother and get his own shot at greatness.	79	David O. Russell	Mark Wahlberg	Christian Bale	Amy Adams	Melissa Leo	340584	93617009
616	https://m.media-amazon.com/images/M/MV5BMTM4NzQ0OTYyOF5BMl5BanBnXkFtZTcwMDkyNjQyMg@@._V1_.jpg	Taken	2008	A	90 min	Action, Thriller	7.8	A retired CIA agent travels across Europe and relies on his old skills to save his estranged daughter, who has been kidnapped while on a trip to Paris.	51	Pierre Morel	Liam Neeson	Maggie Grace	Famke Janssen	Leland Orser	564791	145000989
617	https://m.media-amazon.com/images/M/MV5BMTMzMTc3MjA5NF5BMl5BanBnXkFtZTcwOTk3MDE5MQ@@._V1_.jpg	The Boy in the Striped Pyjamas	2008	PG-13	94 min	Drama, History, War	7.8	Through the innocent eyes of Bruno, the eight-year-old son of the commandant at a German concentration camp, a forbidden friendship with a Jewish boy on the other side of the camp fence has startling and unexpected consequences.	55	Mark Herman	Asa Butterfield	David Thewlis	Rupert Friend	Zac Mattoon O'Brien	190748	9030581
618	https://m.media-amazon.com/images/M/MV5BYWUxZjJkMDktZmMxMS00Mzg3LTk4MDItN2IwODlmN2E0MTM0XkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg	Once	2007	R	86 min	Drama, Music, Romance	7.8	A modern-day musical about a busker and an immigrant and their eventful week in Dublin, as they write, rehearse and record songs that tell their love story.	88	John Carney	Glen Hansard	Markéta Irglová	Hugh Walsh	Gerard Hendrick	110656	9439923
619	https://m.media-amazon.com/images/M/MV5BMTcwNTE4MTUxMl5BMl5BanBnXkFtZTcwMDIyODM4OA@@._V1_.jpg	The Hobbit: An Unexpected Journey	2012	UA	169 min	Adventure, Fantasy	7.8	A reluctant Hobbit, Bilbo Baggins, sets out to the Lonely Mountain with a spirited group of dwarves to reclaim their mountain home, and the gold within it from the dragon Smaug.	58	Peter Jackson	Martin Freeman	Ian McKellen	Richard Armitage	Andy Serkis	757377	303003568
620	https://m.media-amazon.com/images/M/MV5BMzgxMzYyNzAyOF5BMl5BanBnXkFtZTcwODY5MjY3MQ@@._V1_.jpg	Auf der anderen Seite	2007	\N	122 min	Drama	7.8	A Turkish man travels to Istanbul to find the daughter of his father's former girlfriend.	85	Fatih Akin	Baki Davrak	Nurgül Yesilçay	Tuncel Kurtiz	Nursel Köse	30827	741283
621	https://m.media-amazon.com/images/M/MV5BMGRiYjE0YzItMzk3Zi00ZmYwLWJjNDktYTAwYjIwMjIxYzM3XkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg	Atonement	2007	R	123 min	Drama, Mystery, Romance	7.8	Thirteen-year-old fledgling writer Briony Tallis irrevocably changes the course of several lives when she accuses her older sister's lover of a crime he did not commit.	85	Joe Wright	Keira Knightley	James McAvoy	Brenda Blethyn	Saoirse Ronan	251370	50927067
622	https://m.media-amazon.com/images/M/MV5BZjY5ZjQyMjMtMmEwOC00Nzc2LTllYTItMmU2MzJjNTg1NjY0XkEyXkFqcGdeQXVyNjQ1MTMzMDQ@._V1_.jpg	Drive	2011	A	100 min	Crime, Drama	7.8	A mysterious Hollywood stuntman and mechanic moonlights as a getaway driver and finds himself in trouble when he helps out his neighbor.	78	Nicolas Winding Refn	Ryan Gosling	Carey Mulligan	Bryan Cranston	Albert Brooks	571571	35061555
623	https://m.media-amazon.com/images/M/MV5BMjFmZGI2YTEtYmJhMS00YTE5LWJjNjAtNDI5OGY5ZDhmNTRlXkEyXkFqcGdeQXVyODAwMTU1MTE@._V1_.jpg	American Gangster	2007	A	157 min	Biography, Crime, Drama	7.8	An outcast New York City cop is charged with bringing down Harlem drug lord Frank Lucas, whose real life inspired this partly biographical film.	76	Ridley Scott	Denzel Washington	Russell Crowe	Chiwetel Ejiofor	Josh Brolin	392449	130164645
624	https://m.media-amazon.com/images/M/MV5BMTYwOTEwNjAzMl5BMl5BanBnXkFtZTcwODc5MTUwMw@@._V1_.jpg	Avatar	2009	UA	162 min	Action, Adventure, Fantasy	7.8	A paraplegic Marine dispatched to the moon Pandora on a unique mission becomes torn between following his orders and protecting the world he feels is his home.	83	James Cameron	Sam Worthington	Zoe Saldana	Sigourney Weaver	Michelle Rodriguez	1118998	760507625
628	https://m.media-amazon.com/images/M/MV5BMzg4MDJhMDMtYmJiMS00ZDZmLThmZWUtYTMwZDM1YTc5MWE2XkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_.jpg	Hot Fuzz	2007	UA	121 min	Action, Comedy, Mystery	7.8	A skilled London police officer is transferred to a small town with a dark secret.	81	Edgar Wright	Simon Pegg	Nick Frost	Martin Freeman	Bill Nighy	463466	23637265
629	https://m.media-amazon.com/images/M/MV5BNjQ0NTY2ODY2M15BMl5BanBnXkFtZTgwMjE4MzkxMDE@._V1_.jpg	The Curious Case of Benjamin Button	2008	UA	166 min	Drama, Fantasy, Romance	7.8	Tells the story of Benjamin Button, a man who starts aging backwards with consequences.	70	David Fincher	Brad Pitt	Cate Blanchett	Tilda Swinton	Julia Ormond	589160	127509326
630	https://m.media-amazon.com/images/M/MV5BY2VlOTc4ZjctYjVlMS00NDYwLWEwZjctZmYzZmVkNGU5NjNjXkEyXkFqcGdeQXVyODE5NzE3OTE@._V1_.jpg	Veer-Zaara	2004	U	192 min	Drama, Family, Musical	7.8	Veer-Zaara is a saga of love, separation, courage and sacrifice. A love story that is an inspiration and will remain a legend forever.	67	Yash Chopra	Shah Rukh Khan	Preity Zinta	Rani Mukerji	Kirron Kher	49050	2921738
631	https://m.media-amazon.com/images/M/MV5BMTU4NTc5NjM5M15BMl5BanBnXkFtZTgwODEyMTE0MDE@._V1_.jpg	Adams æbler	2005	R	94 min	Comedy, Crime, Drama	7.8	A neo-nazi sentenced to community service at a church clashes with the blindly devotional priest.	51	Anders Thomas Jensen	Ulrich Thomsen	Mads Mikkelsen	Nicolas Bro	Paprika Steen	45717	1305
632	https://m.media-amazon.com/images/M/MV5BMTA1NDQ3NTcyOTNeQTJeQWpwZ15BbWU3MDA0MzA4MzE@._V1_.jpg	Pride & Prejudice	2005	PG	129 min	Drama, Romance	7.8	Sparks fly when spirited Elizabeth Bennet meets single, rich, and proud Mr. Darcy. But Mr. Darcy reluctantly finds himself falling in love with a woman beneath his class. Can each overcome their own pride and prejudice?	82	Joe Wright	Keira Knightley	Matthew Macfadyen	Brenda Blethyn	Donald Sutherland	258924	38405088
633	https://m.media-amazon.com/images/M/MV5BMjE1MjA0MDA3MV5BMl5BanBnXkFtZTcwOTU0MjMzMQ@@._V1_.jpg	The World's Fastest Indian	2005	U	127 min	Biography, Drama, Sport	7.8	The story of New Zealander Burt Munro, who spent years rebuilding a 1920 Indian motorcycle, which helped him set the land speed world record at Utah's Bonneville Salt Flats in 1967.	68	Roger Donaldson	Anthony Hopkins	Diane Ladd	Iain Rea	Tessa Mitchell	51980	5128124
634	https://m.media-amazon.com/images/M/MV5BNWY2ODRkZDYtMjllYi00Y2EyLWFhYjktMTQ5OGNkY2ViYmY2XkEyXkFqcGdeQXVyNjUxMDQ0MTg@._V1_.jpg	Tôkyô goddofâzâzu	2003	UA	90 min	Animation, Adventure, Comedy	7.8	On Christmas Eve, three homeless people living on the streets of Tokyo discover a newborn baby among the trash and set out to find its parents.	73	Satoshi Kon	Shôgo Furuya	Tôru Emori	Yoshiaki Umegaki	Aya Okamoto	31658	128985
635	https://m.media-amazon.com/images/M/MV5BOWE2MDAwZjEtODEyOS00ZjYyLTgzNDUtYmNiY2VmNWRiMTQxXkEyXkFqcGdeQXVyNTIzOTk5ODM@._V1_.jpg	Serenity	2005	PG-13	119 min	Action, Adventure, Sci-Fi	7.8	The crew of the ship Serenity try to evade an assassin sent to recapture one of their members who is telepathic.	74	Joss Whedon	Nathan Fillion	Gina Torres	Chiwetel Ejiofor	Alan Tudyk	283310	25514517
636	https://m.media-amazon.com/images/M/MV5BMjIyOTU3MjUxOF5BMl5BanBnXkFtZTcwMTQ0NjYzMw@@._V1_.jpg	Walk the Line	2005	PG-13	136 min	Biography, Drama, Music	7.8	A chronicle of country music legend Johnny Cash's life, from his early days on an Arkansas cotton farm to his rise to fame with Sun Records in Memphis, where he recorded alongside Elvis Presley, Jerry Lee Lewis, and Carl Perkins.	72	James Mangold	Joaquin Phoenix	Reese Witherspoon	Ginnifer Goodwin	Robert Patrick	234207	119519402
637	https://m.media-amazon.com/images/M/MV5BMzYwODUxNjkyMF5BMl5BanBnXkFtZTcwODUzNjQyMQ@@._V1_.jpg	Ondskan	2003	\N	113 min	Drama	7.8	A teenage boy expelled from school for fighting arrives at a boarding school where the systematic bullying of younger students is encouraged as a means to maintain discipline, and decides to fight back.	61	Mikael Håfström	Andreas Wilson	Henrik Lundström	Gustaf Skarsgård	Linda Zilliacus	35682	15280
638	https://m.media-amazon.com/images/M/MV5BMTk3OTM5Njg5M15BMl5BanBnXkFtZTYwMzA0ODI3._V1_.jpg	The Notebook	2004	A	123 min	Drama, Romance	7.8	A poor yet passionate young man falls in love with a rich young woman, giving her a sense of freedom, but they are soon separated because of their social differences.	53	Nick Cassavetes	Gena Rowlands	James Garner	Rachel McAdams	Ryan Gosling	520284	81001787
639	https://m.media-amazon.com/images/M/MV5BOTNmZTgyMzAtMTUwZC00NjAwLTk4MjktODllYTY5YTUwN2YwXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg	Diarios de motocicleta	2004	U	126 min	Adventure, Biography, Drama	7.8	The dramatization of a motorcycle road trip Che Guevara went on in his youth that showed him his life's calling.	75	Walter Salles	Gael García Bernal	Rodrigo De la Serna	Mía Maestro	Mercedes Morán	96703	16756372
640	https://m.media-amazon.com/images/M/MV5BM2YwNTQwM2ItZTA2Ni00NGY1LThjY2QtNzgyZTBhMTM0MWI4XkEyXkFqcGdeQXVyNzQxNDExNTU@._V1_.jpg	Lilja 4-ever	2002	R	109 min	Crime, Drama	7.8	Sixteen-year-old Lilja and her only friend, the young boy Volodja, live in Russia, fantasizing about a better life. One day, Lilja falls in love with Andrej, who is going to Sweden, and invites Lilja to come along and start a new life.	82	Lukas Moodysson	Oksana Akinshina	Artyom Bogucharskiy	Pavel Ponomaryov	Lyubov Agapova	42673	181655
758	https://m.media-amazon.com/images/M/MV5BOTY4NTU2NTU4NF5BMl5BanBnXkFtZTcwNjE0OTc5MQ@@._V1_.jpg	Frost/Nixon	2008	R	122 min	Biography, Drama, History	7.7	A dramatic retelling of the post-Watergate television interviews between British talk-show host David Frost and former president Richard Nixon.	80	Ron Howard	Frank Langella	Michael Sheen	Kevin Bacon	Sam Rockwell	103330	18593156
644	https://m.media-amazon.com/images/M/MV5BMWM0ZjY5ZjctODNkZi00Nzk0LWE1ODUtNGM4ZDUyMzUwMGYwXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg	Waking Life	2001	R	99 min	Animation, Drama, Fantasy	7.8	A man shuffles through a dream meeting various people and discussing the meanings and purposes of the universe.	83	Richard Linklater	Ethan Hawke	Trevor Jack Brooks	Lorelei Linklater	Wiley Wiggins	60684	2892011
645	https://m.media-amazon.com/images/M/MV5BYThkMzgxNjEtMzFiOC00MTI0LWI5MDItNDVmYjA4NzY5MDQ2L2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg	Remember the Titans	2000	U	113 min	Biography, Drama, Sport	7.8	The true story of a newly appointed African-American coach and his high school team on their first season as a racially integrated unit.	48	Boaz Yakin	Denzel Washington	Will Patton	Wood Harris	Ryan Hurst	198089	115654751
646	https://m.media-amazon.com/images/M/MV5BNDdhMzMxOTctNDMyNS00NTZmLTljNWEtNTc4MDBmZTYxY2NmXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_.jpg	Wo hu cang long	2000	UA	120 min	Action, Adventure, Fantasy	7.8	A young Chinese warrior steals a sword from a famed swordsman and then escapes into a world of romantic adventure with a mysterious man in the frontier of the nation.	94	Ang Lee	Yun-Fat Chow	Michelle Yeoh	Ziyi Zhang	Chen Chang	253228	128078872
647	https://m.media-amazon.com/images/M/MV5BZTk2ZTMzMmUtZjUyNi00YzMyLWE3NTAtNDNjNzU3MGQ1YTFjXkEyXkFqcGdeQXVyMTA0MjU0Ng@@._V1_.jpg	Todo sobre mi madre	1999	R	101 min	Drama	7.8	Young Esteban wants to become a writer and also to discover the identity of his second mother, a trans woman, carefully concealed by his mother Manuela.	87	Pedro Almodóvar	Cecilia Roth	Marisa Paredes	Candela Peña	Antonia San Juan	89058	8264530
648	https://m.media-amazon.com/images/M/MV5BN2Y5ZTU4YjctMDRmMC00MTg4LWE1M2MtMjk4MzVmOTE4YjkzXkEyXkFqcGdeQXVyNTc1NTQxODI@._V1_.jpg	Cast Away	2000	UA	143 min	Adventure, Drama, Romance	7.8	A FedEx executive undergoes a physical and emotional transformation after crash landing on a deserted island.	73	Robert Zemeckis	Tom Hanks	Helen Hunt	Paul Sanchez	Lari White	524235	233632142
649	https://m.media-amazon.com/images/M/MV5BYzVmMTdjOTYtOTJkYS00ZTg2LWExNTgtNzA1N2Y0MDgwYWFhXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg	The Boondock Saints	1999	R	108 min	Action, Crime, Thriller	7.8	Two Irish Catholic brothers become vigilantes and wipe out Boston's criminal underworld in the name of God.	44	Troy Duffy	Willem Dafoe	Sean Patrick Flanery	Norman Reedus	David Della Rocco	227143	25812
650	https://m.media-amazon.com/images/M/MV5BODg0YjAzNDQtOGFkMi00Yzk2LTg1NzYtYTNjY2UwZTM2ZDdkL2ltYWdlXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg	The Insider	1999	UA	157 min	Biography, Drama, Thriller	7.8	A research chemist comes under personal and professional attack when he decides to appear in a 60 Minutes exposé on Big Tobacco.	84	Michael Mann	Russell Crowe	Al Pacino	Christopher Plummer	Diane Venora	159886	28965197
651	https://m.media-amazon.com/images/M/MV5BZmIzMjE0M2YtNzliZi00YWNmLTgyNDItZDhjNWVhY2Q2ODk0XkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_.jpg	October Sky	1999	PG	108 min	Biography, Drama, Family	7.8	The true story of Homer Hickam, a coal miner's son who was inspired by the first Sputnik launch to take up rocketry against his father's wishes.	71	Joe Johnston	Jake Gyllenhaal	Chris Cooper	Laura Dern	Chris Owen	82855	32481825
652	https://m.media-amazon.com/images/M/MV5BOGZhM2FhNTItODAzNi00YjA0LWEyN2UtNjJlYWQzYzU1MDg5L2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg	Shrek	2001	U	90 min	Animation, Adventure, Comedy	7.8	A mean lord exiles fairytale creatures to the swamp of a grumpy ogre, who must go on a quest and rescue a princess for the lord in order to get his land back.	84	Andrew Adamson	Vicky Jenson	Mike Myers	Eddie Murphy	Cameron Diaz	613941	267665011
653	https://m.media-amazon.com/images/M/MV5BMDdmZGU3NDQtY2E5My00ZTliLWIzOTUtMTY4ZGI1YjdiNjk3XkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_.jpg	Titanic	1997	UA	194 min	Drama, Romance	7.8	A seventeen-year-old aristocrat falls in love with a kind but poor artist aboard the luxurious, ill-fated R.M.S. Titanic.	75	James Cameron	Leonardo DiCaprio	Kate Winslet	Billy Zane	Kathy Bates	1046089	659325379
654	https://m.media-amazon.com/images/M/MV5BODk4MzE5NjgtN2ZhOS00YTdkLTg0YzktMmE1MTkxZmMyMWI2L2ltYWdlXkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_.jpg	Hana-bi	1997	\N	103 min	Crime, Drama, Romance	7.8	Nishi leaves the police in the face of harrowing personal and professional difficulties. Spiraling into depression, he makes questionable decisions.	\N	Takeshi Kitano	Takeshi Kitano	Kayoko Kishimoto	Ren Osugi	Susumu Terajima	27712	233986
655	https://m.media-amazon.com/images/M/MV5BODI3ZTc5NjktOGMyOC00NjYzLTgwZDYtYmQ4NDc1MmJjMjRlXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg	Gattaca	1997	UA	106 min	Drama, Sci-Fi, Thriller	7.8	A genetically inferior man assumes the identity of a superior one in order to pursue his lifelong dream of space travel.	64	Andrew Niccol	Ethan Hawke	Uma Thurman	Jude Law	Gore Vidal	280845	12339633
656	https://m.media-amazon.com/images/M/MV5BZGVmMDNmYmEtNGQ2Mi00Y2ZhLThhZTYtYjE5YmQzMjZiZGMxXkEyXkFqcGdeQXVyNDk3NzU2MTQ@._V1_.jpg	The Game	1997	UA	129 min	Action, Drama, Mystery	7.8	After a wealthy banker is given an opportunity to participate in a mysterious game, his life is turned upside down when he becomes unable to distinguish between the game and reality.	61	David Fincher	Michael Douglas	Deborah Kara Unger	Sean Penn	James Rebhorn	345096	48323648
660	https://m.media-amazon.com/images/M/MV5BODRkYzA4MGItODE2MC00ZjkwLWI2NDEtYzU1NzFiZGU1YzA0XkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_.jpg	Tombstone	1993	R	130 min	Action, Biography, Drama	7.8	A successful lawman's plans to retire anonymously in Tombstone, Arizona are disrupted by the kind of outlaws he was famous for eliminating.	50	George P. Cosmatos	Kevin Jarre	Kurt Russell	Val Kilmer	Sam Elliott	126871	56505065
661	https://m.media-amazon.com/images/M/MV5BODllYjM1ODItYjBmOC00MzkwLWJmM2YtMjMyZDU3MGJhNjc4L2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg	The Sandlot	1993	U	101 min	Comedy, Drama, Family	7.8	In the summer of 1962, a new kid in town is taken under the wing of a young baseball prodigy and his rowdy team, resulting in many adventures.	55	David Mickey Evans	Tom Guiry	Mike Vitar	Art LaFleur	Patrick Renna	78963	32416586
662	https://m.media-amazon.com/images/M/MV5BNDYwOThlMDAtYWUwMS00MjY5LTliMGUtZWFiYTA5MjYwZDAyXkEyXkFqcGdeQXVyNjY1NTQ0NDg@._V1_.jpg	The Remains of the Day	1993	U	134 min	Drama, Romance	7.8	A butler who sacrificed body and soul to service in the years leading up to World War II realizes too late how misguided his loyalty was to his lordly employer.	84	James Ivory	Anthony Hopkins	Emma Thompson	John Haycraft	Christopher Reeve	66065	22954968
663	https://m.media-amazon.com/images/M/MV5BMjA3Y2I4NjAtMDQyZS00ZGJhLWEwMzgtODBiNzE5Zjc1Nzk1L2ltYWdlXkEyXkFqcGdeQXVyNTc2MDU0NDE@._V1_.jpg	Naked	1993	\N	132 min	Comedy, Drama	7.8	Parallel tales of two sexually obsessed men, one hurting and annoying women physically and mentally, one wandering around the city talking to strangers and experiencing dimensions of life.	84	Mike Leigh	David Thewlis	Lesley Sharp	Katrin Cartlidge	Greg Cruttwell	34635	1769305
664	https://m.media-amazon.com/images/M/MV5BYmFmOGZjYTItYjY1ZS00OWRiLTk0NDgtMjQ5MzBkYWE2YWE0XkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_.jpg	The Fugitive	1993	U	130 min	Action, Crime, Drama	7.8	Dr. Richard Kimble, unjustly accused of murdering his wife, must find the real killer while being the target of a nationwide manhunt led by a seasoned U.S. Marshal.	87	Andrew Davis	Harrison Ford	Tommy Lee Jones	Sela Ward	Julianne Moore	267684	183875760
665	https://m.media-amazon.com/images/M/MV5BMTczOTczNjE3Ml5BMl5BanBnXkFtZTgwODEzMzg5MTI@._V1_.jpg	A Bronx Tale	1993	R	121 min	Crime, Drama, Romance	7.8	A father becomes worried when a local gangster befriends his son in the Bronx in the 1960s.	80	Robert De Niro	Robert De Niro	Chazz Palminteri	Lillo Brancato	Francis Capra	128171	17266971
666	https://m.media-amazon.com/images/M/MV5BYTRiMWM3MGItNjAxZC00M2E3LThhODgtM2QwOGNmZGU4OWZhXkEyXkFqcGdeQXVyNjExODE1MDc@._V1_.jpg	Batman: Mask of the Phantasm	1993	PG	76 min	Animation, Action, Crime	7.8	Batman is wrongly implicated in a series of murders of mob bosses actually done by a new vigilante assassin.	\N	Kevin Altieri	Boyd Kirkland	Frank Paur	Dan Riba	Eric Radomski	43690	5617391
667	https://m.media-amazon.com/images/M/MV5BOTIzZGU4ZWMtYmNjMy00NzU0LTljMGYtZmVkMDYwN2U2MzYwL2ltYWdlXkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_.jpg	Lat sau san taam	1992	R	128 min	Action, Crime, Thriller	7.8	A tough-as-nails cop teams up with an undercover agent to shut down a sinister mobster and his crew.	\N	John Woo	Yun-Fat Chow	Tony Chiu-Wai Leung	Teresa Mo	Philip Chan	46700	\N
668	https://m.media-amazon.com/images/M/MV5BOGNmMjBmZWEtOWYwZC00NGIzLTg0YWItMzkzMWMwOTU4YTViXkEyXkFqcGdeQXVyNzc5MjA3OA@@._V1_.jpg	Night on Earth	1991	R	129 min	Comedy, Drama	7.8	An anthology of 5 different cab drivers in 5 American and European cities and their remarkable fares on the same eventful night.	68	Jim Jarmusch	Winona Ryder	Gena Rowlands	Lisanne Falk	Alan Randolph Scott	55362	2015810
669	https://m.media-amazon.com/images/M/MV5BYmE0ZGRiMDgtOTU0ZS00YWUwLTk5YWQtMzhiZGVhNzViMGZiXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg	La double vie de Véronique	1991	R	98 min	Drama, Fantasy, Music	7.8	Two parallel stories about two identical women; one living in Poland, the other in France. They don't know each other, but their lives are nevertheless profoundly connected.	86	Krzysztof Kieslowski	Irène Jacob	Wladyslaw Kowalski	Halina Gryglaszewska	Kalina Jedrusik	42376	1999955
670	https://m.media-amazon.com/images/M/MV5BZmRjNDI5NTgtOTIwMC00MzJhLWI4ZTYtMmU0ZTE3ZmRkZDNhXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg	Boyz n the Hood	1991	A	112 min	Crime, Drama	7.8	Follows the lives of three young males living in the Crenshaw ghetto of Los Angeles, dissecting questions of race, relationships, violence, and future prospects.	76	John Singleton	Cuba Gooding Jr.	Laurence Fishburne	Hudhail Al-Amir	Lloyd Avery II	126082	57504069
671	https://m.media-amazon.com/images/M/MV5BNzY0ODQ3MTMxN15BMl5BanBnXkFtZTgwMDkwNTg4NjE@._V1_.jpg	Misery	1990	R	107 min	Drama, Thriller	7.8	After a famous author is rescued from a car crash by a fan of his novels, he comes to realize that the care he is receiving is only the beginning of a nightmare of captivity and abuse.	75	Rob Reiner	James Caan	Kathy Bates	Richard Farnsworth	Frances Sternhagen	184740	61276872
672	https://m.media-amazon.com/images/M/MV5BMjI5NjEzMDYyMl5BMl5BanBnXkFtZTgwNjgwNTg4NjE@._V1_.jpg	Awakenings	1990	U	121 min	Biography, Drama	7.8	The victims of an encephalitis epidemic many years ago have been catatonic ever since, but now a new drug offers the prospect of reviving them.	74	Penny Marshall	Robert De Niro	Robin Williams	Julie Kavner	Ruth Nelson	125276	52096475
676	https://m.media-amazon.com/images/M/MV5BZTMxMGM5MjItNDJhNy00MWI2LWJlZWMtOWFhMjI5ZTQwMWM3XkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg	Back to the Future Part II	1989	U	108 min	Adventure, Comedy, Sci-Fi	7.8	After visiting 2015, Marty McFly must repeat his visit to 1955 to prevent disastrous changes to 1985...without interfering with his first trip.	57	Robert Zemeckis	Michael J. Fox	Christopher Lloyd	Lea Thompson	Thomas F. Wilson	481918	118500000
677	https://m.media-amazon.com/images/M/MV5BZTFjNjU4OTktYzljMS00MmFlLWI3NGEtNjNhMTYwYzUyZDgyL2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_.jpg	Mississippi Burning	1988	A	128 min	Crime, Drama, History	7.8	Two F.B.I. Agents with wildly different styles arrive in Mississippi to investigate the disappearance of some civil rights activists.	65	Alan Parker	Gene Hackman	Willem Dafoe	Frances McDormand	Brad Dourif	88214	34603943
678	https://m.media-amazon.com/images/M/MV5BY2QwYmFmZTEtNzY2Mi00ZWMyLWEwY2YtMGIyNGZjMWExOWEyXkEyXkFqcGdeQXVyNjUwNzk3NDc@._V1_.jpg	Predator	1987	A	107 min	Action, Adventure, Sci-Fi	7.8	A team of commandos on a mission in a Central American jungle find themselves hunted by an extraterrestrial warrior.	45	John McTiernan	Arnold Schwarzenegger	Carl Weathers	Kevin Peter Hall	Elpidia Carrillo	371387	59735548
679	https://m.media-amazon.com/images/M/MV5BMWY3ODZlOGMtNzJmOS00ZTNjLWI3ZWEtZTJhZTk5NDZjYWRjXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_.jpg	Evil Dead II	1987	A	84 min	Action, Comedy, Fantasy	7.8	The lone survivor of an onslaught of flesh-possessing spirits holes up in a cabin with a group of strangers while the demons continue their attack.	72	Sam Raimi	Bruce Campbell	Sarah Berry	Dan Hicks	Kassie Wesley DePaiva	148359	5923044
680	https://m.media-amazon.com/images/M/MV5BMDA0NjZhZWUtNmI2NC00MmFjLTgwZDYtYzVjZmNhMDVmOTBkXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg	Ferris Bueller's Day Off	1986	U	103 min	Comedy	7.8	A high school wise guy is determined to have a day off from school, despite what the Principal thinks of that.	61	John Hughes	Matthew Broderick	Alan Ruck	Mia Sara	Jeffrey Jones	321382	70136369
681	https://m.media-amazon.com/images/M/MV5BM2ZmNDJiZTUtYjg5Zi00M2I3LTliZjAtNzQ4NTlkYTAzYTAxXkEyXkFqcGdeQXVyNTkyMDc0MjI@._V1_.jpg	Down by Law	1986	R	107 min	Comedy, Crime, Drama	7.8	Two men are framed and sent to jail, where they meet a murderer who helps them escape and leave the state.	75	Jim Jarmusch	Tom Waits	John Lurie	Roberto Benigni	Nicoletta Braschi	47834	1436000
682	https://m.media-amazon.com/images/M/MV5BODRlMjRkZGEtZWM2Zi00ZjYxLWE0MWUtMmM1YWM2NzZlOTE1XkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg	The Goonies	1985	U	114 min	Adventure, Comedy, Family	7.8	A group of young misfits called The Goonies discover an ancient map and set out on an adventure to find a legendary pirate's long-lost treasure.	62	Richard Donner	Sean Astin	Josh Brolin	Jeff Cohen	Corey Feldman	244430	61503218
683	https://m.media-amazon.com/images/M/MV5BZDRkOWQ5NGUtYTVmOS00ZjNhLWEwODgtOGI2MmUxNTBkMjU0XkEyXkFqcGdeQXVyMjUzOTY1NTc@._V1_.jpg	The Color Purple	1985	U	154 min	Drama	7.8	A black Southern woman struggles to find her identity after suffering abuse from her father and others over four decades.	78	Steven Spielberg	Danny Glover	Whoopi Goldberg	Oprah Winfrey	Margaret Avery	78321	98467863
684	https://m.media-amazon.com/images/M/MV5BOTM5N2ZmZTMtNjlmOS00YzlkLTk3YjEtNTU1ZmQ5OTdhODZhXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg	The Breakfast Club	1985	UA	97 min	Comedy, Drama	7.8	Five high school students meet in Saturday detention and discover how they have a lot more in common than they thought.	66	John Hughes	Emilio Estevez	Judd Nelson	Molly Ringwald	Ally Sheedy	357026	45875171
685	https://m.media-amazon.com/images/M/MV5BMGI0NzI5YjAtNTg0MS00NDA2LWE5ZWItODRmOTAxOTAxYjg2L2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyNTI4MjkwNjA@._V1_.jpg	The Killing Fields	1984	UA	141 min	Biography, Drama, History	7.8	A journalist is trapped in Cambodia during tyrant Pol Pot's bloody 'Year Zero' cleansing campaign, which claimed the lives of two million 'undesirable' civilians.	76	Roland Joffé	Sam Waterston	Haing S. Ngor	John Malkovich	Julian Sands	51585	34700291
686	https://m.media-amazon.com/images/M/MV5BMTkxMjYyNzgwMl5BMl5BanBnXkFtZTgwMTE3MjYyMTE@._V1_.jpg	Ghostbusters	1984	UA	105 min	Action, Comedy, Fantasy	7.8	Three former parapsychology professors set up shop as a unique ghost removal service.	71	Ivan Reitman	Bill Murray	Dan Aykroyd	Sigourney Weaver	Harold Ramis	355413	238632124
687	https://m.media-amazon.com/images/M/MV5BOTUwMDA3MTYtZjhjMi00ODFmLTg5ZTAtYzgwN2NlODgzMmUwXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_.jpg	The Right Stuff	1983	PG	193 min	Adventure, Biography, Drama	7.8	The story of the original Mercury 7 astronauts and their macho, seat-of-the-pants approach to the space program.	91	Philip Kaufman	Sam Shepard	Scott Glenn	Ed Harris	Dennis Quaid	56235	21500000
688	https://m.media-amazon.com/images/M/MV5BMTViNjlkYjgtMmE3Zi00ZGVkLTkyMjMtNzc3YzAwNzNiODQ1XkEyXkFqcGdeQXVyMjA0MzYwMDY@._V1_.jpg	The King of Comedy	1982	U	109 min	Comedy, Crime, Drama	7.8	Rupert Pupkin is a passionate yet unsuccessful comic who craves nothing more than to be in the spotlight and to achieve this, he stalks and kidnaps his idol to take the spotlight for himself.	73	Martin Scorsese	Robert De Niro	Jerry Lewis	Diahnne Abbott	Sandra Bernhard	88511	2500000
689	https://m.media-amazon.com/images/M/MV5BMTQ2ODFlMDAtNzdhOC00ZDYzLWE3YTMtNDU4ZGFmZmJmYTczXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg	E.T. the Extra-Terrestrial	1982	U	115 min	Family, Sci-Fi	7.8	A troubled child summons the courage to help a friendly alien escape Earth and return to his home world.	91	Steven Spielberg	Henry Thomas	Drew Barrymore	Peter Coyote	Dee Wallace	372490	435110554
693	https://m.media-amazon.com/images/M/MV5BZWQzYjBjZmQtZDFiOS00ZDQ1LWI4MDAtMDk1NGE1NDBhYjNhL2ltYWdlXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_.jpg	The Man Who Would Be King	1975	PG	129 min	Adventure, History, War	7.8	Two British former soldiers decide to set themselves up as Kings in Kafiristan, a land where no white man has set foot since Alexander the Great.	91	John Huston	Sean Connery	Michael Caine	Christopher Plummer	Saeed Jaffrey	44917	\N
694	https://m.media-amazon.com/images/M/MV5BNzZlMThlYzktMDlmZC00YTI1LThlNzktZWU0MTY4ODc2ZWY4XkEyXkFqcGdeQXVyNTA1NjYyMDk@._V1_.jpg	The Conversation	1974	U	113 min	Drama, Mystery, Thriller	7.8	A paranoid, secretive surveillance expert has a crisis of conscience when he suspects that the couple he is spying on will be murdered.	85	Francis Ford Coppola	Gene Hackman	John Cazale	Allen Garfield	Frederic Forrest	98611	4420000
695	https://m.media-amazon.com/images/M/MV5BYjhhMDFlZDctYzg1Mi00ZmZiLTgyNTgtM2NkMjRkNzYwZmQ0XkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg	La planète sauvage	1973	U	72 min	Animation, Sci-Fi	7.8	On a faraway planet where blue giants rule, oppressed humanoids rebel against their machine-like leaders.	73	René Laloux	Barry Bostwick	Jennifer Drake	Eric Baugin	Jean Topart	25229	193817
696	https://m.media-amazon.com/images/M/MV5BNjZmMWE4NzgtZjc5OS00NTBmLThlY2MtM2MzNTA5NTZiNTFjXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_.jpg	The Day of the Jackal	1973	A	143 min	Crime, Drama, Thriller	7.8	A professional assassin codenamed "Jackal" plots to kill Charles de Gaulle, the President of France.	80	Fred Zinnemann	Edward Fox	Terence Alexander	Michel Auclair	Alan Badel	37445	16056255
697	https://m.media-amazon.com/images/M/MV5BMDcxNjhiOTEtMzQ0YS00OTBhLTkxM2QtN2UyZDMzNzIzNWFlXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg	Badlands	1973	PG	94 min	Action, Crime, Drama	7.8	An impressionable teenage girl from a dead-end town and her older greaser boyfriend embark on a killing spree in the South Dakota badlands.	93	Terrence Malick	Martin Sheen	Sissy Spacek	Warren Oates	Ramon Bieri	66009	\N
698	https://m.media-amazon.com/images/M/MV5BNTEyMzc0Mjk5MV5BMl5BanBnXkFtZTgwMjI2NDIwMTE@._V1_.jpg	Cabaret	1972	A	124 min	Drama, Music, Musical	7.8	A female girlie club entertainer in Weimar Republic era Berlin romances two men while the Nazi Party rises to power around them.	80	Bob Fosse	Liza Minnelli	Michael York	Helmut Griem	Joel Grey	48334	42765000
699	https://m.media-amazon.com/images/M/MV5BZTllNDU0ZTItYTYxMC00OTI4LThlNDAtZjNiNzdhMWZiYjNmXkEyXkFqcGdeQXVyNzY1NDgwNjQ@._V1_.jpg	Willy Wonka & the Chocolate Factory	1971	U	100 min	Family, Fantasy, Musical	7.8	A poor but hopeful boy seeks one of the five coveted golden tickets that will send him on a tour of Willy Wonka's mysterious chocolate factory.	67	Mel Stuart	Gene Wilder	Jack Albertson	Peter Ostrum	Roy Kinnear	178731	4000000
700	https://m.media-amazon.com/images/M/MV5BNTgwZmIzMmYtZjE3Yy00NzgzLTgxNmUtNjlmZDlkMzlhOTJkXkEyXkFqcGdeQXVyNjUwNzk3NDc@._V1_.jpg	Midnight Cowboy	1969	A	113 min	Drama	7.8	A naive hustler travels from Texas to New York City to seek personal fortune, finding a new friend in the process.	79	John Schlesinger	Dustin Hoffman	Jon Voight	Sylvia Miles	John McGiver	101124	44785053
701	https://m.media-amazon.com/images/M/MV5BMTQyNTAzOTI3NF5BMl5BanBnXkFtZTcwNTM0Mjg0Mg@@._V1_.jpg	Wait Until Dark	1967	\N	108 min	Thriller	7.8	A recently blinded woman is terrorized by a trio of thugs while they search for a heroin-stuffed doll they believe is in her apartment.	81	Terence Young	Audrey Hepburn	Alan Arkin	Richard Crenna	Efrem Zimbalist Jr.	27733	17550741
702	https://m.media-amazon.com/images/M/MV5BZTVmMTk2NjUtNjVjNC00OTcwLWE4OWEtNzA4Mjk1ZmIwNDExXkEyXkFqcGdeQXVyNjUwNzk3NDc@._V1_.jpg	Guess Who's Coming to Dinner	1967	\N	108 min	Comedy, Drama	7.8	A couple's attitudes are challenged when their daughter introduces them to her African-American fiancé.	63	Stanley Kramer	Spencer Tracy	Sidney Poitier	Katharine Hepburn	Katharine Houghton	39642	56700000
703	https://m.media-amazon.com/images/M/MV5BOTViZmMwOGEtYzc4Yy00ZGQ1LWFkZDQtMDljNGZlMjAxMjhiXkEyXkFqcGdeQXVyNzM0MTUwNTY@._V1_.jpg	Bonnie and Clyde	1967	A	111 min	Action, Biography, Crime	7.8	Bored waitress Bonnie Parker falls in love with an ex-con named Clyde Barrow and together they start a violent crime spree through the country, stealing cars and robbing banks.	86	Arthur Penn	Warren Beatty	Faye Dunaway	Michael J. Pollard	Gene Hackman	102415	\N
704	https://m.media-amazon.com/images/M/MV5BNGM0ZTU3NmItZmRmMy00YWNjLWEzMWItYzg3MzcwZmM5NjdiXkEyXkFqcGdeQXVyNDYyMDk5MTU@._V1_.jpg	My Fair Lady	1964	U	170 min	Drama, Family, Musical	7.8	Snobbish phonetics Professor Henry Higgins agrees to a wager that he can make flower girl Eliza Doolittle presentable in high society.	95	George Cukor	Audrey Hepburn	Rex Harrison	Stanley Holloway	Wilfrid Hyde-White	86525	72000000
705	https://m.media-amazon.com/images/M/MV5BNmJkODczNjItNDI5Yy00MGI1LTkyOWItZDNmNjM4ZGI1ZDVlL2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyMDI2NDg0NQ@@._V1_.jpg	Mary Poppins	1964	U	139 min	Comedy, Family, Fantasy	7.8	In turn of the century London, a magical nanny employs music and adventure to help two neglected children become closer to their father.	88	Robert Stevenson	Julie Andrews	Dick Van Dyke	David Tomlinson	Glynis Johns	158029	102272727
706	https://m.media-amazon.com/images/M/MV5BZTM1ZjQ2YTktNDM2MS00NGY2LTkzNzItZTU4ODg1ODNkMWYxL2ltYWdlXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_.jpg	The Longest Day	1962	G	178 min	Action, Drama, History	7.8	The events of D-Day, told on a grand scale from both the Allied and German points of view.	75	Ken Annakin	Andrew Marton	Gerd Oswald	Bernhard Wicki	Darryl F. Zanuck	52141	39100000
712	https://m.media-amazon.com/images/M/MV5BZGU2YmU0MWMtMzg5My00ZmY2LTljMDItMTg2YTI5Y2U2OTE3XkEyXkFqcGdeQXVyMjUxODE0MDY@._V1_.jpg	To Have and Have Not	1944	PG	100 min	Adventure, Comedy, Film-Noir	7.8	During World War II, American expatriate Harry Morgan helps transport a French Resistance leader and his beautiful wife to Martinique while romancing a sensuous lounge singer.	\N	Howard Hawks	Humphrey Bogart	Lauren Bacall	Walter Brennan	Dolores Moran	31053	\N
713	https://m.media-amazon.com/images/M/MV5BM2I1YWM4NTYtYjA0Ny00ZDEwLTg3NTgtNzBjMzZhZTk1YTA1XkEyXkFqcGdeQXVyMTY5Nzc4MDY@._V1_.jpg	Shadow of a Doubt	1943	PG	108 min	Film-Noir, Thriller	7.8	A young girl, overjoyed when her favorite uncle comes to visit the family, slowly begins to suspect that he is in fact the "Merry Widow" killer sought by the authorities.	94	Alfred Hitchcock	Teresa Wright	Joseph Cotten	Macdonald Carey	Henry Travers	59556	\N
714	https://m.media-amazon.com/images/M/MV5BOGQ4NDUyNWQtZTEyOC00OTMzLWFhYjAtNDNmYmQ2MWQyMTRmXkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_.jpg	Stagecoach	1939	Passed	96 min	Adventure, Drama, Western	7.8	A group of people traveling on a stagecoach find their journey complicated by the threat of Geronimo and learn something about each other in the process.	93	John Ford	John Wayne	Claire Trevor	Andy Devine	John Carradine	43621	\N
715	https://m.media-amazon.com/images/M/MV5BNjk3YzFjYTktOGY0ZS00Y2EwLTk2NTctYTI1Nzc2OWNiN2I4XkEyXkFqcGdeQXVyNzM0MTUwNTY@._V1_.jpg	The Lady Vanishes	1938	\N	96 min	Mystery, Thriller	7.8	While travelling in continental Europe, a rich young playgirl realizes that an elderly lady seems to have disappeared from the train.	98	Alfred Hitchcock	Margaret Lockwood	Michael Redgrave	Paul Lukas	May Whitty	47400	\N
716	https://m.media-amazon.com/images/M/MV5BMmVkOTRiYmItZjE4NS00MWNjLWE0ZmMtYzg5YzFjMjMyY2RkXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_.jpg	Bringing Up Baby	1938	Passed	102 min	Comedy, Family, Romance	7.8	While trying to secure a $1 million donation for his museum, a befuddled paleontologist is pursued by a flighty and often irritating heiress and her pet leopard, Baby.	91	Howard Hawks	Katharine Hepburn	Cary Grant	Charles Ruggles	Walter Catlett	55163	\N
717	https://m.media-amazon.com/images/M/MV5BOTUzMzAzMzEzNV5BMl5BanBnXkFtZTgwOTg1NTAwMjE@._V1_.jpg	Bride of Frankenstein	1935	\N	75 min	Drama, Horror, Sci-Fi	7.8	Mary Shelley reveals the main characters of her novel survived: Dr. Frankenstein, goaded by an even madder scientist, builds his monster a mate.	95	James Whale	Boris Karloff	Elsa Lanchester	Colin Clive	Valerie Hobson	43542	4360000
718	https://m.media-amazon.com/images/M/MV5BYmYxZGU2NWYtNzQxZS00NmEyLWIzN2YtMDk5MWM0ODc5ZTE4XkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_.jpg	Duck Soup	1933	\N	69 min	Comedy, Musical, War	7.8	Rufus T. Firefly is named president/dictator of bankrupt Freedonia and declares war on neighboring Sylvania over the love of wealthy Mrs. Teasdale.	93	Leo McCarey	Groucho Marx	Harpo Marx	Chico Marx	Zeppo Marx	55581	\N
719	https://m.media-amazon.com/images/M/MV5BYmMxZTU2ZDUtM2Y1MS00ZWFmLWJlN2UtNzI0OTJiOTYzMTk3XkEyXkFqcGdeQXVyMjUxODE0MDY@._V1_.jpg	Scarface: The Shame of the Nation	1932	PG	93 min	Action, Crime, Drama	7.8	An ambitious and nearly insane violent gangster climbs the ladder of success in the mob, but his weaknesses prove to be his downfall.	87	Howard Hawks	Richard Rosson	Paul Muni	Ann Dvorak	Karen Morley	25312	\N
720	https://m.media-amazon.com/images/M/MV5BMTQ0Njc1MjM0OF5BMl5BanBnXkFtZTgwNTY2NTUyMjE@._V1_.jpg	Frankenstein	1931	Passed	70 min	Drama, Horror, Sci-Fi	7.8	Dr. Frankenstein dares to tamper with life and death by creating a human monster out of lifeless body parts.	91	James Whale	Colin Clive	Mae Clarke	Boris Karloff	John Boles	65341	\N
721	https://m.media-amazon.com/images/M/MV5BMTU0OTc3ODk4Ml5BMl5BanBnXkFtZTgwMzM4NzI5NjM@._V1_.jpg	Roma	2018	R	135 min	Drama	7.7	A year in the life of a middle-class family's maid in Mexico City in the early 1970s.	96	Alfonso Cuarón	Yalitza Aparicio	Marina de Tavira	Diego Cortina Autrey	Carlos Peralta	140375	\N
722	https://m.media-amazon.com/images/M/MV5BNjRhYzk2NDAtYzA1Mi00MmNmLWE1ZjQtMDBhZmUyMTdjZjBiXkEyXkFqcGdeQXVyNjk1Njg5NTA@._V1_.jpg	God's Own Country	2017	\N	104 min	Drama, Romance	7.7	Spring. Yorkshire. Young farmer Johnny Saxby numbs his daily frustrations with binge drinking and casual sex, until the arrival of a Romanian migrant worker for lambing season ignites an intense relationship that sets Johnny on a new path.	85	Francis Lee	Josh O'Connor	Alec Secareanu	Gemma Jones	Ian Hart	25198	335609
723	https://m.media-amazon.com/images/M/MV5BNjk1Njk3YjctMmMyYS00Y2I4LThhMzktN2U0MTMyZTFlYWQ5XkEyXkFqcGdeQXVyODM2ODEzMDA@._V1_.jpg	Deadpool 2	2018	R	119 min	Action, Adventure, Comedy	7.7	Foul-mouthed mutant mercenary Wade Wilson (a.k.a. Deadpool), brings together a team of fellow mutant rogues to protect a young boy with supernatural abilities from the brutal, time-traveling cyborg Cable.	66	David Leitch	Ryan Reynolds	Josh Brolin	Morena Baccarin	Julian Dennison	478586	324591735
724	https://m.media-amazon.com/images/M/MV5BMTUyMjU1OTUwM15BMl5BanBnXkFtZTgwMDg1NDQ2MjI@._V1_.jpg	Wind River	2017	R	107 min	Crime, Drama, Mystery	7.7	A veteran hunter helps an FBI agent investigate the murder of a young woman on a Wyoming Native American reservation.	73	Taylor Sheridan	Kelsey Asbille	Jeremy Renner	Julia Jones	Teo Briones	205444	33800859
727	https://m.media-amazon.com/images/M/MV5BMjE0NDUyOTc2MV5BMl5BanBnXkFtZTgwODk2NzU3OTE@._V1_.jpg	En man som heter Ove	2015	PG-13	116 min	Comedy, Drama, Romance	7.7	Ove, an ill-tempered, isolated retiree who spends his days enforcing block association rules and visiting his wife's grave, has finally given up on life just as an unlikely friendship develops with his boisterous new neighbors.	70	Hannes Holm	Rolf Lassgård	Bahar Pars	Filip Berg	Ida Engvoll	47444	3358518
728	https://m.media-amazon.com/images/M/MV5BMjAwNDA5NzEwM15BMl5BanBnXkFtZTgwMTA1MDUyNDE@._V1_.jpg	What We Do in the Shadows	2014	R	86 min	Comedy, Horror	7.7	Viago, Deacon and Vladislav are vampires who are finding that modern life has them struggling with the mundane - like paying rent, keeping up with the chore wheel, trying to get into nightclubs and overcoming flatmate conflicts.	76	Jemaine Clement	Taika Waititi	Jemaine Clement	Taika Waititi	Cori Gonzalez-Macuer	157498	3333000
729	https://m.media-amazon.com/images/M/MV5BZTlmYTJmMWEtNDRhNy00ODc1LTg2OTMtMjk2ODJhNTA4YTE1XkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg	Omoide no Mânî	2014	U	103 min	Animation, Drama, Family	7.7	Due to 12 y.o. Anna's asthma, she's sent to stay with relatives of her guardian in the Japanese countryside. She likes to be alone, sketching. She befriends Marnie. Who is the mysterious, blonde Marnie.	72	James Simone	Hiromasa Yonebayashi	Sara Takatsuki	Kasumi Arimura	Nanako Matsushima	32798	765127
731	https://m.media-amazon.com/images/M/MV5BYTM3ZTllNzItNTNmOS00NzJiLTg1MWMtMjMxNDc0NmJhODU5XkEyXkFqcGdeQXVyODE5NzE3OTE@._V1_.jpg	Kingsman: The Secret Service	2014	A	129 min	Action, Adventure, Comedy	7.7	A spy organisation recruits a promising street kid into the agency's training program, while a global threat emerges from a twisted tech genius.	60	Matthew Vaughn	Colin Firth	Taron Egerton	Samuel L. Jackson	Michael Caine	590440	128261724
732	https://m.media-amazon.com/images/M/MV5BNTVkMTFiZWItOTFkOC00YTc3LWFhYzQtZTg3NzAxZjJlNTAyXkEyXkFqcGdeQXVyODE5NzE3OTE@._V1_.jpg	The Fault in Our Stars	2014	UA	126 min	Drama, Romance	7.7	Two teenage cancer patients begin a life-affirming journey to visit a reclusive author in Amsterdam.	69	Josh Boone	Shailene Woodley	Ansel Elgort	Nat Wolff	Laura Dern	344312	124872350
733	https://m.media-amazon.com/images/M/MV5BNTA1NzUzNjY4MV5BMl5BanBnXkFtZTgwNDU0MDI0NTE@._V1_.jpg	Me and Earl and the Dying Girl	2015	PG-13	105 min	Comedy, Drama	7.7	High schooler Greg, who spends most of his time making parodies of classic movies with his co-worker Earl, finds his outlook forever altered after befriending a classmate who has just been diagnosed with cancer.	74	Alfonso Gomez-Rejon	Thomas Mann	RJ Cyler	Olivia Cooke	Nick Offerman	123210	6743776
734	https://m.media-amazon.com/images/M/MV5BODAzNDMxMzAxOV5BMl5BanBnXkFtZTgwMDMxMjA4MjE@._V1_.jpg	Birdman or (The Unexpected Virtue of Ignorance)	2014	A	119 min	Comedy, Drama	7.7	A washed-up superhero actor attempts to revive his fading career by writing, directing, and starring in a Broadway production.	87	Alejandro G. Iñárritu	Michael Keaton	Zach Galifianakis	Edward Norton	Andrea Riseborough	580291	42340598
735	https://m.media-amazon.com/images/M/MV5BMTQ5NTg5ODk4OV5BMl5BanBnXkFtZTgwODc4MTMzMDE@._V1_.jpg	La vie d'Adèle	2013	A	180 min	Drama, Romance	7.7	Adèle's life is changed when she meets Emma, a young woman with blue hair, who will allow her to discover desire and to assert herself as a woman and as an adult. In front of others, Adèle grows, seeks herself, loses herself, and ultimately finds herself through love and loss.	89	Abdellatif Kechiche	Léa Seydoux	Adèle Exarchopoulos	Salim Kechiouche	Aurélien Recoing	138741	2199675
736	https://m.media-amazon.com/images/M/MV5BMTgwNTAwMjEzMF5BMl5BanBnXkFtZTcwNzMzODY4OA@@._V1_.jpg	Kai po che!	2013	U	130 min	Drama, Sport	7.7	Three friends growing up in India at the turn of the millennium set out to open a training academy to produce the country's next cricket stars.	40	Abhishek Kapoor	Amit Sadh	Sushant Singh Rajput	Rajkummar Rao	Amrita Puri	32628	1122527
737	https://m.media-amazon.com/images/M/MV5BMTQzMzg2Nzg2MF5BMl5BanBnXkFtZTgwNjUzNzIzMDE@._V1_.jpg	The Broken Circle Breakdown	2012	\N	111 min	Drama, Music, Romance	7.7	Elise and Didier fall in love at first sight, in spite of their differences. He talks, she listens. He's a romantic atheist, she's a religious realist. When their daughter becomes seriously ill, their love is put on trial.	70	Felix van Groeningen	Veerle Baetens	Johan Heldenbergh	Nell Cattrysse	Geert Van Rampelberg	39379	175058
738	https://m.media-amazon.com/images/M/MV5BMzA2NDkwODAwM15BMl5BanBnXkFtZTgwODk5MTgzMTE@._V1_.jpg	Captain America: The Winter Soldier	2014	UA	136 min	Action, Adventure, Sci-Fi	7.7	As Steve Rogers struggles to embrace his role in the modern world, he teams up with a fellow Avenger and S.H.I.E.L.D agent, Black Widow, to battle a new threat from history: an assassin known as the Winter Soldier.	70	Anthony Russo	Joe Russo	Chris Evans	Samuel L. Jackson	Scarlett Johansson	736182	259766572
739	https://m.media-amazon.com/images/M/MV5BOTc3NzAxMjg4M15BMl5BanBnXkFtZTcwMDc2ODQwNw@@._V1_.jpg	Rockstar	2011	UA	159 min	Drama, Music, Musical	7.7	Janardhan Jakhar chases his dreams of becoming a big Rock star, during which he falls in love with Heer.	\N	Imtiaz Ali	Ranbir Kapoor	Nargis Fakhri	Shammi Kapoor	Kumud Mishra	39501	985912
740	https://m.media-amazon.com/images/M/MV5BOGQzODdlMDktNzU4ZC00N2M3LWFkYTAtYTM1NTE0ZWI5YTg4XkEyXkFqcGdeQXVyMTA1NTM1NDI2._V1_.jpg	Nebraska	2013	UA	115 min	Adventure, Comedy, Drama	7.7	An aging, booze-addled father makes the trip from Montana to Nebraska with his estranged son in order to claim a million-dollar Mega Sweepstakes Marketing prize.	87	Alexander Payne	Bruce Dern	Will Forte	June Squibb	Bob Odenkirk	112298	17654912
745	https://m.media-amazon.com/images/M/MV5BMTg4MDk1ODExN15BMl5BanBnXkFtZTgwNzIyNjg3MDE@._V1_.jpg	The Lego Movie	2014	U	100 min	Animation, Action, Adventure	7.7	An ordinary LEGO construction worker, thought to be the prophesied as "special", is recruited to join a quest to stop an evil tyrant from gluing the LEGO universe into eternal stasis.	83	Christopher Miller	Phil Lord	Chris Pratt	Will Ferrell	Elizabeth Banks	323982	257760692
746	https://m.media-amazon.com/images/M/MV5BNjE5MzYwMzYxMF5BMl5BanBnXkFtZTcwOTk4MTk0OQ@@._V1_.jpg	Gravity	2013	UA	91 min	Drama, Sci-Fi, Thriller	7.7	Two astronauts work together to survive after an accident leaves them stranded in space.	96	Alfonso Cuarón	Sandra Bullock	George Clooney	Ed Harris	Orto Ignatiussen	769145	274092705
747	https://m.media-amazon.com/images/M/MV5BMTk2NzczOTgxNF5BMl5BanBnXkFtZTcwODQ5ODczOQ@@._V1_.jpg	Star Trek Into Darkness	2013	UA	132 min	Action, Adventure, Sci-Fi	7.7	After the crew of the Enterprise find an unstoppable force of terror from within their own organization, Captain Kirk leads a manhunt to a war-zone world to capture a one-man weapon of mass destruction.	72	J.J. Abrams	Chris Pine	Zachary Quinto	Zoe Saldana	Benedict Cumberbatch	463188	228778661
748	https://m.media-amazon.com/images/M/MV5BMTYwMzMzMDI0NF5BMl5BanBnXkFtZTgwNDQ3NjI3NjE@._V1_.jpg	Beasts of No Nation	2015	\N	137 min	Drama, War	7.7	A drama based on the experiences of Agu, a child soldier fighting in the civil war of an unnamed African country.	79	Cary Joji Fukunaga	Abraham Attah	Emmanuel Affadzi	Ricky Adelayitor	Andrew Adote	73964	83861
749	https://m.media-amazon.com/images/M/MV5BOGUyZDUxZjEtMmIzMC00MzlmLTg4MGItZWJmMzBhZjE0Mjc1XkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg	The Social Network	2010	UA	120 min	Biography, Drama	7.7	As Harvard student Mark Zuckerberg creates the social networking site that would become known as Facebook, he is sued by the twins who claimed he stole their idea, and by the co-founder who was later squeezed out of the business.	95	David Fincher	Jesse Eisenberg	Andrew Garfield	Justin Timberlake	Rooney Mara	624982	96962694
750	https://m.media-amazon.com/images/M/MV5BMTg5OTMxNzk4Nl5BMl5BanBnXkFtZTcwOTk1MjAwNQ@@._V1_.jpg	X: First Class	2011	UA	131 min	Action, Adventure, Sci-Fi	7.7	In the 1960s, superpowered humans Charles Xavier and Erik Lensherr work together to find others like them, but Erik's vengeful pursuit of an ambitious mutant who ruined his life causes a schism to divide them.	65	Matthew Vaughn	James McAvoy	Michael Fassbender	Jennifer Lawrence	Kevin Bacon	645512	146408305
751	https://m.media-amazon.com/images/M/MV5BNGQwZjg5YmYtY2VkNC00NzliLTljYTctNzI5NmU3MjE2ODQzXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_.jpg	The Hangover	2009	UA	100 min	Comedy	7.7	Three buddies wake up from a bachelor party in Las Vegas, with no memory of the previous night and the bachelor missing. They make their way around the city in order to find their friend before his wedding.	73	Todd Phillips	Zach Galifianakis	Bradley Cooper	Justin Bartha	Ed Helms	717559	277322503
752	https://m.media-amazon.com/images/M/MV5BMWZiNjE2OWItMTkwNy00ZWQzLWI0NTgtMWE0NjNiYTljN2Q1XkEyXkFqcGdeQXVyNzAwMjYxMzA@._V1_.jpg	Skyfall	2012	UA	143 min	Action, Adventure, Thriller	7.7	James Bond's loyalty to M is tested when her past comes back to haunt her. When MI6 comes under attack, 007 must track down and destroy the threat, no matter how personal the cost.	81	Sam Mendes	Daniel Craig	Javier Bardem	Naomie Harris	Judi Dench	630614	304360277
753	https://m.media-amazon.com/images/M/MV5BMTM2MTI5NzA3MF5BMl5BanBnXkFtZTcwODExNTc0OA@@._V1_.jpg	Silver Linings Playbook	2012	A	122 min	Comedy, Drama, Romance	7.7	After a stint in a mental institution, former teacher Pat Solitano moves back in with his parents and tries to reconcile with his ex-wife. Things get more challenging when Pat meets Tiffany, a mysterious girl with problems of her own.	81	David O. Russell	Bradley Cooper	Jennifer Lawrence	Robert De Niro	Jacki Weaver	661871	132092958
754	https://m.media-amazon.com/images/M/MV5BNzljNjY3MDYtYzc0Ni00YjU0LWIyNDUtNTE0ZDRiMGExMjZlXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg	Argo	2012	A	120 min	Biography, Drama, Thriller	7.7	Acting under the cover of a Hollywood producer scouting a location for a science fiction film, a CIA agent launches a dangerous operation to rescue six Americans in Tehran during the U.S. hostage crisis in Iran in 1979.	86	Ben Affleck	Ben Affleck	Bryan Cranston	John Goodman	Alan Arkin	572581	136025503
755	https://m.media-amazon.com/images/M/MV5BMTk5MjM4OTU1OV5BMl5BanBnXkFtZTcwODkzNDIzMw@@._V1_.jpg	(500) Days of Summer	2009	UA	95 min	Comedy, Drama, Romance	7.7	An offbeat romantic comedy about a woman who doesn't believe true love exists, and the young man who falls for her.	76	Marc Webb	Zooey Deschanel	Joseph Gordon-Levitt	Geoffrey Arend	Chloë Grace Moretz	472242	32391374
756	https://m.media-amazon.com/images/M/MV5BMTQ2OTE1Mjk0N15BMl5BanBnXkFtZTcwODE3MDAwNA@@._V1_.jpg	Harry Potter and the Deathly Hallows: Part 1	2010	A	146 min	Adventure, Family, Fantasy	7.7	As Harry, Ron, and Hermione race against time and evil to destroy the Horcruxes, they uncover the existence of the three most powerful objects in the wizarding world: the Deathly Hallows.	65	David Yates	Daniel Radcliffe	Emma Watson	Rupert Grint	Bill Nighy	479120	295983305
757	https://m.media-amazon.com/images/M/MV5BOTc3YmM3N2QtODZkMC00ZDE5LThjMTQtYTljN2Y1YTYwYWJkXkEyXkFqcGdeQXVyODEzNjM5OTQ@._V1_.jpg	Gake no ue no Ponyo	2008	U	101 min	Animation, Adventure, Comedy	7.7	A five-year-old boy develops a relationship with Ponyo, a young goldfish princess who longs to become a human after falling in love with him.	86	Hayao Miyazaki	Cate Blanchett	Matt Damon	Liam Neeson	Tomoko Yamaguchi	125317	15090400
762	https://m.media-amazon.com/images/M/MV5BMzA4ZGM1NjYtMjcxYS00MTdiLWJmNzEtMTUzODY0NDQ0YzUzXkEyXkFqcGdeQXVyMzYwMjQ3OTI@._V1_.jpg	Toki o kakeru shôjo	2006	U	98 min	Animation, Adventure, Comedy	7.7	A high-school girl named Makoto acquires the power to travel back in time, and decides to use it for her own personal benefits. Little does she know that she is affecting the lives of others just as much as she is her own.	\N	Mamoru Hosoda	Riisa Naka	Takuya Ishida	Mitsutaka Itakura	Ayami Kakiuchi	60368	\N
763	https://m.media-amazon.com/images/M/MV5BZDNlNjEzMzQtZDM0MS00YzhiLTk0MGUtYTdmNDZiZGVjNTk0L2ltYWdlXkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_.jpg	Death Note: Desu nôto	2006	\N	126 min	Crime, Drama, Fantasy	7.7	A battle between the world's two greatest minds begins when Light Yagami finds the Death Note, a notebook with the power to kill, and decides to rid the world of criminals.	\N	Shûsuke Kaneko	Tatsuya Fujiwara	Ken'ichi Matsuyama	Asaka Seto	Yû Kashii	28630	\N
764	https://m.media-amazon.com/images/M/MV5BMmE3OWZhZDYtOTBjMi00NDIwLTg1NWMtMjg0NjJmZWM4MjliL2ltYWdlXkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_.jpg	This Is England	2006	\N	101 min	Crime, Drama	7.7	A young boy becomes friends with a gang of skinheads. Friends soon become like family, and relationships will be pushed to the very limit.	86	Shane Meadows	Thomas Turgoose	Stephen Graham	Jo Hartley	Andrew Shim	115576	327919
765	https://m.media-amazon.com/images/M/MV5BMTUxNzc0OTIxMV5BMl5BanBnXkFtZTgwNDI3NzU2NDE@._V1_.jpg	Ex Machina	2014	UA	108 min	Drama, Sci-Fi, Thriller	7.7	A young programmer is selected to participate in a ground-breaking experiment in synthetic intelligence by evaluating the human qualities of a highly advanced humanoid A.I.	78	Alex Garland	Alicia Vikander	Domhnall Gleeson	Oscar Isaac	Sonoya Mizuno	474141	25442958
766	https://m.media-amazon.com/images/M/MV5BMjIxODEyOTQ5Ml5BMl5BanBnXkFtZTcwNjE3NzI5Mw@@._V1_.jpg	Efter brylluppet	2006	R	120 min	Drama	7.7	A manager of an orphanage in India is sent to Copenhagen, Denmark, where he discovers a life-altering family secret.	78	Susanne Bier	Mads Mikkelsen	Sidse Babett Knudsen	Rolf Lassgård	Neeral Mulchandani	32001	412544
767	https://m.media-amazon.com/images/M/MV5BMjM1NTkxNjkzMl5BMl5BanBnXkFtZTgwNDgwMDAxMzE@._V1_.jpg	The Last King of Scotland	2006	R	123 min	Biography, Drama, History	7.7	Based on the events of the brutal Ugandan dictator Idi Amin's regime as seen by his personal physician during the 1970s.	74	Kevin Macdonald	James McAvoy	Forest Whitaker	Gillian Anderson	Kerry Washington	175355	17605861
768	https://m.media-amazon.com/images/M/MV5BN2UwNDc5NmEtNjVjZS00OTI5LWE5YjctMWM3ZjBiZGYwMGI2XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_.jpg	Zodiac	2007	UA	157 min	Crime, Drama, Mystery	7.7	In the late 1960s/early 1970s, a San Francisco cartoonist becomes an amateur detective obsessed with tracking down the Zodiac Killer, an unidentified individual who terrorizes Northern California with a killing spree.	78	David Fincher	Jake Gyllenhaal	Robert Downey Jr.	Mark Ruffalo	Anthony Edwards	466080	33080084
769	https://m.media-amazon.com/images/M/MV5BZjczMWI1YWMtYTZjOS00ZDc5LWE2MWItMTY3ZGUxNzFkNjJmL2ltYWdlXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_.jpg	Lucky Number Slevin	2006	R	110 min	Action, Crime, Drama	7.7	A case of mistaken identity lands Slevin into the middle of a war being plotted by two of the city's most rival crime bosses. Under constant surveillance by Detective Brikowski and assassin Goodkat, he must get them before they get him.	53	Paul McGuigan	Josh Hartnett	Ben Kingsley	Morgan Freeman	Lucy Liu	299524	22494487
770	https://m.media-amazon.com/images/M/MV5BMTQyODczNjU3NF5BMl5BanBnXkFtZTcwNjQ0NDIzMQ@@._V1_.jpg	Joyeux Noël	2005	PG-13	116 min	Drama, History, Music	7.7	In December 1914, an unofficial Christmas truce on the Western Front allows soldiers from opposing sides of the First World War to gain insight into each other's way of life.	70	Christian Carion	Diane Kruger	Benno Fürmann	Guillaume Canet	Natalie Dessay	28003	1054361
771	https://m.media-amazon.com/images/M/MV5BNTEzOTYwMTcxN15BMl5BanBnXkFtZTcwNTgyNjI1MQ@@._V1_.jpg	Control	2007	R	122 min	Biography, Drama, Music	7.7	A profile of Ian Curtis, the enigmatic singer of Joy Division whose personal, professional, and romantic troubles led him to commit suicide at the age of 23.	78	Anton Corbijn	Sam Riley	Samantha Morton	Craig Parkinson	Alexandra Maria Lara	61609	871577
772	https://m.media-amazon.com/images/M/MV5BMTAxNDYxMjg0MjNeQTJeQWpwZ15BbWU3MDcyNTk2OTM@._V1_.jpg	Tangled	2010	U	100 min	Animation, Adventure, Comedy	7.7	The magically long-haired Rapunzel has spent her entire life in a tower, but now that a runaway thief has stumbled upon her, she is about to discover the world for the first time, and who she really is.	71	Nathan Greno	Byron Howard	Mandy Moore	Zachary Levi	Donna Murphy	405922	200821936
773	https://m.media-amazon.com/images/M/MV5BODFlNTI0ZWQtOTcxNC00OTc0LTkwZDUtMmNkM2I1ZWFlYzZkXkEyXkFqcGdeQXVyNTIzOTk5ODM@._V1_.jpg	Zwartboek	2006	R	145 min	Drama, Thriller, War	7.7	In the Nazi-occupied Netherlands during World War II, a Jewish singer infiltrates the regional Gestapo headquarters for the Dutch resistance.	71	Paul Verhoeven	Carice van Houten	Sebastian Koch	Thom Hoffman	Halina Reijn	72643	4398392
774	https://m.media-amazon.com/images/M/MV5BMTY5NTAzNTc1NF5BMl5BanBnXkFtZTYwNDY4MDc3._V1_.jpg	Brokeback Mountain	2005	A	134 min	Drama, Romance	7.7	The story of a forbidden and secretive relationship between two cowboys, and their lives over the years.	87	Ang Lee	Jake Gyllenhaal	Heath Ledger	Michelle Williams	Randy Quaid	323103	83043761
778	https://m.media-amazon.com/images/M/MV5BYTIyMDFmMmItMWQzYy00MjBiLTg2M2UtM2JiNDRhOWE4NjBhXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_.jpg	The Bourne Supremacy	2004	A	108 min	Action, Mystery, Thriller	7.7	When Jason Bourne is framed for a CIA operation gone awry, he is forced to resume his former life as a trained assassin to survive.	73	Paul Greengrass	Matt Damon	Franka Potente	Joan Allen	Brian Cox	434841	176241941
779	https://m.media-amazon.com/images/M/MV5BNjk1NzBlY2YtNjJmNi00YTVmLWI2OTgtNDUxNDE5NjUzZmE0XkEyXkFqcGdeQXVyNTc1NTQxODI@._V1_.jpg	The Machinist	2004	R	101 min	Drama, Thriller	7.7	An industrial worker who hasn't slept in a year begins to doubt his own sanity.	61	Brad Anderson	Christian Bale	Jennifer Jason Leigh	Aitana Sánchez-Gijón	John Sharian	358432	1082715
780	https://m.media-amazon.com/images/M/MV5BMTQxNDQwNjQzOV5BMl5BanBnXkFtZTcwNTQxNDYyMQ@@._V1_.jpg	Ray	2004	A	152 min	Biography, Drama, Music	7.7	The story of the life and career of the legendary rhythm and blues musician Ray Charles, from his humble beginnings in the South, where he went blind at age seven, to his meteoric rise to stardom during the 1950s and 1960s.	73	Taylor Hackford	Jamie Foxx	Regina King	Kerry Washington	Clifton Powell	138356	75331600
781	https://m.media-amazon.com/images/M/MV5BMTI2NDI5ODk4N15BMl5BanBnXkFtZTYwMTI3NTE3._V1_.jpg	Lost in Translation	2003	UA	102 min	Comedy, Drama	7.7	A faded movie star and a neglected young woman form an unlikely bond after crossing paths in Tokyo.	89	Sofia Coppola	Bill Murray	Scarlett Johansson	Giovanni Ribisi	Anna Faris	415074	44585453
782	https://m.media-amazon.com/images/M/MV5BMTI1NDMyMjExOF5BMl5BanBnXkFtZTcwOTc4MjQzMQ@@._V1_.jpg	Harry Potter and the Goblet of Fire	2005	UA	157 min	Adventure, Family, Fantasy	7.7	Harry Potter finds himself competing in a hazardous tournament between rival schools of magic, but he is distracted by recurring nightmares.	81	Mike Newell	Daniel Radcliffe	Emma Watson	Rupert Grint	Eric Sykes	548619	290013036
783	https://m.media-amazon.com/images/M/MV5BODFlMmEwMDgtYjhmZi00ZTE5LTk2NWQtMWE1Y2M0NjkzOGYxXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_.jpg	Man on Fire	2004	UA	146 min	Action, Crime, Drama	7.7	In Mexico City, a former CIA operative swears vengeance on those who committed an unspeakable act against the family he was hired to protect.	47	Tony Scott	Denzel Washington	Christopher Walken	Dakota Fanning	Radha Mitchell	329592	77911774
784	https://m.media-amazon.com/images/M/MV5BMzQxNjM5NzkxNV5BMl5BanBnXkFtZTcwMzg5NDMwMg@@._V1_.jpg	Coraline	2009	U	100 min	Animation, Drama, Family	7.7	An adventurous 11-year-old girl finds another world that is a strangely idealized version of her frustrating home, but it has sinister secrets.	80	Henry Selick	Dakota Fanning	Teri Hatcher	John Hodgman	Jennifer Saunders	197761	75286229
785	https://m.media-amazon.com/images/M/MV5BMzkyNzQ1Mzc0NV5BMl5BanBnXkFtZTcwODg3MzUzMw@@._V1_.jpg	The Last Samurai	2003	UA	154 min	Action, Drama	7.7	An American military advisor embraces the Samurai culture he was hired to destroy after he is captured in battle.	55	Edward Zwick	Tom Cruise	Ken Watanabe	Billy Connolly	William Atherton	400049	111110575
786	https://m.media-amazon.com/images/M/MV5BMTI2NzU1NTc1NF5BMl5BanBnXkFtZTcwOTQ1MjAwMQ@@._V1_.jpg	The Magdalene Sisters	2002	R	114 min	Drama	7.7	Three young Irish women struggle to maintain their spirits while they endure dehumanizing abuse as inmates of a Magdalene Sisters Asylum.	83	Peter Mullan	Eileen Walsh	Dorothy Duffy	Nora-Jane Noone	Anne-Marie Duff	25938	4890878
787	https://m.media-amazon.com/images/M/MV5BMTI0MTg4NzI3M15BMl5BanBnXkFtZTcwOTE0MTUyMQ@@._V1_.jpg	Good Bye Lenin!	2003	R	121 min	Comedy, Drama, Romance	7.7	In 1990, to protect his fragile mother from a fatal shock after a long coma, a young man must keep her from learning that her beloved nation of East Germany as she knew it has disappeared.	68	Wolfgang Becker	Daniel Brühl	Katrin Saß	Chulpan Khamatova	Florian Lukas	137981	4064200
788	https://m.media-amazon.com/images/M/MV5BOGY1YmUzN2MtNDQ3NC00Nzc4LWI5M2EtYzUwMGQ4NWM4NjE1XkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg	In America	2002	PG-13	105 min	Drama	7.7	A family of Irish immigrants adjust to life on the mean streets of Hell's Kitchen while also grieving the death of a child.	76	Jim Sheridan	Paddy Considine	Samantha Morton	Djimon Hounsou	Sarah Bolger	40403	15539266
789	https://m.media-amazon.com/images/M/MV5BYzEyNzc0NjctZjJiZC00MWI1LWJlOTMtYWZkZDAzNzQ0ZDNkXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg	I Am Sam	2001	PG-13	132 min	Drama	7.7	A mentally handicapped man fights for custody of his 7-year-old daughter and in the process teaches his cold-hearted lawyer the value of love and family.	28	Jessie Nelson	Sean Penn	Michelle Pfeiffer	Dakota Fanning	Dianne Wiest	142863	40311852
790	https://m.media-amazon.com/images/M/MV5BZjIwZWU0ZDItNzBlNS00MDIwLWFlZjctZTJjODdjZWYxNzczL2ltYWdlXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg	Adaptation.	2002	R	115 min	Comedy, Drama	7.7	A lovelorn screenwriter becomes desperate as he tries and fails to adapt 'The Orchid Thief' by Susan Orlean for the screen.	83	Spike Jonze	Nicolas Cage	Meryl Streep	Chris Cooper	Tilda Swinton	178565	22245861
791	https://m.media-amazon.com/images/M/MV5BYWMwMzQxZjQtODM1YS00YmFiLTk1YjQtNzNiYWY1MDE4NTdiXkEyXkFqcGdeQXVyNDYyMDk5MTU@._V1_.jpg	Black Hawk Down	2001	A	144 min	Drama, History, War	7.7	160 elite U.S. soldiers drop into Somalia to capture two top lieutenants of a renegade warlord and find themselves in a desperate battle with a large force of heavily-armed Somalis.	74	Ridley Scott	Josh Hartnett	Ewan McGregor	Tom Sizemore	Eric Bana	364254	108638745
795	https://m.media-amazon.com/images/M/MV5BZGY5NWUyNDUtZWJhZi00ZjMxLWFmMjMtYmJhZjVkZGZhNWQ4XkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg	Hedwig and the Angry Inch	2001	R	95 min	Comedy, Drama, Music	7.7	A gender-queer punk-rock singer from East Berlin tours the U.S. with her band as she tells her life story and follows the former lover/band-mate who stole her songs.	85	John Cameron Mitchell	John Cameron Mitchell	Miriam Shor	Stephen Trask	Theodore Liscinski	31957	3029081
797	https://m.media-amazon.com/images/M/MV5BNTIyNThlMjMtMzUyMi00YmEyLTljMmYtMWRhN2Q3ZTllZjA4XkEyXkFqcGdeQXVyMzM4MjM0Nzg@._V1_.jpg	Vampire Hunter D: Bloodlust	2000	U	103 min	Animation, Action, Fantasy	7.7	When a girl is abducted by a vampire, a legendary bounty hunter is hired to bring her back.	62	Yoshiaki Kawajiri	Andrew Philpot	John Rafter Lee	Pamela Adlon	Wendee Lee	29210	151086
798	https://m.media-amazon.com/images/M/MV5BMjZkOTdmMWItOTkyNy00MDdjLTlhNTQtYzU3MzdhZjA0ZDEyXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg	O Brother, Where Art Thou?	2000	U	107 min	Adventure, Comedy, Crime	7.7	In the deep south during the 1930s, three escaped convicts search for hidden treasure while a relentless lawman pursues them.	69	Joel Coen	Ethan Coen	George Clooney	John Turturro	Tim Blake Nelson	286742	45512588
799	https://m.media-amazon.com/images/M/MV5BZDYwYzlhOTAtNDAwMC00ZTBhLWI4M2QtMTA1NmJhYTdiNTkxXkEyXkFqcGdeQXVyNTM0NTU5Mg@@._V1_.jpg	Interstate 60: Episodes of the Road	2002	R	116 min	Adventure, Comedy, Drama	7.7	Neal Oliver, a very confused young man and an artist, takes a journey of a lifetime on a highway I60 that doesn't exist on any of the maps, going to the places he never even heard of, searching for an answer and his dreamgirl.	\N	Bob Gale	James Marsden	Gary Oldman	Kurt Russell	Matthew Edison	29999	\N
800	https://m.media-amazon.com/images/M/MV5BOGE0ZWI0YzAtY2NkZi00YjkyLWIzYWEtNTJmMzJjODllNjdjXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg	South Park: Bigger, Longer & Uncut	1999	A	81 min	Animation, Comedy, Fantasy	7.7	When Stan Marsh and his friends go see an R-rated movie, they start cursing and their parents think that Canada is to blame.	73	Trey Parker	Trey Parker	Matt Stone	Mary Kay Bergman	Isaac Hayes	192112	52037603
801	https://m.media-amazon.com/images/M/MV5BOTA5MzQ3MzI1NV5BMl5BanBnXkFtZTgwNTcxNTYxMTE@._V1_.jpg	Office Space	1999	R	89 min	Comedy	7.7	Three company workers who hate their jobs decide to rebel against their greedy boss.	68	Mike Judge	Ron Livingston	Jennifer Aniston	David Herman	Ajay Naidu	241575	10824921
802	https://m.media-amazon.com/images/M/MV5BM2FlNzE0ZmUtMmVkZS00MWQ3LWE4OWQtYjQwZjdhNzRmNWE2XkEyXkFqcGdeQXVyMTAwMzUyOTc@._V1_.jpg	Happiness	1998	\N	134 min	Comedy, Drama	7.7	The lives of several individuals intertwine as they go about their lives in their own unique ways, engaging in acts society as a whole might find disturbing in a desperate search for human connection.	81	Todd Solondz	Jane Adams	Jon Lovitz	Philip Seymour Hoffman	Dylan Baker	66408	2807390
803	https://m.media-amazon.com/images/M/MV5BMDZkMTUxYWEtMDY5NS00ZTA5LTg3MTItNTlkZWE1YWRjYjMwL2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg	Training Day	2001	A	122 min	Crime, Drama, Thriller	7.7	A rookie cop spends his first day as a Los Angeles narcotics officer with a rogue detective who isn't what he appears to be.	69	Antoine Fuqua	Denzel Washington	Ethan Hawke	Scott Glenn	Tom Berenger	390247	76631907
804	https://m.media-amazon.com/images/M/MV5BMjE2OTc3OTk2M15BMl5BanBnXkFtZTgwMjg2NjIyMDE@._V1_.jpg	Rushmore	1998	UA	93 min	Comedy, Drama, Romance	7.7	The extracurricular king of Rushmore Preparatory School is put on academic probation.	86	Wes Anderson	Jason Schwartzman	Bill Murray	Olivia Williams	Seymour Cassel	169229	17105219
805	https://m.media-amazon.com/images/M/MV5BYjA2MTA1MjUtYmUyNy00NGZiLTk2NTAtMDk3N2M3YmMwOTc1XkEyXkFqcGdeQXVyMjA0MzYwMDY@._V1_.jpg	Abre los ojos	1997	U	119 min	Drama, Mystery, Sci-Fi	7.7	A very handsome man finds the love of his life, but he suffers an accident and needs to have his face rebuilt by surgery after it is severely disfigured.	\N	Alejandro Amenábar	Eduardo Noriega	Penélope Cruz	Chete Lera	Fele Martínez	64082	368234
806	https://m.media-amazon.com/images/M/MV5BYmUxY2MyOTQtYjRlMi00ZWEwLTkzODctZDMxNDcyNTFhYjNjXkEyXkFqcGdeQXVyNDk3NzU2MTQ@._V1_.jpg	Being John Malkovich	1999	R	113 min	Comedy, Drama, Fantasy	7.7	A puppeteer discovers a portal that leads literally into the head of movie star John Malkovich.	90	Spike Jonze	John Cusack	Cameron Diaz	Catherine Keener	John Malkovich	312542	22858926
807	https://m.media-amazon.com/images/M/MV5BNWMxZTgzMWEtMTU0Zi00NDc5LWFkZjctMzUxNDIyNzZiMmNjXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg	As Good as It Gets	1997	A	139 min	Comedy, Drama, Romance	7.7	A single mother and waitress, a misanthropic author, and a gay artist form an unlikely friendship after the artist is assaulted in a robbery.	67	James L. Brooks	Jack Nicholson	Helen Hunt	Greg Kinnear	Cuba Gooding Jr.	275755	148478011
808	https://m.media-amazon.com/images/M/MV5BZWFjYmZmZGQtYzg4YS00ZGE5LTgwYzAtZmQwZjQ2NDliMGVmXkEyXkFqcGdeQXVyNTUyMzE4Mzg@._V1_.jpg	The Fifth Element	1997	UA	126 min	Action, Adventure, Sci-Fi	7.7	In the colorful future, a cab driver unwittingly becomes the central figure in the search for a legendary cosmic weapon to keep Evil and Mr. Zorg at bay.	52	Luc Besson	Bruce Willis	Milla Jovovich	Gary Oldman	Ian Holm	434125	63540020
812	https://m.media-amazon.com/images/M/MV5BZTM2NWI2OGYtYWNhMi00ZTlmLTg2ZTAtMmI5NWRjODA5YTE1XkEyXkFqcGdeQXVyODE2OTYwNTg@._V1_.jpg	Primal Fear	1996	A	129 min	Crime, Drama, Mystery	7.7	An altar boy is accused of murdering a priest, and the truth is buried several layers deep.	47	Gregory Hoblit	Richard Gere	Laura Linney	Edward Norton	John Mahoney	189716	56116183
813	https://m.media-amazon.com/images/M/MV5BM2U5OWM5NWQtZDYwZS00NmI3LTk4NDktNzcwZjYzNmEzYWU1XkEyXkFqcGdeQXVyNjMwMjk0MTQ@._V1_.jpg	Hamlet	1996	PG-13	242 min	Drama	7.7	Hamlet, Prince of Denmark, returns home to find his father murdered and his mother remarrying the murderer, his uncle. Meanwhile, war is brewing.	\N	Kenneth Branagh	Kenneth Branagh	Julie Christie	Derek Jacobi	Kate Winslet	35991	4414535
814	https://m.media-amazon.com/images/M/MV5BZDQzMGE5ODYtZDdiNC00MzZjLTg2NjAtZTk0ODlkYmY4MTQzXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg	A Little Princess	1995	U	97 min	Drama, Family, Fantasy	7.7	A young girl is relegated to servitude at a boarding school when her father goes missing and is presumed dead.	83	Alfonso Cuarón	Liesel Matthews	Eleanor Bron	Liam Cunningham	Rusty Schwimmer	32236	10019307
815	https://m.media-amazon.com/images/M/MV5BZjM4NWRhYTQtYTJlNC00ZmMyLWEzNTAtZDA2MjJjYTQ5ZTVmXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg	Do lok tin si	1995	UA	99 min	Comedy, Crime, Drama	7.7	This Hong Kong-set crime drama follows the lives of a hitman, hoping to get out of the business, and his elusive female partner.	71	Kar-Wai Wong	Leon Lai	Michelle Reis	Takeshi Kaneshiro	Charlie Yeung	26429	\N
816	https://m.media-amazon.com/images/M/MV5BZmVhNWIzOTMtYmVlZC00ZDVmLWIyODEtODEzOTAxYjAwMzVlXkEyXkFqcGdeQXVyMzIwNDY4NDI@._V1_.jpg	Il postino	1994	U	108 min	Biography, Comedy, Drama	7.7	A simple Italian postman learns to love poetry while delivering mail to a famous poet, and then uses this to woo local beauty Beatrice.	81	Michael Radford	Massimo Troisi	Massimo Troisi	Philippe Noiret	Maria Grazia Cucinotta	33600	21848932
817	https://m.media-amazon.com/images/M/MV5BNzE1Njk0NmItNDhlMC00ZmFlLWI4ZTUtYTY4ZjgzNjkyMTU1XkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg	Clerks	1994	R	92 min	Comedy	7.7	A day in the lives of two convenience clerks named Dante and Randal as they annoy customers, discuss movies, and play hockey on the store roof.	70	Kevin Smith	Brian O'Halloran	Jeff Anderson	Marilyn Ghigliotti	Lisa Spoonauer	211450	3151130
818	https://m.media-amazon.com/images/M/MV5BZWY0ODc2NDktYmYxNS00MGZiLTk5YjktZjgwZWFhNDQ0MzNhXkEyXkFqcGdeQXVyNTI4MjkwNjA@._V1_.jpg	Short Cuts	1993	R	188 min	Comedy, Drama	7.7	The day-to-day lives of several suburban Los Angeles residents.	79	Robert Altman	Andie MacDowell	Julianne Moore	Tim Robbins	Bruce Davison	42275	6110979
819	https://m.media-amazon.com/images/M/MV5BNDE0MWE1ZTMtOWFkMS00YjdiLTkwZTItMDljYjY3MjM0NTk5XkEyXkFqcGdeQXVyNDYyMDk5MTU@._V1_.jpg	Philadelphia	1993	UA	125 min	Drama	7.7	When a man with HIV is fired by his law firm because of his condition, he hires a homophobic small time lawyer as the only willing advocate for a wrongful dismissal suit.	66	Jonathan Demme	Tom Hanks	Denzel Washington	Roberta Maxwell	Buzz Kilman	224169	77324422
820	https://m.media-amazon.com/images/M/MV5BN2Y0NWRkNWItZWEwNi00MDNlLWJmZDYtNTkwYzI5Nzg4MjVjXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg	The Muppet Christmas Carol	1992	G	85 min	Comedy, Drama, Family	7.7	The Muppet characters tell their version of the classic tale of an old and bitter miser's redemption on Christmas Eve.	64	Brian Henson	Michael Caine	Kermit the Frog	Dave Goelz	Miss Piggy	50298	27281507
821	https://m.media-amazon.com/images/M/MV5BZDkzOTFmMTUtMmI2OS00MDE4LTg5YTUtODMwNDMzNmI5OGYwL2ltYWdlXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg	Malcolm X	1992	U	202 min	Biography, Drama, History	7.7	Biographical epic of the controversial and influential Black Nationalist leader, from his early life and career as a small-time gangster, to his ministry as a member of the Nation of Islam.	73	Spike Lee	Denzel Washington	Angela Bassett	Delroy Lindo	Spike Lee	85819	48169908
822	https://m.media-amazon.com/images/M/MV5BZDNiYmRkNDYtOWU1NC00NmMxLWFkNmUtMGI5NTJjOTJmYTM5XkEyXkFqcGdeQXVyNzQ1ODk3MTQ@._V1_.jpg	The Last of the Mohicans	1992	UA	112 min	Action, Adventure, Drama	7.7	Three trappers protect the daughters of a British Colonel in the midst of the French and Indian War.	76	Michael Mann	Daniel Day-Lewis	Madeleine Stowe	Russell Means	Eric Schweig	150409	75505856
823	https://m.media-amazon.com/images/M/MV5BZjVkYmFkZWQtZmNjYy00NmFhLTliMWYtNThlOTUxNjg5ODdhXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg	Kurenai no buta	1992	U	94 min	Animation, Adventure, Comedy	7.7	In 1930s Italy, a veteran World War I pilot is cursed to look like an anthropomorphic pig.	83	Hayao Miyazaki	Shûichirô Moriyama	Tokiko Katô	Bunshi Katsura Vi	Tsunehiko Kamijô	77798	\N
824	https://m.media-amazon.com/images/M/MV5BNTYzN2MxODMtMDBhOC00Y2M0LTgzMTItMzQ4NDIyYWIwMDEzL2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyNTc1NTQxODI@._V1_.jpg	Glengarry Glen Ross	1992	R	100 min	Crime, Drama, Mystery	7.7	An examination of the machinations behind the scenes at a real estate office.	82	James Foley	Al Pacino	Jack Lemmon	Alec Baldwin	Alan Arkin	95826	10725228
825	https://m.media-amazon.com/images/M/MV5BMmRlZDQ1MmUtMzE2Yi00YTkxLTk1MGMtYmIyYWQwODcxYzRlXkEyXkFqcGdeQXVyNTI4MjkwNjA@._V1_.jpg	A Few Good Men	1992	U	138 min	Drama, Thriller	7.7	Military lawyer Lieutenant Daniel Kaffee defends Marines accused of murder. They contend they were acting under orders.	62	Rob Reiner	Tom Cruise	Jack Nicholson	Demi Moore	Kevin Bacon	235388	141340178
829	https://m.media-amazon.com/images/M/MV5BMDhiOTM2OTctODk3Ny00NWI4LThhZDgtNGQ4NjRiYjFkZGQzXkEyXkFqcGdeQXVyMTA0MjU0Ng@@._V1_.jpg	Who Framed Roger Rabbit	1988	U	104 min	Animation, Adventure, Comedy	7.7	A toon-hating detective is a cartoon rabbit's only hope to prove his innocence when he is accused of murder.	83	Robert Zemeckis	Bob Hoskins	Christopher Lloyd	Joanna Cassidy	Charles Fleischer	182009	156452370
830	https://m.media-amazon.com/images/M/MV5BNDcwMTYzMjctN2M2Yy00ZDcxLWJhNTEtMGNhYzEwYzc2NDE4XkEyXkFqcGdeQXVyNTI4MjkwNjA@._V1_.jpg	Spoorloos	1988	\N	107 min	Mystery, Thriller	7.7	Rex and Saskia, a young couple in love, are on vacation. They stop at a busy service station and Saskia is abducted. After three years and no sign of Saskia, Rex begins receiving letters from the abductor.	\N	George Sluizer	Bernard-Pierre Donnadieu	Gene Bervoets	Johanna ter Steege	Gwen Eckhaus	33982	\N
831	https://m.media-amazon.com/images/M/MV5BYjE3ODY5OWEtZmE0Mi00MjUxLTg5MmUtZmFkMzM1N2VjMmU5XkEyXkFqcGdeQXVyNTI4MjkwNjA@._V1_.jpg	Withnail & I	1987	R	107 min	Comedy, Drama	7.7	In 1969, two substance-abusing, unemployed actors retreat to the countryside for a holiday that proves disastrous.	84	Bruce Robinson	Richard E. Grant	Paul McGann	Richard Griffiths	Ralph Brown	40396	1544889
832	https://m.media-amazon.com/images/M/MV5BZTk0NDU4YmItOTk0ZS00ODc2LTkwNGItNWI5MDJkNTJiYWMxXkEyXkFqcGdeQXVyNjUwNzk3NDc@._V1_.jpg	The Last Emperor	1987	U	163 min	Biography, Drama, History	7.7	The story of the final Emperor of China.	76	Bernardo Bertolucci	John Lone	Joan Chen	Peter O'Toole	Ruocheng Ying	94326	43984230
833	https://m.media-amazon.com/images/M/MV5BMmQwNzczZDItNmI0OS00MjRmLTliYWItZWIyMjk1MTU4ZTQ4L2ltYWdlXkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_.jpg	Empire of the Sun	1987	U	153 min	Action, Drama, History	7.7	A young English boy struggles to survive under Japanese occupation during World War II.	62	Steven Spielberg	Christian Bale	John Malkovich	Miranda Richardson	Nigel Havers	115677	22238696
834	https://m.media-amazon.com/images/M/MV5BZjEyZTdhNDMtMWFkMS00ZmRjLWEyNmEtZDU3MWFkNDEzMDYwXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_.jpg	Der Name der Rose	1986	R	130 min	Crime, Drama, Mystery	7.7	An intellectually nonconformist friar investigates a series of mysterious deaths in an isolated abbey.	54	Jean-Jacques Annaud	Sean Connery	Christian Slater	Helmut Qualtinger	Elya Baskin	102031	7153487
835	https://m.media-amazon.com/images/M/MV5BMzExOTczNTgtN2Q1Yy00MmI1LWE0NjgtNmIwMzdmZGNlODU1XkEyXkFqcGdeQXVyNDkzNTM2ODg@._V1_.jpg	Blue Velvet	1986	A	120 min	Drama, Mystery, Thriller	7.7	The discovery of a severed human ear found in a field leads a young man on an investigation related to a beautiful, mysterious nightclub singer and a group of psychopathic criminals who have kidnapped her child.	76	David Lynch	Isabella Rossellini	Kyle MacLachlan	Dennis Hopper	Laura Dern	181285	8551228
836	https://m.media-amazon.com/images/M/MV5BY2E1YWRlNzAtYzAwYy00MDg5LTlmYTUtYjdlZDI0NzFkNjNlL2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyNjQ2MjQ5NzM@._V1_.jpg	The Purple Rose of Cairo	1985	U	82 min	Comedy, Fantasy, Romance	7.7	In New Jersey in 1935, a movie character walks off the screen and into the real world.	75	Woody Allen	Mia Farrow	Jeff Daniels	Danny Aiello	Irving Metzman	47102	10631333
837	https://m.media-amazon.com/images/M/MV5BMTUxMjEzMzI2MV5BMl5BanBnXkFtZTgwNTU3ODAxMDE@._V1_.jpg	After Hours	1985	UA	97 min	Comedy, Crime, Drama	7.7	An ordinary word processor has the worst night of his life after he agrees to visit a girl in Soho who he met that evening at a coffee shop.	90	Martin Scorsese	Griffin Dunne	Rosanna Arquette	Verna Bloom	Tommy Chong	59635	10600000
838	https://m.media-amazon.com/images/M/MV5BMGUwMjM0MTEtOGY2NS00MjJmLWEyMDAtYmNkMWJjOWJlNGM0XkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg	Zelig	1983	PG	79 min	Comedy	7.7	"Documentary" about a man who can look and act like whoever he's around, and meets various famous people.	\N	Woody Allen	Woody Allen	Mia Farrow	Patrick Horgan	John Buckwalter	39881	11798616
839	https://m.media-amazon.com/images/M/MV5BMTU5MzMwMzAzM15BMl5BanBnXkFtZTcwNjYyMjA0Mg@@._V1_.jpg	The Verdict	1982	U	129 min	Drama	7.7	A lawyer sees the chance to salvage his career and self-respect by taking a medical malpractice case to trial rather than settling.	77	Sidney Lumet	Paul Newman	Charlotte Rampling	Jack Warden	James Mason	36096	54000000
840	https://m.media-amazon.com/images/M/MV5BMzcyYWE5YmQtNDE1Yi00ZjlmLWFlZTAtMzRjODBiYjM3OTA3XkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg	Star Trek II: The Wrath of Khan	1982	U	113 min	Action, Adventure, Sci-Fi	7.7	With the assistance of the Enterprise crew, Admiral Kirk must stop an old nemesis, Khan Noonien Singh, from using the life-generating Genesis Device as the ultimate weapon.	67	Nicholas Meyer	William Shatner	Leonard Nimoy	DeForest Kelley	James Doohan	112704	78912963
841	https://m.media-amazon.com/images/M/MV5BODBmOWU2YWMtZGUzZi00YzRhLWJjNDAtYTUwNWVkNDcyZmU5XkEyXkFqcGdeQXVyNDk3NzU2MTQ@._V1_.jpg	First Blood	1982	A	93 min	Action, Adventure	7.7	A veteran Green Beret is forced by a cruel Sheriff and his deputies to flee into the mountains and wage an escalating one-man war against his pursuers.	61	Ted Kotcheff	Sylvester Stallone	Brian Dennehy	Richard Crenna	Bill McKinney	226541	47212904
842	https://m.media-amazon.com/images/M/MV5BNWU3MDFkYWQtMWQ5YS00YTcwLThmNDItODY4OWE2ZTdhZmIwXkEyXkFqcGdeQXVyMjUzOTY1NTc@._V1_.jpg	Ordinary People	1980	U	124 min	Drama	7.7	The accidental death of the older son of an affluent family deeply strains the relationships among the bitter mother, the good-natured father, and the guilt-ridden younger son.	86	Robert Redford	Donald Sutherland	Mary Tyler Moore	Judd Hirsch	Timothy Hutton	47099	54800000
848	https://m.media-amazon.com/images/M/MV5BMjE1NDY0NDk3Ml5BMl5BanBnXkFtZTcwMTAzMTM3NA@@._V1_.jpg	The Taking of Pelham One Two Three	1974	U	104 min	Action, Crime, Thriller	7.7	In New York, armed men hijack a subway car and demand a ransom for the passengers. Even if it's paid, how could they get away?	68	Joseph Sargent	Walter Matthau	Robert Shaw	Martin Balsam	Hector Elizondo	26729	\N
849	https://m.media-amazon.com/images/M/MV5BZGZmMWE1MDYtNzAyNC00MDMzLTgzZjQtNTQ5NjYzN2E4MzkzXkEyXkFqcGdeQXVyNDk3NzU2MTQ@._V1_.jpg	Blazing Saddles	1974	A	93 min	Comedy, Western	7.7	In order to ruin a western town, a corrupt politician appoints a black Sheriff, who promptly becomes his most formidable adversary.	73	Mel Brooks	Cleavon Little	Gene Wilder	Slim Pickens	Harvey Korman	125993	119500000
850	https://m.media-amazon.com/images/M/MV5BYTU4ZTI0NzAtYzMwNi00YmMxLThmZWItNTY5NzgyMDAwYWVhXkEyXkFqcGdeQXVyNjUwNzk3NDc@._V1_.jpg	Serpico	1973	A	130 min	Biography, Crime, Drama	7.7	An honest New York cop named Frank Serpico blows the whistle on rampant corruption in the force only to have his comrades turn against him.	87	Sidney Lumet	Al Pacino	John Randolph	Jack Kehoe	Biff McGuire	109941	29800000
851	https://m.media-amazon.com/images/M/MV5BNGZiMTkyNzQtMDdmZi00ZDNkLWE4YTAtZGNlNTIzYzQyMGM2XkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_.jpg	Enter the Dragon	1973	A	102 min	Action, Crime, Drama	7.7	A secret agent comes to an opium lord's island fortress with other fighters for a martial-arts tournament.	83	Robert Clouse	Bruce Lee	John Saxon	Jim Kelly	Ahna Capri	96561	25000000
852	https://m.media-amazon.com/images/M/MV5BZjBhYzU3NWItOWZjMy00NjI5LWFmYmItZmIyOWFlMDIxMWNiXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg	Deliverance	1972	U	109 min	Adventure, Drama, Thriller	7.7	Intent on seeing the Cahulawassee River before it's dammed and turned into a lake, outdoor fanatic Lewis Medlock takes his friends on a canoeing trip they'll never forget into the dangerous American back-country.	80	John Boorman	Jon Voight	Burt Reynolds	Ned Beatty	Ronny Cox	98740	7056013
853	https://m.media-amazon.com/images/M/MV5BOTZhY2E3NmItMGIwNi00OTA2LThkYmEtODFiZTM0NGI0ZWU5XkEyXkFqcGdeQXVyNTc1NTQxODI@._V1_.jpg	The French Connection	1971	A	104 min	Action, Crime, Drama	7.7	A pair of NYC cops in the Narcotics Bureau stumble onto a drug smuggling job with a French connection.	94	William Friedkin	Gene Hackman	Roy Scheider	Fernando Rey	Tony Lo Bianco	110075	15630710
854	https://m.media-amazon.com/images/M/MV5BMzdhMTM2YTItOWU2YS00MTM0LTgyNDYtMDM1OWM3NzkzNTM2XkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_.jpg	Dirty Harry	1971	A	102 min	Action, Crime, Thriller	7.7	When a madman calling himself "the Scorpio Killer" menaces the city, tough-as-nails San Francisco Police Inspector "Dirty" Harry Callahan is assigned to track down and ferret out the crazed psychopath.	90	Don Siegel	Clint Eastwood	Andrew Robinson	Harry Guardino	Reni Santoni	143292	35900000
855	https://m.media-amazon.com/images/M/MV5BNGE3ZWZiNzktMDIyOC00ZmVhLThjZTktZjQ5NjI4NGVhMDBlXkEyXkFqcGdeQXVyMjI4MjA5MzA@._V1_.jpg	Where Eagles Dare	1968	U	158 min	Action, Adventure, War	7.7	Allied agents stage a daring raid on a castle where the Nazis are holding American brigadier general George Carnaby prisoner, but that's not all that's really going on.	63	Brian G. Hutton	Richard Burton	Clint Eastwood	Mary Ure	Patrick Wymark	51913	\N
856	https://m.media-amazon.com/images/M/MV5BZDVhNzQxZDEtMzcyZC00ZDg1LWFkZDctOWYxZTY0ZmYzYjc2XkEyXkFqcGdeQXVyMjA0MDQ0Mjc@._V1_.jpg	The Odd Couple	1968	G	105 min	Comedy	7.7	Two friends try sharing an apartment, but their ideas of housekeeping and lifestyles are as different as night and day.	86	Gene Saks	Jack Lemmon	Walter Matthau	John Fiedler	Herb Edelman	31572	44527234
857	https://m.media-amazon.com/images/M/MV5BM2Y1ZTI0NzktYzU3MS00YmE1LThkY2EtMDc0NGYxNTNlZDA5XkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_.jpg	The Dirty Dozen	1967	\N	150 min	Action, Adventure, War	7.7	During World War II, a rebellious U.S. Army Major is assigned a dozen convicted murderers to train and lead them into a mass assassination mission of German officers.	73	Robert Aldrich	Lee Marvin	Ernest Borgnine	Charles Bronson	John Cassavetes	67183	45300000
858	https://m.media-amazon.com/images/M/MV5BZjNkNGJjYWEtM2IyNi00ZjM5LWFlYjYtYjQ4NTU5MGFlMTI2XkEyXkFqcGdeQXVyMTMxMTY0OTQ@._V1_.jpg	Belle de jour	1967	A	100 min	Drama, Romance	7.7	A frigid young housewife decides to spend her midweek afternoons as a prostitute.	\N	Luis Buñuel	Catherine Deneuve	Jean Sorel	Michel Piccoli	Geneviève Page	40274	26331
859	https://m.media-amazon.com/images/M/MV5BMTRjOTA1NzctNzFmMy00ZjcwLWExYjgtYWQyZDM5ZWY1Y2JlXkEyXkFqcGdeQXVyMDI2NDg0NQ@@._V1_.jpg	A Man for All Seasons	1966	U	120 min	Biography, Drama, History	7.7	The story of Sir Thomas More, who stood up to King Henry VIII when the King rejected the Roman Catholic Church to obtain a divorce and remarry.	72	Fred Zinnemann	Paul Scofield	Wendy Hiller	Robert Shaw	Leo McKern	31222	28350000
860	https://m.media-amazon.com/images/M/MV5BZTU5ZThjNzAtNjc4NC00OTViLWIxYTYtODFmMTk5Y2NjZjZiL2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_.jpg	Repulsion	1965	\N	105 min	Drama, Horror, Thriller	7.7	A sex-repulsed woman who disapproves of her sister's boyfriend sinks into depression and has horrific visions of rape and violence.	91	Roman Polanski	Catherine Deneuve	Ian Hendry	John Fraser	Yvonne Furneaux	48883	\N
861	https://m.media-amazon.com/images/M/MV5BYzdlYmQ3MWMtMDY3My00MzVmLTg0YmMtYjRlZDUzNjBlMmE0L2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_.jpg	Zulu	1964	U	138 min	Drama, History, War	7.7	Outnumbered British soldiers do battle with Zulu warriors at Rorke's Drift.	77	Cy Endfield	Stanley Baker	Jack Hawkins	Ulla Jacobsson	James Booth	35999	\N
882	https://m.media-amazon.com/images/M/MV5BMjg4ZmY1MmItMjFjOS00ZTg2LWJjNDYtNDM2YmM2NzhiNmZhXkEyXkFqcGdeQXVyNTAzMTY4MDA@._V1_.jpg	The Florida Project	2017	A	111 min	Drama	7.6	Set over one summer, the film follows precocious six-year-old Moonee as she courts mischief and adventure with her ragtag playmates and bonds with her rebellious but caring mother, all while living in the shadows of Walt Disney World.	92	Sean Baker	Brooklynn Prince	Bria Vinaite	Willem Dafoe	Christopher Rivera	95181	5904366
883	https://m.media-amazon.com/images/M/MV5BYmM4YzA5NjUtZGEyOS00YzllLWJmM2UtZjhhNmJhM2E1NjUxXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_.jpg	Just Mercy	2019	A	137 min	Biography, Crime, Drama	7.6	World-renowned civil rights defense attorney Bryan Stevenson works to free a wrongly condemned death row prisoner.	68	Destin Daniel Cretton	Michael B. Jordan	Jamie Foxx	Brie Larson	Charlie Pye Jr.	46739	\N
885	https://m.media-amazon.com/images/M/MV5BOWVmZGQ0MGYtMDI1Yy00MDkxLWJiYjQtMmZjZmQ0NDFmMDRhXkEyXkFqcGdeQXVyNjg3MDMxNzU@._V1_.jpg	The Peanut Butter Falcon	2019	PG-13	97 min	Adventure, Comedy, Drama	7.6	Zak runs away from his care home to make his dream of becoming a wrestler come true.	70	Tyler Nilson	Michael Schwartz	Zack Gottsagen	Ann Owens	Dakota Johnson	66346	13122642
886	https://m.media-amazon.com/images/M/MV5BMTc5NzQzNjk2NF5BMl5BanBnXkFtZTgwODU0MjI5NjE@._V1_.jpg	Victoria	2015	\N	138 min	Crime, Drama, Romance	7.6	A young Spanish woman who has recently moved to Berlin finds her flirtation with a local guy turn potentially deadly as their night out with his friends reveals a dangerous secret.	77	Sebastian Schipper	Laia Costa	Frederick Lau	Franz Rogowski	Burak Yigit	52903	\N
887	https://m.media-amazon.com/images/M/MV5BMTkwODUzODA0OV5BMl5BanBnXkFtZTgwMTA3ODkxNzE@._V1_.jpg	Mustang	2015	PG-13	97 min	Drama	7.6	When five orphan girls are seen innocently playing with boys on a beach, their scandalized conservative guardians confine them while forced marriages are arranged.	83	Deniz Gamze Ergüven	Günes Sensoy	Doga Zeynep Doguslu	Tugba Sunguroglu	Elit Iscan	35785	845464
888	https://m.media-amazon.com/images/M/MV5BNjM0NTc0NzItM2FlYS00YzEwLWE0YmUtNTA2ZWIzODc2OTgxXkEyXkFqcGdeQXVyNTgwNzIyNzg@._V1_.jpg	Guardians of the Galaxy Vol. 2	2017	UA	136 min	Action, Adventure, Comedy	7.6	The Guardians struggle to keep together as a team while dealing with their personal family issues, notably Star-Lord's encounter with his father the ambitious celestial being Ego.	67	James Gunn	Chris Pratt	Zoe Saldana	Dave Bautista	Vin Diesel	569974	389813101
889	https://m.media-amazon.com/images/M/MV5BMjM3MjQ1MzkxNl5BMl5BanBnXkFtZTgwODk1ODgyMjI@._V1_.jpg	Baby Driver	2017	UA	113 min	Action, Crime, Drama	7.6	After being coerced into working for a crime boss, a young getaway driver finds himself taking part in a heist doomed to fail.	86	Edgar Wright	Ansel Elgort	Jon Bernthal	Jon Hamm	Eiza González	439406	107825862
890	https://m.media-amazon.com/images/M/MV5BYWFlOWI3YTMtYTk3NS00YWQ2LTlmYTMtZjk0ZDk4Y2NjODI0XkEyXkFqcGdeQXVyNTQxNTQ4Mg@@._V1_.jpg	Only the Brave	2017	UA	134 min	Action, Biography, Drama	7.6	Based on the true story of the Granite Mountain Hotshots, a group of elite firefighters who risk everything to protect a town from a historic wildfire.	72	Joseph Kosinski	Josh Brolin	Miles Teller	Jeff Bridges	Jennifer Connelly	58371	18340051
891	https://m.media-amazon.com/images/M/MV5BMjIxOTI0MjU5NV5BMl5BanBnXkFtZTgwNzM4OTk4NTE@._V1_.jpg	Bridge of Spies	2015	UA	142 min	Drama, History, Thriller	7.6	During the Cold War, an American lawyer is recruited to defend an arrested Soviet spy in court, and then help the CIA facilitate an exchange of the spy for the Soviet captured American U2 spy plane pilot, Francis Gary Powers.	81	Steven Spielberg	Tom Hanks	Mark Rylance	Alan Alda	Amy Ryan	287659	72313754
892	https://m.media-amazon.com/images/M/MV5BMTEzNzY0OTg0NTdeQTJeQWpwZ15BbWU4MDU3OTg3MjUz._V1_.jpg	Incredibles 2	2018	UA	118 min	Animation, Action, Adventure	7.6	The Incredibles family takes on a new mission which involves a change in family roles: Bob Parr (Mr. Incredible) must manage the house while his wife Helen (Elastigirl) goes out to save the world.	80	Brad Bird	Craig T. Nelson	Holly Hunter	Sarah Vowell	Huck Milner	250057	608581744
893	https://m.media-amazon.com/images/M/MV5BMjI4MzU5NTExNF5BMl5BanBnXkFtZTgwNzY1MTEwMDI@._V1_.jpg	Moana	2016	U	107 min	Animation, Adventure, Comedy	7.6	In Ancient Polynesia, when a terrible curse incurred by the Demigod Maui reaches Moana's island, she answers the Ocean's call to seek out the Demigod to set things right.	81	Ron Clements	John Musker	Don Hall	Chris Williams	Auli'i Cravalho	272784	248757044
894	https://m.media-amazon.com/images/M/MV5BMjA5NjM3NTk1M15BMl5BanBnXkFtZTgwMzg1MzU2NjE@._V1_.jpg	Sicario	2015	A	121 min	Action, Crime, Drama	7.6	An idealistic FBI agent is enlisted by a government task force to aid in the escalating war against drugs at the border area between the U.S. and Mexico.	82	Denis Villeneuve	Emily Blunt	Josh Brolin	Benicio Del Toro	Jon Bernthal	371291	46889293
895	https://m.media-amazon.com/images/M/MV5BNmZkYjQzY2QtNjdkNC00YjkzLTk5NjUtY2MyNDNiYTBhN2M2XkEyXkFqcGdeQXVyMjMwNDgzNjc@._V1_.jpg	Creed	2015	A	133 min	Drama, Sport	7.6	The former World Heavyweight Champion Rocky Balboa serves as a trainer and mentor to Adonis Johnson, the son of his late friend and former rival Apollo Creed.	82	Ryan Coogler	Michael B. Jordan	Sylvester Stallone	Tessa Thompson	Phylicia Rashad	247666	109767581
944	https://m.media-amazon.com/images/M/MV5BYTFkM2ViMmQtZmI5NS00MjQ2LWEyN2EtMTI1ZmNlZDU3MTZjXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_.jpg	28 Days Later...	2002	A	113 min	Drama, Horror, Sci-Fi	7.6	Four weeks after a mysterious, incurable virus spreads throughout the UK, a handful of survivors try to find sanctuary.	73	Danny Boyle	Cillian Murphy	Naomie Harris	Christopher Eccleston	Alex Palmer	376853	45064915
898	https://m.media-amazon.com/images/M/MV5BMjA5ODgyNzcxMV5BMl5BanBnXkFtZTgwMzkzOTYzMDE@._V1_.jpg	Philomena	2013	PG-13	98 min	Biography, Comedy, Drama	7.6	A world-weary political journalist picks up the story of a woman's search for her son, who was taken away from her decades ago after she became pregnant and was forced to live in a convent.	77	Stephen Frears	Judi Dench	Steve Coogan	Sophie Kennedy Clark	Mare Winningham	94212	37707719
900	https://m.media-amazon.com/images/M/MV5BNGMxZjFkN2EtMDRiMS00ZTBjLWI0M2MtZWUyYjFhZGViZDJlXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg	El cuerpo	2012	\N	112 min	Mystery, Thriller	7.6	A detective searches for the body of a femme fatale which has gone missing from a morgue.	\N	Oriol Paulo	Jose Coronado	Hugo Silva	Belén Rueda	Aura Garrido	57549	\N
901	https://m.media-amazon.com/images/M/MV5BZGIxODNjM2YtZjA5Mi00MjA5LTk2YjItODE0OWI5NThjNTBmXkEyXkFqcGdeQXVyNzQ1ODk3MTQ@._V1_.jpg	Serbuan maut	2011	A	101 min	Action, Thriller	7.6	A S.W.A.T. team becomes trapped in a tenement run by a ruthless mobster and his army of killers and thugs.	73	Gareth Evans	Iko Uwais	Ananda George	Ray Sahetapy	Donny Alamsyah	190531	4105123
902	https://m.media-amazon.com/images/M/MV5BMjMxNjU0ODU5Ml5BMl5BanBnXkFtZTcwNjI4MzAyOA@@._V1_.jpg	End of Watch	2012	A	109 min	Action, Crime, Drama	7.6	Shot documentary-style, this film follows the daily grind of two young police officers in LA who are partners and friends, and what happens when they meet criminal forces greater than themselves.	68	David Ayer	Jake Gyllenhaal	Michael Peña	Anna Kendrick	America Ferrera	228132	41003371
903	https://m.media-amazon.com/images/M/MV5BZDY3ZGI0ZDAtMThlNy00MzAxLTg4YjAtNjkwYTkxNmQ4MjdlXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg	Kari-gurashi no Arietti	2010	U	94 min	Animation, Adventure, Family	7.6	The Clock family are four-inch-tall people who live anonymously in another family's residence, borrowing simple items to make their home. Life changes for the Clocks when their teenage daughter, Arrietty, is discovered.	80	Hiromasa Yonebayashi	Amy Poehler	Mirai Shida	Ryûnosuke Kamiki	Tatsuya Fujiwara	80939	19202743
904	https://m.media-amazon.com/images/M/MV5BNmE5ZmE3OGItNTdlNC00YmMxLWEzNjctYzAwOGQ5ODg0OTI0XkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg	A Star Is Born	2018	UA	136 min	Drama, Music, Romance	7.6	A musician helps a young singer find fame as age and alcoholism send his own career into a downward spiral.	88	Bradley Cooper	Lady Gaga	Bradley Cooper	Sam Elliott	Greg Grunberg	334312	215288866
905	https://m.media-amazon.com/images/M/MV5BODhkZDIzNjgtOTA5ZS00MmMzLWFkNjYtM2Y2MzFjN2FkNjAzL2ltYWdlXkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_.jpg	True Grit	2010	PG-13	110 min	Drama, Western	7.6	A stubborn teenager enlists the help of a tough U.S. Marshal to track down her father's murderer.	80	Ethan Coen	Joel Coen	Jeff Bridges	Matt Damon	Hailee Steinfeld	311822	171243005
906	https://m.media-amazon.com/images/M/MV5BNDY2OTE5MzE0Nl5BMl5BanBnXkFtZTcwNDAyOTc2NA@@._V1_.jpg	Hævnen	2010	R	118 min	Drama, Romance	7.6	The lives of two Danish families cross each other, and an extraordinary but risky friendship comes into bud. But loneliness, frailty and sorrow lie in wait.	65	Susanne Bier	Mikael Persbrandt	Trine Dyrholm	Markus Rygaard	Wil Johnson	38491	1008098
907	https://m.media-amazon.com/images/M/MV5BMTY3NjY0MTQ0Nl5BMl5BanBnXkFtZTcwMzQ2MTc0Mw@@._V1_.jpg	Despicable Me	2010	U	95 min	Animation, Comedy, Crime	7.6	When a criminal mastermind uses a trio of orphan girls as pawns for a grand scheme, he finds their love is profoundly changing him for the better.	72	Pierre Coffin	Chris Renaud	Steve Carell	Jason Segel	Russell Brand	500851	251513985
908	https://m.media-amazon.com/images/M/MV5BNjg3ODQyNTIyN15BMl5BanBnXkFtZTcwMjUzNzM5NQ@@._V1_.jpg	50/50	2011	R	100 min	Comedy, Drama, Romance	7.6	Inspired by a true story, a comedy centered on a 27-year-old guy who learns of his cancer diagnosis and his subsequent struggle to beat the disease.	72	Jonathan Levine	Joseph Gordon-Levitt	Seth Rogen	Anna Kendrick	Bryce Dallas Howard	315426	35014192
909	https://m.media-amazon.com/images/M/MV5BMTMzNzEzMDYxM15BMl5BanBnXkFtZTcwMTc0NTMxMw@@._V1_.jpg	Kick-Ass	2010	UA	117 min	Action, Comedy, Crime	7.6	Dave Lizewski is an unnoticed high school student and comic book fan who one day decides to become a superhero, even though he has no powers, training or meaningful reason to do so.	66	Matthew Vaughn	Aaron Taylor-Johnson	Nicolas Cage	Chloë Grace Moretz	Garrett M. Brown	524081	48071303
910	https://m.media-amazon.com/images/M/MV5BMjI2ODE4ODAtMDA3MS00ODNkLTg4N2EtOGU0YjZmNGY4NjZlXkEyXkFqcGdeQXVyMTY5MDE5NA@@._V1_.jpg	Celda 211	2009	\N	113 min	Action, Adventure, Crime	7.6	The story of two men on different sides of a prison riot -- the inmate leading the rebellion and the young guard trapped in the revolt, who poses as a prisoner in a desperate attempt to survive the ordeal.	\N	Daniel Monzón	Luis Tosar	Alberto Ammann	Antonio Resines	Manuel Morón	63882	\N
911	https://m.media-amazon.com/images/M/MV5BMjAxOTU3Mzc1M15BMl5BanBnXkFtZTcwMzk1ODUzNg@@._V1_.jpg	Moneyball	2011	PG-13	133 min	Biography, Drama, Sport	7.6	Oakland A's general manager Billy Beane's successful attempt to assemble a baseball team on a lean budget by employing computer-generated analysis to acquire new players.	87	Bennett Miller	Brad Pitt	Robin Wright	Jonah Hill	Philip Seymour Hoffman	369529	75605492
994	https://m.media-amazon.com/images/M/MV5BYTE4YWU0NjAtMjNiYi00MTNiLTgwYzctZjk0YjY5NGVhNWQwXkEyXkFqcGdeQXVyMTY5Nzc4MDY@._V1_.jpg	Blowup	1966	A	111 min	Drama, Mystery, Thriller	7.6	A fashion photographer unknowingly captures a death on film after following two lovers in a park.	82	Michelangelo Antonioni	David Hemmings	Vanessa Redgrave	Sarah Miles	John Castle	56513	\N
914	https://m.media-amazon.com/images/M/MV5BMzc0ZmUyZjAtZThkMi00ZDY5LTg5YjctYmUwM2FiYjMyMDI5XkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg	Die Welle	2008	\N	107 min	Drama, Thriller	7.6	A high school teacher's experiment to demonstrate to his students what life is like under a dictatorship spins horribly out of control when he forms a social unit with a life of its own.	\N	Dennis Gansel	Jürgen Vogel	Frederick Lau	Max Riemelt	Jennifer Ulrich	102742	\N
915	https://m.media-amazon.com/images/M/MV5BMTg0NjEwNjUxM15BMl5BanBnXkFtZTcwMzk0MjQ5Mg@@._V1_.jpg	Sherlock Holmes	2009	PG-13	128 min	Action, Adventure, Mystery	7.6	Detective Sherlock Holmes and his stalwart partner Watson engage in a battle of wits and brawn with a nemesis whose plot is a threat to all of England.	57	Guy Ritchie	Robert Downey Jr.	Jude Law	Rachel McAdams	Mark Strong	583158	209028679
916	https://m.media-amazon.com/images/M/MV5BMjEzOTE3ODM3OF5BMl5BanBnXkFtZTcwMzYyODI4Mg@@._V1_.jpg	The Blind Side	2009	UA	129 min	Biography, Drama, Sport	7.6	The story of Michael Oher, a homeless and traumatized boy who became an All-American football player and first-round NFL draft pick with the help of a caring woman and her family.	53	John Lee Hancock	Quinton Aaron	Sandra Bullock	Tim McGraw	Jae Head	293266	255959475
917	https://m.media-amazon.com/images/M/MV5BMTIzNTg3NzkzNV5BMl5BanBnXkFtZTcwNzMwMjU2MQ@@._V1_.jpg	The Visitor	2007	PG-13	104 min	Drama	7.6	A college professor travels to New York City to attend a conference and finds a young couple living in his apartment.	79	Tom McCarthy	Richard Jenkins	Haaz Sleiman	Danai Gurira	Hiam Abbass	41544	9422422
918	https://m.media-amazon.com/images/M/MV5BMTU0NzY0MTY5OF5BMl5BanBnXkFtZTcwODY3MDEwMg@@._V1_.jpg	Seven Pounds	2008	UA	123 min	Drama	7.6	A man with a fateful secret embarks on an extraordinary journey of redemption by forever changing the lives of seven strangers.	36	Gabriele Muccino	Will Smith	Rosario Dawson	Woody Harrelson	Michael Ealy	286770	69951824
919	https://m.media-amazon.com/images/M/MV5BMTcwMzU0OTY3NF5BMl5BanBnXkFtZTYwNzkwNjg2._V1_.jpg	Eastern Promises	2007	R	100 min	Action, Crime, Drama	7.6	A teenager who dies during childbirth leaves clues in her journal that could tie her child to a rape involving a violent Russian mob family.	82	David Cronenberg	Naomi Watts	Viggo Mortensen	Armin Mueller-Stahl	Josef Altin	227760	17114882
920	https://m.media-amazon.com/images/M/MV5BMjkyMTE1OTYwNF5BMl5BanBnXkFtZTcwMDIxODYzMw@@._V1_.jpg	Stardust	2007	U	127 min	Adventure, Family, Fantasy	7.6	In a countryside town bordering on a magical land, a young man makes a promise to his beloved that he'll retrieve a fallen star by venturing into the magical realm.	66	Matthew Vaughn	Charlie Cox	Claire Danes	Sienna Miller	Ian McKellen	255036	38634938
921	https://m.media-amazon.com/images/M/MV5BMjEzMjEzNTIzOF5BMl5BanBnXkFtZTcwMTg2MjAyMw@@._V1_.jpg	The Secret of Kells	2009	\N	71 min	Animation, Adventure, Family	7.6	A young boy in a remote medieval outpost under siege from barbarian raids is beckoned to adventure when a celebrated master illuminator arrives with an ancient book, brimming with secret wisdom and powers.	81	Tomm Moore	Nora Twomey	Evan McGuire	Brendan Gleeson	Mick Lally	31779	686383
922	https://m.media-amazon.com/images/M/MV5BYjc4MjA2ZDgtOGY3YS00NDYzLTlmNTEtYWMxMzcwZjgzYWNjXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg	Inside Man	2006	R	129 min	Crime, Drama, Mystery	7.6	A police detective, a bank robber, and a high-power broker enter high-stakes negotiations after the criminal's brilliant heist spirals into a hostage situation.	76	Spike Lee	Denzel Washington	Clive Owen	Jodie Foster	Christopher Plummer	339757	88513495
923	https://m.media-amazon.com/images/M/MV5BYmM2NDNiNGItMTRhMi00ZDA2LTgzOWMtZTE2ZjFhMDQ2M2U5XkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_.jpg	Gone Baby Gone	2007	R	114 min	Crime, Drama, Mystery	7.6	Two Boston area detectives investigate a little girl's kidnapping, which ultimately turns into a crisis both professionally and personally.	72	Ben Affleck	Morgan Freeman	Ed Harris	Casey Affleck	Michelle Monaghan	250590	20300218
924	https://m.media-amazon.com/images/M/MV5BOTBmZDZkNWYtODIzYi00N2Y4LWFjMmMtNmM1OGYyNGVhYzUzXkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_.jpg	La Vie En Rose	2007	PG-13	140 min	Biography, Drama, Music	7.6	Biopic of the iconic French singer Édith Piaf. Raised by her grandmother in a brothel, she was discovered while singing on a street corner at the age of 19. Despite her success, Piaf's life was filled with tragedy.	66	Olivier Dahan	Marion Cotillard	Sylvie Testud	Pascal Greggory	Emmanuelle Seigner	82781	10301706
925	https://m.media-amazon.com/images/M/MV5BMTI5MjA2Mzk2M15BMl5BanBnXkFtZTcwODY1MDUzMQ@@._V1_.jpg	Huo Yuan Jia	2006	PG-13	104 min	Action, Biography, Drama	7.6	A biography of Chinese Martial Arts Master Huo Yuanjia, who is the founder and spiritual guru of the Jin Wu Sports Federation.	70	Ronny Yu	Jet Li	Li Sun	Yong Dong	Yun Qu	72863	24633730
926	https://m.media-amazon.com/images/M/MV5BY2VkMzZlZDAtNTkzNS00MDIzLWFmOTctMWQwZjQ1OWJiYzQ1XkEyXkFqcGdeQXVyNTIzOTk5ODM@._V1_.jpg	The Illusionist	2006	U	110 min	Drama, Fantasy, Mystery	7.6	In turn-of-the-century Vienna, a magician uses his abilities to secure the love of a woman far above his social standing.	68	Neil Burger	Edward Norton	Jessica Biel	Paul Giamatti	Rufus Sewell	354728	39868642
927	https://m.media-amazon.com/images/M/MV5BMTI5Mzk1MDc2M15BMl5BanBnXkFtZTcwMjIzMDA0MQ@@._V1_.jpg	Dead Man's Shoes	2004	\N	90 min	Crime, Drama, Thriller	7.6	A disaffected soldier returns to his hometown to get even with the thugs who brutalized his mentally-challenged brother years ago.	52	Shane Meadows	Paddy Considine	Gary Stretch	Toby Kebbell	Stuart Wolfenden	49728	6013
931	https://m.media-amazon.com/images/M/MV5BY2IzNGNiODgtOWYzOS00OTI0LTgxZTUtOTA5OTQ5YmI3NGUzXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_.jpg	Watchmen	2009	A	162 min	Action, Drama, Mystery	7.6	In 1985 where former superheroes exist, the murder of a colleague sends active vigilante Rorschach into his own sprawling investigation, uncovering something that could completely change the course of history as we know it.	56	Zack Snyder	Jackie Earle Haley	Patrick Wilson	Carla Gugino	Malin Akerman	500799	107509799
932	https://m.media-amazon.com/images/M/MV5BMTYzZWE3MDAtZjZkMi00MzhlLTlhZDUtNmI2Zjg3OWVlZWI0XkEyXkFqcGdeQXVyNDk3NzU2MTQ@._V1_.jpg	Lord of War	2005	R	122 min	Action, Crime, Drama	7.6	An arms dealer confronts the morality of his work as he is being chased by an INTERPOL Agent.	62	Andrew Niccol	Nicolas Cage	Ethan Hawke	Jared Leto	Bridget Moynahan	294140	24149632
933	https://m.media-amazon.com/images/M/MV5BMzQ2ZTBhNmEtZDBmYi00ODU0LTgzZmQtNmMxM2M4NzM1ZjE4XkEyXkFqcGdeQXVyNjE5MjUyOTM@._V1_.jpg	Saw	2004	UA	103 min	Horror, Mystery, Thriller	7.6	Two strangers awaken in a room with no recollection of how they got there, and soon discover they're pawns in a deadly game perpetrated by a notorious serial killer.	46	James Wan	Cary Elwes	Leigh Whannell	Danny Glover	Ken Leung	379020	56000369
934	https://m.media-amazon.com/images/M/MV5BMjA0MjIyOTI3MF5BMl5BanBnXkFtZTcwODM5NTY5MQ@@._V1_.jpg	Synecdoche, New York	2008	R	124 min	Drama	7.6	A theatre director struggles with his work, and the women in his life, as he creates a life-size replica of New York City inside a warehouse as part of his new play.	67	Charlie Kaufman	Philip Seymour Hoffman	Samantha Morton	Michelle Williams	Catherine Keener	83158	3081925
935	https://m.media-amazon.com/images/M/MV5BMTgxMjQ4NzE5OF5BMl5BanBnXkFtZTcwNzkwOTkyMQ@@._V1_.jpg	Mysterious Skin	2004	R	105 min	Drama	7.6	A teenage hustler and a young man obsessed with alien abductions cross paths, together discovering a horrible, liberating truth.	73	Gregg Araki	Brady Corbet	Joseph Gordon-Levitt	Elisabeth Shue	Chase Ellison	65939	697181
936	https://m.media-amazon.com/images/M/MV5BNjIwOGJhY2QtMTA5Yi00MDhlLWE5OTgtYmIzZDNlM2UwZjMyXkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_.jpg	Jeux d'enfants	2003	R	93 min	Comedy, Drama, Romance	7.6	As adults, best friends Julien and Sophie continue the odd game they started as children -- a fearless competition to outdo one another with daring and outrageous stunts. While they often act out to relieve one another's pain, their game might be a way to avoid the fact that they are truly meant for one another.	45	Yann Samuell	Guillaume Canet	Marion Cotillard	Thibault Verhaeghe	Joséphine Lebas-Joly	67360	548707
937	https://m.media-amazon.com/images/M/MV5BZWI4ZTgwMzktNjk3Yy00OTlhLTg3YTAtMTA1MWVlMWJiOTRiXkEyXkFqcGdeQXVyMTAwMzUyOTc@._V1_.jpg	Un long dimanche de fiançailles	2004	U	133 min	Drama, Mystery, Romance	7.6	Tells the story of a young woman's relentless search for her fiancé, who has disappeared from the trenches of the Somme during World War One.	76	Jean-Pierre Jeunet	Audrey Tautou	Gaspard Ulliel	Jodie Foster	Dominique Pinon	70925	6167817
938	https://m.media-amazon.com/images/M/MV5BMTUzNDgyMzg3Ml5BMl5BanBnXkFtZTcwMzIxNTAwMQ@@._V1_.jpg	The Station Agent	2003	R	89 min	Comedy, Drama	7.6	When his only friend dies, a man born with dwarfism moves to rural New Jersey to live a life of solitude, only to meet a chatty hot dog vendor and a woman dealing with her own personal loss.	81	Tom McCarthy	Peter Dinklage	Patricia Clarkson	Bobby Cannavale	Paul Benjamin	67370	5739376
939	https://m.media-amazon.com/images/M/MV5BMjA4MjI2OTM5N15BMl5BanBnXkFtZTcwNDA1NjUzMw@@._V1_.jpg	21 Grams	2003	UA	124 min	Crime, Drama, Thriller	7.6	A freak accident brings together a critically ill mathematician, a grieving mother, and a born-again ex-con.	70	Alejandro G. Iñárritu	Sean Penn	Benicio Del Toro	Naomi Watts	Danny Huston	224545	16290476
940	https://m.media-amazon.com/images/M/MV5BYmNlNDVjMWUtZDZjNS00YTBmLWE3NGUtNDcxMzE0YTQ2ODMxXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg	Boksuneun naui geot	2002	R	129 min	Crime, Drama, Thriller	7.6	A recently laid off factory worker kidnaps his former boss' friend's daughter, hoping to use the ransom money to pay for his sister's kidney transplant.	56	Chan-wook Park	Kang-ho Song	Shin Ha-kyun	Bae Doona	Ji-Eun Lim	62659	45289
941	https://m.media-amazon.com/images/M/MV5BMTMxNzYzNzUzMV5BMl5BanBnXkFtZTYwNjcwMjE3._V1_.jpg	Finding Neverland	2004	U	106 min	Biography, Drama, Family	7.6	The story of Sir J.M. Barrie's friendship with a family who inspired him to create Peter Pan.	67	Marc Forster	Johnny Depp	Kate Winslet	Julie Christie	Radha Mitchell	198677	51680613
942	https://m.media-amazon.com/images/M/MV5BNmE0YjdlYTktMTU4Ni00Mjk2LWI3NWMtM2RjNmFiOTk4YjYxL2ltYWdlXkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_.jpg	25th Hour	2002	R	135 min	Drama	7.6	Cornered by the DEA, convicted New York drug dealer Montgomery Brogan reevaluates his life in the 24 remaining hours before facing a seven-year jail term.	68	Spike Lee	Edward Norton	Barry Pepper	Philip Seymour Hoffman	Rosario Dawson	169708	13060843
943	https://m.media-amazon.com/images/M/MV5BODNiZmY2MWUtMjFhMy00ZmM2LTg2MjYtNWY1OTY5NGU2MjdjL2ltYWdlXkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_.jpg	The Butterfly Effect	2004	U	113 min	Drama, Sci-Fi, Thriller	7.6	Evan Treborn suffers blackouts during significant events of his life. As he grows up, he finds a way to remember these lost memories and a supernatural way to alter his life by reading his journal.	30	Eric Bress	J. Mackye Gruber	Ashton Kutcher	Amy Smart	Melora Walters	451479	57938693
948	https://m.media-amazon.com/images/M/MV5BNjQ3NWNlNmQtMTE5ZS00MDdmLTlkZjUtZTBlM2UxMGFiMTU3XkEyXkFqcGdeQXVyNjUwNzk3NDc@._V1_.jpg	Harry Potter and the Sorcerer's Stone	2001	U	152 min	Adventure, Family, Fantasy	7.6	An orphaned boy enrolls in a school of wizardry, where he learns the truth about himself, his family and the terrible evil that haunts the magical world.	64	Chris Columbus	Daniel Radcliffe	Rupert Grint	Richard Harris	Maggie Smith	658185	317575550
949	https://m.media-amazon.com/images/M/MV5BMTAxMDE4Mzc3ODNeQTJeQWpwZ15BbWU4MDY2Mjg4MDcx._V1_.jpg	The Others	2001	PG-13	101 min	Horror, Mystery, Thriller	7.6	A woman who lives in her darkened old family house with her two photosensitive children becomes convinced that the home is haunted.	74	Alejandro Amenábar	Nicole Kidman	Christopher Eccleston	Fionnula Flanagan	Alakina Mann	337651	96522687
950	https://m.media-amazon.com/images/M/MV5BYjg5ZDkzZWEtZDQ2ZC00Y2ViLThhMzYtMmIxZDYzYTY2Y2Y2XkEyXkFqcGdeQXVyODAwMTU1MTE@._V1_.jpg	Blow	2001	R	124 min	Biography, Crime, Drama	7.6	The story of how George Jung, along with the Medellín Cartel headed by Pablo Escobar, established the American cocaine market in the 1970s in the United States.	52	Ted Demme	Johnny Depp	Penélope Cruz	Franka Potente	Rachel Griffiths	240714	52990775
951	https://m.media-amazon.com/images/M/MV5BYWFlY2E3ODQtZWNiNi00ZGU4LTkzNWEtZTQ2ZTViMWRhYjIzL2ltYWdlXkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_.jpg	Enemy at the Gates	2001	A	131 min	Drama, History, War	7.6	A Russian and a German sniper play a game of cat-and-mouse during the Battle of Stalingrad.	53	Jean-Jacques Annaud	Jude Law	Ed Harris	Joseph Fiennes	Rachel Weisz	243729	51401758
952	https://m.media-amazon.com/images/M/MV5BZTI3YzZjZjEtMDdjOC00OWVjLTk0YmYtYzI2MGMwZjFiMzBlXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg	Minority Report	2002	A	145 min	Action, Crime, Mystery	7.6	In a future where a special police unit is able to arrest murderers before they commit their crimes, an officer from that unit is himself accused of a future murder.	80	Steven Spielberg	Tom Cruise	Colin Farrell	Samantha Morton	Max von Sydow	508417	132072926
953	https://m.media-amazon.com/images/M/MV5BMTA3OTYxMzg0MDFeQTJeQWpwZ15BbWU4MDY1MjY0MTEx._V1_.jpg	The Hurricane	1999	R	146 min	Biography, Drama, Sport	7.6	The story of Rubin 'Hurricane' Carter, a boxer wrongly imprisoned for murder, and the people who aided in his fight to prove his innocence.	74	Norman Jewison	Denzel Washington	Vicellous Shannon	Deborah Kara Unger	Liev Schreiber	91557	50668906
954	https://m.media-amazon.com/images/M/MV5BZTM2ZGJmNjQtN2UyOS00NjcxLWFjMDktMDE2NzMyNTZlZTBiXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_.jpg	American Psycho	2000	A	101 min	Comedy, Crime, Drama	7.6	A wealthy New York City investment banking executive, Patrick Bateman, hides his alternate psychopathic ego from his co-workers and friends as he delves deeper into his violent, hedonistic fantasies.	64	Mary Harron	Christian Bale	Justin Theroux	Josh Lucas	Bill Sage	490062	15070285
955	https://m.media-amazon.com/images/M/MV5BMmU5ZjFmYjQtYmNjZC00Yjk4LWI1ZTQtZDJiMjM0YjQyNDU0L2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg	Lola rennt	1998	UA	81 min	Crime, Drama, Thriller	7.6	After a botched money delivery, Lola has 20 minutes to come up with 100,000 Deutschmarks.	77	Tom Tykwer	Franka Potente	Moritz Bleibtreu	Herbert Knaup	Nina Petri	188317	7267585
956	https://m.media-amazon.com/images/M/MV5BYjEzMTM2NjAtNWFmZC00MTVlLTgyMmQtMGQyNTFjZDk5N2NmXkEyXkFqcGdeQXVyNzQ1ODk3MTQ@._V1_.jpg	The Thin Red Line	1998	A	170 min	Drama, War	7.6	Adaptation of James Jones' autobiographical 1962 novel, focusing on the conflict at Guadalcanal during the second World War.	78	Terrence Malick	Jim Caviezel	Sean Penn	Nick Nolte	Kirk Acevedo	172710	36400491
957	https://m.media-amazon.com/images/M/MV5BODkxNGQ1NWYtNzg0Ny00Yjg3LThmZTItMjE2YjhmZTQ0ODY5XkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg	Mulan	1998	U	88 min	Animation, Adventure, Family	7.6	To save her father from death in the army, a young maiden secretly goes in his place and becomes one of China's greatest heroines in the process.	71	Tony Bancroft	Barry Cook	Ming-Na Wen	Eddie Murphy	BD Wong	256906	120620254
958	https://m.media-amazon.com/images/M/MV5BNjA2ZDY3ZjYtZmNiMC00MDU5LTgxMWEtNzk1YmI3NzdkMTU0XkEyXkFqcGdeQXVyNjQyMjcwNDM@._V1_.jpg	Fear and Loathing in Las Vegas	1998	R	118 min	Adventure, Comedy, Drama	7.6	An oddball journalist and his psychopathic lawyer travel to Las Vegas for a series of psychedelic escapades.	41	Terry Gilliam	Johnny Depp	Benicio Del Toro	Tobey Maguire	Michael Lee Gogin	259753	10680275
959	https://m.media-amazon.com/images/M/MV5BMTkyNTAzZDYtNWUzYi00ODVjLTliZjYtNjc2YzJmODZhNTg3XkEyXkFqcGdeQXVyNjUxMDQ0MTg@._V1_.jpg	Funny Games	1997	A	108 min	Crime, Drama, Thriller	7.6	Two violent young men take a mother, father, and son hostage in their vacation cabin and force them to play sadistic "games" with one another for their own amusement.	69	Michael Haneke	Susanne Lothar	Ulrich Mühe	Arno Frisch	Frank Giering	65058	\N
960	https://m.media-amazon.com/images/M/MV5BMGExOGExM2UtNWM5ZS00OWEzLTllNzYtM2NlMTJlYjBlZTJkXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg	Dark City	1998	A	100 min	Mystery, Sci-Fi, Thriller	7.6	A man struggles with memories of his past, which include a wife he cannot remember and a nightmarish world no one else ever seems to wake up from.	66	Alex Proyas	Rufus Sewell	Kiefer Sutherland	Jennifer Connelly	William Hurt	187927	14378331
964	https://m.media-amazon.com/images/M/MV5BZjI0ZWFiMmQtMjRlZi00ZmFhLWI4NmYtMjQ5YmY0MzIyMzRiXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg	Die Hard: With a Vengeance	1995	A	128 min	Action, Adventure, Thriller	7.6	John McClane and a Harlem store owner are targeted by German terrorist Simon in New York City, where he plans to rob the Federal Reserve Building.	58	John McTiernan	Bruce Willis	Jeremy Irons	Samuel L. Jackson	Graham Greene	364420	100012499
965	https://m.media-amazon.com/images/M/MV5BYTJlZmQ1OTAtODQzZi00NGIzLWI1MmEtZGE4NjFlOWRhODIyXkEyXkFqcGdeQXVyNTc1NTQxODI@._V1_.jpg	Dead Man	1995	R	121 min	Adventure, Drama, Fantasy	7.6	On the run after murdering a man, accountant William Blake encounters a strange aboriginal American man named Nobody who prepares him for his journey into the spiritual world.	62	Jim Jarmusch	Johnny Depp	Gary Farmer	Crispin Glover	Lance Henriksen	90442	1037847
966	https://m.media-amazon.com/images/M/MV5BNmRiZDZkN2EtNWI5ZS00ZDg3LTgyNDItMWI5NjVlNmE5ODJiXkEyXkFqcGdeQXVyMjQwMjk0NjI@._V1_.jpg	The Bridges of Madison County	1995	A	135 min	Drama, Romance	7.6	Photographer Robert Kincaid wanders into the life of housewife Francesca Johnson for four days in the 1960s.	69	Clint Eastwood	Clint Eastwood	Meryl Streep	Annie Corley	Victor Slezak	73172	71516617
967	https://m.media-amazon.com/images/M/MV5BNjEzYjJmNzgtNDkwNy00MTQ4LTlmMWMtNzA4YjE2NjI0ZDg4XkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_.jpg	Apollo 13	1995	U	140 min	Adventure, Drama, History	7.6	NASA must devise a strategy to return Apollo 13 to Earth safely after the spacecraft undergoes massive internal damage putting the lives of the three astronauts on board in jeopardy.	77	Ron Howard	Tom Hanks	Bill Paxton	Kevin Bacon	Gary Sinise	269197	173837933
968	https://m.media-amazon.com/images/M/MV5BNTliYTI1YTctMTE0Mi00NDM0LThjZDgtYmY3NGNiODBjZjAwXkEyXkFqcGdeQXVyMTAwMzUyOTc@._V1_.jpg	Trois couleurs: Blanc	1994	U	92 min	Comedy, Drama, Romance	7.6	After his wife divorces him, a Polish immigrant plots to get even with her.	88	Krzysztof Kieslowski	Zbigniew Zamachowski	Julie Delpy	Janusz Gajos	Jerzy Stuhr	64390	1464625
969	https://m.media-amazon.com/images/M/MV5BYjcxMzM3OWMtNmM3Yy00YzBkLTkxMmQtMDk4MmM3Y2Y4MDliL2ltYWdlXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg	Falling Down	1993	R	113 min	Action, Crime, Drama	7.6	An ordinary man frustrated with the various flaws he sees in society begins to psychotically and violently lash out against them.	56	Joel Schumacher	Michael Douglas	Robert Duvall	Barbara Hershey	Rachel Ticotin	171640	40903593
970	https://m.media-amazon.com/images/M/MV5BMTM5MDY5MDQyOV5BMl5BanBnXkFtZTgwMzM3NzMxMDE@._V1_.jpg	Dazed and Confused	1993	U	102 min	Comedy	7.6	The adventures of high school and junior high students on the last day of school in May 1976.	78	Richard Linklater	Jason London	Wiley Wiggins	Matthew McConaughey	Rory Cochrane	165465	7993039
971	https://m.media-amazon.com/images/M/MV5BMTQxNDYzMTg1M15BMl5BanBnXkFtZTgwNzk4MDgxMTE@._V1_.jpg	My Cousin Vinny	1992	UA	120 min	Comedy, Crime	7.6	Two New Yorkers accused of murder in rural Alabama while on their way back to college call in the help of one of their cousins, a loudmouth lawyer with no trial experience.	68	Jonathan Lynn	Joe Pesci	Marisa Tomei	Ralph Macchio	Mitchell Whitfield	107325	52929168
972	https://m.media-amazon.com/images/M/MV5BMTY5NjI2MjQxMl5BMl5BanBnXkFtZTgwMDA2MzM2NzE@._V1_.jpg	Omohide poro poro	1991	U	118 min	Animation, Drama, Romance	7.6	A twenty-seven-year-old office worker travels to the countryside while reminiscing about her childhood in Tokyo.	90	Isao Takahata	Miki Imai	Toshirô Yanagiba	Yoko Honna	Mayumi Izuka	27071	453243
973	https://m.media-amazon.com/images/M/MV5BNjg5ZDM0MTEtYTZmNC00NDJiLWI5MTktYzk4N2QxY2IxZTc2L2ltYWdlXkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_.jpg	Delicatessen	1991	R	99 min	Comedy, Crime	7.6	Post-apocalyptic surrealist black comedy about the landlord of an apartment building who occasionally prepares a delicacy for his odd tenants.	66	Marc Caro	Jean-Pierre Jeunet	Marie-Laure Dougnac	Dominique Pinon	Pascal Benezech	80487	1794187
974	https://m.media-amazon.com/images/M/MV5BMzFkM2YwOTQtYzk2Mi00N2VlLWE3NTItN2YwNDg1YmY0ZDNmXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg	Home Alone	1990	U	103 min	Comedy, Family	7.6	An eight-year-old troublemaker must protect his house from a pair of burglars when he is accidentally left home alone by his family during Christmas vacation.	63	Chris Columbus	Macaulay Culkin	Joe Pesci	Daniel Stern	John Heard	488817	285761243
975	https://m.media-amazon.com/images/M/MV5BNWFlYWY2YjYtNjdhNi00MzVlLTg2MTMtMWExNzg4NmM5NmEzXkEyXkFqcGdeQXVyMDk5Mzc5MQ@@._V1_.jpg	The Godfather: Part III	1990	A	162 min	Crime, Drama	7.6	Follows Michael Corleone, now in his 60s, as he seeks to free his family from crime and find a suitable successor to his empire.	60	Francis Ford Coppola	Al Pacino	Diane Keaton	Andy Garcia	Talia Shire	359809	66666062
976	https://m.media-amazon.com/images/M/MV5BMjE0ODEwNjM2NF5BMl5BanBnXkFtZTcwMjU2Mzg3NA@@._V1_.jpg	When Harry Met Sally...	1989	UA	95 min	Comedy, Drama, Romance	7.6	Harry and Sally have known each other for years, and are very good friends, but they fear sex would ruin the friendship.	76	Rob Reiner	Billy Crystal	Meg Ryan	Carrie Fisher	Bruno Kirby	195663	92823600
977	https://m.media-amazon.com/images/M/MV5BN2JlZTBhYTEtZDE3OC00NTA3LTk5NTQtNjg5M2RjODllM2M0XkEyXkFqcGdeQXVyNjk1Njg5NTA@._V1_.jpg	The Little Mermaid	1989	U	83 min	Animation, Family, Fantasy	7.6	A mermaid princess makes a Faustian bargain in an attempt to become human and win a prince's love.	88	Ron Clements	John Musker	Jodi Benson	Samuel E. Wright	Rene Auberjonois	237696	111543479
981	https://m.media-amazon.com/images/M/MV5BZmI5YzM1MjItMzFmNy00NGFkLThlMDUtZjZmYTZkM2QxMjU3XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_.jpg	Blood Simple	1984	A	99 min	Crime, Drama, Thriller	7.6	The owner of a seedy small-town Texas bar discovers that one of his employees is having an affair with his wife. A chaotic chain of misunderstandings, lies and mischief ensues after he devises a plot to have them murdered.	82	Joel Coen	Ethan Coen	John Getz	Frances McDormand	Dan Hedaya	87745	2150000
982	https://m.media-amazon.com/images/M/MV5BNWQ4MGZlZmYtZjY0MS00N2JhLWE0NmMtOTMwMTk4NDQ4NjE2XkEyXkFqcGdeQXVyNTI4MjkwNjA@._V1_.jpg	On Golden Pond	1981	UA	109 min	Drama	7.6	Norman is a curmudgeon with an estranged relationship with his daughter Chelsea. At Golden Pond, he and his wife nevertheless agree to care for Billy, the son of Chelsea's new boyfriend, and a most unexpected relationship blooms.	68	Mark Rydell	Katharine Hepburn	Henry Fonda	Jane Fonda	Doug McKeon	27650	119285432
983	https://m.media-amazon.com/images/M/MV5BN2VlNjNhZWQtMTY2OC00Y2E1LWJkNGUtMDU4M2ViNzliMGYwXkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_.jpg	Mad Max 2	1981	A	96 min	Action, Adventure, Sci-Fi	7.6	In the post-apocalyptic Australian wasteland, a cynical drifter agrees to help a small, gasoline-rich community escape a horde of bandits.	77	George Miller	Mel Gibson	Bruce Spence	Michael Preston	Max Phipps	166588	12465371
984	https://m.media-amazon.com/images/M/MV5BYTU2MWRiMTMtYzAzZi00NGYzLTlkMDEtNWQ3MzZlNTJlNzZkL2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_.jpg	The Warriors	1979	UA	92 min	Action, Crime, Thriller	7.6	In the near future, a charismatic leader summons the street gangs of New York City in a bid to take it over. When he is killed, The Warriors are falsely blamed and now must fight their way home while every other gang is hunting them down.	65	Walter Hill	Michael Beck	James Remar	Dorsey Wright	Brian Tyler	93878	22490039
985	https://m.media-amazon.com/images/M/MV5BMGQ0OGM5YjItYzYyMi00NmVmLWI3ODMtMTY2NGRkZmI5MWU2XkEyXkFqcGdeQXVyMzI0NDc4ODY@._V1_.jpg	The Muppet Movie	1979	U	95 min	Adventure, Comedy, Family	7.6	Kermit and his newfound friends trek across America to find success in Hollywood, but a frog legs merchant is after Kermit.	74	James Frawley	Jim Henson	Frank Oz	Jerry Nelson	Richard Hunt	32802	76657000
986	https://m.media-amazon.com/images/M/MV5BNDQ3MzNjMDItZjE0ZS00ZTYxLTgxNTAtM2I4YjZjNWFjYjJlL2ltYWdlXkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_.jpg	Escape from Alcatraz	1979	A	112 min	Action, Biography, Crime	7.6	Alcatraz is the most secure prison of its time. It is believed that no one can ever escape from it, until three daring men make a possible successful attempt at escaping from one of the most infamous prisons in the world.	76	Don Siegel	Clint Eastwood	Patrick McGoohan	Roberts Blossom	Jack Thibeau	121731	43000000
987	https://m.media-amazon.com/images/M/MV5BMzZiODUwNzktNzBiZi00MDc4LThkMGMtZmE3MTE0M2E1MTM3L2ltYWdlXkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_.jpg	Watership Down	1978	U	91 min	Animation, Adventure, Drama	7.6	Hoping to escape destruction by human developers and save their community, a colony of rabbits, led by Hazel and Fiver, seek out a safe place to set up a new warren.	64	Martin Rosen	John Hubley	John Hurt	Richard Briers	Ralph Richardson	33656	\N
988	https://m.media-amazon.com/images/M/MV5BNDU1MjQ0YWMtMWQ2MS00NTdmLTg1MGItNDA5NTNkNTRhOTIyXkEyXkFqcGdeQXVyNTIzOTk5ODM@._V1_.jpg	Midnight Express	1978	A	121 min	Biography, Crime, Drama	7.6	Billy Hayes, an American college student, is caught smuggling drugs out of Turkey and thrown into prison.	59	Alan Parker	Brad Davis	Irene Miracle	Bo Hopkins	Paolo Bonacelli	73662	35000000
989	https://m.media-amazon.com/images/M/MV5BMjM1NjE5NjQxN15BMl5BanBnXkFtZTgwMjYzMzQxMDE@._V1_.jpg	Close Encounters of the Third Kind	1977	U	138 min	Drama, Sci-Fi	7.6	Roy Neary, an electric lineman, watches how his quiet and ordinary daily life turns upside down after a close encounter with a UFO.	90	Steven Spielberg	Richard Dreyfuss	François Truffaut	Teri Garr	Melinda Dillon	184966	132088635
990	https://m.media-amazon.com/images/M/MV5BYzZhODNiOWYtMmNkNS00OTFhLTkzYzktYTQ4ZmNmZWMyN2ZiL2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_.jpg	The Long Goodbye	1973	A	112 min	Comedy, Crime, Drama	7.6	Private investigator Philip Marlowe helps a friend out of a jam, but in doing so gets implicated in his wife's murder.	87	Robert Altman	Elliott Gould	Nina van Pallandt	Sterling Hayden	Mark Rydell	26337	959000
991	https://m.media-amazon.com/images/M/MV5BYjRmY2VjN2ItMzBmYy00YTRjLWFiMTgtNGZhNWJjMjk3YjZjXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_.jpg	Giù la testa	1971	PG	157 min	Drama, War, Western	7.6	A low-life bandit and an I.R.A. explosives expert rebel against the government and become heroes of the Mexican Revolution.	77	Sergio Leone	Rod Steiger	James Coburn	Romolo Valli	Maria Monti	30144	696690
992	https://m.media-amazon.com/images/M/MV5BMzAyNDUwYzUtN2NlMC00ODliLWExMjgtMGMzNmYzZmUwYTg1XkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_.jpg	Kelly's Heroes	1970	GP	144 min	Adventure, Comedy, War	7.6	A group of U.S. soldiers sneaks across enemy lines to get their hands on a secret stash of Nazi treasure.	50	Brian G. Hutton	Clint Eastwood	Telly Savalas	Don Rickles	Carroll O'Connor	45338	1378435
993	https://m.media-amazon.com/images/M/MV5BMjAwMTExODExNl5BMl5BanBnXkFtZTgwMjM2MDgyMTE@._V1_.jpg	The Jungle Book	1967	U	78 min	Animation, Adventure, Family	7.6	Bagheera the Panther and Baloo the Bear have a difficult time trying to convince a boy to leave the jungle for human civilization.	65	Wolfgang Reitherman	Phil Harris	Sebastian Cabot	Louis Prima	Bruce Reitherman	166409	141843612
999	https://m.media-amazon.com/images/M/MV5BZTBmMjUyMjItYTM4ZS00MjAwLWEyOGYtYjMyZTUxN2I3OTMxXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_.jpg	Lifeboat	1944	\N	97 min	Drama, War	7.6	Several survivors of a torpedoed merchant ship in World War II find themselves in the same lifeboat with one of the crew members of the U-boat that sank their ship.	78	Alfred Hitchcock	Tallulah Bankhead	John Hodiak	Walter Slezak	William Bendix	26471	\N
1000	https://m.media-amazon.com/images/M/MV5BMTY5ODAzMTcwOF5BMl5BanBnXkFtZTcwMzYxNDYyNA@@._V1_.jpg	The 39 Steps	1935	\N	86 min	Crime, Mystery, Thriller	7.6	A man in London tries to help a counter-espionage Agent. But when the Agent is killed, and the man stands accused, he must go on the run to save himself and stop a spy ring which is trying to steal top secret information.	93	Alfred Hitchcock	Robert Donat	Madeleine Carroll	Lucie Mannheim	Godfrey Tearle	51853	\N
177	https://m.media-amazon.com/images/M/MV5BMjk3YjJmYTctMTAzZC00MzE4LWFlZGMtNDM5OTMyMDEzZWIxXkEyXkFqcGdeQXVyNTI4MjkwNjA@._V1_.jpg	The Message	1976	PG	177 min	Biography, Drama, History	8.2	This epic historical drama chronicles the life and times of Prophet Muhammad and serves as an introduction to early Islamic history.	\N	Moustapha Akkad	Anthony Quinn	Irene Papas	Michael Ansara	Johnny Sekka	43885	\N
178	https://m.media-amazon.com/images/M/MV5BOGZiM2IwODktNTdiMC00MGU1LWEyZTYtOTk4NTkwYmJkNmI1L2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_.jpg	Sholay	1975	U	204 min	Action, Adventure, Comedy	8.2	After his family is murdered by a notorious and ruthless bandit, a former police officer enlists the services of two outlaws to capture the bandit.	\N	Ramesh Sippy	Sanjeev Kumar	Dharmendra	Amitabh Bachchan	Amjad Khan	51284	\N
426	https://m.media-amazon.com/images/M/MV5BZmEwZGU2NzctYzlmNi00MGJkLWE3N2MtYjBlN2ZhMGJkZTZiXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg	Rosemary's Baby	1968	A	137 min	Drama, Horror	8	A young couple trying for a baby move into a fancy apartment surrounded by peculiar neighbors.	96	Roman Polanski	Mia Farrow	John Cassavetes	Ruth Gordon	Sidney Blackmer	193674	\N
608	https://m.media-amazon.com/images/M/MV5BMTQzMTg0NDA1M15BMl5BanBnXkFtZTgwODUzMTE0MjE@._V1_.jpg	Madeo	2009	R	129 min	Crime, Drama, Mystery	7.8	A mother desperately searches for the killer who framed her son for a girl's horrific murder.	79	Bong Joon Ho	Hye-ja Kim	Won Bin	Jin Goo	Je-mun Yun	52758	547292
1	https://m.media-amazon.com/images/M/MV5BMDFkYTc0MGEtZmNhMC00ZDIzLWFmNTEtODM1ZmRlYWMwMWFmXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg	The Shawshank Redemption	1994	A	142 min	Drama	9.3	Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.	80	Frank Darabont	Tim Robbins	Morgan Freeman	Bob Gunton	William Sadler	2343110	28341469
2	https://m.media-amazon.com/images/M/MV5BM2MyNjYxNmUtYTAwNi00MTYxLWJmNWYtYzZlODY3ZTk3OTFlXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_.jpg	The Godfather	1972	A	175 min	Crime, Drama	9.2	An organized crime dynasty's aging patriarch transfers control of his clandestine empire to his reluctant son.	100	Francis Ford Coppola	Marlon Brando	Al Pacino	James Caan	Diane Keaton	1620367	134966411
3	https://m.media-amazon.com/images/M/MV5BMTMxNTMwODM0NF5BMl5BanBnXkFtZTcwODAyMTk2Mw@@._V1_.jpg	The Dark Knight	2008	UA	152 min	Action, Crime, Drama	9	When the menace known as the Joker wreaks havoc and chaos on the people of Gotham, Batman must accept one of the greatest psychological and physical tests of his ability to fight injustice.	84	Christopher Nolan	Christian Bale	Heath Ledger	Aaron Eckhart	Michael Caine	2303232	534858444
15	https://m.media-amazon.com/images/M/MV5BNzQzOTk3OTAtNDQ0Zi00ZTVkLWI0MTEtMDllZjNkYzNjNTc4L2ltYWdlXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_.jpg	The Matrix	1999	A	136 min	Action, Sci-Fi	8.7	When a beautiful stranger leads computer hacker Neo to a forbidding underworld, he discovers the shocking truth--the life he knows is the elaborate deception of an evil cyber-intelligence.	73	Lana Wachowski	Lilly Wachowski	Keanu Reeves	Laurence Fishburne	Carrie-Anne Moss	1676426	171479930
30	https://m.media-amazon.com/images/M/MV5BNzVlY2MwMjktM2E4OS00Y2Y3LWE3ZjctYzhkZGM3YzA1ZWM2XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_.jpg	Star Wars	1977	UA	121 min	Action, Adventure, Fantasy	8.6	Luke Skywalker joins forces with a Jedi Knight, a cocky pilot, a Wookiee and two droids to save the galaxy from the Empire's world-destroying battle station, while also attempting to rescue Princess Leia from the mysterious Darth Vader.	90	George Lucas	Mark Hamill	Harrison Ford	Carrie Fisher	Alec Guinness	1231473	322740140
32	https://m.media-amazon.com/images/M/MV5BOWE4ZDdhNmMtNzE5ZC00NzExLTlhNGMtY2ZhYjYzODEzODA1XkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_.jpg	Shichinin no samurai	1954	U	207 min	Action, Adventure, Drama	8.6	A poor village under attack by bandits recruits seven unemployed samurai to help them defend themselves.	98	Akira Kurosawa	Toshirô Mifune	Takashi Shimura	Keiko Tsushima	Yukiko Shimazaki	315744	269061
46	https://m.media-amazon.com/images/M/MV5BM2FhYjEyYmYtMDI1Yy00YTdlLWI2NWQtYmEzNzAxOGY1NjY2XkEyXkFqcGdeQXVyNTA3NTIyNDg@._V1_.jpg	Nuovo Cinema Paradiso	1988	U	155 min	Drama, Romance	8.5	A filmmaker recalls his childhood when falling in love with the pictures at the cinema of his home village and forms a deep friendship with the cinema's projectionist.	80	Giuseppe Tornatore	Philippe Noiret	Enzo Cannavale	Antonella Attili	Isa Danieli	230763	11990401
47	https://m.media-amazon.com/images/M/MV5BZmY2NjUzNDQtNTgxNC00M2Q4LTljOWQtMjNjNDBjNWUxNmJlXkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_.jpg	Hotaru no haka	1988	U	89 min	Animation, Drama, War	8.5	A young boy and his little sister struggle to survive in Japan during World War II.	94	Isao Takahata	Tsutomu Tatsumi	Ayano Shiraishi	Akemi Yamaguchi	Yoshiko Shinohara	235231	\N
62	https://m.media-amazon.com/images/M/MV5BYjQ5NjM0Y2YtNjZkNC00ZDhkLWJjMWItN2QyNzFkMDE3ZjAxXkEyXkFqcGdeQXVyODIxMzk5NjA@._V1_.jpg	Coco	2017	U	105 min	Animation, Adventure, Family	8.4	Aspiring musician Miguel, confronted with his family's ancestral ban on music, enters the Land of the Dead to find his great-great-grandfather, a legendary singer.	81	Lee Unkrich	Adrian Molina	Anthony Gonzalez	Gael García Bernal	Benjamin Bratt	384171	209726015
63	https://m.media-amazon.com/images/M/MV5BMjIyNTQ5NjQ1OV5BMl5BanBnXkFtZTcwODg1MDU4OA@@._V1_.jpg	Django Unchained	2012	A	165 min	Drama, Western	8.4	With the help of a German bounty hunter, a freed slave sets out to rescue his wife from a brutal Mississippi plantation owner.	81	Quentin Tarantino	Jamie Foxx	Christoph Waltz	Leonardo DiCaprio	Kerry Washington	1357682	162805434
79	https://m.media-amazon.com/images/M/MV5BZWI3ZTMxNjctMjdlNS00NmUwLWFiM2YtZDUyY2I3N2MxYTE0XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_.jpg	Dr. Strangelove or: How I Learned to Stop Worrying and Love the Bomb	1964	A	95 min	Comedy	8.4	An insane general triggers a path to nuclear holocaust that a War Room full of politicians and generals frantically tries to stop.	97	Stanley Kubrick	Peter Sellers	George C. Scott	Sterling Hayden	Keenan Wynn	450474	275902
83	https://m.media-amazon.com/images/M/MV5BMTU0NTkyNzYwMF5BMl5BanBnXkFtZTgwMDU0NDk5MTI@._V1_.jpg	Sunset Blvd.	1950	Passed	110 min	Drama, Film-Noir	8.4	A screenwriter develops a dangerous relationship with a faded film star determined to make a triumphant return.	\N	Billy Wilder	William Holden	Gloria Swanson	Erich von Stroheim	Nancy Olson	201632	\N
95	https://m.media-amazon.com/images/M/MV5BMTY4NzcwODg3Nl5BMl5BanBnXkFtZTcwNTEwOTMyMw@@._V1_.jpg	Eternal Sunshine of the Spotless Mind	2004	UA	108 min	Drama, Romance, Sci-Fi	8.3	When their relationship turns sour, a couple undergoes a medical procedure to have each other erased from their memories.	89	Michel Gondry	Jim Carrey	Kate Winslet	Tom Wilkinson	Gerry Robert Byrne	911664	34400301
98	https://m.media-amazon.com/images/M/MV5BOTdiNzJlOWUtNWMwNS00NmFlLWI0YTEtZmI3YjIzZWUyY2Y3XkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_.jpg	Requiem for a Dream	2000	A	102 min	Drama	8.3	The drug-induced utopias of four Coney Island people are shattered when their addictions run deep.	68	Darren Aronofsky	Ellen Burstyn	Jared Leto	Jennifer Connelly	Marlon Wayans	766870	3635482
111	https://m.media-amazon.com/images/M/MV5BOGZhZDIzNWMtNjkxMS00MDQ1LThkMTYtZWQzYWU3MWMxMGU5XkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_.jpg	Das Boot	1981	R	149 min	Adventure, Drama, Thriller	8.3	The claustrophobic world of a WWII German U-boat; boredom, filth and sheer terror.	86	Wolfgang Petersen	Jürgen Prochnow	Herbert Grönemeyer	Klaus Wennemann	Hubertus Bengsch	231855	11487676
112	https://m.media-amazon.com/images/M/MV5BM2M1MmVhNDgtNmI0YS00ZDNmLTkyNjctNTJiYTQ2N2NmYzc2XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_.jpg	Taxi Driver	1976	A	114 min	Crime, Drama	8.3	A mentally unstable veteran works as a nighttime taxi driver in New York City, where the perceived decadence and sleaze fuels his urge for violent action by attempting to liberate a presidential campaign worker and an underage prostitute.	94	Martin Scorsese	Robert De Niro	Jodie Foster	Cybill Shepherd	Albert Brooks	724636	28262574
128	https://m.media-amazon.com/images/M/MV5BZjhhMThhNDItNTY2MC00MmU1LTliNDEtNDdhZjdlNTY5ZDQ1XkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_.jpg	The Kid	1921	Passed	68 min	Comedy, Drama, Family	8.3	The Tramp cares for an abandoned child, but events put that relationship in jeopardy.	\N	Charles Chaplin	Charles Chaplin	Edna Purviance	Jackie Coogan	Carl Miller	113314	5450000
129	https://m.media-amazon.com/images/M/MV5BYjg2ZDI2YTYtN2EwYi00YWI5LTgyMWQtMWFkYmE3NmJkOGVhXkEyXkFqcGdeQXVyODE5NzE3OTE@._V1_.jpg	Chhichhore	2019	UA	143 min	Comedy, Drama	8.2	A tragic incident forces Anirudh, a middle-aged man, to take a trip down memory lane and reminisce his college days along with his friends, who were labelled as losers.	\N	Nitesh Tiwari	Sushant Singh Rajput	Shraddha Kapoor	Varun Sharma	Prateik	33893	898575
145	https://m.media-amazon.com/images/M/MV5BMTk4ODk5MTMyNV5BMl5BanBnXkFtZTcwMDMyNTg0Ng@@._V1_.jpg	Warrior	2011	UA	140 min	Action, Drama, Sport	8.2	The youngest son of an alcoholic former boxer returns home, where he's trained by his father for competition in a mixed martial arts tournament - a path that puts the fighter on a collision course with his estranged, older brother.	71	Gavin O'Connor	Tom Hardy	Nick Nolte	Joel Edgerton	Jennifer Morrison	435950	13657115
146	https://m.media-amazon.com/images/M/MV5BYzhiNDkyNzktNTZmYS00ZTBkLTk2MDAtM2U0YjU1MzgxZjgzXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg	Shutter Island	2010	A	138 min	Mystery, Thriller	8.2	In 1954, a U.S. Marshal investigates the disappearance of a murderer who escaped from a hospital for the criminally insane.	63	Martin Scorsese	Leonardo DiCaprio	Emily Mortimer	Mark Ruffalo	Ben Kingsley	1129894	128012934
161	https://m.media-amazon.com/images/M/MV5BMGMzZjY2ZWQtZjQxYS00NWY3LThhNjItNWQzNTkzOTllODljXkEyXkFqcGdeQXVyNjY1MTg4Mzc@._V1_.jpg	Hera Pheri	2000	U	156 min	Action, Comedy, Crime	8.2	Three unemployed men look for answers to all their money problems - but when their opportunity arrives, will they know what to do with it?	\N	Priyadarshan	Akshay Kumar	Sunil Shetty	Paresh Rawal	Tabu	57057	\N
164	https://m.media-amazon.com/images/M/MV5BOGQ4ZjFmYjktOGNkNS00OWYyLWIyZjgtMGJjM2U1ZTA0ZTlhXkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_.jpg	Eskiya	1996	\N	128 min	Crime, Drama, Thriller	8.2	Baran the Bandit, released from prison after 35 years, searches for vengeance and his lover.	\N	Yavuz Turgul	Sener Sen	Ugur Yücel	Sermin Hürmeriç	Yesim Salkim	64118	\N
194	https://m.media-amazon.com/images/M/MV5BZjEyOTE4MzMtNmMzMy00Mzc3LWJlOTQtOGJiNDE0ZmJiOTU4L2ltYWdlXkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_.jpg	The Gold Rush	1925	Passed	95 min	Adventure, Comedy, Drama	8.2	A prospector goes to the Klondike in search of gold and finds it and more.	\N	Charles Chaplin	Charles Chaplin	Mack Swain	Tom Murray	Henry Bergman	101053	5450000
195	https://m.media-amazon.com/images/M/MV5BZWFhOGU5NDctY2Q3YS00Y2VlLWI1NzEtZmIwY2ZiZjY4OTA2XkEyXkFqcGdeQXVyMDI2NDg0NQ@@._V1_.jpg	Sherlock Jr.	1924	Passed	45 min	Action, Comedy, Romance	8.2	A film projectionist longs to be a detective, and puts his meagre skills to work when he is framed by a rival for stealing his girlfriend's father's pocketwatch.	\N	Buster Keaton	Buster Keaton	Kathryn McGuire	Joe Keaton	Erwin Connelly	41985	977375
211	https://m.media-amazon.com/images/M/MV5BMTk0MDQ3MzAzOV5BMl5BanBnXkFtZTgwNzU1NzE3MjE@._V1_.jpg	Gone Girl	2014	A	149 min	Drama, Mystery, Thriller	8.1	With his wife's disappearance having become the focus of an intense media circus, a man sees the spotlight turned on him when it's suspected that he may not be innocent.	79	David Fincher	Ben Affleck	Rosamund Pike	Neil Patrick Harris	Tyler Perry	859695	167767189
212	https://m.media-amazon.com/images/M/MV5BYzQxNDZhNDUtNDUwOC00NjQyLTg2OWUtZWVlYThjYjYyMTc2XkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_.jpg	Ôkami kodomo no Ame to Yuki	2012	U	117 min	Animation, Drama, Fantasy	8.1	After her werewolf lover unexpectedly dies in an accident while hunting for food for their children, a young woman must find ways to raise the werewolf son and daughter that she had with him while keeping their trait hidden from society.	71	Mamoru Hosoda	Aoi Miyazaki	Takao Osawa	Haru Kuroki	Yukito Nishii	38803	\N
227	https://m.media-amazon.com/images/M/MV5BMGVmMWNiMDktYjQ0Mi00MWIxLTk0N2UtN2ZlYTdkN2IzNDNlXkEyXkFqcGdeQXVyODE5NzE3OTE@._V1_.jpg	Harry Potter and the Deathly Hallows: Part 2	2011	UA	130 min	Adventure, Drama, Fantasy	8.1	Harry, Ron, and Hermione search for Voldemort's remaining Horcruxes in their effort to destroy the Dark Lord as the final battle rages on at Hogwarts.	85	David Yates	Daniel Radcliffe	Emma Watson	Rupert Grint	Michael Gambon	764493	381011219
228	https://m.media-amazon.com/images/M/MV5BMTUzOTcwOTA2NV5BMl5BanBnXkFtZTcwNDczMzczMg@@._V1_.jpg	Okuribito	2008	PG-13	130 min	Drama, Music	8.1	A newly unemployed cellist takes a job preparing the dead for funerals.	68	Yôjirô Takita	Masahiro Motoki	Ryôko Hirosue	Tsutomu Yamazaki	Kazuko Yoshiyuki	48582	1498210
244	https://m.media-amazon.com/images/M/MV5BMTY5MzYzNjc5NV5BMl5BanBnXkFtZTYwNTUyNTc2._V1_.jpg	Catch Me If You Can	2002	A	141 min	Biography, Crime, Drama	8.1	Barely 21 yet, Frank is a skilled forger who has passed as a doctor, lawyer and pilot. FBI agent Carl becomes obsessed with tracking down the con man, who only revels in the pursuit.	75	Steven Spielberg	Leonardo DiCaprio	Tom Hanks	Christopher Walken	Martin Sheen	832846	164615351
245	https://m.media-amazon.com/images/M/MV5BMjQxMWJhMzMtMzllZi00NzMwLTllYjktNTcwZmU4ZmU3NTA0XkEyXkFqcGdeQXVyMTAzMDM4MjM0._V1_.jpg	Amores perros	2000	A	154 min	Drama, Thriller	8.1	A horrific car accident connects three stories, each involving characters dealing with loss, regret, and life's harsh realities, all in the name of love.	83	Alejandro G. Iñárritu	Emilio Echevarría	Gael García Bernal	Goya Toledo	Álvaro Guerrero	223741	5383834
260	https://m.media-amazon.com/images/M/MV5BZDdiZTAwYzAtMDI3Ni00OTRjLTkzN2UtMGE3MDMyZmU4NTU4XkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_.jpg	Before Sunrise	1995	R	101 min	Drama, Romance	8.1	A young man and woman meet on a train in Europe, and wind up spending one evening together in Vienna. Unfortunately, both know that this will probably be their only night together.	77	Richard Linklater	Ethan Hawke	Julie Delpy	Andrea Eckert	Hanno Pöschl	272291	5535405
261	https://m.media-amazon.com/images/M/MV5BYTg1MmNiMjItMmY4Yy00ZDQ3LThjMzYtZGQ0ZTQzNTdkMGQ1L2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg	Trois couleurs: Rouge	1994	U	99 min	Drama, Mystery, Romance	8.1	A model discovers a retired judge is keen on invading people's privacy.	100	Krzysztof Kieslowski	Irène Jacob	Jean-Louis Trintignant	Frédérique Feder	Jean-Pierre Lorit	90729	4043686
276	https://m.media-amazon.com/images/M/MV5BNzQzMzJhZTEtOWM4NS00MTdhLTg0YjgtMjM4MDRkZjUwZDBlXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_.jpg	Blade Runner	1982	UA	117 min	Action, Sci-Fi, Thriller	8.1	A blade runner must pursue and terminate four replicants who stole a ship in space, and have returned to Earth to find their creator.	84	Ridley Scott	Harrison Ford	Rutger Hauer	Sean Young	Edward James Olmos	693827	32868943
277	https://m.media-amazon.com/images/M/MV5BMDVjNjIwOGItNDE3Ny00OThjLWE0NzQtZTU3YjMzZTZjMzhkXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg	The Elephant Man	1980	UA	124 min	Biography, Drama	8.1	A Victorian surgeon rescues a heavily disfigured man who is mistreated while scraping a living as a side-show freak. Behind his monstrous façade, there is revealed a person of kindness, intelligence and sophistication.	78	David Lynch	Anthony Hopkins	John Hurt	Anne Bancroft	John Gielgud	220078	\N
293	https://m.media-amazon.com/images/M/MV5BZTg3M2ExY2EtZmI5Yy00YWM1LTg4NzItZWEzZTgxNzE2MjhhXkEyXkFqcGdeQXVyNDE5MTU2MDE@._V1_.jpg	El ángel exterminador	1962	\N	95 min	Drama, Fantasy	8.1	The guests at an upper-class dinner party find themselves unable to leave.	\N	Luis Buñuel	Silvia Pinal	Jacqueline Andere	Enrique Rambal	José Baviera	29682	\N
294	https://m.media-amazon.com/images/M/MV5BZmI0M2VmNTgtMWVhYS00Zjg1LTk1YTYtNmJmMjRkZmMwYTc2XkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_.jpg	What Ever Happened to Baby Jane?	1962	Passed	134 min	Drama, Horror, Thriller	8.1	A former child star torments her paraplegic sister in their decaying Hollywood mansion.	75	Robert Aldrich	Bette Davis	Joan Crawford	Victor Buono	Wesley Addy	50058	4050000
310	https://m.media-amazon.com/images/M/MV5BYjE2OTdhMWUtOGJlMy00ZDViLWIzZjgtYjZkZGZmMDZjYmEyXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_.jpg	The Third Man	1949	Approved	104 min	Film-Noir, Mystery, Thriller	8.1	Pulp novelist Holly Martins travels to shadowy, postwar Vienna, only to find himself investigating the mysterious death of an old friend, Harry Lime.	97	Carol Reed	Orson Welles	Joseph Cotten	Alida Valli	Trevor Howard	158731	449191
311	https://m.media-amazon.com/images/M/MV5BOWRmNGEwZjUtZjEwNS00OGZmLThhMmEtZTJlMTU5MGQ3ZWUwXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_.jpg	The Red Shoes	1948	\N	135 min	Drama, Music, Romance	8.1	A young ballet dancer is torn between the man she loves and her pursuit to become a prima ballerina.	\N	Michael Powell	Emeric Pressburger	Anton Walbrook	Marius Goring	Moira Shearer	30935	10900000
327	https://m.media-amazon.com/images/M/MV5BYTdhNjBjZDctYTlkYy00ZGIxLWFjYTktODk5ZjNlMzI4NjI3XkEyXkFqcGdeQXVyMjY1MjkzMjE@._V1_.jpg	Baby	2015	UA	159 min	Action, Crime, Thriller	8	An elite counter-intelligence unit learns of a plot, masterminded by a maniacal madman. With the clock ticking, it's up to them to track the terrorists' international tentacles and prevent them from striking at the heart of India.	\N	Neeraj Pandey	Akshay Kumar	Danny Denzongpa	Rana Daggubati	Taapsee Pannu	52848	\N
345	https://m.media-amazon.com/images/M/MV5BZThjMmQ5YjktMTUyMC00MjljLWJmMTAtOWIzNDIzY2VhNzQ0XkEyXkFqcGdeQXVyMTAyNjg4NjE0._V1_.jpg	The Perks of Being a Wallflower	2012	UA	103 min	Drama, Romance	8	An introvert freshman is taken under the wings of two seniors who welcome him to the real world	67	Stephen Chbosky	Logan Lerman	Emma Watson	Ezra Miller	Paul Rudd	462252	17738570
353	https://m.media-amazon.com/images/M/MV5BMTUyMTA4NDYzMV5BMl5BanBnXkFtZTcwMjk5MzcxMw@@._V1_.jpg	My Name Is Khan	2010	UA	165 min	Drama	8	An Indian Muslim man with Asperger's syndrome takes a challenge to speak to the President of the United States seriously and embarks on a cross-country journey.	50	Karan Johar	Shah Rukh Khan	Kajol	Sheetal Menon	Katie A. Keane	98575	4018695
361	https://m.media-amazon.com/images/M/MV5BMTQ5NjQ0NDI3NF5BMl5BanBnXkFtZTcwNDI0MjEzMw@@._V1_.jpg	The Pursuit of Happyness	2006	U	117 min	Biography, Drama	8	A struggling salesman takes custody of his son as he's poised to begin a life-changing professional career.	64	Gabriele Muccino	Will Smith	Thandie Newton	Jaden Smith	Brian Howe	448930	163566459
362	https://m.media-amazon.com/images/M/MV5BZDMxOGZhNWYtMzRlYy00Mzk5LWJjMjEtNmQ4NDU4M2QxM2UzXkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_.jpg	Blood Diamond	2006	A	143 min	Adventure, Drama, Thriller	8	A fisherman, a smuggler, and a syndicate of businessmen match wits over the possession of a priceless diamond.	64	Edward Zwick	Leonardo DiCaprio	Djimon Hounsou	Jennifer Connelly	Kagiso Kuypers	499439	57366262
378	https://m.media-amazon.com/images/M/MV5BMmU3NzIyODctYjVhOC00NzBmLTlhNWItMzBlODEwZTlmMjUzXkEyXkFqcGdeQXVyNTIzOTk5ODM@._V1_.jpg	Big Fish	2003	U	125 min	Adventure, Drama, Fantasy	8	A frustrated son tries to determine the fact from fiction in his dying father's life.	58	Tim Burton	Ewan McGregor	Albert Finney	Billy Crudup	Jessica Lange	415218	66257002
379	https://m.media-amazon.com/images/M/MV5BMTY5OTU0OTc2NV5BMl5BanBnXkFtZTcwMzU4MDcyMQ@@._V1_.jpg	The Incredibles	2004	U	115 min	Animation, Action, Adventure	8	A family of undercover superheroes, while trying to live the quiet suburban life, are forced into action to save the world.	90	Brad Bird	Craig T. Nelson	Samuel L. Jackson	Holly Hunter	Jason Lee	657047	261441092
382	https://m.media-amazon.com/images/M/MV5BMjA2MzM4NjkyMF5BMl5BanBnXkFtZTYwMTQ2ODc5._V1_.jpg	Vizontele	2001	\N	110 min	Comedy, Drama	8	Lives of residents in a small Anatolian village change when television is introduced to them	\N	Yilmaz Erdogan	Ömer Faruk Sorak	Yilmaz Erdogan	Demet Akbag	Altan Erkekli	33592	\N
395	https://m.media-amazon.com/images/M/MV5BYWRiYjQyOGItNzQ1Mi00MGI1LWE3NjItNTg1ZDQwNjUwNDM2XkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_.jpg	Kôkaku Kidôtai	1995	UA	83 min	Animation, Action, Crime	8	A cyborg policewoman and her partner hunt a mysterious and powerful hacker called the Puppet Master.	76	Mamoru Oshii	Atsuko Tanaka	Iemasa Kayumi	Akio Ôtsuka	Kôichi Yamadera	129231	515905
396	https://m.media-amazon.com/images/M/MV5BNWE4OTNiM2ItMjY4Ni00ZTViLWFiZmEtZGEyNGY2ZmNlMzIyXkEyXkFqcGdeQXVyMDU5NDcxNw@@._V1_.jpg	The Nightmare Before Christmas	1993	U	76 min	Animation, Family, Fantasy	8	Jack Skellington, king of Halloween Town, discovers Christmas Town, but his attempts to bring Christmas to his home causes confusion.	82	Henry Selick	Danny Elfman	Chris Sarandon	Catherine O'Hara	William Hickey	300208	75082668
411	https://m.media-amazon.com/images/M/MV5BYTViNzMxZjEtZGEwNy00MDNiLWIzNGQtZDY2MjQ1OWViZjFmXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_.jpg	The Terminator	1984	UA	107 min	Action, Sci-Fi	8	A human soldier is sent from 2029 to 1984 to stop an almost indestructible cyborg killing machine, sent from the same year, which has been programmed to execute a young woman whose unborn son is the key to humanity's future salvation.	84	James Cameron	Arnold Schwarzenegger	Linda Hamilton	Michael Biehn	Paul Winfield	799795	38400000
414	https://m.media-amazon.com/images/M/MV5BNjAzNzJjYzQtMGFmNS00ZjAzLTkwMjgtMWIzYzFkMzM4Njg3XkEyXkFqcGdeQXVyMTY5Nzc4MDY@._V1_.jpg	Being There	1979	PG	130 min	Comedy, Drama	8	A simpleminded, sheltered gardener becomes an unlikely trusted advisor to a powerful businessman and an insider in Washington politics.	83	Hal Ashby	Peter Sellers	Shirley MacLaine	Melvyn Douglas	Jack Warden	65625	30177511
428	https://m.media-amazon.com/images/M/MV5BMTQ0ODc4MDk4Nl5BMl5BanBnXkFtZTcwMTEzNzgzNA@@._V1_.jpg	The Graduate	1967	A	106 min	Comedy, Drama, Romance	8	A disillusioned college graduate finds himself torn between his older lover and her daughter.	83	Mike Nichols	Dustin Hoffman	Anne Bancroft	Katharine Ross	William Daniels	253676	104945305
429	https://m.media-amazon.com/images/M/MV5BMjQ5ODI1MjQtMDc0Zi00OGQ1LWE2NTYtMTg1YTkxM2E5NzFkXkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_.jpg	Who's Afraid of Virginia Woolf?	1966	A	131 min	Drama	8	A bitter, aging couple, with the help of alcohol, use their young houseguests to fuel anguish and emotional pain towards each other over the course of a distressing night.	75	Mike Nichols	Elizabeth Taylor	Richard Burton	George Segal	Sandy Dennis	68926	\N
445	https://m.media-amazon.com/images/M/MV5BMGJmNmU5OTAtOTQyYy00MmM3LTk4MzUtMGFiZDYzODdmMmU4XkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_.jpg	Les diaboliques	1955	\N	117 min	Crime, Drama, Horror	8	The wife and mistress of a loathed school principal plan to murder him with what they believe is the perfect alibi.	\N	Henri-Georges Clouzot	Simone Signoret	Véra Clouzot	Paul Meurisse	Charles Vanel	61503	\N
447	https://m.media-amazon.com/images/M/MV5BMTE2MDM4MTMtZmNkZC00Y2QyLWE0YjUtMTAxZGJmODMxMDM0XkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_.jpg	Roman Holiday	1953	\N	118 min	Comedy, Romance	8	A bored and sheltered princess escapes her guardians and falls in love with an American newsman in Rome.	78	William Wyler	Gregory Peck	Audrey Hepburn	Eddie Albert	Hartley Power	127256	\N
453	https://m.media-amazon.com/images/M/MV5BYWQ0MGNjOTYtMWJlNi00YWMxLWFmMzktYjAyNTVkY2U1NWNhL2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_.jpg	Brief Encounter	1945	U	86 min	Drama, Romance	8	Meeting a stranger in a railway station, a woman is tempted to cheat on her husband.	92	David Lean	Celia Johnson	Trevor Howard	Stanley Holloway	Joyce Carey	35601	\N
462	https://m.media-amazon.com/images/M/MV5BMzg2MWQ4MDEtOGZlNi00MTg0LWIwMjQtYWY5NTQwYmUzMWNmXkEyXkFqcGdeQXVyMzg2MzE2OTE@._V1_.jpg	All Quiet on the Western Front	1930	U	152 min	Drama, War	8	A German youth eagerly enters World War I, but his enthusiasm wanes as he gets a firsthand view of the horror.	91	Lewis Milestone	Lew Ayres	Louis Wolheim	John Wray	Arnold Lucy	57318	3270000
463	https://m.media-amazon.com/images/M/MV5BMTEyMTQzMjQ0MTJeQTJeQWpwZ15BbWU4MDcyMjg4OTEx._V1_.jpg	Bronenosets Potemkin	1925	\N	75 min	Drama, History, Thriller	8	In the midst of the Russian Revolution of 1905, the crew of the battleship Potemkin mutiny against the brutal, tyrannical regime of the vessel's officers. The resulting street demonstration in Odessa brings on a police massacre.	97	Sergei M. Eisenstein	Aleksandr Antonov	Vladimir Barskiy	Grigoriy Aleksandrov	Ivan Bobrov	53054	50970
479	https://m.media-amazon.com/images/M/MV5BMjA5NzgxODE2NF5BMl5BanBnXkFtZTcwNTI1NTI0OQ@@._V1_.jpg	Before Midnight	2013	R	109 min	Drama, Romance	7.9	We meet Jesse and Celine nine years on in Greece. Almost two decades have passed since their first meeting on that train bound for Vienna.	94	Richard Linklater	Ethan Hawke	Julie Delpy	Seamus Davey-Fitzpatrick	Ariane Labed	141457	8114627
480	https://m.media-amazon.com/images/M/MV5BZGIzNWYzN2YtMjcwYS00YjQ3LWI2NjMtOTNiYTUyYjE2MGNkXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg	X-Men: Days of Future Past	2014	UA	132 min	Action, Adventure, Sci-Fi	7.9	The X-Men send Wolverine to the past in a desperate effort to change history and prevent an event that results in doom for both humans and mutants.	75	Bryan Singer	Patrick Stewart	Ian McKellen	Hugh Jackman	James McAvoy	659763	233921534
486	https://m.media-amazon.com/images/M/MV5BMTUyMjQ1MTY5OV5BMl5BanBnXkFtZTcwNzY5NjExMw@@._V1_.jpg	Un prophète	2009	A	155 min	Crime, Drama	7.9	A young Arab man is sent to a French prison.	90	Jacques Audiard	Tahar Rahim	Niels Arestrup	Adel Bencherif	Reda Kateb	93560	2084637
496	https://m.media-amazon.com/images/M/MV5BMzQ5NGQwOTUtNWJlZi00ZTFiLWI0ZTEtOGU3MTA2ZGU5OWZiXkEyXkFqcGdeQXVyMTczNjQwOTY@._V1_.jpg	The Man from Earth	2007	\N	87 min	Drama, Fantasy, Mystery	7.9	An impromptu goodbye party for Professor John Oldman becomes a mysterious interrogation after the retiring scholar reveals to his colleagues he has a longer and stranger past than they can imagine.	\N	Richard Schenkman	David Lee Smith	Tony Todd	John Billingsley	Ellen Crawford	174125	\N
497	https://m.media-amazon.com/images/M/MV5BMjE0NzgwODI4M15BMl5BanBnXkFtZTcwNjg3OTA0MQ@@._V1_.jpg	Letters from Iwo Jima	2006	UA	141 min	Action, Adventure, Drama	7.9	The story of the battle of Iwo Jima between the United States and Imperial Japan during World War II, as told from the perspective of the Japanese who fought it.	89	Clint Eastwood	Ken Watanabe	Kazunari Ninomiya	Tsuyoshi Ihara	Ryô Kase	154011	13756082
512	https://m.media-amazon.com/images/M/MV5BM2JkNGU0ZGMtZjVjNS00NjgyLWEyOWYtZmRmZGQyN2IxZjA2XkEyXkFqcGdeQXVyNTIzOTk5ODM@._V1_.jpg	The Bourne Identity	2002	UA	119 min	Action, Mystery, Thriller	7.9	A man is picked up by a fishing boat, bullet-riddled and suffering from amnesia, before racing to elude assassins and attempting to regain his memory.	68	Doug Liman	Franka Potente	Matt Damon	Chris Cooper	Clive Owen	508771	121661683
527	https://m.media-amazon.com/images/M/MV5BYWY3N2EyOWYtNDVhZi00MWRkLTg2OTUtODNkNDQ5ZTIwMGJkXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg	Crimes and Misdemeanors	1989	PG-13	104 min	Comedy, Drama	7.9	An ophthalmologist's mistress threatens to reveal their affair to his wife while a married documentary filmmaker is infatuated with another woman.	77	Woody Allen	Martin Landau	Woody Allen	Bill Bernstein	Claire Bloom	54670	18254702
528	https://m.media-amazon.com/images/M/MV5BYTVjYWJmMWQtYWU4Ni00MWY3LWI2YmMtNTI5MDE0MWVmMmEzL2ltYWdlXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg	The Untouchables	1987	A	119 min	Crime, Drama, Thriller	7.9	During the era of Prohibition in the United States, Federal Agent Eliot Ness sets out to stop ruthless Chicago gangster Al Capone and, because of rampant corruption, assembles a small, hand-picked team to help him.	79	Brian De Palma	Kevin Costner	Sean Connery	Robert De Niro	Charles Martin Smith	281842	76270454
543	https://m.media-amazon.com/images/M/MV5BMmNhZmJhMmYtNjlkMC00MjhjLTk1NzMtMTNlMzYzNjZlMjNiXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg	Patton	1970	U	172 min	Biography, Drama, War	7.9	The World War II phase of the career of controversial American general George S. Patton.	91	Franklin J. Schaffner	George C. Scott	Karl Malden	Stephen Young	Michael Strong	93741	61700000
544	https://m.media-amazon.com/images/M/MV5BNGUyYTZmOWItMDJhMi00N2IxLWIyNDMtNjUxM2ZiYmU5YWU1XkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_.jpg	The Wild Bunch	1969	A	145 min	Action, Adventure, Western	7.9	An aging group of outlaws look for one last big score as the "traditional" American West is disappearing around them.	97	Sam Peckinpah	William Holden	Ernest Borgnine	Robert Ryan	Edmond O'Brien	77401	12064472
560	https://m.media-amazon.com/images/M/MV5BYTc1NGViOTMtNjZhNS00OGY2LWI4MmItOWQwNTY4MDMzNWI3L2ltYWdlXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_.jpg	Notorious	1946	U	102 min	Drama, Film-Noir, Romance	7.9	A woman is asked to spy on a group of Nazi friends in South America. How far will she have to go to ingratiate herself with them?	100	Alfred Hitchcock	Cary Grant	Ingrid Bergman	Claude Rains	Louis Calhern	92306	10464000
561	https://m.media-amazon.com/images/M/MV5BMjdiM2IyZmQtODJiYy00NDNkLTllYmItMmFjMDNiYTQyOGVkXkEyXkFqcGdeQXVyNDY2MTk1ODk@._V1_.jpg	The Big Sleep	1946	Passed	114 min	Crime, Film-Noir, Mystery	7.9	Private detective Philip Marlowe is hired by a wealthy family. Before the complex case is over, he's seen murder, blackmail, and what might be love.	\N	Howard Hawks	Humphrey Bogart	Lauren Bacall	John Ridgely	Martha Vickers	78796	6540000
576	https://m.media-amazon.com/images/M/MV5BMzg2Mzg4YmUtNDdkNy00NWY1LWE3NmEtZWMwNGNlMzE5YzU3XkEyXkFqcGdeQXVyMjA5MTIzMjQ@._V1_.jpg	Hidden Figures	2016	UA	127 min	Biography, Drama, History	7.8	The story of a team of female African-American mathematicians who served a vital role in NASA during the early years of the U.S. space program.	74	Theodore Melfi	Taraji P. Henson	Octavia Spencer	Janelle Monáe	Kevin Costner	200876	169607287
577	https://m.media-amazon.com/images/M/MV5BMmYwNWZlNzEtNjE4Zi00NzQ4LWI2YmUtOWZhNzZhZDYyNmVmXkEyXkFqcGdeQXVyNzYzODM3Mzg@._V1_.jpg	Paddington 2	2017	U	103 min	Adventure, Comedy, Family	7.8	Paddington (Ben Whishaw), now happily settled with the Brown family and a popular member of the local community, picks up a series of odd jobs to buy the perfect present for his Aunt Lucy's (Imelda Staunton's) 100th birthday, only for the gift to be stolen.	88	Paul King	Ben Whishaw	Hugh Grant	Hugh Bonneville	Sally Hawkins	61594	40442052
592	https://m.media-amazon.com/images/M/MV5BYWNlODE1ZTEtOTQ5MS00N2QwLTllNjItZDQ2Y2UzMmU5YmI2XkEyXkFqcGdeQXVyODE5NzE3OTE@._V1_.jpg	Vicky Donor	2012	UA	126 min	Comedy, Romance	7.8	A man is brought in by an infertility doctor to supply him with his sperm, where he becomes the biggest sperm donor for his clinic.	\N	Shoojit Sircar	Ayushmann Khurrana	Yami Gautam	Annu Kapoor	Dolly Ahluwalia	39710	169209
610	https://m.media-amazon.com/images/M/MV5BMzU0NDY0NDEzNV5BMl5BanBnXkFtZTgwOTIxNDU1MDE@._V1_.jpg	The Hobbit: The Desolation of Smaug	2013	UA	161 min	Adventure, Fantasy	7.8	The dwarves, along with Bilbo Baggins and Gandalf the Grey, continue their quest to reclaim Erebor, their homeland, from Smaug. Bilbo Baggins is in possession of a mysterious and magical ring.	66	Peter Jackson	Ian McKellen	Martin Freeman	Richard Armitage	Ken Stott	601408	258366855
611	https://m.media-amazon.com/images/M/MV5BMTQ2OTYyNzUxOF5BMl5BanBnXkFtZTcwMzUwMDY4Mg@@._V1_.jpg	Das weiße Band - Eine deutsche Kindergeschichte	2009	UA	144 min	Drama, History, Mystery	7.8	Strange events happen in a small village in the north of Germany during the years before World War I, which seem to be ritual punishment. Who is responsible?	82	Michael Haneke	Christian Friedel	Ernst Jacobi	Leonie Benesch	Ulrich Tukur	68715	2222647
626	https://m.media-amazon.com/images/M/MV5BMzhmNGMzMDMtZDM0Yi00MmVmLWExYjAtZDhjZjcxZDM0MzJhXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_.jpg	Apocalypto	2006	A	139 min	Action, Adventure, Drama	7.8	As the Mayan kingdom faces its decline, a young man is taken on a perilous journey to a world ruled by fear and oppression.	68	Mel Gibson	Gerardo Taracena	Raoul Max Trujillo	Dalia Hernández	Rudy Youngblood	291018	50866635
627	https://m.media-amazon.com/images/M/MV5BMTgzNTgzODU0NV5BMl5BanBnXkFtZTcwMjEyMjMzMQ@@._V1_.jpg	Little Miss Sunshine	2006	UA	101 min	Comedy, Drama	7.8	A family determined to get their young daughter into the finals of a beauty pageant take a cross-country trip in their VW bus.	80	Jonathan Dayton	Valerie Faris	Steve Carell	Toni Collette	Greg Kinnear	439856	59891098
642	https://m.media-amazon.com/images/M/MV5BMTI1NDA4NTMyN15BMl5BanBnXkFtZTYwNTA2ODc5._V1_.jpg	Gongdong gyeongbi guyeok JSA	2000	\N	110 min	Action, Drama, Thriller	7.8	After a shooting incident at the North/South Korean border/DMZ leaves 2 North Korean soldiers dead, a neutral Swiss/Swedish team investigates, what actually happened.	58	Chan-wook Park	Lee Yeong-ae	Lee Byung-Hun	Kang-ho Song	Kim Tae-Woo	26518	\N
643	https://m.media-amazon.com/images/M/MV5BMDM0ZWRjZDgtZWI0MS00ZTIzLTg4MWYtZjU5MDEyMDU0ODBjXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg	The Count of Monte Cristo	2002	PG-13	131 min	Action, Adventure, Drama	7.8	A young man, falsely imprisoned by his jealous "friend", escapes and uses a hidden treasure to exact his revenge.	61	Kevin Reynolds	Jim Caviezel	Guy Pearce	Christopher Adamson	JB Blanc	129022	54234062
658	https://m.media-amazon.com/images/M/MV5BNTA5ZjdjNWUtZGUwNy00N2RhLWJiZmItYzFhYjU1NmYxNjY4XkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg	Ed Wood	1994	U	127 min	Biography, Comedy, Drama	7.8	Ambitious but troubled movie director Edward D. Wood Jr. tries his best to fulfill his dreams, despite his lack of talent.	70	Tim Burton	Johnny Depp	Martin Landau	Sarah Jessica Parker	Patricia Arquette	164937	5887457
659	https://m.media-amazon.com/images/M/MV5BY2EyZDlhNjItODYzNi00Mzc3LWJjOWUtMTViODU5MTExZWMyL2ltYWdlXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg	What's Eating Gilbert Grape	1993	U	118 min	Drama	7.8	A young man in a small Midwestern town struggles to care for his mentally-disabled younger brother and morbidly obese mother while attempting to pursue his own happiness.	73	Lasse Hallström	Johnny Depp	Leonardo DiCaprio	Juliette Lewis	Mary Steenburgen	215034	9170214
674	https://m.media-amazon.com/images/M/MV5BODhlNjA5MDEtZDVhNS00ZmM3LTg1YzAtZGRjNjhjNTAzNzVkXkEyXkFqcGdeQXVyNjUwMzI2NzU@._V1_.jpg	Glory	1989	R	122 min	Biography, Drama, History	7.8	Robert Gould Shaw leads the U.S. Civil War's first all-black volunteer company, fighting prejudices from both his own Union Army, and the Confederates.	78	Edward Zwick	Matthew Broderick	Denzel Washington	Cary Elwes	Morgan Freeman	122779	26830000
675	https://m.media-amazon.com/images/M/MV5BMDQyMDVhZjItMGI0Mi00MDQ1LTk3NmQtZmRjZGQ5ZTQ2ZDU5XkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_.jpg	Dip huet seung hung	1989	R	111 min	Action, Crime, Drama	7.8	A disillusioned assassin accepts one last hit in hopes of using his earnings to restore vision to a singer he accidentally blinded.	82	John Woo	Yun-Fat Chow	Danny Lee	Sally Yeh	Kong Chu	45624	\N
691	https://m.media-amazon.com/images/M/MV5BZjMyZmU4OGYtNjBiYS00YTIxLWJjMDUtZjczZmQwMTM4YjQxXkEyXkFqcGdeQXVyNTI4MjkwNjA@._V1_.jpg	Days of Heaven	1978	PG	94 min	Drama, Romance	7.8	A hot-tempered farm laborer convinces the woman he loves to marry their rich but dying boss so that they can have a claim to his fortune.	93	Terrence Malick	Richard Gere	Brooke Adams	Sam Shepard	Linda Manz	52852	\N
692	https://m.media-amazon.com/images/M/MV5BMjIxNDYxMTk2MF5BMl5BanBnXkFtZTgwMjQxNjU3MTE@._V1_.jpg	The Outlaw Josey Wales	1976	A	135 min	Western	7.8	Missouri farmer Josey Wales joins a Confederate guerrilla unit and winds up on the run from the Union soldiers who murdered his family.	69	Clint Eastwood	Clint Eastwood	Sondra Locke	Chief Dan George	Bill McKinney	65659	31800000
710	https://m.media-amazon.com/images/M/MV5BNzNiOGJhMDUtZjNjMC00YmE5LTk3NjQtNGM4ZjAzOGJjZmRlXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_.jpg	Red River	1948	Passed	133 min	Action, Adventure, Drama	7.8	Dunson leads a cattle drive, the culmination of over 14 years of work, to its destination in Missouri. But his tyrannical behavior along the way causes a mutiny, led by his adopted son.	\N	Howard Hawks	Arthur Rosson	John Wayne	Montgomery Clift	Joanne Dru	28167	\N
711	https://m.media-amazon.com/images/M/MV5BODI3YzNiZTUtYjEyZS00ODkwLWE2ZDUtNGJmMTNiYTc4ZTM4XkEyXkFqcGdeQXVyMDI2NDg0NQ@@._V1_.jpg	Key Largo	1948	\N	100 min	Action, Crime, Drama	7.8	A man visits his war buddy's family hotel and finds a gangster running things. As a hurricane approaches, the two end up confronting each other.	\N	John Huston	Humphrey Bogart	Edward G. Robinson	Lauren Bacall	Lionel Barrymore	36995	\N
726	https://m.media-amazon.com/images/M/MV5BNjRlZmM0ODktY2RjNS00ZDdjLWJhZGYtNDljNWZkMGM5MTg0XkEyXkFqcGdeQXVyNjAwMjI5MDk@._V1_.jpg	Mission: Impossible - Fallout	2018	UA	147 min	Action, Adventure, Thriller	7.7	Ethan Hunt and his IMF team, along with some familiar allies, race against time after a mission gone wrong.	86	Christopher McQuarrie	Tom Cruise	Henry Cavill	Ving Rhames	Simon Pegg	291257	220159104
730	https://m.media-amazon.com/images/M/MV5BMTAwMTU4MDA3NDNeQTJeQWpwZ15BbWU4MDk4NTMxNTIx._V1_.jpg	The Theory of Everything	2014	U	123 min	Biography, Drama, Romance	7.7	A look at the relationship between the famous physicist Stephen Hawking and his wife.	72	James Marsh	Eddie Redmayne	Felicity Jones	Tom Prior	Sophie Perry	404182	35893537
743	https://m.media-amazon.com/images/M/MV5BMTM3NzQzMDA5Ml5BMl5BanBnXkFtZTcwODA5NTcyNw@@._V1_.jpg	Detachment	2011	\N	98 min	Drama	7.7	A substitute teacher who drifts from classroom to classroom finds a connection to the students and teachers during his latest assignment.	52	Tony Kaye	Adrien Brody	Christina Hendricks	Marcia Gay Harden	Lucy Liu	77071	71177
744	https://m.media-amazon.com/images/M/MV5BMTM4NjY1MDQwMl5BMl5BanBnXkFtZTcwNTI3Njg3NA@@._V1_.jpg	Midnight in Paris	2011	PG-13	96 min	Comedy, Fantasy, Romance	7.7	While on a trip to Paris with his fiancée's family, a nostalgic screenwriter finds himself mysteriously going back to the 1920s every day at midnight.	81	Woody Allen	Owen Wilson	Rachel McAdams	Kathy Bates	Kurt Fuller	388089	56816662
760	https://m.media-amazon.com/images/M/MV5BOTA1Mzg3NjIxNV5BMl5BanBnXkFtZTcwNzU2NTc5MQ@@._V1_.jpg	Changeling	2008	R	141 min	Biography, Crime, Drama	7.7	Grief-stricken mother Christine Collins (Angelina Jolie) takes on the L.A.P.D. to her own detriment when it tries to pass off an obvious impostor as her missing child.	63	Clint Eastwood	Angelina Jolie	Colm Feore	Amy Ryan	Gattlin Griffith	239203	35739802
761	https://m.media-amazon.com/images/M/MV5BMTU2NjQ1Nzc4MF5BMl5BanBnXkFtZTcwNTM0NDk1Mw@@._V1_.jpg	Flipped	2010	PG	90 min	Comedy, Drama, Romance	7.7	Two eighth-graders start to have feelings for each other despite being total opposites.	45	Rob Reiner	Madeline Carroll	Callan McAuliffe	Rebecca De Mornay	Anthony Edwards	81446	1752214
776	https://m.media-amazon.com/images/M/MV5BOTk1OTA1MjIyNV5BMl5BanBnXkFtZTcwODQxMTkyMQ@@._V1_.jpg	Crash	2004	UA	112 min	Crime, Drama, Thriller	7.7	Los Angeles citizens with vastly separate lives collide in interweaving stories of race, loss and redemption.	66	Paul Haggis	Don Cheadle	Sandra Bullock	Thandie Newton	Karina Arroyave	419483	54580300
777	https://m.media-amazon.com/images/M/MV5BMjZiOTNlMzYtZWYwZS00YWJjLTk5NDgtODkwNjRhMDI0MjhjXkEyXkFqcGdeQXVyMjgyNjk3MzE@._V1_.jpg	Kung fu	2004	UA	99 min	Action, Comedy, Fantasy	7.7	In Shanghai, China in the 1940s, a wannabe gangster aspires to join the notorious "Axe Gang" while residents of a housing complex exhibit extraordinary powers in defending their turf.	78	Stephen Chow	Stephen Chow	Wah Yuen	Qiu Yuen	Siu-Lung Leung	127250	17108591
794	https://m.media-amazon.com/images/M/MV5BNGY3NWYwNzctNWU5Yi00ZjljLTgyNDgtZjNhZjRlNjc0ZTU1XkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg	Billy Elliot	2000	R	110 min	Drama, Music	7.7	A talented young boy becomes torn between his unexpected love of dance and the disintegration of his family.	74	Stephen Daldry	Jamie Bell	Julie Walters	Jean Heywood	Jamie Draven	126770	21995263
796	https://m.media-amazon.com/images/M/MV5BYzVmYzVkMmUtOGRhMi00MTNmLThlMmUtZTljYjlkMjNkMjJkXkEyXkFqcGdeQXVyNDk3NzU2MTQ@._V1_.jpg	Ocean's Eleven	2001	UA	116 min	Crime, Thriller	7.7	Danny Ocean and his ten accomplices plan to rob three Las Vegas casinos simultaneously.	74	Steven Soderbergh	George Clooney	Brad Pitt	Julia Roberts	Matt Damon	516372	183417150
810	https://m.media-amazon.com/images/M/MV5BYzMzMDZkYWEtODIzNS00YjI3LTkxNTktOWEyZGM3ZWI2MWM4XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_.jpg	Donnie Brasco	1997	A	127 min	Biography, Crime, Drama	7.7	An FBI undercover agent infiltrates the mob and finds himself identifying more with the mafia life, at the expense of his regular one.	76	Mike Newell	Al Pacino	Johnny Depp	Michael Madsen	Bruno Kirby	279318	41909762
811	https://m.media-amazon.com/images/M/MV5BMTQzMzcxMzUyMl5BMl5BanBnXkFtZTgwNDI1MjgxMTE@._V1_.jpg	Shine	1996	U	105 min	Biography, Drama, Music	7.7	Pianist David Helfgott, driven by his father and teachers, has a breakdown. Years later he returns to the piano, to popular if not critical acclaim.	87	Scott Hicks	Geoffrey Rush	Armin Mueller-Stahl	Justin Braine	Sonia Todd	51350	35811509
827	https://m.media-amazon.com/images/M/MV5BMTgxMDMxMTctNDY0Zi00ZmNlLWFlYmQtODA2YjY4MDk4MjU1XkEyXkFqcGdeQXVyNTc1NTQxODI@._V1_.jpg	Barton Fink	1991	U	116 min	Comedy, Drama, Thriller	7.7	A renowned New York playwright is enticed to California to write for the movies and discovers the hellish truth of Hollywood.	69	Joel Coen	Ethan Coen	John Turturro	John Goodman	Judy Davis	113240	6153939
828	https://m.media-amazon.com/images/M/MV5BMTY2Njk3MTAzM15BMl5BanBnXkFtZTgwMTY5Mzk4NjE@._V1_.jpg	Miller's Crossing	1990	R	115 min	Crime, Drama, Thriller	7.7	Tom Reagan, an advisor to a Prohibition-era crime boss, tries to keep the peace between warring mobs but gets caught in divided loyalties.	66	Joel Coen	Ethan Coen	Gabriel Byrne	Albert Finney	John Turturro	125822	5080409
846	https://m.media-amazon.com/images/M/MV5BYmVhMDQ1YWUtYjgxOS00NzYyLWI0ZGItNTg3ZjM0MmQ4NmIwXkEyXkFqcGdeQXVyMjQzMzQzODY@._V1_.jpg	Le locataire	1976	R	126 min	Drama, Thriller	7.7	A bureaucrat rents a Paris apartment where he finds himself drawn into a rabbit hole of dangerous paranoia.	71	Roman Polanski	Roman Polanski	Isabelle Adjani	Melvyn Douglas	Jo Van Fleet	39889	1924733
847	https://m.media-amazon.com/images/M/MV5BMTYxMDk1NTA5NF5BMl5BanBnXkFtZTcwNDkzNzA2NA@@._V1_.jpg	Love and Death	1975	PG	85 min	Comedy, War	7.7	In czarist Russia, a neurotic soldier and his distant cousin formulate a plot to assassinate Napoleon.	89	Woody Allen	Woody Allen	Diane Keaton	Georges Adet	Frank Adu	36037	\N
881	https://m.media-amazon.com/images/M/MV5BNzk2NmU3NmEtMTVhNS00NzJhLWE1M2ItMThjZjI5NWM3YmFmXkEyXkFqcGdeQXVyMjA1MzUyODk@._V1_.jpg	Nelyubov	2017	R	127 min	Drama	7.6	A couple going through a divorce must team up to find their son who has disappeared during one of their bitter arguments.	86	Andrey Zvyagintsev	Maryana Spivak	Aleksey Rozin	Matvey Novikov	Marina Vasileva	29765	566356
884	https://m.media-amazon.com/images/M/MV5BMjQ2NDU3NDE0M15BMl5BanBnXkFtZTgwMjA3OTg0MDI@._V1_.jpg	Gifted	2017	PG-13	101 min	Drama	7.6	Frank, a single man raising his child prodigy niece Mary, is drawn into a custody battle with his mother.	60	Marc Webb	Chris Evans	Mckenna Grace	Lindsay Duncan	Octavia Spencer	99643	24801212
897	https://m.media-amazon.com/images/M/MV5BMTg4NDA1OTA5NF5BMl5BanBnXkFtZTgwMDQ2MDM5ODE@._V1_.jpg	Hell or High Water	2016	R	102 min	Action, Crime, Drama	7.6	A divorced father and his ex-con older brother resort to a desperate scheme in order to save their family's ranch in West Texas.	88	David Mackenzie	Chris Pine	Ben Foster	Jeff Bridges	Gil Birmingham	204175	26862450
899	https://m.media-amazon.com/images/M/MV5BMTgwODk3NDc1N15BMl5BanBnXkFtZTgwNTc1NjQwMjE@._V1_.jpg	Dawn of the Planet of the Apes	2014	UA	130 min	Action, Adventure, Drama	7.6	A growing nation of genetically evolved apes led by Caesar is threatened by a band of human survivors of the devastating virus unleashed a decade earlier.	79	Matt Reeves	Gary Oldman	Keri Russell	Andy Serkis	Kodi Smit-McPhee	411599	208545589
913	https://m.media-amazon.com/images/M/MV5BMTU5MDg0NTQ1N15BMl5BanBnXkFtZTcwMjA4Mjg3Mg@@._V1_.jpg	Zombieland	2009	A	88 min	Adventure, Comedy, Fantasy	7.6	A shy student trying to reach his family in Ohio, a gun-toting tough guy trying to find the last Twinkie, and a pair of sisters trying to get to an amusement park join forces to travel across a zombie-filled America.	73	Ruben Fleischer	Jesse Eisenberg	Emma Stone	Woody Harrelson	Abigail Breslin	520041	75590286
929	https://m.media-amazon.com/images/M/MV5BNWMxYTZlOTUtZDExMi00YzZmLTkwYTMtZmM2MmRjZmQ3OGY4XkEyXkFqcGdeQXVyMTAwMzUyMzUy._V1_.jpg	300	2006	A	117 min	Action, Drama	7.6	King Leonidas of Sparta and a force of 300 men fight the Persians at Thermopylae in 480 B.C.	52	Zack Snyder	Gerard Butler	Lena Headey	David Wenham	Dominic West	732876	210614939
930	https://m.media-amazon.com/images/M/MV5BMjRjOTMwMDEtNTY4NS00OWRjLWI4ZWItZDgwYmZhMzlkYzgxXkEyXkFqcGdeQXVyODIxOTg5MTc@._V1_.jpg	Match Point	2005	R	124 min	Drama, Romance, Thriller	7.6	At a turning point in his life, a former tennis pro falls for an actress who happens to be dating his friend and soon-to-be brother-in-law.	72	Woody Allen	Scarlett Johansson	Jonathan Rhys Meyers	Emily Mortimer	Matthew Goode	206294	23089926
946	https://m.media-amazon.com/images/M/MV5BYmUzODQ5MGItZTZlNy00MDBhLWIxMmItMjg4Y2QyNDFlMWQ2XkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg	The Royal Tenenbaums	2001	A	110 min	Comedy, Drama	7.6	The eccentric members of a dysfunctional family reluctantly gather under the same roof for various reasons.	76	Wes Anderson	Gene Hackman	Gwyneth Paltrow	Anjelica Huston	Ben Stiller	266842	52364010
947	https://m.media-amazon.com/images/M/MV5BNDhjMzc3ZTgtY2Y4MC00Y2U3LWFiMDctZGM3MmM4N2YzNDQ5XkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg	Y tu mamá también	2001	A	106 min	Drama	7.6	In Mexico, two teenage boys and an attractive older woman embark on a road trip and learn a thing or two about life, friendship, sex, and each other.	88	Alfonso Cuarón	Maribel Verdú	Gael García Bernal	Daniel Giménez Cacho	Ana López Mercado	115827	13622333
962	https://m.media-amazon.com/images/M/MV5BYWUxOWY4NDctMDFmMS00ZTQwLWExMGEtODg0ZWNhOTE5NzZmXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg	Lost Highway	1997	A	134 min	Mystery, Thriller	7.6	Anonymous videotapes presage a musician's murder conviction, and a gangster's girlfriend leads a mechanic astray.	52	David Lynch	Bill Pullman	Patricia Arquette	John Roselius	Louis Eppolito	131101	3796699
963	https://m.media-amazon.com/images/M/MV5BNzk1MjU3MDQyMl5BMl5BanBnXkFtZTcwNjc1OTM2MQ@@._V1_.jpg	Sense and Sensibility	1995	U	136 min	Drama, Romance	7.6	Rich Mr. Dashwood dies, leaving his second wife and her three daughters poor by the rules of inheritance. The two eldest daughters are the title opposites.	84	Ang Lee	Emma Thompson	Kate Winslet	James Fleet	Tom Wilkinson	102598	43182776
979	https://m.media-amazon.com/images/M/MV5BM2I1ZWNkYjEtYWY3ZS00MmMwLWI5OTEtNWNkZjNiYjIwNzY0XkEyXkFqcGdeQXVyNTI4MjkwNjA@._V1_.jpg	Planes, Trains & Automobiles	1987	U	93 min	Comedy, Drama	7.6	A man must struggle to travel home for Thanksgiving with a lovable oaf of a shower curtain ring salesman as his only companion.	72	John Hughes	Steve Martin	John Candy	Laila Robins	Michael McKean	124773	49530280
980	https://m.media-amazon.com/images/M/MV5BZTllNWNlZjctMWQwMS00ZDc3LTg5ZjMtNzhmNzhjMmVhYTFlXkEyXkFqcGdeQXVyNTc1NTQxODI@._V1_.jpg	Lethal Weapon	1987	A	109 min	Action, Crime, Thriller	7.6	Two newly paired cops who are complete opposites must put aside their differences in order to catch a gang of drug smugglers.	68	Richard Donner	Mel Gibson	Danny Glover	Gary Busey	Mitchell Ryan	236894	65207127
995	https://m.media-amazon.com/images/M/MV5BZjQyMGUwNzAtNTc2MC00Y2FjLThlM2ItZGRjNzM0OWVmZGYyXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_.jpg	A Hard Day's Night	1964	U	87 min	Comedy, Music, Musical	7.6	Over two "typical" days in the life of The Beatles, the boys struggle to keep themselves and Sir Paul McCartney's mischievous grandfather in check while preparing for a live television performance.	96	Richard Lester	John Lennon	Paul McCartney	George Harrison	Ringo Starr	40351	13780024
996	https://m.media-amazon.com/images/M/MV5BNGEwMTRmZTQtMDY4Ni00MTliLTk5ZmMtOWMxYWMyMTllMDg0L2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_.jpg	Breakfast at Tiffany's	1961	A	115 min	Comedy, Drama, Romance	7.6	A young New York socialite becomes interested in a young man who has moved into her apartment building, but her past threatens to get in the way.	76	Blake Edwards	Audrey Hepburn	George Peppard	Patricia Neal	Buddy Ebsen	166544	\N
997	https://m.media-amazon.com/images/M/MV5BODk3YjdjZTItOGVhYi00Mjc2LTgzMDAtMThmYTVkNTBlMWVkXkEyXkFqcGdeQXVyNDY2MTk1ODk@._V1_.jpg	Giant	1956	G	201 min	Drama, Western	7.6	Sprawling epic covering the life of a Texas cattle rancher and his family and associates.	84	George Stevens	Elizabeth Taylor	Rock Hudson	James Dean	Carroll Baker	34075	\N
998	https://m.media-amazon.com/images/M/MV5BM2U3YzkxNGMtYWE0YS00ODk0LTk1ZGEtNjk3ZTE0MTk4MzJjXkEyXkFqcGdeQXVyNDk0MDg4NDk@._V1_.jpg	From Here to Eternity	1953	Passed	118 min	Drama, Romance, War	7.6	In Hawaii in 1941, a private is cruelly punished for not boxing on his unit's team, while his captain's wife and second-in-command are falling in love.	85	Fred Zinnemann	Burt Lancaster	Montgomery Clift	Deborah Kerr	Donna Reed	43374	30500000
\.


--
-- Name: actor actor_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.actor
    ADD CONSTRAINT actor_pkey PRIMARY KEY (actorid);


--
-- Name: genre genre_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.genre
    ADD CONSTRAINT genre_pkey PRIMARY KEY (genre_id);


--
-- Name: movie_actor movie_actor_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.movie_actor
    ADD CONSTRAINT movie_actor_pkey PRIMARY KEY (movieid, actorid);


--
-- Name: movie_genre movie_genre_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.movie_genre
    ADD CONSTRAINT movie_genre_pkey PRIMARY KEY (movieid, genreid);


--
-- Name: movies movies_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.movies
    ADD CONSTRAINT movies_pkey PRIMARY KEY (movieid);


--
-- Name: movie_actor movie_actor_actorid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.movie_actor
    ADD CONSTRAINT movie_actor_actorid_fkey FOREIGN KEY (actorid) REFERENCES public.actor(actorid) ON UPDATE CASCADE;


--
-- Name: movie_actor movie_actor_movieid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.movie_actor
    ADD CONSTRAINT movie_actor_movieid_fkey FOREIGN KEY (movieid) REFERENCES public.movies(movieid) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: movie_genre movie_genre_genreid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.movie_genre
    ADD CONSTRAINT movie_genre_genreid_fkey FOREIGN KEY (genreid) REFERENCES public.genre(genre_id) ON UPDATE CASCADE;


--
-- Name: movie_genre movie_genre_movieid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.movie_genre
    ADD CONSTRAINT movie_genre_movieid_fkey FOREIGN KEY (movieid) REFERENCES public.movies(movieid) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

