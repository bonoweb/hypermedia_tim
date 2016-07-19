-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Creato il: Lug 19, 2016 alle 15:18
-- Versione del server: 10.0.25-MariaDB-0ubuntu0.16.04.1
-- Versione PHP: 7.0.4-7ubuntu2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hypermedia`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `assistenza_categorie`
--

CREATE TABLE `assistenza_categorie` (
  `id` int(11) NOT NULL,
  `icona` varchar(255) NOT NULL,
  `titolo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `assistenza_categorie`
--

INSERT INTO `assistenza_categorie` (`id`, `icona`, `titolo`) VALUES
(1, 'fa-exchange', 'Gestione linea e servizi'),
(2, 'fa-eur ', 'Controlli costi e pagamenti'),
(3, 'fa-wrench', 'Supporto tecnico e configurazione'),
(4, 'fa-lightbulb-o ', 'Smart Life');

-- --------------------------------------------------------

--
-- Struttura della tabella `assistenza_servizi_esempio`
--

CREATE TABLE `assistenza_servizi_esempio` (
  `id` int(11) NOT NULL,
  `id_sottocategoria` int(11) NOT NULL,
  `titolo` varchar(255) NOT NULL,
  `descrizione` text NOT NULL,
  `faq1` varchar(255) NOT NULL,
  `desc1` text NOT NULL,
  `faq2` varchar(255) NOT NULL,
  `faq3` varchar(255) NOT NULL,
  `faq4` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `assistenza_servizi_esempio`
--

INSERT INTO `assistenza_servizi_esempio` (`id`, `id_sottocategoria`, `titolo`, `descrizione`, `faq1`, `desc1`, `faq2`, `faq3`, `faq4`) VALUES
(1, 1, 'Attivazione della linea di casa', 'Richiedere l\'attivazione di una linea telefonica di casa è molto semplice, puoi:\n<br>- richiederla\n<br>- chiamare il Servizio Clienti linea fissa 187.\n<br>- recarti presso un Negozio TIM.\n \n<br><br>Verifica la modalità di attivazione consultando online le varie offerte disponibili.\n<br>I dati necessari sono:\n<br>- nome e cognome.\n<br>- codice fiscale.\n<br>- indirizzo dell\'abitazione per cui richiedi l\'installazione della linea.\n<br>- un recapito telefonico di cellulare.\n<br>- indirizzo email (facoltativo).\n<br>Il nostro personale tecnico ti contatterà quanto prima per concordare l\'appuntamento per l\'installazione dell\'impianto telefonico.', 'Quali documenti sono necessari?', 'Dovrai fornire in visione i seguenti documenti: <br>documento di identità del titolare linea (carta identità, patente di guida con foto, passaporto); <br>codice fiscale del titolare linea; <br>documentazione antiabusivismo, rappresentata da uno dei seguenti documenti: <br>copia di una recente fattura (luce, gas, acqua) anche se intestata ad altri precedenti soggetti, occupanti la medesima unità immobiliare per la quale è stata fatta richiesta di collegamento telefonico <br>oppure <br>copia della concessione/licenza edilizia. <br>oppure <br>copia della domanda di concessione in sanatoria corredata della prova dell\'avvenuto pagamento delle somme dovute a titolo di oblazione (così come previsto dal 2° comma dell\'art.45 della legge 28.2.85 n.47).   <br><br>Solo nel caso non fosse possibile presentare uno qualsiasi dei documenti, potrai produrre in sostituzione una "autodichiarazione sostitutiva di atto notorio" autenticata dal notaio o dal segretario comunale come previsto dall\'art.4 della legge 4.1.68 e successive modificazioni ed integrazioni.', 'Quali sono le diverse tipologie di linea telefonica di casa?', 'Quanto costa attivare una linea telefonica di casa?', 'Se attivo una linea in una seconda casa, quanto pago di abbonamento?'),
(2, 1, 'Trasloco', '', '', '', '', '', ''),
(3, 1, 'Subentro', '', '', '', '', '', ''),
(4, 1, 'Variazione abbonamento', '', '', '', '', '', ''),
(5, 1, 'Restituzione prodotti', '', '', '', '', '', ''),
(6, 1, 'Recesso', '', '', '', '', '', ''),
(10, 2, 'Tutto sulla tua SIM', '', '', '', '', '', ''),
(11, 2, 'PIN e PUK', '', '', '', '', '', ''),
(12, 2, 'LoSai e ChiamaOra di TIM', '', '', '', '', '', ''),
(13, 2, 'Verificare la copertura', '', '', '', '', '', ''),
(14, 2, 'All\'estero con TIM', '', '', '', '', '', ''),
(15, 2, 'Prefissi internazionali e satellitari', '', '', '', '', '', ''),
(16, 3, 'Gestione linea', '', '', '', '', '', ''),
(17, 3, 'Come registarsi', '', '', '', '', '', ''),
(18, 3, 'Acquisti e tempi di spedizione', '', '', '', '', '', ''),
(19, 3, 'Accesso per Sim inserite in allarme', '', '', '', '', '', ''),
(20, 3, 'Ricarica veloce', '', '', '', '', '', ''),
(25, 4, 'TIM Smart', '', '', '', '', '', ''),
(26, 4, 'Come entrare in TIM con la tua linea mobile', '', '', '', '', '', ''),
(27, 4, 'Il riconoscimento del credito in caso di portabilità in TIM', '', '', '', '', '', ''),
(28, 4, 'Accordo Telecom Italia-Nòverca', '', '', '', '', '', ''),
(29, 5, 'Come leggere la fattura della linea fissa', '', '', '', '', '', ''),
(30, 5, 'Come pagare la fattura della linea fissa', '', '', '', '', '', ''),
(31, 5, 'Richiedere un rimborso', '', '', '', '', '', ''),
(32, 5, 'SEPA (Single Euro Payments Area)', '', '', '', '', '', ''),
(33, 5, 'Conto Online: cosa cambia dal 1° febbraio 2016', '', '', '', '', '', ''),
(34, 6, 'Verifica credito residuo e bonus disponibili ', '', '', '', '', '', ''),
(35, 6, 'Dettaglio delle chiamate per i clienti Ricaricabili ', '', '', '', '', '', ''),
(36, 6, 'Cambio Recapito Fattura', '', '', '', '', '', ''),
(37, 6, 'Il calendario di fatturazione', '', '', '', '', '', ''),
(42, 7, 'Controllo costi', '', '', '', '', '', ''),
(43, 7, 'Il mio conto online', '', '', '', '', '', ''),
(44, 7, 'Documentazione dei consumi', '', '', '', '', '', ''),
(45, 7, 'Eliminazione del cartaceo', '', '', '', '', '', ''),
(46, 7, 'Pagamenti', '', '', '', '', '', ''),
(51, 8, 'Guida all\'acquisto online', 'Tramite il sito TIM puoi: <br>- ricaricare il credito della tua linea mobile TIM. <br>- attivare una nuova linea mobile, fissa o entrambe. <br>- effettuare un cambio Operatore sia per la linea mobile, che per la linea fissa. <br>- acquistare prodotti come smartphone, cordless, corded e altri prodotti innovativi per la tua linea di casa e mobile. <br>- acquistare opzioni tariffarie, se sei già un nostro cliente.<br><br>Il servizio di "Ricarica Online", disponibile per i Clienti del servizio radiomobile prepagato, permette di ricaricare da 6 a 150€ di traffico telefonico senza alcun costo di Ricarica (il taglio da 6€ è costituito da 5€ di credito + 50 MMS verso tutti). Il servizio è disponibile 24 ore su 24 tutti i giorni. La Ricarica è resa disponibile come traffico telefonico acquistato entro 48 ore e comunque almeno 15 minuti dopo la conferma di Ricarica Online sul sito. Telecom Italia S.p.A. declina ogni responsabilità per errate digitazioni del numero telefonico da ricaricare. <br><br>Per le operazioni di ricarica, l\'ammontare di traffico prepagato presente sulla linea telefonica da ricaricare non potrà superare la soglia massima di 1.000€.Per le ricariche effettuate sotto area autenticata (con l\'inserimento di username e password), potrai decidere se memorizzare i dati della tua Carta di Credito per le ricariche future.', 'Quali sono i metodi di pagamento abilitati per acquistare su tim.it?', 'Esistono diversi metodi di pagamento disponibili, abilitati a seconda del tipo di acquisto: <br>- carta di credito <br>- Pay Pal <br>- contrassegno alla consegna <br>- credito residuo (solo opzioni tariffarie per la tua linea mobile) <br>- rateizzazione senza interessi su bolletta TIM della tua linea di casa <br>Inoltre, è possibile abilitare e modificare l’addebito automatico della fattura TIM della linea di casa, su conto corrente bancario (RID Bancario). <br>Le carte di credito accettate sono: Visa, Mastercard, American Express, Diners e Carta Aura. <br>Non sono accettate carte di credito estere. <br>Per le carte Visa Electron, devi verificare con la tua banca che la carta sia stata abilitata agli acquisti online. <br>Acquistando con carta di credito l\'importo ti sarà addebitato dopo l\'effettiva consegna del prodotto senza alcun costo aggiuntivo. <br>I dati della tua carta di credito sono inviati a Banca Sella attraverso un server sicuro che utilizza il protocollo SSL3 (Secure Socket Layer), con crittografia Triple Des a 128 bit, lo standard di sicurezza più elevato per l\'invio di informazioni sensibili attraverso la Rete Internet, che protegge l\'inoltro dei dati rendendoli non leggibili a terzi. <br>Banca Sella  verifica la validità della carta di credito e consente la transazione. <br>Telecom Italia S.p.A certifica il protocollo di sicurezza applicato a garanzia dei titolari di carte.', 'Come posso verificare lo stato del mio ordine?', 'Cosa devo fare per registrarmi al sito TIM?', 'Voglio acquistare un prodotto, ma sul sito è presente la dicitura “avvisami”, al posto di “acquista”. Cosa significa?'),
(52, 8, 'Servizio mappe sul telefonino', '', '', '', '', '', ''),
(53, 8, 'TIM application store', '', '', '', '', '', ''),
(54, 8, 'Configurazione Mail su iPhone', '', '', '', '', '', ''),
(55, 8, 'Configurazione Mail su iPad', '', '', '', '', '', ''),
(58, 9, 'Memotel', '', '', '', '', '', ''),
(59, 9, 'Avviso di chiamata', '', '', '', '', '', ''),
(60, 9, 'Non chiamo e non ricevo telefonate', '', '', '', '', '', ''),
(61, 9, 'Ricevo ma non chiamo', '', '', '', '', '', ''),
(62, 9, 'Come gestire le chiamate entranti ', '', '', '', '', '', ''),
(63, 9, 'Come riassegnare i numeri', '', '', '', '', '', ''),
(64, 10, 'Prima installazione', '', '', '', '', '', ''),
(65, 10, 'Modem fibra', '', '', '', '', '', ''),
(66, 10, 'ADSL2 + Wi-Fi N - DA2210', '', '', '', '', '', ''),
(67, 10, 'ADSL2 + Wi-Fi N', '', '', '', '', '', ''),
(68, 10, 'Powerline Adapter', '', '', '', '', '', ''),
(69, 10, 'Velocità di allineamento del modem', '', '', '', '', '', ''),
(71, 11, 'Gestione Posta', '', '', '', '', '', ''),
(72, 11, 'Gestione Rubrica', '', '', '', '', '', ''),
(73, 11, 'Registrazione', '', '', '', '', '', ''),
(74, 11, 'Recupera Username e Password ', '', '', '', '', '', ''),
(75, 11, 'Parametri TIM Mail', '', '', '', '', '', ''),
(76, 11, 'Mail su PC', '', '', '', '', '', ''),
(79, 12, 'Decoder TIMvision', '', '', '', '', '', ''),
(80, 12, 'RIMvision da TV - Errori a video', '', '', '', '', '', ''),
(81, 12, 'Caratteristiche TIM SKY', '', '', '', '', '', ''),
(82, 12, 'Installazione decoder My Sky HD', '', '', '', '', '', ''),
(83, 12, 'Caratteristiche del servizio', '', '', '', '', '', ''),
(84, 12, 'Associazione dispositivi', '', '', '', '', '', ''),
(87, 13, 'Configurazione DNS', '', '', '', '', '', ''),
(88, 13, 'Configurazione browser', '', '', '', '', '', ''),
(89, 13, 'Configurazione firewall', '', '', '', '', '', ''),
(90, 13, 'Non mi connetto ad Internet', '', '', '', '', '', ''),
(91, 13, 'Cade la connessione', '', '', '', '', '', ''),
(92, 13, 'Navigo lentamente', '', '', '', '', '', ''),
(95, 14, 'Protezione Computer', '', '', '', '', '', ''),
(96, 14, 'Protezione Internet', '', '', '', '', '', ''),
(97, 14, 'Acquisto e attivazione licenza', '', '', '', '', '', ''),
(98, 14, 'Servizio TIM Antivirus', '', '', '', '', '', ''),
(99, 14, 'Tutela dei minori', '', '', '', '', '', ''),
(100, 14, 'Phishing', '', '', '', '', '', ''),
(102, 15, 'Cos\'è TIMgames ', '', '', '', '', '', ''),
(103, 15, 'Tutti i modi per abbonarsi', '', '', '', '', '', ''),
(104, 15, 'Come accedere a TIMgames', '', '', '', '', '', ''),
(105, 15, 'Conoscere l\'App TIMgames', '', '', '', '', '', ''),
(106, 15, 'Come vedere i propri abbonamenti', '', '', '', '', '', ''),
(107, 15, 'Come disattivare un abbonamento', '', '', '', '', '', ''),
(108, 16, 'Cos\'è TIMmusic', '', '', '', '', '', ''),
(109, 16, 'Tutti i modi per acquistare', '', '', '', '', '', ''),
(110, 16, 'Come ascolto in modalità wifi?', '', '', '', '', '', ''),
(111, 16, 'Come ascolto in modalità off line?', '', '', '', '', '', ''),
(112, 16, 'Come fare se non si caricano i brani', '', '', '', '', '', ''),
(113, 16, 'APP per smartphone e tablet', '', '', '', '', '', ''),
(118, 17, 'Cos’è TIMreading', '', '', '', '', '', ''),
(119, 17, 'Tutti i modi per acquistare', '', '', '', '', '', ''),
(120, 17, 'Dove leggere', '', '', '', '', '', ''),
(121, 17, 'App TIMreading', '', '', '', '', '', ''),
(122, 17, 'Configurare l\'Adobe ID', '', '', '', '', '', ''),
(123, 17, 'Registrazione al servizio', '', '', '', '', '', ''),
(125, 18, 'Cos\'è TIMvision', '', '', '', '', '', ''),
(126, 18, 'Tutti i modi per abbonarsi', '', '', '', '', '', ''),
(127, 18, 'Cosa posso vedere con TIMvision', '', '', '', '', '', ''),
(128, 18, 'Videostore - grandi film a noleggio ', '', '', '', '', '', ''),
(129, 18, 'Formati e tipologia di contenuti', '', '', '', '', '', ''),
(130, 18, 'Dove posso vedere TIMvision', '', '', '', '', '', ''),
(139, 5, 'Come domiciliare la fattura della linea fissa', '', '', '', '', '', ''),
(140, 6, 'Modalità di pagamento della fattura linea mobile', '', '', '', '', '', ''),
(141, 7, 'Il rendiconto TIM Online', '', '', '', '', '', ''),
(142, 6, 'Dettaglio delle chiamate per clienti con Abbonamento', '', '', '', '', '', ''),
(143, 8, 'Configurazione Mail su Android', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Struttura della tabella `assistenza_sottocategorie`
--

CREATE TABLE `assistenza_sottocategorie` (
  `id` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `titolo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `assistenza_sottocategorie`
--

INSERT INTO `assistenza_sottocategorie` (`id`, `id_categoria`, `titolo`) VALUES
(1, 1, 'FISSO'),
(2, 1, 'MOBILE'),
(3, 1, 'COSA PUOI FARE ONLINE'),
(4, 1, 'AIUTO PER IL PASSAGGIO A TIM'),
(5, 2, 'FISSO'),
(6, 2, 'MOBILE'),
(7, 2, 'COSA PUOI FARE ONLINE'),
(8, 3, 'SMARTPHONE E TABLET'),
(9, 3, 'LINEA TELEFONICA'),
(10, 3, 'ADSL E FIBRA'),
(11, 3, 'POSTA'),
(12, 3, 'DECODER E TV'),
(13, 3, 'NAVIGAZIONE'),
(14, 3, 'SICUREZZA PC'),
(15, 4, 'TIMgames'),
(16, 4, 'TIMmusic'),
(17, 4, 'TIMreading'),
(18, 4, 'TIMvision');

-- --------------------------------------------------------

--
-- Struttura della tabella `chi_siamo`
--

CREATE TABLE `chi_siamo` (
  `id` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `immagine` varchar(255) NOT NULL,
  `testo` text NOT NULL,
  `titolo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `chi_siamo`
--

INSERT INTO `chi_siamo` (`id`, `id_categoria`, `immagine`, `testo`, `titolo`) VALUES
(1, 1, 'image.jpg', 'Tale visione è supportata da tendenze sociali, economiche e tecnologiche riscontrabili già oggi:\r\n <br>\r\n- il desiderio di rimanere "connessi" in qualsiasi momento.<br>\r\n- il ruolo giocato dalle telecomunicazioni mobili nel migliorare la produttività del lavoro.<br>\r\n- la digitalizzazione di tutte le forme di comunicazione.', 'L\'elemento chiave nel futuro mercato delle comunicazioni mobili è costituito dalla convergenza tra telecomunicazioni, internet e media.'),
(2, 1, 'UntitledDiagram.png', 'Tutto sulla sicurezza informtica di Telecom Italia, che ogni giorno ci protegge da truffe telematiche e furti di informazioni sensibili.<br>\nProtegge per voi: \n<br>- dati\n<br>- sistemi e servizi\n<br>- reti\n<br>- tablet e smartphone\n<br>- modem ADSL', '<br>Politiche di cybersecurity'),
(3, 1, 'tim_wcap_on_tthe_road.png', 'Entra nel vivo l\'attività di promozione e diffusione della Call for Startups di TIM #Wcap 2016. Cerca la città e l\'appuntamento che ti è più comodo per conoscere tutte le grandi novità e i dettagli di #WcapCall16!', '<br><br>#WcapCall16 On The Road'),
(4, 2, 'tim_berners_lee.jpg', 'Il futuro è ciò che costruiamo.', '<br> SIR TIM BERNERS-LEE,\nL\'INVENTORE DEL WORLD WIDE WEB'),
(5, 2, 'fabio_fazio.jpg', 'Si può essere dovunque con un click, andare dappertutto.', 'FABIO FAZIO'),
(6, 2, 'pifFFFF.jpg', 'Bisogna ricordarsi che la rete è un mezzo e non un fine.', 'PIF'),
(7, 3, 'wedo_social_1200.jpg', 'Grazie al premio speciale TIM-WithYouWeDo, tre progetti finalisti hanno la possibilità di raccogliere fondi sulla piattaforma di WithYouWeDo. ', '<br>TIM SOSTIENE SODALITAS SOCIAL INNOVATION CON UN PREMIO SPECIALE'),
(8, 3, 'TIMgirlsHackathon.jpg', '#TIMgirlsHackathon si inserisce all\'interno del percorso di digital innovation targato TIM e si propone di avvicinare l\'universo femminile al coding per contribuire a colmare i gap di genere nell\'ambito della cultura scientifica.', '<br><br>#TIMgirlsHackathon'),
(9, 3, '290_1383057091_juniortimcup2013.jpg', 'Con la Junior TIM Cup – Il calcio negli Oratori 30 mila ragazzi di tutta Italia hanno già condiviso l\'emozione di un grande sogno. Attraverso il connubio vincente tra sport ed educazione, proseguiamo il nostro impegno: far crescere bambini felici oggi che saranno adulti migliori domani.\r\n#ilcalcioèdichiloama', '<br><br>JUNIOR TIM CUP');

-- --------------------------------------------------------

--
-- Struttura della tabella `chi_siamo_categorie`
--

CREATE TABLE `chi_siamo_categorie` (
  `id` int(11) NOT NULL,
  `titolo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `chi_siamo_categorie`
--

INSERT INTO `chi_siamo_categorie` (`id`, `titolo`) VALUES
(1, 'Innovazione'),
(2, 'Testimonials'),
(3, 'Progetti');

-- --------------------------------------------------------

--
-- Struttura della tabella `faq_sl`
--

CREATE TABLE `faq_sl` (
  `id` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `titolo` varchar(255) NOT NULL,
  `descrizione` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `faq_sl`
--

INSERT INTO `faq_sl` (`id`, `id_categoria`, `titolo`, `descrizione`) VALUES
(1, 8, 'Quali sono le caratteristiche di TIMTag?', 'È un\'offerta TIM che ti offre un Tracker GPS con inclusi 12 mesi di servizio TIMTag. L’opzione TIMTag in promo, include il traffico sia dati che SMSs dal Tracker GPS verso la piattaforma di servizio (max 50MB e 100SMS ogni 30 giorni) e l’utilizzo dell’App TIMTag. Il Bundle dati e SMS previsto è calibrato per soddisfare le esigenze di un utilizzo continuativo del dispositivo. Il costo del Tracker GPS, della TIM Card e del servizio per i primi 12 mesi è di soli 129€! La confezione contiene:   Tracker GPS 12 mesi di servizio "preattivati" inclusi sulla TIM Card 1 TIM Card'),
(2, 8, 'Chi può scegliere TIMTag?', ''),
(3, 8, 'Quali sono le modalità, i tempi di attivazione e di rinnovo dell’offerta?', ''),
(4, 8, 'Come posso disattivare l’offerta?', ''),
(5, 8, 'Cosa succede se recedo anticipatamente dall\'offerta TIMTag?', ''),
(6, 8, 'Quale garanzia hanno i prodotti presenti Pack TIM Tag?', '');

-- --------------------------------------------------------

--
-- Struttura della tabella `gruppo`
--

CREATE TABLE `gruppo` (
  `id` int(11) NOT NULL,
  `titolo` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `immagine` varchar(255) NOT NULL,
  `immagine2` varchar(255) NOT NULL,
  `immagine3` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `gruppo`
--

INSERT INTO `gruppo` (`id`, `titolo`, `text`, `immagine`, `immagine2`, `immagine3`) VALUES
(1, 'TELECOM ITALIA, UNA SOCIETÀ DI PERSONE IMPEGNATA A COSTRUIRE L\'ITALIA DEL FUTURO', 'II futuro del nostro Paese passa attraverso l\'innovazione tecnologica e sociale. Quasi 53 mila persone lavorano ogni giorno nel Gruppo a questo obiettivo e nei prossimi tre anni per l\'innovazione delle reti e dei servizi investiremo circa 6,7 miliardi euro.\r\n <br> <br>\r\nNel Manifesto di TIM le chiavi per comprendere la visione del Gruppo Telecom Italia oggi sono:\r\n <br><br>\r\nComunicare è libertà. Libertà di comunicare.<br>\r\nNel ventunesimo secolo solo chi può condividere idee ed esperienza è davvero libero di perseguire le proprie aspirazioni. E di pensare in grande. E solo un gruppo che pensa in grande può realmente promuovere progresso e prosperità, garantendo la piena libertà di comunicare.\r\n <br><br>\r\nConnessi alla vita. Sempre. Ovunque. Meglio.<br>\r\nMettiamo la migliore rete fissa e mobile al servizio delle esigenze di qualunque persona e qualsiasi organizzazione, garantendo la migliore qualità e sicurezza nell’esperienza di contenuti, supportata da un servizio competente e esperto, raggiungibile attraverso tutti i canali online e offline.', 'come_sciogliere_una_societa_di_persone.png', '6963006_s.png', ''),
(2, 'IL SITO DI GRUPPO CAMBIA FACCIA', '<strong>I PRINCIPALI CAMBIAMENTI</strong>\r\n<br>\r\nUn\'unica marca: una marca è come una persona, ha dei valori, una personalità ed un proprio tono di voce. TIM è un leader consapevole del proprio ruolo, che inspira, incoraggia e dà energia. Come è la nuova TIM? \r\n<br>\r\nTre parole chiave per descriverla:\r\n<br>\r\n- Semplicità: nelle comunicazioni con il cliente il brand tende ad avvicinarsi eliminando i formalismi che trasferiscono un senso di freddezza e distanza\r\n<br>\r\n- Ottimismo: lo scopo è quello di sottolineare vantaggi e miglioramenti\r\n<br>\r\n- Sicurezza: il brand si esprime in modo diretto, preciso ed essenziale\r\n <br><br>\r\nUn unico sito: una delle prime novità per il cliente è il nuovo sito TIM.it. Si tratta di un sito nato dall’unione dei precedenti Telecom Italia.it  e TIM.it , dove l’offerta fissa e mobile, servizi convergenti e di  connettività da rete fissa o mobile, sono raccolti, tutti insieme. Questo è il primo passo digitale del processo che toccherà tutti i punti di contatto con la clientela, dai  negozi all’assistenza, verso la nuova marca unica commerciale, TIM. Grazie al nuovo sito il cliente si trova immerso in una dimensione più chiara e diretta per scoprire le offerte e per gestire le promozioni che ha sottoscritto.\r\n<br>\r\nIl sito unico, quindi, ha l’obiettivo di:\r\n<br>\r\n- semplificare l’usabilità\r\n<br>\r\n- aumentare l’efficacia commerciale attraverso proposte e percorsi d’acquisto semplici e diretti\r\n<br>\r\n- posizionare il nuovo marchio\r\n<br><br>\r\nCome?\r\n<br>\r\n- il navigatore arriva automaticamente alla versione ottimale del sito  in base al  tipo di connessione che ha a disposizione   \r\n- l’esperienza di navigazione è ottimizzata anche a seconda del dispositivo utilizzato al momento dell’accesso\r\n<br>\r\n- i servizi di rete fissa e mobile sono uniti anche nell’assistenza.', 'Schermata_TIM.png', 'Responsive.png', 'banner_hp_tim_sky_mar2016.png'),
(3, 'ASSETTO ORGANIZZATIVO', 'Il Consiglio di Amministrazione è stato nominato dall’Assemblea ordinaria del 16 aprile 2014 per tre esercizi, fino all’approvazione del bilancio al 31 dicembre 2016. L\'Assemblea ha fissato il numero dei componenti in 13. \n<br>L\'Assemblea del 15 dicembre 2015 ha approvato l\'integrazione del Consiglio da 13 a 17 componenti ed ha quindi nominato quattro nuovi Amministratori.<br>\nIl Consiglio di Amministrazione ha costituito i seguenti Comitati interni, attualmente composti da:<br>\n- Comitato per il Controllo e Rischi<br>\n- Comitato per le Nomine e la Remunerazione', 'organigramma.png', '', ''),
(4, 'MODELLO DI BUSINESS', 'Prossimità, sicurezza e qualità le parole chiave del modello di business. Con la riorganizzazione della funzione Wholesale ed un investimento di 120 milioni di euro è stato varato un nuovo modello di equivalence per rafforzare ulteriormente la parità di accesso alla rete fissa da parte di Telecom Italia e di tutti gli operatori.\r\n <br><br>\r\nI nostri mercati strategici sono l\'Italia ed il Brasile. Le attività sono seguite da Business Unit dedicate:  la Business Unit Domestic, la Busines Unit Brasile.<br>\r\nLa nostra organizzazione, in linea con l’evoluzione dei business model di settore e dei trend di mercato e tecnologici, sta virando verso un modello “Digital Telco & Platform Company”. Un modello che si basa su infrastrutture innovative ed un eccellente servizio al cliente e punta  alla diffusione di servizi e contenuti digitali premium offerti su una piattaforma personalizzabile e fruibili ovunque e su qualsisasi dispositivo.<br>\r\nIl presidio commerciale della clientela  fa riferimento a  questi driver organizzativi:<br>\r\n- garantire l’accountability end to end dei processi di marketing, sales e post sales su ciascun segmento di clientela,<br>\r\n- favorire lo sviluppo di offerte integrate “customer centric” e la focalizzazione sui servizi del mercato digitale<br>\r\n- creare sinergie tra i canali commerciali, per aumentare l\'efficienza e l\'efficacia del modello di multicanalità<br>\r\n- favorire lo sviluppo dei servizi “platform based” ampliando il portafoglio di offerta di TIM<br>\r\n- porre attenzione ai clienti multinational, per lo sviluppo della connettività internazionale.<br><br>', 'multicanalita.png', 'big_city_lights_on_world_map_psd_photoshop_psds.png', ''),
(5, '', '', '', '', '');

-- --------------------------------------------------------

--
-- Struttura della tabella `gruppo_categorie`
--

CREATE TABLE `gruppo_categorie` (
  `id` int(11) NOT NULL,
  `titolo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `gruppo_categorie`
--

INSERT INTO `gruppo_categorie` (`id`, `titolo`) VALUES
(1, 'Descrizione_del_gruppo'),
(2, 'Novità'),
(3, 'Amministrazione'),
(4, 'Business_market');

-- --------------------------------------------------------

--
-- Struttura della tabella `gruppo_sottocategoria_perinvestitori`
--

CREATE TABLE `gruppo_sottocategoria_perinvestitori` (
  `id` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `titolo` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `immagine` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `gruppo_sottocategoria_perinvestitori`
--

INSERT INTO `gruppo_sottocategoria_perinvestitori` (`id`, `id_categoria`, `titolo`, `text`, `immagine`) VALUES
(1, 5, 'BILANCIO D\'ESERCIZIO', '<br>Pubblicata la Relazione Finanziaria Annuale 2015 del Gruppo Telecom Italia.<br><br>\n<span style="color:#2b78e4;"> Scarica il Bilancio d\'Esercizio 2015</span><br><br><br>\nConsulta i documenti di bilancio e le relazioni trimestrali del Gruppo.<br><br>\n<span style="color:#2b78e4;">Consulta i Bilanci e le Relazioni dal 2000</span>', 'bilancio.png'),
(2, 5, 'IL CLUB TI ALW@YS ON', '<br>Il Club è stato pensato per gli Azionisti Individuali di Telecom Italia, ma è aperto anche a chiunque voglia essere aggiornato sull\'andamento economico-finanziario e sulle novità riguardanti il Gruppo Telecom Italia.<br><br>\r\n<span style="color:#2b78e4;">Come aderire ai servizi erogati</span>', 'ti.png'),
(3, 5, 'RISULTATI 2015 E PIANO 2016-2018', 'Il Gruppo ha comunicato i risultati definitivi al 31 dicembre 2015.<br><br>\r\n<span style="color:#2b78e4;">Leggi il Comunicato Stampa e scarica il file excel operativo</span><br><br><br>\r\nIl Gruppo Telecom Italia ha illustrato a Londra i risultati finanziari preliminari al 31 dicembre 2015 e l\'aggiornamento di Piano 2016-2018. <br><br>\r\n<span style="color:#2b78e4;">Clicca qui per scaricare la documentazione e rivedere l\'evento di video streaming on demand</span>', 'Investor.png'),
(4, 5, 'ASSEMBLEA DEGLI AZIONISTI STRAORDINARI', 'Pubblicati l\'Avviso di convocazione e la documentazione relativa alla prossima assemblea degli Azionisti Ordinari.<br><br>\r\n<span style="color:#2b78e4;">Clicca qui per accedere</span>', 'assemblea.png'),
(5, 5, 'CALENDARIO FINAZIARIO', '<br>Le date e i dettagli sui prossimi appuntamenti finanziari del Gruppo Telecom Italia.<br><br>\r\n<span style="color:#2b78e4;">Consulta il calendario</span>', 'calendario.png'),
(6, 5, 'STATUTO E ALTRI DOCUMENTI', '<br>Lo Statuto del Gruppo Telecom Italia riporta le regole essenziali di funzionamento della società e dei suoi organi.<br><br><br>\r\n<span style="color:#2b78e4;">Consulta lo Statuto<br><br><br>\r\nVisualizza i Codici e i Principi del Gruppo Telecom Italia</span>', 'timthumb.png');

-- --------------------------------------------------------

--
-- Struttura della tabella `highlights`
--

CREATE TABLE `highlights` (
  `id` int(11) NOT NULL,
  `id_assistenza` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `highlights`
--

INSERT INTO `highlights` (`id`, `id_assistenza`) VALUES
(1, 1),
(2, 4),
(3, 14),
(4, 18),
(5, 17),
(6, 19),
(7, 20),
(8, 23),
(9, 24),
(10, 26),
(11, 34),
(12, 38),
(13, 39);

-- --------------------------------------------------------

--
-- Struttura della tabella `prodotti`
--

CREATE TABLE `prodotti` (
  `id` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `presentazione` text NOT NULL,
  `caratteristiche_tecniche` text NOT NULL,
  `immagine` varchar(255) NOT NULL,
  `immagine2` varchar(255) DEFAULT NULL,
  `immagine3` varchar(255) DEFAULT NULL,
  `immagine4` varchar(255) DEFAULT NULL,
  `prezzo` varchar(255) NOT NULL,
  `prezzo_mese` varchar(255) NOT NULL,
  `outlet` tinyint(1) NOT NULL,
  `promozione` tinyint(1) NOT NULL,
  `colore1` varchar(255) NOT NULL,
  `colore2` varchar(255) NOT NULL,
  `colore3` varchar(255) NOT NULL,
  `colore4` varchar(255) NOT NULL,
  `assistenza` int(11) NOT NULL,
  `smartlife` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `prodotti`
--

INSERT INTO `prodotti` (`id`, `id_categoria`, `nome`, `presentazione`, `caratteristiche_tecniche`, `immagine`, `immagine2`, `immagine3`, `immagine4`, `prezzo`, `prezzo_mese`, `outlet`, `promozione`, `colore1`, `colore2`, `colore3`, `colore4`, `assistenza`, `smartlife`) VALUES
(1, 1, 'Apple \r\niPhone 6s 16GB', 'Display Retina HD da 4,7" con 3D Touch.<br>\nAlluminio serie 7000 e vetro più resistente.<br> \nChip A9 con architettura a 64 bit di livello desktop. <br>\nNuova fotocamera iSight da 12MP con Live Photos. <br>\nTouch ID. <br>\nConnessioni Wi-Fi e 4G LTE più veloci.<br>\nBatteria a lunga durata. <br>\nE ancora, iOS 9 e iCloud. <br>\nIl tutto in un elegante guscio unibody.<br>', '<table class="table table-condensed table-hover">\n  <tr><td> <strong>Display</strong></td>\n<td>Display Retina HD da 4,7" (diagonale) con risoluzione di 1334x750 pixel.<br>\n3D Touch.</td></tr>\n<tr><td> <strong> Processore </strong></td>\n<td>Chip A9 con coprocessore di movimento M9 integrato.</td></tr>\n<tr><td> <strong> Fotocamera </strong></td>\n<td>Fotocamera iSight da 12 megapixel con Focus Pixels, True Tone Flash e Live Photos.</td></tr>\n<tr><td> <strong> Registrazione video </strong></td>\n<td>Registrazione video 4K a 30 fps, moviola (1080p) a 120 fps.</td></tr>\n<tr><td> <strong> Videocamera </strong></td>\n<td>Videocamera FaceTime HD con Retina Flash (foto da 5MP.</td></tr>\n<tr><td> <strong> Sensori </strong></td>\n<td>Touch ID di seconda generazione.</td></tr>\n<tr><td> <strong> Connettivita </strong></td>\n<td>4G LTE Advanced1 e Wi-Fi 802.11a/b/g/n/ac con tecnologia MIMO.</td></tr>\n<tr><td> <strong> Sistema Operativo </strong></td>\n<td>iOS 9 e iCloud.</td></tr>\n<tr><td> <strong> Colori </strong></td>\n<td>Colori: argento, oro, grigio siderale, oro rosa.</td></tr>\n</table>', 'apple_iPhone6s_Gld_1.png', 'apple_iPhone6s_Gld_2.png', 'apple_iPhone6s_Gld_3.png', 'apple_iPhone6s_Gld_4.png', '789,90 €', '21,94 €/mese', 1, 0, '#FFD700', '#000000', '#696969', '#FFB6C1', 1, 0),
(2, 1, 'LG\r\nG5', 'Il nuovo LG G5 è uno nuovo tipo di smartphone che supera tutti i limiti, con un design modulare completamete in metallo che rivoluziona i canoni di design. Espandi le funzioni, interagisci con gli innovativi LG Friends e prova un\'esperienza smartphone realmente innovativa. La rivoluzione di G5 continua con la doppia fotocamera grandangolare, che cattura più di quanto i tuoi occhi riescano a vedere. Anche sotto il sole, perché il nuovo display IPS Quantum è più ricco, luminoso e colorato anche sotto la luce diretta del sole. E ti mostra sempre le notifiche principali anche quando non è attivo. Nuovo LG G5: quello che non ti aspetti, nel palmo della tua mano.\r\n', '<table class="table table-condensed table-hover">\r\n<tr><td> <strong> Tecnologia </strong></td>\r\n<td>4G cat.6/HSDPA42/UMTS/EDGE/GPRS.<br>  Frequenze 850/900/1800/1900/2100.</td></tr>\r\n<tr><td> <strong> Connettivita </strong></td><td>Wi-Fi - Bluetooth – Infrarosso - USB tipo C – NFC.</td></tr>\r\n<tr><td> <strong> GPS </strong></td><td>Integrato.</td></tr>\r\n<tr><td> <strong> Display </strong></td><td>5.3” 16 Milioni colori Touch.</td></tr>\r\n<tr><td> <strong> Fotocamera </strong></td><td>2 Fotocamere Posteriori da 16 Mpxl con flash e Fotocamera frontale 8 Mpx.</td></tr>\r\n<tr><td> <strong> Memoria Interna </strong></td><td>32GB.<br>Slot Memory Card Micro SD fino a 2TB.</td></tr>\r\n<tr><td> <strong> Processore </strong></td><td>Processore Snapdragon™ 820 QuadCore 2.15 GHz - 4G LTE.</td></tr>\r\n<tr><td> <strong> Formato SIM </strong></td><td>Nano.</td></tr>\r\n<tr><td> <strong> Video </strong></td><td>Video Recorder&Playback.</td></tr>\r\n<tr><td> <strong> Musica </strong></td><td>MP3 Player.</td></tr>\r\n<tr><td> <strong> In dotazione </strong></td><td>Caricabatteria.<br>\r\nCavo dati USB tipo C.<br>\r\nAuricolare stereo.<br>\r\nManuale d’uso rapido.</td></tr>\r\n<tr><td> <strong> Dimensioni </strong></td><td>149,4x73,9x7,3 mm.</td></tr>\r\n<tr><td> <strong> Peso </strong></td><td>159 gr.</td></tr>\r\n<tr><td> <strong> Autonomia </strong></td><td>Stand-by fino a 100 ore -  Conversazione fino a 240 min.</td></tr>\r\n</table>', 'LG_G5_titan_01_1.jpg', 'LG_G5_titan_02.jpg', 'LG_G5_titan_03.jpg', 'LG_G5_titan_04.jpg', '699 €', '0', 1, 0, '#000000', '#D3D3D3', '#A9A9A9', '#EEE8AA', 1, 0),
(3, 1, 'Samsung \r\nGalaxy S7 Edge', 'Sistema Operativo Android 6.0<br>\r\nDisplay 5.5”<br>\r\nProcessore OctaCore (QuadCore 2.3 Ghz + QuadCore 1.6 Ghz)<br>', '<table class="table table-condensed table-hover">\r\n<tr><td> <strong> Tecnologia </strong></td>\r\n<td>4G cat.9/HSDPA42UMTS/EDGE/GPRS.<br> Frequenze 850/900/1800/1900/2100.</td></tr>\r\n<tr><td> <strong> Connettivita </strong></td><td>Wi-Fi - Bluetooth - Micro USB - NFC.</td></tr>\r\n<tr><td> <strong> GPS </strong></td><td>Integrato.</td></tr>\r\n<tr><td> <strong> Display </strong></td><td>5.5” 16 Milioni colori Touch.</td></tr>\r\n<tr><td> <strong> Fotocamera </strong></td><td>12 Mpixel/Flash.</td></tr>\r\n<tr><td> <strong> Memoria Interna </strong></td><td>32GB.</td></tr>\r\n<tr><td> <strong> Processore </strong></td><td>OctaCore: (QuadCore 2.3 Ghz+QuadCore 1.6 Ghz).</td></tr>\r\n<tr><td> <strong> Formato SIM </strong></td><td>Nano.</td></tr>\r\n<tr><td> <strong> Video </strong></td><td>Video Recorder&Playback.</td></tr>\r\n<tr><td> <strong> Musica </strong></td><td>MP3 Player.</td></tr>\r\n<tr><td> <strong> In dotazione </strong></td><td>Caricabatteria - Cavo Dati MicroUSB - Auricolare stereo - Guida di riferimento rapido.</td></tr>\r\n<tr><td> <strong> Dimensioni </strong></td><td>150,9x72,6x7,7 mm.</td></tr>\r\n<tr><td> <strong> Peso </strong></td><td>157 gr.</td></tr>\r\n<tr><td> <strong> Autonomia </strong></td><td>Stand-by fino a TBD ore - Conversazione fino a TBD min.</td></tr>\r\n</table>', 'SAMSUNG_S7_Black_01.jpg', 'SAMSUNG_S7edge_Black_side1.jpg', 'SAMSUNG_S7edge_Black_side2.jpg', 'SAMSUNG_S7edge_Black_back.jpg', '829,90 €', '20,84 €/mese', 0, 1, '#000000', '#FFFFFF', '#DAA520', '0', 1, 0),
(4, 1, 'Huawei \r\nP9', 'PREMIUM. ELEGANT. STYLISH.<br>\r\nHuawei P9 presenta un design con linee dal forte impatto visivo, caratterizzate da spigoli tagliati a diamante e arrotondati a regola d’arte. Lo smartphone ha una struttura unibody in alluminio aerospaziale e vetro 2.5D di categoria superiore, ed è disponibile in due varianti cromatiche: Titanium Grey e Mystic Silver.', '<table class="table table-condensed table-hover">\r\n<tr><td> <strong> Tecnologia </strong></td>\r\n<td>Abilitato tecnologia 4GPlus/4G/HSDPA 42/UMTS/EDGE/GPRS. <br>Frequenze 850/900/1800/1900MHz.</td></tr>\r\n<tr><td> <strong> Connettivita </strong></td><td>4G cat.6/HSDPA42/UMTS/EDGE/GPRS. <br>Frequenze 850/900/1800/1900/2100. <br>Wi-Fi a/b/g/n/ac. <br>dual band 2,4/5GHz con Wi-Fi. <br>Direct Bluetooth 4.2, BLE USB Type-C, NFC.</td></tr>\r\n<tr><td> <strong> GPS </strong></td><td>Integrato.</td></tr>\r\n<tr><td> <strong> Display </strong></td><td>Display IPS Full HD da 5.2".</td></tr>\r\n<tr><td> <strong> Fotocamera </strong></td><td>Principale 12MP x 2, f/2.2 Leica BSI CMOS Flash dual-tone.<br> Frontale 8MP, f/2.4.</td></tr>\r\n<tr><td> <strong> Memoria Interna </strong></td><td>32GB.</td></tr>\r\n<tr><td> <strong> Processore </strong></td><td>Processore Kirin 955 - Octa-Core (4x2,5 GHz + 4x1,8 GHz).</td></tr>\r\n<tr><td> <strong> In dotazione </strong></td><td>Smartphone Auricolari stereo - Caricabatteria Cavo USB Type-C - Estrattore SIM Guida rapida.</td></tr>\r\n<tr><td> <strong> Dimensioni </strong></td><td>145 x 70,9 x 6,95 mm.</td></tr>\r\n<tr><td> <strong> Peso </strong></td><td>144 grammi.</td></tr>\r\n<tr><td> <strong> Autonomia </strong></td><td>Stand-by fino a 566 ore - Conversazione fino a 1980 min.</td></tr>\r\n</table>', 'huawei_p9_grey_01.jpg', 'huawei_p9_grey_02.jpg', 'huawei_p9_grey_03.jpg', 'huawei_p9_grey_04.jpg', '599,90 €', '0', 0, 0, '#696969', '#D3D3D3', '0', '0', 1, 0),
(5, 1, 'Apple\r\niPhone SE', 'Il telefono da 4" più potente di sempre. <br>iPhone SE riprende un design compatto di grande successo aggiungendovi due fotocamere evolute e una potenza di elaborazione incredibile.Disegnato per stare comodamente in mano e risultare piacevole al tatto, grazie alla finitura satinata del guscio in alluminio microsabbiato.<br>\r\n<br>\r\niPhone SE ha un display Retina da 4", chip A9 con archittetura a 64 bit di livello desktop, sensore di impronte digitali Touch ID, fotocamera iSight da 12MP, videocamera FaceTime HD con Retina flash, Live Photos e connessioni Wi-Fi e 4G veloci. E ancora, iOS 9 e iCloud.<br>', '<table class="table table-condensed table-hover">\r\n<tr><td> <strong> Display </strong></td>\r\n<td>Retina Multi-Touch widescreen retroilluminato LED da 4" (diagonale) 1136x640 pixel a 326 ppi.</td></tr>\r\n<tr><td> <strong> Processore </strong></td>\r\n<td>Chip A9 con architettura a 64 bit, Coprocessore di movimento M9 integrato.</td></tr>\r\n<tr><td> <strong> Fotocamera </strong></td>\r\n<td>Fotocamera iSight da 12 megapixel.</td></tr>\r\n<tr><td> <strong> Videocamera </strong></td>\r\n<td>FaceTime HD.</td></tr>\r\n<tr><td> <strong> Sensori </strong></td>\r\n<td>Sensore di impronte digitali Touch ID.</td></tr>\r\n<tr><td> <strong> Connettivita </strong></td><td>4G LTE1.</td></tr>\r\n<tr><td> <strong> Sistema Operativo </strong></td><td>iOS 9 e iCloud.</td></tr>\r\n<tr><td> <strong> Colori </strong></td><td>Disponibile in Space Grey, Silver, Gold e Rose Gold.</td></tr>\r\n</table>\r\n', 'APPLE_OIPHONE_SE_spacegrey_01.jpg', 'APPLE_OIPHONE_SE_spacegrey_02.jpg', 'APPLE_OIPHONE_SE_spacegrey_03.jpg', 'APPLE_OIPHONE_SE_spacegrey_04.jpg', '509,90 €', '0', 0, 1, '#696969', '#D3D3D3', '#FFD700', '#FFB6C1', 1, 0),
(6, 1, 'TIM\r\nFACILE SMILE', 'Design e Colore,il nuovo cordless di TIM facile da utilizzare e bello da vedere!<br>', '<table class="table table-condensed table-hover"> <tr><td> <strong> Display </strong></td><td>LCD a colori, TFT da 2.2".</td></tr>\r\n<tr><td> <strong> Visualizzazione numero chiamante </strong></td><td>si (con servizio CHI E\').</td></tr>\r\n<tr><td> <strong> Audio</strong></td><td>Suono nitido - Equalizzatore.</td></tr>\r\n<tr><td> <strong> Blocco chiamate</strong></td><td>in entrata e in uscita.</td></tr>\r\n<tr><td> <strong> Modo Eco One-Touch </strong></td><td>Si.</td></tr>\r\n<tr><td> <strong> Tecnologia </strong></td><td>Cordless DECT, GAP e Wi-Fi.</td></tr>\r\n<tr><td> <strong> Tastiera </strong></td><td>Ergonomica ed illuminata.</td></tr>\r\n<tr><td> <strong> LED </strong></td><td>Indicazione luminosa chiamata in arrivo.</td></tr>\r\n<tr><td> <strong> Lingua </strong></td><td>Menu 14 lingue.</td></tr>\r\n<tr><td> <strong> Portata </strong></td><td>Fino a 50/300m (interno-esterno).</td></tr>\r\n<tr><td> <strong> Autonomia </strong></td><td>Ampia, 150h/11 h In stand‐by/conversazione con batterie Ni-MH.</td></tr>\r\n<tr><td> <strong> Compatibilità </strong></td><td>Con il dispositivo trova oggetti.</td></tr>\r\n<tr><td> <strong> Avanzate </strong></td><td>Sveglia avanzata - Baby Monitor (attivabile con 2 cordless).</td></tr>\r\n<tr><td> <strong> Contenuto della confezione </strong></td><td>Portatile - Base - Caricatore - Cavo telefonico - 2 Batterie ricaricabili Ni MH formato AAA - Spina tripolare - Manuale d\'uso - Guida per la configurazione di Smartphone Connect - Garanzia.</td></tr>\r\n</table>', 'prodotti_blocchetto_facile_smile_rosso.jpg', NULL, NULL, NULL, '39,90 €', '3,33 €/mese', 0, 0, '#FF4500', '#FFFFFF', '0', '0', 1, 0),
(7, 2, 'Apple\r\niPad Pro 9,7" 256 GB', 'iPad Pro 9,7" è un concentrato mai visto di portatilità e prestazioni. È spesso solo 6,1 millimetri e pesa meno di 500 grammi, ma ha il display Retina più luminoso ed evoluto di sempre: con i suoi sensori True Tone si adegua alla luce ambientale, così gli occhi non si affaticano. In più hai il potente chip A9X a 64 bit di livello desktop, audio a quattro altoparlanti, fotocamera iSight e videocamera FaceTime HD, sensore di impronte digitali Touch ID, connessioni ultraveloci su Wi-Fi e 4G LTE e fino a 10 ore di autonomia.', '<table class="table table-condensed table-hover"> <tr><td> <strong> Display </strong></td><td>Retina Display 9,7" (diagonale) con True Tone e rivestimento antiriflesso.</td></tr>\r\n<tr><td> <strong> Sensori </strong></td><td>Impronte digitali Touch ID.</td></tr>\r\n<tr><td> <strong> Processore </strong></td><td>Chip A9X di terza generazione con architettura a 64 bit di livello desktop.</td></tr>\r\n<tr><td> <strong> Fotocamera </strong></td><td>iSight da 12MP con video a 4K.</td></tr>\r\n<tr><td> <strong> Videocamera </strong></td><td>FaceTime HD (foto da 5MP).</td></tr>\r\n<tr><td> <strong> Connettivita </strong></td><td>4G LTE Advanced, Wi-Fi 802.11ac con tecnologia MIMO.</td></tr>\r\n<tr><td> <strong> Batteria </strong></td><td>Fino a 10 ore di autonomia.</td></tr>\r\n</table>', 'APPLE_IPAD_97_spacegrey_01.jpg', 'APPLE_IPAD_97_spacegrey_02.jpg', 'APPLE_IPAD_97_spacegrey_03.jpg', 'APPLE_IPAD_97_spacegrey_04.jpg', '1199,90 €', '0', 0, 1, '#000000', '#D3D3D3', '0', '0', 0, 0),
(8, 2, 'Samsung\r\nGalaxy TAB A 9.7', 'Design sottile e moderno<br>\r\nLo stile essenziale e la cornice metallizzata esaltano il nuovo formato 4:3, donando a Galaxy TAB A un look moderno e sofisticato, garantendo la massima maneggevolezza grazie ai 7,5 millimetri di spessore e solo 456 grammi di peso.<br>', '<table class="table table-condensed table-hover"> <tr><td> <strong> Display </strong></td><td>9.7” TFT,1024x768 (4:3).</td></tr>\r\n<tr><td> <strong> Processore </strong></td><td>Snapdragon 410 QuadCore da 1.2 GHz.</td></tr>\r\n<tr><td> <strong> Memoria </strong></td><td>Interna 16GB (espandibile fino a 128GB), 2GB di Ram.</td></tr>\r\n<tr><td> <strong> Tecnologia </strong></td><td>LTE/HSDPA/HSUPA.</td></tr>\r\n<tr><td> <strong> Connettivita </strong></td><td>Wi-Fi 802.11 a/b/g/n - Bluetooth 4.0 - micro USB.</td></tr>\r\n<tr><td> <strong> Sistema Operativo </strong></td><td>Android™ 5.0.2.</td></tr>\r\n<tr><td> <strong> Applicazioni </strong></td><td>Android Market, Google Mobile App, Youtube, Inserimento testo e ricerca vocale, E-mail, A-GPS, SMS/MMS.</td></tr>\r\n<tr><td> <strong> Fotocamera </strong></td><td>Front: 2 Mpxl - Back: 5 Mpxl.</td></tr>\r\n<tr><td> <strong> Lettore Multimediale </strong></td><td>aac,amr,awb,mp3,ogg,wav, DivX, XviD, MPEG4, VP8, H.263, H.264.</td></tr>\r\n<tr><td> <strong> Dimensioni </strong></td><td>242,5 x 166,8 x 7,4 mm.</td></tr>\r\n<tr><td> <strong> Peso </strong></td><td>455 grammi.</td></tr>\r\n<tr><td> <strong> Autonomia </strong></td><td>Stand-by fino a 250h - 43 ore in chiamata.</td></tr>\r\n<tr><td> <strong> In dotazione </strong></td><td>Carica batteria - Manuale d\'uso - Cavo dati USB.</td></tr>\r\n</table>', 'SAMSUNG_T555_Black_01_1.jpg', 'SAMSUNG_T555_Black_02.jpg', 'SAMSUNG_T555_Black_03.jpg', 'SAMSUNG_T555_Black_04.jpg', '299,90 €', '0', 1, 0, '#000000', '#FFFFFF', '0', '0', 0, 0),
(9, 2, 'Huawei\r\nMediapad T1 10 LTE', 'Display 9.6” (1280x800) IPS 16M di colori<br>\r\nSistema Operativo Android™ 4.4 KitKat<br>', '<table class="table table-condensed table-hover"> <tr><td> <strong> Connettivita </strong></td><td>LTE, HSDPA+ 42.2Mbps/HSUPA 5.76/, Wi-Fi 802.11b/g/n, Bluetooth 3.0.</td></tr>\r\n<tr><td> <strong> Display </strong></td><td>9.6" (1280x800) IPS 16M di colori.</td></tr>\r\n<tr><td> <strong> Video/Audio/Picture </strong></td><td>2 Fotocamera da 5 Mpx e VGA Lettore multimediale - MP3, WAV, 3GP, AAC, AAC+ e-AAC+, JPG, PNG,GIF, BMP, WMV, H264, Mpeg4, 1080p/30fps.</td></tr>\r\n<tr><td> <strong> Memoria </strong></td><td>8GB (espandibile fino a 64GB).</td></tr>\r\n<tr><td> <strong> Processore </strong></td><td>Quad-core 1.2GHz.</td></tr>\r\n<tr><td> <strong> Sistema Operativo </strong></td><td>AndroidTM 4.4 KitKat.</td></tr>\r\n<tr><td> <strong> Applicazioni </strong></td><td>Google Mobile Services, Youtube, E-mail, GPS e A-GPS, SMS, Invio e ricezione, chiamata voce.</td></tr>\r\n<tr><td> <strong> In dotazione </strong></td><td>Caricabatteria - Manuale d’uso.</td></tr>\r\n<tr><td> <strong> Dimensioni </strong></td><td>248,5 x 150 x8,3 mm.</td></tr>\r\n<tr><td> <strong> Peso </strong></td><td>433 grammi.</td></tr>\r\n<tr><td> <strong> Autonomia </strong></td><td>Stand-by fino a 300h.</td></tr>\r\n</table>', 'huawei_t1_10_white_1.jpg', 'huawei_t1_10_white_2.jpg', 'huawei_t1_10_white_3.jpg', 'huawei_t1_10_white_4.jpg', '249,90 €', '0', 0, 0, '#FFFFFF', '0', '0', '0', 0, 0),
(10, 2, 'Alcatel\r\nPixi3 10', 'Sistema Operativo Android 5.1<br>\r\nDisplay 10.1" Touch<br>\r\nMediateKMT8321 Quad-Core da 1.3 GHz<br>', '<table class="table table-condensed table-hover"> <tr><td> <strong> Connettivita </strong></td><td>MediateKMT8321 Quad-Core da 1.3 GHz.</td></tr>\r\n<tr><td> <strong> Display </strong></td><td>Display 10,1” ,1280x800.</td></tr>\r\n<tr><td> <strong> Fotocamera </strong></td><td>Fotocamera (Front: 0.3 Mpxl Back: 2 Mpxl).</td></tr>\r\n<tr><td> <strong> Memoria </strong></td><td>Interna 8GB (espandibile fino a 64GB)1GB di Ram.</td></tr>\r\n<tr><td> <strong> Processore </strong></td><td>MediateKMT8321 Quad-Core da 1.3 GHz.</td></tr>\r\n<tr><td> <strong> Lettore multimediale </strong></td><td>aac, amr, awb, mp3, ogg, wav, DivX, XviD, MPEG4, VP8, H.263, H.264.</td></tr>\r\n<tr><td> <strong> In dotazione </strong></td><td>Caricabatteria - Connettore dati USB - Manuale d\'uso.</td></tr>\r\n<tr><td> <strong> Dimensioni </strong></td><td>255x155x8,9 mm.</td></tr>\r\n<tr><td> <strong> Peso </strong></td><td>365 grammi.</td></tr>\r\n<tr><td> <strong> Autonomia </strong></td><td>Stand-by fino a 350h, 70 ore in chiamata.</td></tr>\r\n</table>', 'PIXI_3_(10)_3G_Volcano_Black.jpg', NULL, NULL, NULL, '139,90 €', '0', 0, 0, '#000000', '#FFFFFF', '0', '0', 0, 0),
(11, 2, 'Samsung\r\nGalaxy Note 10.1 4G LTE', 'Samsung Galaxy Note 10.1" 4G amplia, con connettività 4G LTE, la gamma dei tablet con schermo 10.1\'\' permettendo di condividere foto e video ancora più velocemente. Si evidenzia anche un chipset Quad-core da 1.4 GHz , fotocamera posteriore da 5.0 Mpixel con flash led, utilizza micro-SIM (formato 3FF) ed è caratterizzato dal Sistema Operativo Android 4.1.2 (Jelly Bean) presentando al suo interno l\'integrazione del Google Mobile Suite, oltre che una serie di applicativi specifici Samsung per esaltare l\'efficienza e la praticità della S Pen integrata nella scocca. ', '<table class="table table-condensed table-hover"> <tr><td> <strong> Connettivita </strong></td><td>LTE 100Mps DL, 50Mbps UL/DC-HSDPA 42.2/HSUPA 5.76/Wi-Fi 802.11b/g/n, Bluetooth 4.0.</td></tr>\r\n<tr><td> <strong> Display </strong></td><td>10.1” (1280x800) 16M di colori.</td></tr>\r\n<tr><td> <strong> Dimensioni </strong></td><td>262 x 180 x 8.9 mm.</td></tr>\r\n<tr><td> <strong> Peso </strong></td><td>600 gr.</td></tr>\r\n<tr><td> <strong> Autonomia </strong></td><td>Stand by fino a 1500 ore; Conversazione fino a 51 ore in chiamata.</td></tr>\r\n<tr><td> <strong> Fotocamera </strong></td><td>Fotocamera da 5 Mpixel con Flash LED, frontale 1.9 Mpixel.</td></tr>\r\n<tr><td> <strong> Formati supportati </strong></td><td>MP3, WAV, 3GP, AAC, AAC+, e-AAC+, JPG, PNG,GIF, BMP, WMV, DivX/AVI.</td></tr>\r\n<tr><td> <strong> Memoria </strong></td><td>Interna 16GB (espandibile con microSD fino a 64GB), 2GB RAM.</td></tr>\r\n<tr><td> <strong> Processore </strong></td><td>Exynos 4412 Quad-Core 1.4GHz.</td></tr>\r\n<tr><td> <strong> Sistema Operativo </strong></td><td>Android™ 4.1.2 Jelly Bean.</td></tr>\r\n<tr><td> <strong> Applicazioni </strong></td><td>Chiamata vocale e videochiamata, Android Market, Google suite, Cubovision, Youtube, Inserimento testo e ricerca vocale, E-mail, GPS e A-GPS, SMS/MMS Invio e ricezione.</td></tr>\r\n<tr><td> <strong> In confezione </strong></td><td>Caricabatteria, Guida di riferimento rapido, Cavo dati, Auricolare stereo, S pen.</td></tr>\r\n</table>', 'prodotti_blocchetto_galaxy_note_1.png', NULL, NULL, NULL, '479 €', '0', 0, 0, '#A9A9A9', '0', '0', '0', 0, 0),
(12, 2, 'Acer\r\nICONIA W4 821', 'Display 8” (1280x800) IPS<br>\r\nSistema Operativo Windows 8.1 + Office Home & Students 2013<br>', '<table class="table table-condensed table-hover"> <tr><td> <strong> Connettivita </strong></td><td>HSDPA 21.2/HSUPA 5,76/,Wi-Fi Direct 802.11 a/b/g/n, Bluetooth 4.0 - Chiamata voce.</td></tr>\r\n<tr><td> <strong> Display </strong></td><td>8"(1280x800) IPS.</td></tr>\r\n<tr><td> <strong> Video/Audio/Picture </strong></td><td>5 Mpx A/F + 2 Mpx frontale, Lettore multimediale, MP3, WAV, 3GP, AAC, AAC+, e-AAC+, JPG, PNG,GIF, BMP, WMV, DivX/AVI.</td></tr>\r\n<tr><td> <strong> Memoria </strong></td><td>32GB, 2GB RAM.</td></tr>\r\n<tr><td> <strong> Processore </strong></td><td>Intel Atom Quad-Core 1.8GHz.</td></tr>\r\n<tr><td> <strong> Sistema Operativo </strong></td><td>Windows 8.1 + Office Home & Students 2013.</td></tr>\r\n<tr><td> <strong> Applicazioni </strong></td><td>Office Home & Students 2013, E-mail, GPS/A-GPS, SMS/MMS Invio e ricezione.</td></tr>\r\n<tr><td> <strong> In dotazione </strong></td><td>Caricabatteria - Guida di riferimento rapido.</td></tr>\r\n<tr><td> <strong> Dimensioni </strong></td><td>218.9 x 134.9 x 10.75 mm.</td></tr>\r\n<tr><td> <strong> Peso </strong></td><td>420 grammi.</td></tr>\r\n<tr><td> <strong> Autonomia </strong></td><td>4960 mAh / durata 8h.</td></tr>\r\n</table>', 'acer_iconia_w4_grigio_1.jpg', 'acer_iconia_w4_grigio_2.jpg', 'acer_iconia_w4_grigio_3.jpg', 'acer_iconia_w4_grigio_4.jpg', '299,90 €', '0', 0, 0, '#A9A9A9', '0', '0', '0', 0, 0),
(13, 3, 'TIM\r\nModem Fibra', 'Il Modem Fibra è il centro digitale della Casa che ti permette di navigare ad altissime prestazioni grazie alla doppia banda Wi-Fi (a 2.4 Ghz e a 5 Ghz.) o in alternativa sfruttando le 4 porte Gigabit Ethernet offrendoti il vantaggio di condividere e visualizzare in modo semplice ed immediato contenuti Multimediali (Foto, Musica, Video) su Smart TV, Tablet, PC e Smartphone di ultima generazione sfruttando la tecnologia DLNA e collegando un Hard Disk o una chiavetta USB al modem.', '<table class="table table-condensed table-hover"> <tr><td> <strong> Tecnologia </strong></td><td>ADSL/ADSL 2+/VDSL.</td></tr>\r\n<tr><td> <strong>\r\nWi-Fi</strong></td><td>\r\n802.11 b/g/n a 2.4 Ghz e 5 Ghz simultanee\r\n</td></tr><tr><td> <strong>\r\nInterfacce</strong></td><td>\r\n1 porta ADSL/VDSL - 1 porta WAN 4 porte Gigabit Ethernet - 1 Interfaccia Dect integrata - 1 porta PSTN 2 porte FXS per collegamento di telefoni - 2 porte USB per collegamento dischi e stampanti\r\n</td></tr><tr><td> <strong>\r\nFunzioni avanzate</strong></td><td>\r\nCondivisione foto, musica e video, Hard Disk e stampanti\r\n</td></tr><tr><td> <strong>\r\nRequisiti tecnici</strong></td><td>\r\nLinea ADSL Flat o Fibra Ottica di Telecom Italia\r\n</td></tr><tr><td> <strong>\r\nRequisiti di sistema per la gestione dell’interfaccia modem da PC</strong></td><td>\r\nPrincipali browser inseriti di default sui sistemi operativi Windows 8, Windows 7, Vista, XP - MacOS 10.3\r\n</td></tr><tr><td> <strong>\r\nAssistenza tecnica</strong></td><td>\r\n2 anni di garanzia sul prodotto\r\n</td></tr><tr><td> <strong>\r\nContenuto della confezione</strong></td><td>\r\nModem Fibra, filtro DSL con 2 cavi telefonici già collegati, cavo Ethernet con connettori gialli, alimentatore\r\n</td></tr></table>', 'prodotti_modem_fibra_tim_01.jpg', NULL, NULL, NULL, '99 €', '8,25 €/mese', 0, 0, '#FFFFFF', '0', '0', '0', 0, 0),
(14, 3, 'TIM\r\nModem Wi-Fi Car Pack 4G', 'Modem wi-fi 4G + Alimentatore da auto + servizi ACI Global per 6 mesi.<br>\r\nL\'innovativa tecnologia LTE (Long Term Evolution) consente di raggiungere fino a 70 Mbps in ricezione e 50 Mbps in trasmissione. Il Modem TIM wi-fi Car Pack 4G consente anche il collegamento Wi-Fi fino a 10 dispositivi. Il supporto memoria MicroSD Card fino a 32GB rende possibile condividere file tra gli utenti collegati.', '<table class="table table-condensed table-hover"> <tr><td> <strong> \r\nTecnologia</strong></td><td>\r\n4G - DC-HSDPA - HSPA+ - HSDPA - HSUPA - EDGE/GPRS\r\n</td></tr><tr><td> <strong>\r\nFrequenze</strong></td><td>\r\n4G: 800/1800/2600 Mhz, download fino a 100Mbps, upload fino a 40Mbps.<br>\r\nDC-HSDPA: 900/2100 Mhz, download fino a 42.2Mbps.<br>\r\nHSPA+: 900/2100 Mhz, download fino a 21.1 Mbps.<br>\r\nHSDPA: 900/2100 Mhz, download fino a 14.4 Mbps.<br>\r\nHSUPA: 900/2100 Mhz, upload fino a 5.76 Mbps\r\nEDGE/GPRS: 850/900/1800/1900 Mhz.\r\n</td></tr><tr><td> <strong>\r\nContenuto della Confezione</strong></td><td>\r\nModem 4G Wi-Fi - TIM Card con 1 euro di traffico prepagato incluso - Alimentatore da rete - Alimentatore da auto - Cavetto USB - Guida rapida – Card con PIN ACI Global per usufruire della Promozione\r\n</td></tr><tr><td> <strong>\r\nRequisiti di Sistema</strong></td><td>\r\nLa compatibilità è totale per tutti i dispositivi certificati Wi-Fi (802.11b/g/n).\r\n</td></tr></table>', '80811_TIM_Pack_WiFi_Car.jpg', NULL, NULL, NULL, '99,90 €', '0', 0, 0, '#FFFFFF', '0', '0', '0', 0, 0),
(15, 3, 'ZyXEL Repeater Wi-Fi AC750', 'ZyXEL WRE6505 Wireless AC750 Range Extender consente di estendere facilmente reti esistenti wireless 802.11 b / g / n / ac in modo facile e veloce. Basta collegare il Repeater direttamente alla presa di corrente e l\'indicatore di potenza del segnale LED consente di determinare la posizione di installazione ideale. Il one-click Wi-Fi Protected Setup (WPS Button a pagina 12), prevede l\'installazione del client wireless senza frustrazione e completa in pochi passi la configurazione di accesso alla rete.', '<table class="table table-condensed table-hover"> <tr><td> <strong> \r\nStandard Wi-Fi</strong></td><td>\r\n802.11 a / b / g / n / ac\r\n</td></tr><tr><td> <strong> \r\nVelocità Wi-Fi</strong></td><td>\r\n300 Mbps * (2,4 GHz), 450 Mbps * (5 GHz) Ricezione: 300 Mbps * (2,4 GHz), 450 Mbps * (5 GHz)\r\n</td></tr><tr><td> <strong> \r\nSicurezza Wi-Fi</strong></td><td>\r\n64/128 bit WEP, WPA / WPA2, WPA-PSK / WPA2-PSK\r\n</td></tr><tr><td> <strong> \r\nCaratteristiche operative</strong></td><td>\r\nModalità Ripetitore, Modalità AP, Wi-Fi Protected Setup (WPS), Wi-Fi Multimedia (WMM),Selezione automatica dei canali, Programmazione senza fili, Gestione di potenza di uscita senza fili,Filtraggio degli indirizzi MAC, Modalità di impostazione di copertura.\r\n</td></tr><tr><td> <strong> \r\nSoftware</strong></td><td>\r\nAggiornamento del firmware online\r\n</td></tr><tr><td> <strong> \r\nSpecifiche hardware</strong></td><td>\r\nLAN: 10/100 Mbps One Ethernet RJ-45 porta con auto MDI / MDIX supporto\r\n</td></tr><tr><td> <strong> \r\nDimensioni</strong></td><td>\r\n(LxPxA): 46,5 x 62,3 x 90,9 mm\r\n</td></tr><tr><td> <strong> \r\nPeso</strong></td><td>\r\n98 g\r\n</td></tr><tr><td> <strong> \r\nAmbiente operativo</strong></td><td>\r\nTemperatura: 0 ° C a 40 ° C (32 ° F a 104 ° F) Umidità: 10% a 90% (senza condensa)\r\n</td></tr><tr><td> <strong> \r\nContenuto della confezione</strong></td><td>\r\nWireless Range Extender,\r\nCavo Ethernet,\r\nGuida rapida,\r\nCertificato di garanzia,\r\nCD di supporto\r\n</td></tr></table>', 'slider_repeater_zyxel_ac750_front.jpg', NULL, NULL, NULL, '49,90 €', '0', 0, 0, '#FFFFFF', '0', '0', '0', 0, 0),
(16, 3, 'Tecnoware\r\nERA Plus 900', 'ERA PLUS 900 è un UPS (Uninterruptible Power Supply), cioè un gruppo di continuità, di tipo Line Interactive, realizzato appositamente per proteggere il Modem Fibra di TIM da qualsiasi avaria della rete elettrica (black-out, sottotensioni, sovratensioni, microinterruzioni), causa dei frequenti danneggiamenti di Hardware e Software.', '<table class="table table-condensed table-hover"> <tr><td> <strong> \r\nTecnologia</strong></td><td>\r\nLine Interactive con Stabilizzatore\r\n</td></tr><tr><td> <strong> \r\nRaffreddamento</strong></td><td>\r\nNaturale\r\n</td></tr><tr><td> <strong> \r\nRumorosità</strong></td><td>\r\n< 40 dBA a 1 m\r\n</td></tr><tr><td> <strong> \r\nStabilizzazione tensione</strong></td><td>\r\nLine Mode: Tramite AVR (Automatic Voltage Regulation)<br>\r\nBattery Mode: +/-5%\r\n</td></tr><tr><td> <strong> \r\nSovraccarico ammesso</strong></td><td>\r\n< 130%\r\n</td></tr><tr><td> <strong> \r\nBatteria</strong></td><td>\r\n1 (interna) di tipo al Piombo acido sigillata senza manutenzione<br>\r\nTempo di ricarica (Tipico) 4 ore<br>\r\nTensione nominale 12Vdc<br>\r\nAutonomia Tipica 10 min<br>\r\n</td></tr><tr><td> <strong> \r\nDimensioni</strong></td><td>\r\n10,1x14,2x27,9 cm\r\n</td></tr><tr><td> <strong> \r\nPeso</strong></td><td>\r\n3,7 Kg\r\n</td></tr><tr><td> <strong> \r\nAmbiente operativo</strong></td><td>\r\nDa 0 a 40 °C (per un corretto esercizio delle batterie da 20 a 25° C vedi grafi co “Vita Batterie dell’UPS in Servizio”)\r\nUmidità relativa < 95% non condensata\r\n</td></tr><tr><td> <strong> \r\nDotazioni</strong></td><td>\r\nCavo d’alimentazione con spina Schuko\r\n</td></tr></table>', 'slider_era_plus_900_tecnoware_1.jpg', 'slider_era_plus_900_tecnoware_2.jpg', 'slider_era_plus_900_tecnoware_3.jpg', 'slider_era_plus_900_tecnoware_4.jpg', '79,90 €', '0', 0, 0, '#000000', '0', '0', '0', 0, 0),
(17, 3, 'TIM\r\nChiavetta TIM 42.2', 'La Chiavetta TIM 42.2 è un modem usb dalle prestazioni superiori, con tecnologia HSPA+, dotata di Slot Memory Card per Micro SD, supporta navigazione fino a 42.2 Mbps in ricezione ed è compatibile con, VISTA, Windows 7, Windows 8.1, Mac OS X<br>', '<table class="table table-condensed table-hover"> <tr><td> <strong> \r\nTecnologia</strong></td><td>\r\nHSPA+/HSDPA/HSUPA/UMTS/EDGE/GPRS\r\n</td></tr> <tr><td> <strong> \r\nFrequenze</strong></td><td>\r\nDC-HSPA+/HSPA+/HSUPA/HSDPA/UMTS UMTS900/2100MHz EGPRS/GSM 850/900/1800/1900MHz\r\n</td></tr> <tr><td> <strong> \r\nDimensioni</strong></td><td>\r\n25x86x9 mm\r\n</td></tr> <tr><td> <strong> \r\nPeso</strong></td><td>\r\n22 grammi\r\n</td></tr> <tr><td> <strong> \r\nRequisiti di sistema</strong></td><td>\r\nWindows XP(32 bit), Vista (32/64 bit), Windows7 (32/64-bit), Windows 8.1 (32/64 bit) Modalità Desktop, 10.6.x,10.7.x, 10.8.x, 10.9.x\r\n</td></tr> <tr><td> <strong> \r\nIn dotazione</strong></td><td>\r\nGuida Rapida - TIM Card con 5€ (IVA incl.) di traffico prepagato a titolo promozionale. Il costo di attivazione della TIM Card, pari a 5€ non viene applicato. La TIM Card non è inclusa nel package TIM Business. Il prodotto non può essere venduto separatamente dalla TIM Card\r\n</td></tr></table>', 'TIM_Pack_M_Chiavetta_42_760x760.jpg', NULL, NULL, NULL, '29,90 €', '0', 0, 0, '#FFFFFF', '0', '0', '0', 0, 0),
(18, 3, 'TIM\r\nPowerline Adapter', 'Colleghi tra loro PC, modem e console senza problemi di copertura, distanza, né cablaggi: ti basta inserire Powerline Adapter nelle prese elettriche per creare una rete domestica che connette i vari apparati, con prestazioni fino a 200 Mbps.<br>\r\nE la riservatezza dei dati che trasmetti e ricevi è garantita mediante un sistema di crittografia.<br>\r\nAcquista Powerline Adapter in coppia direttamente su questo sito. Lo riceverai a casa tua in consegna gratuita.<br>', '<table class="table table-condensed table-hover"> <tr><td> <strong> \r\nTecnologia</strong></td><td>\r\nbridge di rete RJ-45 su linea elettrica\r\n</td></tr><tr><td> <strong> \r\nAccessori ADSL</strong></td><td>\r\nSi\r\n</td></tr><tr><td> <strong> \r\nAssistenza tecnica</strong></td><td>\r\n2 anni di garanzia\r\n</td></tr><tr><td> <strong> \r\nInterfacce</strong></td><td>\r\n1 porta Ethernet RJ-45\r\n</td></tr><tr><td> <strong> \r\nPrestazioni</strong></td><td>\r\nfino a 100Mbps sulla porta Ethernet e 200Mbps sulla rete elettrica - possibilità di collegare più dispositivi\r\n</td></tr><tr><td> <strong> \r\nProtezione</strong></td><td>\r\nprotezione mediante chiave di cifratura univoche (128 bit AES Link Encryption)\r\n</td></tr><tr><td> <strong> \r\nAccessori in dotazione</strong></td><td>\r\ncavo Ethernet (2 per confezione) - guida di installazione\r\n</td></tr></table>', 'PowerlineAdapter_1.png', NULL, NULL, NULL, '49 €', '0', 1, 0, '#FFFFFF', '0', '0', '0', 0, 0),
(19, 4, 'Apple\r\nWatch Sport 38', 'Ogni collezione di Apple Watch è realizzata con leghe speciali, studiate per unire estetica e robustezza. La cassa di Apple Watch Sport è in alluminio anodizzato color argento, grigio siderale, oro oppure oro rosa, mentre nei modelli Apple Watch è in acciaio inossidabile colore naturale o nero siderale. La cassa è disponibile in due misure: 38 mm e 42 mm. Abbiamo anche creato una gamma di cinturini intercambiabili in materiali esclusivi. Apple Watch usa tecnologie rivoluzionarie come la Digital Crown, il Taptic Engine e il Force Touch. E grazie a una batteria che dura fino a 18 ore, puoi usarlo tutto il giorno.', '<table class="table table-condensed table-hover"> <tr><td> <strong>\r\nDisplay</strong></td><td>\r\nVetro Ion-X.<br>\r\nDisplay Retina con Force Touch.\r\n</td></tr><tr><td> <strong>\r\nSensori</strong></td><td>\r\nCardiofrequenzimetro.<br>\r\nAccelerometro.<br>\r\nGiroscopio.<br>\r\nSensore di luce ambientale.\r\n</td></tr><tr><td> <strong>\r\nConnettivita</strong></td><td>\r\nWi-Fi (802.11b/g/n a 2,4GHz)\r\nBluetooth 4.0\r\n</td></tr><tr><td> <strong>\r\nBatteria</strong></td><td>\r\nFino a 18 ore di autonomia\r\n</td></tr><tr><td> <strong>\r\nResistenza all\'acqua</strong></td><td>\r\nSi\r\n</td></tr></table>', 'apple_watch38_black_01.jpg', 'apple_watch38_black_02.jpg', 'apple_watch38_black_03.jpg', 'apple_watch38_black_04.jpg', '115 €', '10,28 €/mese', 0, 1, '#000000', '0', '0', '0', 0, 0),
(20, 4, 'TIMTag', 'Con l’app TIMTag puoi:<br>\r\n- Localizzare e seguire i tuoi amici a quattro zampe tramite le funzioni “Dove è ora” e “Seguimi”<br>\r\n- Condividere con i tuoi cari le funzioni di localizzazione di TIMTag<br>\r\n- Impostare allarmi di “Movimento” e uscita da un area di sicurezza in modo da ricevere direttamente sul tuo smartphone notifiche quando il tuo amico a quattro zampe si muove o esce da una determinata area da te definita<br>\r\n- Visualizzare il percorso per raggiungere i tuoi amici a quattro zampe tramite la funzione “Trovami”<br>\r\n- Gestire in maniera dinamica e intelligente la durata della batteria all’interno dell’App.', 'All’attivazione della TIMCard viene attivata l’offerta Tim-Tag in promozione per 12 mesi.\r\nL\'offerta può essere attivata solo sulla TIM Card contenuta all\'interno della confezione.\r\nIl traffico sia dati che sms del Tracker GPS vs la piattaforma di servizio, è incluso nell’opzione TIM Tag (50MB e 100SMS ogni 30 giorni). Il Bundle dati e sms previsto è calibrato per soddisfare le esigenze di un utilizzo continuativo del dispositivo.\r\nPer fruire dell\'offerta è in ogni caso necessario che la TIMCard ad essa associata disponga di un credito telefonico residuo, in quanto non può essere effettuato traffico in assenza di credito sulla TIM Card.\r\nPer effettuare il download sul proprio smartphone dell’APP TIMTag, è necessario avere connessione dati attiva o una copertura Wi-Fi.\r\nL’app TIMTag è compatibile con dispositivi iOS e Android.\r\nAlla scadenza (trascorsi 360 gg dall’attivazione di Servizio), salvo disdetta, l’opzione TIMTag resterà attiva a 5€/mese con addebito su credito residuo della TIMCard. Pertanto si dovrà fare attenzione a disporre di un credito residuo sufficiente di almeno 5€.\r\nÈ possibile avere informazioni sul servizio e sullo stato dell’utenza contattando il Servizio Assistenza Clienti 119.\r\n ', 'timtag_newlogo_blocchetto.png', 'tag.jpg', 'TIM_TAG_sito_0005_TIM_Tag_Logo1.jpg', 'TIM_TAG_sito_0005_TIM_Tag_Logo2.jpg', '129 €', '0', 0, 0, '#FFFFFF', '0', '0', '0', 0, 8),
(21, 4, 'Beats\r\nSolo2 On-Ear Headphones', 'Audio potenziato con la nuova qualità sonora Beats, il suono delle cuffie Solo2 è più nitido e più pulito e sprigiona una più vasta gamma di emozioni. Le cuffie Solo2 offrono un\'ampia gamma di frequenze alte e bassi profondi per un\'esperienza di ascolto equilibrata per tutti i generi musicali.<br>\r\n<br>\r\nVestibilità e stile: comfort, durevolezza e stile. Padiglioni curvati di 15 gradi per un comfort prolungato; la flessibilità rotazionale consente ai padiglioni di flettersi per una vestibilità ancor più personalizzata<br>\r\n', '<table class="table table-condensed table-hover"> <tr><td> <strong>\nDimensioni</strong></td><td>\n156 mm (larghezza)\n</td></tr><tr><td> <strong>\nPeso</strong></td><td>\n205 gr.\n</td></tr><tr><td> <strong>\nContenuto della confezione</strong></td><td>\nCavo RemoteTalk™, Custodia da viaggi</td></tr></table>', 'beats_solo2_on_ear_red_1.jpg', NULL, NULL, NULL, '199,90 €', '0', 1, 0, '#FF0000', '#FFFFFF', '0', '0', 0, 0),
(22, 4, 'Decoder TIMvision', 'Con il decoder TIMvision hai a disposizione più di 8.000 titoli tra cartoni, film, serie e documentari sempre on demand per creare il tuo palinsesto senza interruzioni pubblicitarie.<br>\r\n Tramite il telecomando puoi mettere in pausa il tuo film preferito e farlo ripartire quando decidi tu, puoi rivedere una scena o andare avanti.<br>\r\nPuoi goderti la visione anche su Smart TV, su timvision.it e su app TIMvision per Smartphone, Tablet e PC, utilizzando le credenziali scelte al momento della registrazione al servizio TIMvision.\r\n ', '<table class="table table-condensed table-hover"> <tr><td> <strong>\r\nDimensioni (LxPxA)</strong></td><td>\r\n210 mm x 210 mm x 40 mm\r\n </td></tr><tr><td> <strong>\r\nConfezione</strong></td><td>\r\nDecoder - Cavo alimentazione - Cavo HDMI - Telecomando universale - Batterie - Guida rapida all\'installazione\r\n</td></tr><tr><td> <strong>\r\nProcessore</strong></td><td>\r\nProcessore Intel ATOM CE 4230\r\n </td></tr><tr><td> <strong>\r\nMemoria</strong></td><td>\r\nRam 1 GByte DDR3\r\n </td></tr><tr><td> <strong>\r\nConnettività</strong></td><td>\r\nHDMI 1.3 - Video Composito - Uscita audio ottica digitale - Ethernet 10/100 BASE-T - 1 x USB 2.0 - Connessione Wireless 802.11 b/g/n (2.4GHz e 5GHz) - Ricevitore IR integrato per telecomando TIMvision\r\n </td></tr><tr><td> <strong>\r\nFormati supportati</strong></td><td>\r\nAudio: MPEG-1 Layer I, II 2.0 - MPEG-1 Layer 3 (mp3) 2.0 - MPEG-4 AA-LC 2.0 - MPEG-4 AAC-LC 5.1 - MPEG-4 HE-AAC 5.1 - MPEG-4 BSAC 2.0 - LPCM 7.1 - WMA9 2.0 - WMA9 Pro 5.1\r\nVideo: MPEG-1 - MPEG-2 - MPEG-2@HL - MPEG-4.2 ASP@L5 (720p) - MPEG-4.10 (H.264) BP@L3 MP4@L4.0 e HIP@L4.0 - WMV9 MP@HL - SMPTE421 (VC-1) MP@HL Fotografici: JPEG - BMP - GIF - TIFF - PNG\r\n </td></tr><tr><td> <strong>\r\nImpostazione intuitiva</strong></td><td>\r\nCollegamento al televisore: Il Decoder TIMvision può essere collegato al televisore mediante il cavo HDMI oppure mediante cavo analogico RCA-SCART (inclusi nella confezione)\r\nCollegamento alla rete ADSL: Il Decoder TIMvision può essere collegato alla rete mediante cavo Ethernet o mediante connessione Wi-Fi. Alla prima accensione una procedura guidata ti assisterà nella prima configurazione della tua connessione\r\n </td></tr><tr><td> <strong>\r\nModalità Video PAL</strong></td><td>\r\n576p - 720p - 1080i - 1080p\r\n</td></tr></table>', 'prodotti_slider_decoder_timvision_01.jpg', NULL, NULL, NULL, '49 €', '0', 0, 0, '#000000', '0', '0', '0', 0, 2),
(23, 4, 'D-Link\r\nVideocamera Wi-Fi Fissa', 'La Videocamera fissa Cloud Wireless N di D-Link (DCS-942L) è una soluzione versatile per monitorare la casa o il piccolo ufficio 24 ore al giorno; dotata di LED a infrarossi permette di vedere anche in assenza di luce.<br>\r\nSi collega alla rete Wi-Fi dell\'utente e trasmette immagini video di alta qualità per il monitoraggio di casa e ufficio anche in condizioni di totale oscurità.<br>\r\nE\' dotata di slot per MicroSD card e di una MicroSD card da 16GB inclusa per lo storage on-board delle registrazioni.', '<table class="table table-condensed table-hover"> <tr><td> <strong>\r\nDimensioni</strong></td><td>\r\nCompatte\r\n</td></tr><tr><td> <strong>\r\nMemoria</strong></td><td>\r\nScheda MicroSD per registrazioni audio e video (scheda microSD da 16GB inclusa)\r\n</td></tr><tr><td> <strong>\r\nTecnologia</strong></td><td>\r\nWireless N per una connessione impeccabile da qualsiasi punto dell\'abitazione\r\n</td></tr><tr><td> <strong>\r\nLED</strong></td><td>\r\nA infrarossi integrati per la visibilità notturna (fino a 5 m)\r\n</td></tr><tr><td> <strong>\r\nSensore</strong></td><td>\r\nPIR (a infrarossi passivi) per il rilevamento dei movimenti\r\n</td></tr><tr><td> <strong>\r\nAvvisi</strong></td><td>\r\nVia e-mail attivati dal rilevamento dei movimenti\r\n</td></tr><tr><td> <strong>\r\nMicrofono</strong></td><td>\r\nIntegrato e ingresso per microfono esterno per un audio a 2 vie\r\n</td></tr><tr><td> <strong>\r\nSicurezza wireless</strong></td><td>\r\nTramite pressione di un pulsante grazie al WPS (Wi-Fi Protected Setup)\r\n</td></tr><tr><td> <strong>\r\nSupporto DNS dinamico</strong></td><td>\r\nPer un semplice accesso alla videocamera da qualunque postazione tramite Internet\r\n</td></tr><tr><td> <strong>\r\nmydlink Cloud Services abilitato</strong></td><td>\r\nIl modo più semplice per il monitoraggio della casa, da qualsiasi postazione\r\n</td></tr></table>', 'videocamera_wireless_dlink_fissa.jpg', NULL, NULL, NULL, '79 €', '0', 1, 0, '#FFFFFF', '0', '0', '0', 0, 0),
(24, 4, 'Samsung\r\nGear Fit', 'L\'innovativo schermo curvo da 1,84" Super AMOLED Touch Screen e i cinturini intercambiabili di Samsung Gear Fit ti rendono cool e a alla moda anche quando ti alleni. Ti offre inoltre una varietà di colori, sfondi e tipologie di orologio che puoi scegliere secondo le tue preferenze. Così puoi personalizzare il tuo look ogni giorno!<br>\r\n<br>\r\n\r\n1.84" Curved Super AMOLED Touchscreen Display<br>\r\nBluetooth 4.0 LE<br>', '<table class="table table-condensed table-hover"> <tr><td> <strong>\r\nDisplay</strong></td><td>\r\nCurvo Touch da 1.84” (risoluzione 128x432) a 16M di colori\r\n</td></tr><tr><td> <strong>\r\nCertificazione</strong></td><td>\r\nResistente ad acqua e polvere (IP67)\r\n</td></tr><tr><td> <strong>\r\nSensori</strong></td><td>\r\nAccelerometro - Giroscopio - Sensore cardiaco\r\n</td></tr><tr><td> <strong>\r\nConnettivita</strong></td><td>\r\nBluetooth 4.0 - Micro USB\r\n</td></tr><tr><td> <strong>\r\nApplicazioni</strong></td><td>\r\nModalità allenamento, Meteo, Calendario, Contapassi, Orologio, Cronometro, Conto alla rovescia, Notifiche istantanee, Controlli multimediali, Trova dispositivo personale\r\n</td></tr><tr><td> <strong>\r\nDimensioni</strong></td><td>\r\n23,4 x 57,4 x 11,95 mm\r\n</td></tr><tr><td> <strong>\r\nPeso</strong></td><td>\r\n27 grammi\r\n</td></tr><tr><td> <strong>\r\nBatteria</strong></td><td>\r\n210mAh\r\n</td></tr></table>', 'samsung_gear_fit_1.jpg', 'samsung_gear_fit_2.jpg', 'samsung_gear_fit_3.jpg', 'samsung_gear_fit_4.jpg', '79,90 €', '0', 0, 0, '#000000', '0', '0', '0', 0, 6);

-- --------------------------------------------------------

--
-- Struttura della tabella `prodotti_categorie`
--

CREATE TABLE `prodotti_categorie` (
  `id` int(11) NOT NULL,
  `titolo` varchar(100) NOT NULL,
  `icona` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `prodotti_categorie`
--

INSERT INTO `prodotti_categorie` (`id`, `titolo`, `icona`) VALUES
(1, 'Smartphone e Telefoni', 'fa-mobile '),
(2, 'Tablet e Computer', 'fa-tablet'),
(3, 'Modem e Networking', 'fa-globe'),
(4, 'TV e Smart Living', 'fa-television'),
(5, 'Outlet', 'fa-tags');

-- --------------------------------------------------------

--
-- Struttura della tabella `sl_categorie`
--

CREATE TABLE `sl_categorie` (
  `id` int(11) NOT NULL,
  `immagine` varchar(255) NOT NULL,
  `titolo` varchar(100) NOT NULL,
  `icona` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `sl_categorie`
--

INSERT INTO `sl_categorie` (`id`, `immagine`, `titolo`, `icona`) VALUES
(1, 'tv.jpg', 'TV e Intrattenimento', 'fa-futbol-o'),
(2, 'corsa.png', 'Salute e Benessere', 'fa-heartbeat'),
(3, 'molodaya_semya.jpg', 'Casa e Famiglia', 'fa-home'),
(4, 'persona.jpg', 'Servizi alla persona', 'fa-users');

-- --------------------------------------------------------

--
-- Struttura della tabella `sl_servizi`
--

CREATE TABLE `sl_servizi` (
  `id` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `titolo` varchar(255) NOT NULL,
  `descrizione` text NOT NULL,
  `immagine` varchar(255) NOT NULL,
  `promozione` tinyint(1) DEFAULT NULL,
  `prezzo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `sl_servizi`
--

INSERT INTO `sl_servizi` (`id`, `id_categoria`, `titolo`, `descrizione`, `immagine`, `promozione`, `prezzo`) VALUES
(1, 1, 'TIMVision', 'Cartoni, cinema, serie tv, documentari e concerti sempre on demand per creare il tuo palinsesto senza pubblicità. Più di 8.000 titoli in un abbonamento, senza vincoli di durata, anche in HD', 'timv.png', 0, ''),
(2, 1, 'Netflix', 'Serie Tv e film a partire da 7,99 €/mese, dove vuoi e quando vuoi, anche il decoder TIMvision', '3netflix.jpg', 1, '150 €'),
(3, 1, 'TIMmusic: la colonna sonora della tua vita', 'Con TIMmusic puoi:\nAscoltare milioni di brani in streaming di tutti i generi, dove e quando vuoi.\nCreare le tue playlist personali o scegliere quelle suggerite da Dj e artisti famosi.\nScoprire contenuti esclusivi come anteprime e interviste ai tuoi artisti preferiti.', 'tim_music.png', 0, ''),
(4, 1, 'TIMgames: mettiti in gioco, una nuova sfida ti aspetta!', 'Con I Love Games Promo puoi scaricare tutti i giochi che vuoi dall’app TIMgames, oppure  accedendo al sito www.timgames.it\nIn più, il traffico dati per scaricare i giochi è incluso nell\'abbonamento!', 'giochi.png', 0, ''),
(5, 1, 'Serie A TIM: il calcio è di chi lo ama', 'L’APP Serie A TIM è l’applicazione ufficiale del Campionato di Calcio di Serie A e per la stagione 2016/2017 continuerà ad essere il riferimento per tutti gli appassionati, con un modo nuovo e completo di seguire dove vuoi e in qualunque momento lo spettacolo del Campionato.', 'calcio.png', 0, ''),
(6, 2, 'App Gear Fit', 'Scarica questa app gratuita dallo store e personalizzala per il tuo prodotto Samsung Gear Fit con tecnologia wireless.\r\nQuest\'app ti consente di stabilire i tuoi obiettivi, monitorare i tuoi progressi e gestire le tue condizioni di salute con estrema praticità, ovunque ti trovi.', 'samsung_galaxy_gear_fit_product_photos_add07.jpg', 0, ''),
(7, 2, 'WELL UP', 'Un\'app per dare suggerimenti e informazioni concrete e scientificamente attendibili sui corretti stili di vita e sulle azioni di prevenzione.', 'Well_up_icon512x512.png', 0, ''),
(8, 3, 'TIM Tag', 'TIMTag, è il dispositivo che ti informa sulla posizione del tuo amico a quattro zampe e delle cose a te più care. \r\nSegui in tempo reale i suoi spostamenti sul tuo smartphone senza perderlo mai di vista.', 'tim_Tag.png', 1, '129 €'),
(9, 3, 'TIM Home Connect', 'La soluzione ideale per gestire tutti i sistemi di domotica presenti nella tua casa, dalla semplice caldaia domestica, ai sistemi di protezione della casa, ai più avanzati sistemi di monitoraggio.', 'timhomeconnect.png', 0, ''),
(10, 3, 'D-Link SmartHome', 'D-Link SmartHome Starter Kit ti offre la possibilità di impostare, controllare, monitorare e automatizzare la tua casa ovunque ti trovi.', 'dlink_smarthome.jpg', 0, ''),
(11, 4, 'Pagamenti', 'Scegli le carte di pagamento di Intesa Sanpaolo, UBI o Mediolanum: pagare è semplice e conveniente!', 'MySi_Leaflet_Interno_1024x682.jpg', 0, ''),
(12, 4, 'Trasporti', 'La soluzione ideale per gestire tutti i sistemi di domotica presenti nella tua casa, dalla semplice caldaia domestica, ai sistemi di protezione della casa, ai più avanzati sistemi di monitoraggio.', '76515.jpg', 0, ''),
(13, 4, 'Fidelity Card', 'Salva nel TIM Wallet le tue carte fedeltà per averle sempre con te', 'Una_chica_haciendo_compras_por_internet.jpg', 0, ''),
(14, 4, 'Coupon', 'Risparmia su un’ampia gamma di prodotti e servizi selezionati da QUI! Group', 'Schermata.png', 0, '');

-- --------------------------------------------------------

--
-- Struttura della tabella `sl_servizi_esempio`
--

CREATE TABLE `sl_servizi_esempio` (
  `id` int(11) NOT NULL,
  `id_servizio` int(11) NOT NULL,
  `immagine` varchar(255) NOT NULL,
  `descrizione` text NOT NULL,
  `attivazione` text NOT NULL,
  `prod_ass` int(11) NOT NULL,
  `faq1` varchar(255) NOT NULL,
  `desc1` text NOT NULL,
  `faq2` varchar(255) NOT NULL,
  `faq3` varchar(255) NOT NULL,
  `faq4` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `sl_servizi_esempio`
--

INSERT INTO `sl_servizi_esempio` (`id`, `id_servizio`, `immagine`, `descrizione`, `attivazione`, `prod_ass`, `faq1`, `desc1`, `faq2`, `faq3`, `faq4`) VALUES
(1, 2, 'Daredevil.png', '<br><div style="color:#ff0000; text-align:center; font-size:1.5em;">SCOPRI TUTTE LE NUOVE SERIE TV </div>\n<br>Serie originali, commedie, drammi e programmi per bambini, puoi guardare le tue serie TV e film preferiti in streaming istantaneo sul dispositivo che preferisci. L\'offerta TV che aspettavamo da tempo per la grande varietà dei contenuti, da vedere quando e dove vuoi con qualità della Rete TIM e senza vincoli, disponibile direttamente sulla TV di casa anche attraverso il decoder TIMvision con la qualità HD.\n<br><br>\n<div style="color:#ff0000; text-align:center; font-size:1.5em;"> Con TIMvision ti godi lo spettacolo di Netflix anche sulla TV di casa! </div>\n<br>Con TIM accedi al mondo Netflix in maniera facile e immediata con il decoder TIMvision. Per i clienti TIM non occorre alcuna carta di credito per Netflix. Paghi comodamente sulla fattura TIM e mantieni sotto controllo le spese. Puoi guardare Netflix in qualsiasi momento, senza interruzioni pubblicitarie. Un\'esperienza facile e veloce con tre pacchetti da scegliere in abbonamento.', '<br><div style="color:#ff0000; text-align:center; font-size:1.5em;">PACCHETTI</div>\n<br>- Netflix base: al prezzo di 7,99 €/mese potrai avere una sessione di streaming alla volta e definizione standard\n<br>- Netflix standard: al prezzo di 9,99 €/mese potrai avere due sessioni di streaming contemporanee e alta definizione\n<br>- Netflix premium: al prezzo di 11,99 €/mese potrai avere quattro sessioni di streaming alla volta e la visione in Ultra HD 4K <br><br>\n<div style="color:#ff0000; text-align:center; font-size:1.5em;">OFFERTE </div>\n<br>- Hai già il decoder TIMvision? Aggiungi subito Netflix\n<br>- Non hai il decoder TIMvision? Richiedi il decoder + Netflix\n<br>- Vuoi saperne di più dell\'offerta Netflix? Aggiungi solo Netflix', 22, 'Perché abbonarsi a Netflix?', 'Hai la possibilità di guardare in streaming migliaia di programmi televisivi e film, quando vuoi e dove vuoi, sulla tua TV mediante il decoder TIMvision, su Smart TV, PS3, PS4,Wii, Xbox, PC, Mac, smartphone, tablet.<br><br>Abbonandoti al servizio NETFLIX da decoder TIMvision collegato alla linea adsl/fibra di casa hai la possibilità di addebitare il costo di Netflix direttamente sulla tua fattura di linea fissa TIM. <br>Con Netflix non ci sono spot pubblicitari, puoi mettere in pausa, tornare indietro o riprendere la visione tutte le volte che vorrai, senza alcun limite. <br>Non ci sono impegni, potrai cessare il tuo abbonamento a Netflix in ogni momento.', 'Quanto costa abbonarsi a Netflix?', 'Quale velocità di connessione devo avere per sfruttare al meglio l\'abbonamento?', 'Come posso addebitare il costo di Netflix nella mia fattura TIM di linea fissa?'),
(2, 6, 'the_gear_fit_pairs.jpg', '<br>Gear Fit ha sviluppato una linea di prodotti innovativi, per la gestione della salute personale su smartphone o tablet. I prodotti wireless Samsung Gear Fit con connessione bluetooth per iPad, iPhone, iPod e Android consentono di misurare facilmente, memorizzare e condividere immediatamente i risultati con la famiglia o il medico. La potente applicazione App Gear Fit permette di gestire tutti i dati relativi alla propria salute con grafici, statistiche e tendenze. Questa applicazione, unica nel suo genere, traccia la relazione tra vari parametri come la pressione sanguigna, il peso, l\'apporto calorico e l\'attività fisica. \n<br>Compatibile con tutte le piattaforme Apple e Android. \n<br>Bilancia digitale di alta qualità.', '<br>Misura 9 parametri:\n<br>- peso.\n<br>- grasso corporeo.\n<br>- massa magra.\n<br>- massa muscolare.\n<br>- massa ossea.\n<br>- acqua corporea.\n<br>- apporto calorico giornaliero.\n<br>- indice di massa corporea.\n<br>- tasso di grasso viscerale.\n <br><br>\nRegistra le calorie e le attività giornaliere, pianifica gli obiettivi di peso. Organizza le registrazioni, i grafici, lo storico delle letture e visualizza le tendenze.<br>\nPossibilità di utenti e memorie illimitati (memoria off-line di 200 misure). Possibilità di impostare delle misurazioni e dei reminder delle attività.\n <br><br>\nCaratteristiche tecniche:\n<br>- Classificazione: alimentazione interna, parti applicate di tipo BF <br>- Connettività wireless: bluetooth V3.0 + EDR Classe 2 SPP\n<br>- Dimensioni: 380 x 310 x 35 mm\n<br>- Peso: 1.5 kg (senza batteria)\n<br>- Metodo di misurazione: misurazione elettronica completamente automatica <br>- Alimentazione: 4 batterie AA 1.5 V incluse\n<br>- Range del peso corporeo: 5-150 kg\n<br>- Range misurazione grasso corporeo: 5%-65%\n<br>- Range di misurazione acqua corporea: 20%- 85%\n<br>- Range del tasso di grasso viscerale: 1-59\n<br>- Peso corporeo: ±0.5 kg (5~40 kg); ±1% + 0.1 kg (40~150 kg) • Grasso corporeo: ±1%\n<br>- Acqua corporea: ±1%\n<br>- Massa muscolare corporea: ± 1% + 0.1 kg (± 1%)\n<br>- Massa ossea: ±0.3 kg', 24, 'Con quali dispositivi è compatibile?', 'Compatibile con i seguenti dispositivi Apple iOS (necessita versione iOS 5.0 o successiva): <br>- iPhone 5S, iPhone 5, iPhone 4S, iPhone 4, iPhone 3GS  <br>- iPad Air, iPad mini, iPad 4th gen, iPad 3rd gen, iPad 2 <br>- iPod touch 5th gen, iPod touch 4th gen, iPod touch 3rd gen  <br><br>Compatibile con i seguenti dispositivi Android (necessita sistema operativo 3.0 o successivo): <br>- Samsung Mega 6.3, Samsung Galaxy S5, Samsung Galaxy S4, Samsung Galaxy SIII SCH-I535, Samsung Galaxy Nexus, Samsung Galaxy Note III, Samsung Galaxy Note II <br>- HTC One, HTC Droid Incredible, HTC Droid DNA <br>- Motorola Droid 4 <br>- LGNexus5, LGNexus5<br>', 'Che cosa misura?', 'Che cosa misura?', 'Ho dimenticato l\'email o la password per accedere all\'applicazione, cosa devo fare?'),
(3, 8, 'cane.png', '<br><div style="color:#ff0000; font-size:1.5em;">TRACCIA E RINTRACCIA IL TUO AMICO A 4 ZAMPE E TUTTE LE COSE CHE AMI! \n</div>\n<br><br>TIMTag è il dispositivo che ti informa sulla posizione del tuo amico a quattro zampe e delle cose a te più care.\nSegui in tempo reale i suoi spostamenti sul tuo smartphone senza perderlo mai di vista.\n \n<br><br>Con TIMTag hai un dispositivo di localizzazione GPS di ultima generazione, con 12 mesi di servizio TIMTag e una TIM Card inclusi e un\' App dedicata intuitiva e semplice da utilizzare!', '<br><div style="color:#ff0000; text-align:center; font-size:1.5em;">Come si attiva? <br>\nTRE SEMPLICI PASSI E POTRAI TRACCIARE TUTTO QUELLO CHE AMI</div><br><br>\n1) Acquista il Pack TIMTag:  Acquista subito online e ricevi direttamente a casa tua il pack oppure vai in uno dei negozi TIM.\n <br><br>\n2) Attiva la TIM Card:  Registra la TIM Card che trovi nel Pack in un negozio TIM (l\'offerta TIMTag si attiverà automaticamente dopo la registrazione).\n <br><br>\n3) Scarica l\'APP TIMTag sul tuo Smartphone:  Installa l\'app sul tuo smartphone ed associa il dispositivo di localizzazione (Android ed iOS).', 20, 'Quali sono le caratteristiche di TIMTag?', 'È un\'offerta TIM che ti offre un Tracker GPS con inclusi 12 mesi di servizio TIMTag.<br> L’opzione TIMTag in promo, include il traffico sia dati che SMSs dal Tracker GPS verso la piattaforma di servizio (max 50MB e 100SMS ogni 30 giorni) e l’utilizzo dell’App TIMTag. <br>Il Bundle dati e SMS previsto è calibrato per soddisfare le esigenze di un utilizzo continuativo del dispositivo. <br>Il costo del Tracker GPS, della TIM Card e del servizio per i primi 12 mesi è di soli 129€! La confezione contiene:<br><br>Tracker GPS <br>12 mesi di servizio "preattivati" inclusi sulla TIM Card <br>1 TIM Card', 'Chi può scegliere TIMTag?', 'Quali sono le modalità, i tempi di attivazione e di rinnovo dell’offerta?', 'Come posso disattivare l’offerta?');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `assistenza_categorie`
--
ALTER TABLE `assistenza_categorie`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `assistenza_servizi_esempio`
--
ALTER TABLE `assistenza_servizi_esempio`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `assistenza_sottocategorie`
--
ALTER TABLE `assistenza_sottocategorie`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `chi_siamo`
--
ALTER TABLE `chi_siamo`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `chi_siamo_categorie`
--
ALTER TABLE `chi_siamo_categorie`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `faq_sl`
--
ALTER TABLE `faq_sl`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `gruppo`
--
ALTER TABLE `gruppo`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `gruppo_categorie`
--
ALTER TABLE `gruppo_categorie`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `gruppo_sottocategoria_perinvestitori`
--
ALTER TABLE `gruppo_sottocategoria_perinvestitori`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `highlights`
--
ALTER TABLE `highlights`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `prodotti`
--
ALTER TABLE `prodotti`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `prodotti_categorie`
--
ALTER TABLE `prodotti_categorie`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `sl_categorie`
--
ALTER TABLE `sl_categorie`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `sl_servizi`
--
ALTER TABLE `sl_servizi`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `sl_servizi_esempio`
--
ALTER TABLE `sl_servizi_esempio`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `assistenza_categorie`
--
ALTER TABLE `assistenza_categorie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT per la tabella `assistenza_servizi_esempio`
--
ALTER TABLE `assistenza_servizi_esempio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;
--
-- AUTO_INCREMENT per la tabella `assistenza_sottocategorie`
--
ALTER TABLE `assistenza_sottocategorie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT per la tabella `chi_siamo`
--
ALTER TABLE `chi_siamo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT per la tabella `chi_siamo_categorie`
--
ALTER TABLE `chi_siamo_categorie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT per la tabella `faq_sl`
--
ALTER TABLE `faq_sl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT per la tabella `gruppo`
--
ALTER TABLE `gruppo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT per la tabella `gruppo_categorie`
--
ALTER TABLE `gruppo_categorie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT per la tabella `gruppo_sottocategoria_perinvestitori`
--
ALTER TABLE `gruppo_sottocategoria_perinvestitori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT per la tabella `highlights`
--
ALTER TABLE `highlights`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT per la tabella `prodotti`
--
ALTER TABLE `prodotti`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT per la tabella `prodotti_categorie`
--
ALTER TABLE `prodotti_categorie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT per la tabella `sl_categorie`
--
ALTER TABLE `sl_categorie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT per la tabella `sl_servizi`
--
ALTER TABLE `sl_servizi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT per la tabella `sl_servizi_esempio`
--
ALTER TABLE `sl_servizi_esempio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
