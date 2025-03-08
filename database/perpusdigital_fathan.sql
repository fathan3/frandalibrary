-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 06, 2024 at 05:48 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpustakaan_digital`
--

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `BukuID` int(11) NOT NULL,
  `Judul` varchar(255) DEFAULT NULL,
  `Penulis` varchar(255) DEFAULT NULL,
  `Penerbit` varchar(255) DEFAULT NULL,
  `TahunTerbit` int(11) DEFAULT NULL,
  `cover` text DEFAULT NULL,
  `KategoriID` int(11) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `linkbuku` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`BukuID`, `Judul`, `Penulis`, `Penerbit`, `TahunTerbit`, `cover`, `KategoriID`, `deskripsi`, `linkbuku`) VALUES
(52, 'Melangkah', 'J.S. Khairen', 'Gramedia Widiasarana Indonesia', 2023, 'melangkah.jpg', 22, 'Listrik padam di seluruh Jawa dan Bali secara misterius. Ancaman nyata kekuatan baru yang hendak menaklukkan Nusantara.  Saat yang sama, empat sahabat mendarat di Sumba, hanya untuk mendapati nasib ratusan juta manusia ada di tangan mereka! Empat mahasiswa ekonomi ini, harus bertarung melawan pasukan berkuda yang bisa melontarkan listrik! Semua dipersulit oleh seorang buronan tingkat tinggi bertopeng pahlawan yang punya rencana mengerikan.  Ternyata pesan arwah nenek moyang itu benar-benar terwujud. “Akan datang kegelapan yang berderap, bersama ribuan kuda raksasa di kala malam. Mereka bangun setelah sekian lama, untuk menghancurkan Nusantara. Seorang lelaki dan seorang perempuan ditakdirkan', 'Certificate ACP - ITS HTML and CSS SMK Doa Bangsa Pelabuhan Ratu.pdf'),
(53, 'Charlotte 5', 'Jun Maeda', 'ASCII Media Works', 2015, 'charlotte5.jpeg', 23, 'Sangat sedikit remaja laki-laki dan perempuan yang memiliki kemampuan khusus. Yuu Otosaka menggunakan kemampuannya tanpa diketahui orang lain untuk menjalani kehidupan sekolah yang memuaskan. Dan kemudian, seorang gadis bernama Nao Tomori tiba-tiba muncul di hadapannya. Pertemuan mereka mengungkapkan takdir bagi pemilik kemampuan khusus.', 'blank'),
(54, 'Bakteria', 'STEVE MOULD', 'm&c!', 2023, 'bakteri.jpg', 24, 'Tahukah kamu kalau bakteri pertama muncul sekitar 3,6 milyar tahun yang lalu, jauh sebelum manusia ada? Atau ada satu jenis bakteri yang menakjubkan yang tiga kali lebih lengket daripada lem super? Ayo kita lihat lebih dekat berbagai mikroba seperti bakteri, virus, dan kuman di buku tentang mikrobiologi yang mengasyikkan ini! Banyak informasi menarik yang membuatmu ingin tahu lebih banyak lagi!', 'blank'),
(56, 'Jatuh-Bangun Elon Musk', 'A. YOGASWARA ', 'Checklist', 2023, 'jatuhbangun.jpg', 26, 'Pada 2 Agustus 2008, mata Elon Musk menatap layar monitor dengan perasaan harap-harap cemas. Hari itu adalah kali ketiga SpaceX mencoba meluncurkan Falcon 1 menuju orbit. Elon kembali pada ingatan masa kecilnya. Sejak masih bocah, ia bercita-cita ingin membangun sesuatu yang bermanfaat bagi umat manusia. Sudah sejak lama ia meyakini bahwa suatu saat nanti, bumi kehancuran, entah karena  yang kita tinggali ini akan mengalami perang nuklir, kerusakan alam, atau serangan alien.  Untuk menjamin kelangsungan hidup manusia, seseorang harus bisa menemukan alternatif tempat tinggal bagi umat manusia. Layaknya kebanyakan tokoh pahlawan fiksi yang sering dibacanya sejak kecil, Elon mengambil tanggung jawab ini secara personal. la merasa sudah menjadi kewajiban dalam hidupnya untuk menyelamatkan manusia dari ancaman kepunahan. Sebagai awal dari upayanya itu, ia mencoba menerbangkan roket Falcon 1 ke orbit bumi melalui perusahaan luar angkasa swasta miliknya, SpaceX. Bukan hal yang mudah, karena selama ini, misi pergi ke luar angkasa dikenal memiliki biaya yang tinggi dan tingkat kerumitan yang super. Itulah sebabnya hanya NASA di Amerika Serikat dan Rusia yang dianggap mampu menerbangkan manusia ke luar angkasa.  Saat Elon Musk membangun SpaceX dan mengumumkan ambisinya untuk menjadi perusahaan swasta yang bergerak di bidang antariksa, banyak orang mencibir. Elon dituduh tak bisa membedakan mana dunia fiksi dan mana dunia nyata.  Namun, Elon tak peduli. Sudah menjadi sifatnya untuk berkeras hati mewujudkan semua yang dicita-citakannya.  Bukan berarti ia tak memiliki keraguan. Bagaimanapun, kegagalannya dalam dua percobaan sebelumnya menerbangkan Falcon 1 masih membekas dalam ingatannya. Setelah penantian lama, Falcon 1 akhirnya siap diluncurkan pada 24 Maret 2006. Hampir semua kru SpaceX memegang kepala, tak percaya. Roket kebanggaan mereka terbakar dan jatuh hanya setelah 41 detik diluncurkan.  Bukan Elon namanya jika ia begitu mudah menyerah. Elon berusaha membangkitkan semangat timnya untuk merencanakan peluncuran kedua.  Segala kesalahan dipelajari. Para insinyur berupaya keras mempersiapkan Falcon 1 agar tidak mengalami kejadian tragis untuk kedua kalinya. Berbagai upaya dikorbankan. Bahkan Elon Musk harus menelan pil pahit saat rumah tangganya hancur berantakan. Terlalu sibuk mengurus pekerjaan membuat Elon melalaikan tugasnya sebagai kepala keluarga.  Namun, itu semua bukan halangan bagi Elon untuk menyiapkan peluncuran kedua Falcon 1. Hari H telah ditetapkan.', 'blank'),
(61, 'Komunikasi Traveling', 'Sihabuddin, S.I.Kom, M.I.Kom', 'Selaksa Media', 2023, 'komunikasitraveling.jpg', 26, 'Traveling merupakan sebuah cara untuk menghilangkan penat atau menambah wawasan atau mengeksplorasi atau juga sebagai bentuk self-reward seseorang. Di era saat ini, traveling menjadi sebuah lifestyle bagi sebagian besar masyarakat. Kesibukan di ruang kerja dan aktivitas perkuliahan misalnya, mendesak banyak orang untuk keluar sejenak dalam rangka refreshing.', 'blank'),
(62, 'Laskar Pelangi', 'Andrea Hirata	', 'Bentang Pustaka	', 2008, 'laskar pelangi.jpg', 22, 'Novel ini menceritakan kisah 10 anak Belitung yang bersekolah di SD Muhammadiyah Belitung. Mereka berasal dari keluarga miskin, namun memiliki semangat belajar yang tinggi. Novel ini penuh dengan humor, persahabatan, dan semangat pantang menyerah.	', 'Andrea Hirata - Laskar Pelangi.pdf'),
(63, 'Negeri 5 Menara	', 'Ahmad Fuadi	', 'Gramedia Pustaka Utama	', 2009, '5 menara.jpg', 22, 'Novel ini menceritakan kisah 6 santri dari berbagai daerah di Indonesia yang tinggal di Pondok Madani. Mereka memiliki mimpi yang berbeda-beda, namun saling mendukung dan membantu satu sama lain. Novel ini penuh dengan inspirasi dan motivasi.	', 'Negeri 5 Menara. Oleh _ Ahmad Fuadi.pdf'),
(64, 'Filosofi Kopi	', 'Dewi Lestari	', 'Gramedia Pustaka Utama	', 2006, 'filosopi kopi.jpg', 22, 'Novel ini menceritakan kisah Ben dan Jouke, dua barista yang membuka kedai kopi bernama Filosofi Kopi. Mereka berkeliling Indonesia untuk menemukan kopi terbaik dan bertemu dengan orang-orang yang menarik. Novel ini penuh dengan filosofi hidup dan makna kopi.	', 'dee-lestari-filosofi-kopi.pdf'),
(65, 'Orang-Orang Biasa	', 'Andrea Hirata	', 'Gramedia Pustaka Utama	', 2011, 'orang2biasa.jpg', 22, 'Novel ini menceritakan kisah 12 orang dari berbagai latar belakang yang tinggal di Belitong. Mereka memiliki cerita dan pengalaman hidup yang berbeda-beda, namun saling berkaitan satu sama lain. Novel ini penuh dengan humor, persahabatan, dan semangat pantang menyerah.	', 'blank'),
(66, 'Perahu Kertas', 'Dewi Lestari', 'Fixi', 2008, 'perahu kertas.jpg', 22, 'Novel ini menceritakan kisah cinta yang rumit antara Kugy dan Keenan. Kisah mereka penuh dengan lika-liku dan rintangan yang harus dihadapi.', 'blank'),
(68, 'Resolusi Konflik', 'Ichsan Malik', 'PBK', 2022, 'resolusi konflik.jpg', 26, 'Kehadiran buku Resolusi Konflik, jembatan Perdamaian ini bertujuan untuk mengisi kekosongan bacaan terkait dengan pencegahan dan resolusi konflik di Indonesia. Oleh karena itu, alur buku ini dapat juga diartikan sebagai peta jalan untuk mencegah dan menyelesaikan konflik secara terstruktur dan sistematis. Pencegahan dan penyelesaian konflik harus diawali dengan pemahaman yang mendalam tentang konflik, yang juga dapat dianggap sebagai penyakit.', 'blank'),
(69, 'Kebijakan Publik', 'A. Hanief Saha Ghafur', 'Intrans Publishing', 2023, 'kebijakan.jpg', 26, 'Pelayanan publik merupakan salah satu bentuk nyata kehadiran negara di tengah masyarakat. Narasi demikian sudah banyak dikaji dan dipublikasi, memperlihatkan mesin birokrasi negara ada dan bekerja untuk kepentingan rakyat dengan melayani publik. Hal ini selaras dengan tujuan dibentuknya negara sebagaimana tertuang dalam pembukaan UUD 1945, yakni “Melindungi segenap bangsa Indonesia dan seluruh tumpah darah Indonesia dan untuk memajukan kesejahteraan umum, mencerdaskan kehidupan bangsa, dan ikut melaksanakan ketertiban dunia\". Karena cita cita mulia tersebutlah pemerintahan-negara dibentuk agar dapat memberi pelayanan publik dan melaksanakan pembangunan melalui instrumen birokrasi dan segala kewenangannya.', 'blank'),
(70, 'Tubuh', 'Dr Bipasha Choudhury', 'm&c!', 2023, 'tubuh.jpeg', 24, 'Tahukah kamu bahwa kamu menumbuhkan kulit baru setiap bulannya? Atau bahwa makanan yang kamu konsumsi bisa memengaruhi tidurmu di malam hari? Kenali lebih dekat cara kerja tubuhmu, apa yang membentuknya, dan bagaimana menjaga tubuh tetap sehat melalui buku pengantar tubuh yang keren ini!', 'blank'),
(71, 'DNA', 'Alison Woollard & Dr Sophie Gilbert', 'm&c!', 2023, 'dna.jpg', 24, 'DNA adalah molekul yang menyimpan kode kehidupan. Kita semua bergantung pada DNA untuk bertumbuh, bertahan hidup, dan bereproduksi. Mari kita cari tahu apa itu DNA dan apa yang terjadi jika DNA bermutasi!', 'blank'),
(72, 'Ensiklopedia Anak : Otak', 'DR Liam Drew', 'm&amp;c!', 2023, 'otak.jpg', 24, 'Tahukah kamu kalau otak manusia memiliki lebih dari 85 milyar sel otak (neuron)? Otak juga berkembang sepenuhnya paling tidak saat kamu berusia 20 tahun. Sejak sekitar usia 30 tahun, otak manusia mulai menyusut secara bertahap. Temukan lebih banyak lagi bagaimana organ yang paling kuat di tubuhmu ini berpikir, belajar, dan selalu aktif – bahkan saat kamu tidur! Jangan lewatkan berbagai pengetahuan terkini mengenai otak yang wajib kamu ketahui!', 'blank'),
(73, 'Fatimah Az-Zahra #1', 'Arin Vita Dwitia', 'C-Klik Media', 2024, 'fatimah.jpg', 27, 'Salah satu anak perempuan Rasulullah Saw. diketahui memiliki kedudukan tinggi di dalam sejarah Islam. la dikenal dengan nama Fatimah binti Muhammad atau Fatimah az-Zahra, putri bungsu Rasulullah Saw. dengan Khadijah binti Khuwailid.  Sejak kecil, Fatimah az-Zahra menemani, membantu, dan mendukung perjuangan Rasulullah Saw. dalam menegakkan agama lslam. la tumbuh menjadi perempuan shalihah, hebat, mulia, berani, dan sangat tunduk dengan ajaran lslam yang dibawa oleh ayahnya, Rasulullah Saw. Oleh karena itulah, akhlak dan kepribadiannya mencerminkan Rasulullah Saw. Wajahnya juga sangat mirip dengan Rasulullah Saw., sehingga membuat ia begitu dicintai oleh Khadijah.', 'blank'),
(74, 'Kitab Tauhid', 'Imam Maturidi', 'Turos Khazanah Pustaka Islam', 2024, 'tauhid.jpg', 27, 'Ada dua madrasah utama yang menjadi rujukan dalam akidah Ahlussunnah wal Jama’ah, Asy’ariyah dan Maturidiyah. Keduanya sama-sama menjadi pelopor dan fondasi awal kelahiran akidah Suni ini.  Selama ini, kita hanya akrab dengan gagasan Imam Asy’ari, itu juga hanya lewat karya para muridnya. Namun, bagaimana dengan pandangan Imam Maturidi? Namanya sangat sering disebutkan tapi karya dan pokok gagasannya tidak pernah dikaji sama sekali.', 'blank'),
(75, 'The Story of Dajjal', 'Muhammad Muhlisin', 'Araska Publisher', 2023, 'dajjal.jpg', 27, '\"Tidak ada satu pun mahluk sejak Adam diciptakan hingga terjadinya kiamat yang fitnahnya lebih besar dari dojal.\" (HR Muslim).', 'blank'),
(76, 'Misteri Roh', 'Ibnu Qayyim Al Jauziyyah', 'Anak Hebat Indonesia', 2024, 'roh.jpg', 27, 'Di tengah kesadaran akan kefanaan semua alam dan dirinya, manusia terus mencari dan bertanya adakah unsur dalam dirinya yang akan tetap abadi setelah kematian merenggut jasadnya dan menemui Sang Pencipta. Adakah suatu unsur yang menghubungkan kehidupan fana di dunia ini dengan akhirat yang kekal kelak. Roh yang sekiranya mendekati kebenaran akan pertanyaan tersebut. Walaupun diyakini ia tidak qadim, kekekalan seiring dengan kekekalan akhirat adalah sifat roh yang masih misteri tetapi juga harapan dan tanda tanya besar.', 'blank'),
(77, 'Semua Tentang Dia', 'Fathan Ruhul Alam', 'Gramedia (In syaa Allah)', 2024, 'semua tentang dia.png', 22, 'Aku orangnya pelupa, sebab itu senyum manis serta indah binar matamu aku abadikan dalam tulisan sajak tentangmu.  Setidaknya ketika nanti kau memilih pergi, aku akan kembali mengulang membaca sajak sajak yang tercipta karenamu.  Lalu sejenak terdiam dan tersenyum sambil membayangkanmu, setidaknya di kehidupanku yang membosankan ini pernah disinggahi oleh manusia sepertimu.  Ribuan sajak pun masih bisa kutulis, sebab segala hal menakjubkan tentangmu tak akan pernah ada habisnya.  Oleh karena itu, bolehkah aku meminjam segala hal tentangmu untuk setiap sajak yang ku tulis?', 'blank'),
(78, 'Mainan Surprise', 'Maulidya Rahma Sumaedi, dkk', 'Curhat Anak Bangsa', 2019, 'mainan.jpg', 23, 'Maria bersemangat sekali karena hari ini ia akan membeli mainan surprise yang sudah lama diidamkannya. Selain itu, mainan surprise ini adalah mainan pertamanya. Tentu saja, Maria sangat berharap bisa dapat karakter kesukaannya. Kira-kira, harapan Maria akan terwujud tidak, ya? Apa sih sebenarnya isi mainan surprise yang menjadi incaran Maria sejak lama itu? Bagaimana rupanya ya?', 'blank'),
(79, 'Dokter Untuk Adikku', 'Nurulita Aulia Karindra, dkk', 'Mizan Media Utama', 2019, 'dokter.jpg', 23, 'Adik tiba-tiba saja tidak enak badan dengan gejala demam dan pilek, aduh ayah dan ibu kebetulan juga sedang tidak ada di rumah. Cimu jadi tidak bisa membawa adik berobat ke dokter, lalu bagaimana ya? Sepertinya Cimu harus berusaha merawat adiknya sendiri di rumah, setidaknya agar adiknya tidak semakin parah dan lekas sembuh.  Cimu akhirnya berusaha mengecek kondisi adik untuk menentukan perawatan apa yang bisa ia berikan. Badan adik panas, Cimu akan mencoba mengukur suhu tubuh adik dengan termostat! Hidung anak tersumbat dan sering bersin, hmm bisa jadi adik terkena flu. Cimu pun langsung bergegas mencari stok obat flu yang ada di rumahnya.  Apakah hal yang dilakukan Cimu untuk merawat adiknya sudah benar? Akan kah adik Cimu bisa segera pulih setelah dirawat oleh dokter dadakan, kakaknya Cimu?)', 'blank'),
(80, 'Tabi ', 'Marchella Fp', 'Gramedia', 2023, 'tabi.png', 22, 'Katanya manusia jatuh cinta tiga kali sepanjang hidupnya. Tabi dalam bahasa Jepang berarti perjalanan. Tabi sibuk penuhi ekspektasi raga lain selama hidupnya. Sampai tiba pada sebuah keraguan yang membuatnya memutuskan untuk memulai perjalanan sendirian ke Jepang, sesuai doa dalam namanya. Perjalanan yang membawanya menyusun ulang senang dan luka yang acak di memorinya. Membuat ia memutuskan untuk menulis perjalanan cinta yang hampir tidak pernah dibicarakan. Semua tersimpan jadi potongan-potongan pelajaran yang membawa Tabi ke dalam wahana yang tidak terduga.', 'blank'),
(82, 'Ilmu Mantiq', 'Rizem Aizid', 'Anak Hebat Indonesia', 2023, 'mantiq.jpg', 26, 'Ilmu mantiq merupakan suatu pengetahuan yang secara khusus bertujuan menjaga akal manusia agar tidak salah dalam berpikir. Menurut Imam Al-Ghazali, umat Muslim boleh mempelajari mantiq, bahkan beliau menganjurkannya. Hal ini dapat dilihat dari pernyataannya: \"Siapa saja yang tidak mengetahui mantiq, maka ilmunya patut diragukan.\"', 'blank'),
(85, 'Dia Razi ', 'Nurwina Sari', 'Romancious', 2024, 'dia razi.jpg', 22, '&quot;Gue nggak mau pacaran, tapi kapan pun dia butuh, gue ada&quot; - Razi\r\n\r\nBagi Razi, hidup itu bukan cuma soal &#039;pacaran, tapi juga tentang cita-cita dan masa depan yang cemerlang. Bagi Razi juga, tidak ada yang menarik, kecuali basket dan hal-hal yang terkait dengannya. Itu kenapa, ada Aruna di dalam hidup seorang Razi. Sebab, Aruna juga menyukai basket, dan menyukai Razi.\r\n\r\nTadinya, semua hanya tentang Razi, basket, dan Aruna. Hingga suatu ketika, Razi bertemu dengan ilusi, yang ternyata diam-diam andal dalam bermain basket dan berhasil membuat Razi yang terkenal dingin juga tertutup-mau mengenal ilusi lebih dalam lagi.\r\n\r\nMulai dari sana, hidup Razi bukan lagi tentang basket, tapi juga tentang cinta dan kerumitannya.', 'blank'),
(88, 'I&#039;m not Stupid!', 'Khusnul Art', 'Coconut Books', 2024, 'stupid.jpg', 22, 'I’M NOT STUPID mengisahkan tentang Wira, siswa kelas sepuluh yang diterima di Magnesium High School lewat tes seleksi jalur prestasi, namun ia tidak lolos dan malah di tempatkan di kelas Stupid. Wira merasa ada kejanggalan mengenai delapan peraturan yang diterapkan di MHS dan sistem pembagian kelas yang tidak adil. Ia berencana melakukan aksi demo untuk mengubah peraturan sekolah tersebut. Namun, sebelum melakukan itu, ia diberitahu Asfateman sekelasnya untuk membaca kitab keramat yang berisi asal-usul dibentuknya delapan peraturan MHS', 'blank'),
(89, 'Hamka: From A to Z', 'Emhaf', 'Anak Hebat Indonesia', 2022, 'Hamka_From_A_To_Z.jpg', 26, 'Hamka: From A To Z merupakan salah satu buku bacaan Karya Emhaf. Hamka lahir pada 17 Februari 1908 di Kampung Molek, Maninjau, Sumatera Barat, dari pasangan Dr. H. Abdul Karim Amrullah (Haji Rasul) dan Siti Safiyah Binti Gelanggar yang bergelar Bagindo nan Batuah. Hamka mewarisi darah ulama dan pejuang yang kokoh pada pendirian dari ayahnya yang dikenal sebagai ulama pelopor Gerakan Islah (tajdid) di Minangkabau serta salah satu tokoh utama dari gerakan pembaharuan yang membawa reformasi Islam (kaum muda).Nama Hamka sendiri merupakan akronim dari namanya, Haji Abdul Malik Karim Amrullah, sedangkan sebutan Buya adalah panggilan khas untuk orang Minangkabau. Kata Buya sebenarnya berasal dari kata abi, atau abuya dalam bahasa Arab yang berarti ayahku atau orang yang dihormati.', ''),
(92, 'Finding God', 'Erianto Rachman', 'Javanica', 2024, 'finding.jpg', 27, '“Mengapa aku ada?” adalah pertanyaan yang muncul serta-merta dari hasrat manusia untuk memahami hakikat dirinya dan kehidupan. Upaya menjawabnya melahirkan dua jalan besar pencarian yang seolah-olah bertolak-belakang: sains dan spiritualitas. Tetapi, keduanya sama-sama mengakui bahwa ada satu hal yang menjadi batas pencarian, yaitu ketakterbatasan—sumber penciptaan tunggal yang sering disebut sebagai Tuhan dengan segala nama yang disematkan kepada-Nya.\r\n\r\nFinding God adalah sebuah riset sekaligus perjalanan pribadi penulis selama 28 tahun untuk memahami Tuhan dan misteri penciptaan melalui jalan sains dan spiritualitas sekaligus. Dengan pembahasan yang memukau dan jenaka, mula-mula kita dipandu menelusuri upaya sains untuk menguak rahasia kehidupan, mulai dari era Newton, Einstein, hingga teori-teori fisika quantum mutakhir. Kemudian, berbekal data dan informasi sains, pelan-pelan kita dibimbing untuk memahami Tuhan melalui jalan spiritual. Di ujung perjalanan, kita dipersilakan untuk memasuki sebuah ruang rahasia untuk menemui dan mengalami Tuhan sendirian.', 'Hamka_From_A_To_Z.jpg'),
(93, 'Jawa Barat-Merentang Laut Jawa Hingga Samudera Hindia', 'Tim Kementerian Kelautan Dan Perikanan', 'Penerbit Buku Kompas', 2016, 'jawa barat.jpg', 24, 'Siapa pula yang menyangka kalau Jawa Barat menyimpan sebuah pulau kecil tak berpenduduk yang harus senantiasa dijaga karena merupakan pulau terluar, garda depan Nusantara yang berbatasan langsung dengan Australia. Atau keberadaan miniatur Bali di Kabupaten Tasikmalaya yang begitu syahdu dan tempat terbaik menikmati matahari terbit. Belum banyak terjamah oleh wisatawan lokal dan mancanegara, tapi sedang berbenah diri ketika suatu saat nanti gaungnya menggema luas. Pun, dengan taman bumi raksasa di Sukabumi, yang merupakan Palung Subduksi atau tempat terjadinya lekukan pada lempeng Samudra yang bergesekan dengan Lempeng Benua puluhan juta tahun lalu yang menghasilkan fosil batuan tertua di Jawa Barat. Menciptakan orkestra alam yang kompleks, tetapi sangat indah. Menjadikan perairan di sekitarnya dihuni oleh spesies ikan hias yang unik khas negara tertentu, seperti ikan hias Angel Africa dan Flanback, ikan hias khas Afrika dan Hawaii.', 'jawa barat.jpg'),
(94, '36 Menit Belajar Komputer PHP dan MySQL', 'Ali Zaky Smitdev Community, Ali Zaky SmitDev Community', 'Elex Media Komputindo', 2013, 'phpmysql.jpg', 29, 'Ayo Baca Bukunya!', 'phpmysql.jpg'),
(95, 'Komik Lieur: Bolon', 'Sagus', 'Kawah Media', 2019, '9786022203216_Komik-Lieur--Bolon.jpg', 23, 'Inilah keseharian Somad, bocah berusia 10 tahun yang bercita-cita jadi tukang bandros. Bersama teman-teman sepermainannya Richard, Cecep, Titin, Cindy, dan Iqbal, menjalani hari-hari menyenangkan masa kecil di SDN Cijangkar 1.', '9786022203216_Komik-Lieur--Bolon.jpg'),
(96, 'Kota-Kota Besar Di Dunia', 'MAULI OKI N.', 'Laksana', 2019, 'Ensiklopedia_Kota-Kota_Besar_Di_Dunia.jpg', 24, 'Pernahkah kamu berkeinginan menjelajahi dunia? Sebelum kamu mewujudkan keinginanmu itu, yuk baca buku ensiklopedia ini! “Buku adalah jendela dunia.” Nah, dengan membaca buku ini, kamu akan mengenal kota-kota besar di segala sudut dunia. Banyak sekali kota-kota besar di dunia. Kota-kota itu tersebar di lima benua, yaitu Benua Eropa, Asia, Amerika, Afrika, dan Australia. Buku ini merangkum secara ringkas kota-kota besar di dunia. Apa sajakah kota-kota itu? Ada Roma, Seoul, Kuala Lumpur, Baghdad, Havana, Washington DC, Casablanca, Canberra, dan kota-kota lainnya. Teman-teman, yuk, kita mengelilingi dunia lewat buku ini! Selamat membaca!', 'Ensiklopedia_Kota-Kota_Besar_Di_Dunia.jpg'),
(97, 'Lead The Way: Kepemimpinan Luhut Binsar Pandjaitan', 'Letkol Inf. Charles Alling, S.E., M.MDS', 'pusat pengkajian strategi nasional', 2023, 'luhut.jpg', 26, 'Tercapainya tujuan strategis sebuah organisasi tergantung pada gaya kepemimpinan organisasi dan kemampuan seorang pemimpin dalam mempengaruhi pengikutnya untuk bekerja sama mencapai visi organisasi tersebut. Seiring dengan kompleksitas dan dinamika organisasi baik secara internal maupun eksternal, kepemimpinan handal sangat dibutuhkan dalam mengerahkan kapabilitas (capability) dan sumber daya (resource) organisasi secara efektif. Karena kepemimpinan merupakan seni, kecakapan, kemahiran dan keterampilan seorang pemimpin dalam memahami dinamika organisasi dan membangun kemitraan dengan stakeholder sangat dibutuhkan.\r\n\r\nKemampuan itu tercermin dalam figur Bapak Luhut Pandjaitan, yang bukannya hanya seorang visioner menerapkan Prinsip &quot;Lead The Way&quot; melainkan juga seorang eksekutor yang sudah teruji keandalannya sehubungan dengan pengalaman intens beliau baik dalam kepemimpinan kemiliteran maupun dalam kepemimpinan sipil. Dari segudang pengalaman kepemimpinan serta kesuksesan Bapak Luhut Pandjaitan, saya menyimpulkan bahwa Beliau menggunakan pendekatan &quot;Lead The Way&quot; yang terefleksi dalam 4R yang membuat tingkat resiliensinya sangat tinggi meskipun diperhadapkan dengan &#039;hantaman&#039; badai dalam biduk organisasi pemerintahan yang Beliau pimpin.\r\n\r\nPendekatan R pertama adalah Rasio yaitu kemampuan berpikir, kecerdasan atau logika. Pendekatan ini sangat nyata ditemui pada sosok pemimpin yang berani dan tegas ini. Dalam mengambil keputusan, Beliau selalu mengutamakan perhitungan logis berdasarkan pada fakta dan potensi dampak yang ditimbulkan dari setiap kebijakan. Untuk menunjang efisiensi pekerjaannya, Beliau menerapkan talent management yang proporsional dan efektif di mana Beliau membangun tim terbaik yang berasal dari berbagai latar belakang ilmu dan jebolan kampus kelas kakap dari dalam dan luar negeri. Talenta-talenta muda yang berkiprah dibawah naungannya menjadi ujung tombak dalam menggali dan mengkaji isu-isu strategis.', 'luhut.jpg'),
(98, 'Yang Fana adalah Waktu', 'Sapardi Djoko Damono', 'Gramedia Pustaka Utama', 2022, 'yang fana.jpg', 22, 'Dalang tidak berpihak kepada nasib tetapi kepada takdir. Kau pasti masih ingat kita pernah suatu saat membayangkan sebuah dongeng tentang waktu yang ujudnya remah-remah yang bisa kita kunyah, telan, dan muntahkan kapan saja agar tetap ada. Kita menyukai dongeng yang katamu indah itu meskipun sebenarnya tidak sepenuhnya memahami apa maknanya. Sar, kalau saja kita bisa hidup di luar waktu, tiba-tiba katamu.\r\nBagaimanakah akhir perjalanan Pingkan dan Sarwono? Akankah waktu mempertemukan atau justru memisahkan mereka karena campur tangan takdir? Ikuti akhir kisah mereka dalam Yang Fana Adalah Waktu, novel ketiga dari Trilogi Hujan Bulan Juni karya Sapardi Djoko Damono. ', 'YANG FANA ADALAH WAKTU - Sapardi Djoko Damono.pdf'),
(99, 'Kabar Gembira Dari Langit', 'Nur Rokhim', 'Laksana', 2019, 'kabar.jpg', 27, 'Apabila Anda patah semangat untuk bangun malam, pelajarilah kisah orang-orang shalih yang senantiasa bangun malam. Apabila Anda susah menjaga lidah, bacalah kisah orang-orang shalih yang selalu menjaga lidah mereka. Dan, apabila hidup anda masih diliputi nestapa, jangan ragu untuk meneladani perjalanan hidup para utusan (kekasih) pilihan Allah Subhanahu Wa Ta’ala. Ikutilah kisah-kisah mereka, lalu ambilah hikmah dari setiap kisah yang Anda baca.\r\n\r\nIman tanpa semangat tidak akan bisa jalan. Semangat tanpa iman tidak akan jelas arahnya. Keduanya harus saling menguatkan. Iman dan semangat bagaikan sebatang pohon, harus terus dirawat agar tumbuh dan berbuah. Salah satu cara agar iman dan semangat tidak loyo ialah harus “disulut” dengan kisah-kisah islami motivatif dan inspiratif dari orang-orang terdahulu. Buku Kabar Gembira Dari Langit ini yang sedang berada di tangan Anda diterbitkan untuk tujuan tersebut. Dengan merenungkan hikmah dari kisah-kisah orang-orang mulia, harapannya, iman dan semangat kita yang mati dapat bangkit dan bergejolak kembali seperti sedia kala atau bahkan lebih baik dari sebelumnya. Alhasil, kita semakin bersemangat untuk senantiasa memperbaiki diri menuju jalan-Nya. Selamat membaca!', 'kabar.jpg'),
(101, '36 Jam Belajar Komputer Microsoft Office Home &amp; Business 2016', 'Kurweni Ukar &amp; Budi Permana', 'Elex Media Komputindo', 2017, '9786020436128_36-jam-belajar-komputer-microsoft-office-home-_-business-2016.jpg', 29, 'Microsoft Office Home &amp; Business 2016 yang akan dibahas dalam buku ini merupakan perpaduan dari beberapa program aplikasi handal, di antaranya Word 2016 sebagai program aplikasi pengolah kata (word processor), Excel 2016 sebagai program aplikasi lembar kerja (spreadsheet), PowerPoint 2016 sebagai program aplikasi presentasi (presentations), Outlook 2016 sebagai program aplikasi untuk mengelola pesan e-mail, informasi pribadi (personal information manager), dan OneNote 2016 sebagai program aplikasi untuk menyimpan dan mencatat berbagai ide, sketsa rencana, brainstorming strategi bisnis, catatan rapat atau kuliah, dan mengkompilasi berbagai potongan informasi dalam bentuk digital notebook. Buku 36 Jam Belajar Komputer Microsoft Office Home &amp; Business 2016 ini dibuat agar Anda dapat mempelajari, memahami, dan mencoba penggunaan program program aplikasi yang tergabung dalam Office Home &amp; Business 2016 secara cepat dan mudah sesuai dengan kebutuhan.', '9786020436128_36-jam-belajar-komputer-microsoft-office-home-_-business-2016.jpg'),
(102, 'PHP untuk Programmer Pemula', 'Jubilee Enterprise', 'Elex Media Komputindo', 2020, 'php.jpg', 29, 'PHP merupakan bahasa pemrograman yang penting untuk dikuasai apabila Anda ingin membuat website. Perintah dan syntax PHP sangat mudah dipahami dan cara penulisan kode-kode program ini mendekati bahasa manusia. Oleh karena itu, orang awam pasti bisa menggunakan PHP apabila serius mempelajari bahasa pemrograman ini.\r\n\r\nBuku ini membantu Anda mempelajari PHP, mulai dari bagaimana cara menginstal server dan menulis teks sederhana di dalam halaman website. Selanjutnya, pembahasan akan terus meningkat dan berpuncak pada cara-cara pemrograman database dengan MySQL.\r\n\r\nSelain itu, dilengkapi pula dengan fitur-fitur sebagai berikut:\r\n• Video course berdurasi 9 jam berbahasa Indonesia.\r\n• Quiz untuk membantu Anda mengasah pengetahuan PHP.\r\n• Certificate of Completion dari Udemy.com untuk menambah portfolio kerja Anda.\r\nPada akhirnya, buku ini akan membantu Anda memahami PHP sekaligus mempermudah pencarian kerja di industri web programming. Good Luck!', '');

-- --------------------------------------------------------

--
-- Table structure for table `kategoribuku`
--

CREATE TABLE `kategoribuku` (
  `KategoriID` int(11) NOT NULL,
  `NamaKategori` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kategoribuku`
