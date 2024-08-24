class Player {
  String nama;
  String role;
  String team;
  String deskripsi;
  String gambar;
  String prestasi;
  String negara;
  String rank;
  List<String> sosmed;
  List<String> herofav;

  Player({
    required this.nama,
    required this.role,
    required this.team,
    required this.deskripsi,
    required this.gambar,
    required this.prestasi,
    required this.negara,
    required this.rank,
    required this.sosmed,
    required this.herofav,
  });
}
var dataPlayer = [
  Player(nama: 'Branz',
      role: 'Gold Lane',
      team: 'Evos Glory',
      deskripsi: 'Gold laner',
      gambar: 'https://static.wixstatic.com/media/9356c7_2a0a5aca06c248bfa7c9b37b3492d377~mv2.png/v1/fill/w_437,h_653,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/9356c7_2a0a5aca06c248bfa7c9b37b3492d377~mv2.png',
      prestasi: 'IESF 2022',
      negara: 'INDONSIA',
      rank: '56',
      sosmed: ([
        '@jabran',
        'Yt. EvosBranz',
        'jabran@gmail.com'
      ]),
      herofav: ([
        'https://static.wikia.nocookie.net/mobile-legends/images/f/f2/Hero061-icon.png/revision/latest/scale-to-width-down/100?cb=20240607063022',
        'https://static.wikia.nocookie.net/mobile-legends/images/f/f2/Hero061-icon.png/revision/latest/scale-to-width-down/100?cb=20240607063022'
      ]),
  ),
];