--

INSERT INTO `kategoribuku` (`KategoriID`, `NamaKategori`) VALUES
(22, 'Novel'),
(23, 'Komik'),
(24, 'Ensiklopedia'),
(26, 'Ilmu sosial'),
(27, 'Agama'),
(29, 'TIK');

-- --------------------------------------------------------

--
-- Table structure for table `kategoribuku_relasi`
--

CREATE TABLE `kategoribuku_relasi` (
  `KategoriBukuID` int(11) NOT NULL,
  `BukuID` int(11) DEFAULT NULL,
  `KategoriID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `koleksipribadi`
--

CREATE TABLE `koleksipribadi` (
  `KoleksiID` int(11) NOT NULL,
  `UserID` int(11) DEFAULT NULL,
  `BukuID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman`
--

CREATE TABLE `peminjaman` (
  `PeminjamanID` int(11) NOT NULL,
  `UserID` int(11) DEFAULT NULL,
  `BukuID` int(11) DEFAULT NULL,
  `TanggalPeminjaman` date DEFAULT NULL,
  `TanggalPengembalian` date DEFAULT NULL,
  `StatusPeminjaman` varchar(50) DEFAULT NULL,
  `kodepinjam` varchar(10) DEFAULT NULL,
  `maxtgl_pengembalian` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `peminjaman`
--

INSERT INTO `peminjaman` (`PeminjamanID`, `UserID`, `BukuID`, `TanggalPeminjaman`, `TanggalPengembalian`, `StatusPeminjaman`, `kodepinjam`, `maxtgl_pengembalian`) VALUES
(1, 36, 89, '2024-04-25', '2024-04-25', 'dikembalikan', 'PM001', '2024-05-02 04:50:15'),
(2, 36, 89, '2024-04-25', '2024-04-25', 'dikembalikan', 'PM002', '2024-05-02 06:55:27'),
(3, 37, 64, '2024-04-25', '2024-04-25', 'dikembalikan', 'PM003', '2024-05-02 08:40:40'),
(4, 37, 62, '2024-04-25', '2024-04-25', 'dikembalikan', 'PM003', '2024-05-02 08:40:50'),
(5, 37, 56, '2024-04-25', '2024-04-25', 'dikembalikan', 'PM004', '2024-05-02 09:57:48'),
(6, 37, 92, '2024-04-25', '2024-04-25', 'dikembalikan', 'PM005', '2024-05-02 13:28:48'),
(7, 38, 53, '2024-04-25', '2024-04-25', 'dikembalikan', 'PM006', '2024-05-02 14:49:31'),
(9, 37, 52, '2024-04-26', '2024-04-26', 'dikembalikan', 'PM008', '2024-05-03 11:45:41'),
(10, 38, 56, '2024-04-28', '2024-04-28', 'dikembalikan', 'PM009', '2024-05-05 08:51:42'),
(11, 38, 89, '2024-04-28', '2024-04-28', 'dikembalikan', 'PM010', '2024-05-05 11:41:30'),
(12, 38, 52, '2024-04-28', '2024-04-28', 'dikembalikan', 'PM011', '2024-05-05 11:51:36'),
(13, 38, 52, '2024-04-28', '2024-05-28', 'dikembalikan', 'PM012', '2024-05-05 12:17:09'),
(14, 38, 52, '2024-04-28', '2024-04-28', 'dikembalikan', 'PM013', '2024-05-05 12:28:31'),
(15, 39, 52, '2024-04-29', '2024-04-29', 'dikembalikan', 'PM014', '2024-05-06 11:16:16'),
(16, 37, 63, '2024-04-29', '2024-04-29', 'dikembalikan', 'PM015', '2024-05-06 11:56:23'),
(17, 37, 62, '2024-04-29', '2024-04-29', 'dikembalikan', 'PM016', '2024-05-06 11:57:42'),
(18, 37, 52, '2024-04-29', '2024-04-29', 'dikembalikan', 'PM017', '2024-05-06 11:58:31'),
(19, 37, 98, '2024-05-06', '2024-05-06', 'dikembalikan', 'PM018', '2024-05-13 09:50:41');

-- --------------------------------------------------------

--
-- Table structure for table `ulasanbuku`
--

CREATE TABLE `ulasanbuku` (
  `UlasanID` int(11) NOT NULL,
  `UserID` int(11) DEFAULT NULL,
  `BukuID` int(11) DEFAULT NULL,
  `ulasan` text DEFAULT NULL,
  `Rating` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ulasanbuku`
--

INSERT INTO `ulasanbuku` (`UlasanID`, `UserID`, `BukuID`, `ulasan`, `Rating`) VALUES
(1, 37, 54, 'jelek', 1),
(3, 37, 82, 'bagus', 10),
(4, 36, 71, 'gg', 7),
(5, 39, 52, 'Bagus', 9);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `UserID` int(11) NOT NULL,
  `Username` varchar(255) DEFAULT NULL,
  `Password` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `NamaLengkap` varchar(255) DEFAULT NULL,
  `Alamat` text DEFAULT NULL,
  `level` enum('admin','petugas','peminjam') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`UserID`, `Username`, `Password`, `Email`, `NamaLengkap`, `Alamat`, `level`) VALUES
(34, 'Franda', '7e2a12b82afd182cd5aeebfa4e7f4f51', 'franda@gmail.com', 'Franda Pervaiz', 'Jl. Pabuaran', 'admin'),
(35, 'Putri', '4093fed663717c843bea100d17fb67c8', 'putri@gmail.com', 'Putri Awaliyah', 'GG. Djuwaeni', 'petugas'),
(36, 'Ikbal', '5720a0ca16880c34ef214a30514632c9', 'ikbal@gmail.com', 'Ikbal Awal', 'GG. Djuwaeni', 'peminjam'),
(37, 'hana', '52fd46504e1b86d80cfa22c0a1168a9d', 'hana@gmail.com', 'Hana Wardatul', 'GG. Djuwaeni', 'peminjam'),
(38, 'Kurniawan', '16ca55b4f29157780eabc6244f49d442', 'kurniawan@gmail.com', 'Kurniawan', 'Doa Bangsa', 'peminjam'),
(39, 'Fazwa', 'e195fe2a7e707b6e79be63a1e331961c', 'fazwa@gmail.com', 'Fazwa Hilman', 'Jl. Cicadas', 'peminjam'),
(40, 'Irwan', 'b360089e48b62d69c6c80fa1b5ef024d', 'irwan@gmail.com', 'Irwan Kurniawan', 'Plara', 'petugas');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`BukuID`),
  ADD KEY `KategoriID` (`KategoriID`);

--
-- Indexes for table `kategoribuku`
--
ALTER TABLE `kategoribuku`
  ADD PRIMARY KEY (`KategoriID`);

--
-- Indexes for table `kategoribuku_relasi`
--
ALTER TABLE `kategoribuku_relasi`
  ADD PRIMARY KEY (`KategoriBukuID`),
  ADD KEY `BukuID` (`BukuID`),
  ADD KEY `KategoriID` (`KategoriID`);

--
-- Indexes for table `koleksipribadi`
--
ALTER TABLE `koleksipribadi`
  ADD PRIMARY KEY (`KoleksiID`),
  ADD KEY `BukuID` (`BukuID`),
  ADD KEY `UserID` (`UserID`);

--
-- Indexes for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`PeminjamanID`),
  ADD KEY `UserID` (`UserID`),
  ADD KEY `BukuID` (`BukuID`);

--
-- Indexes for table `ulasanbuku`
--
ALTER TABLE `ulasanbuku`
  ADD PRIMARY KEY (`UlasanID`),
  ADD KEY `UserID` (`UserID`),
  ADD KEY `BukuID` (`BukuID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`UserID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
  MODIFY `BukuID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `kategoribuku`
--
ALTER TABLE `kategoribuku`
  MODIFY `KategoriID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `peminjaman`
--
ALTER TABLE `peminjaman`
  MODIFY `PeminjamanID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `ulasanbuku`
--
ALTER TABLE `ulasanbuku`
  MODIFY `UlasanID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `buku`
--
ALTER TABLE `buku`
  ADD CONSTRAINT `buku_ibfk_1` FOREIGN KEY (`KategoriID`) REFERENCES `kategoribuku` (`KategoriID`);

--
-- Constraints for table `kategoribuku_relasi`
--
ALTER TABLE `kategoribuku_relasi`
  ADD CONSTRAINT `kategoribuku_relasi_ibfk_1` FOREIGN KEY (`BukuID`) REFERENCES `buku` (`BukuID`),
  ADD CONSTRAINT `kategoribuku_relasi_ibfk_2` FOREIGN KEY (`KategoriID`) REFERENCES `kategoribuku` (`KategoriID`);

--
-- Constraints for table `koleksipribadi`
--
ALTER TABLE `koleksipribadi`
  ADD CONSTRAINT `BukuID` FOREIGN KEY (`BukuID`) REFERENCES `buku` (`BukuID`),
  ADD CONSTRAINT `UserID` FOREIGN KEY (`UserID`) REFERENCES `user` (`UserID`);

--
-- Constraints for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD CONSTRAINT `peminjaman_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `user` (`UserID`),
  ADD CONSTRAINT `peminjaman_ibfk_2` FOREIGN KEY (`BukuID`) REFERENCES `buku` (`BukuID`);

--
-- Constraints for table `ulasanbuku`
--
ALTER TABLE `ulasanbuku`
  ADD CONSTRAINT `ulasanbuku_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `user` (`UserID`),
  ADD CONSTRAINT `ulasanbuku_ibfk_2` FOREIGN KEY (`BukuID`) REFERENCES `buku` (`BukuID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
