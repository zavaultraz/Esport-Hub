import 'package:flutter/material.dart';
import 'home.dart';
import 'player_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Player> players = [
      Player(nama: 'Branz',
        role: 'Gold Lane',
        team: 'Evos Glory',
        deskripsi: 'Gold laner kelas dunia yang sudah tak perlu diragukan lagi kepiawaiannya dalam menggunakan hero marksman',
        gambar: 'assets/images/branz.png',
        prestasi: 'IESF 2022',
        negara: 'INDONESIA',
        rank: '56',
        sosmed: ([
          '@jabran',
        ]),
        herofav: ([
          'https://static.wikia.nocookie.net/mobile-legends/images/2/29/Hero651-icon.png/revision/latest/scale-to-width-down/100?cb=20240606123231',
          'https://static.wikia.nocookie.net/mobile-legends/images/9/97/Hero391-icon.png/revision/latest/scale-to-width-down/100?cb=20240606131418',
          'https://static.wikia.nocookie.net/mobile-legends/images/2/2e/Hero311-icon.png/revision/latest/scale-to-width-down/100?cb=20240605124624',
        ]),
      ),
      Player(nama: 'Dyren',
        role: 'EXP Lane',
        team: 'RRQ Hoshi',
        deskripsi: 'EXP laner kelas nasional yang sudah tak perlu diragukan lagi kepiawaiannya dalam menggunakan hero fighter',
        gambar: 'assets/images/dyren.png',
        prestasi: 'MDL ID S7',
        negara: 'INDONESIA',
        rank: '90',
        sosmed: ([
          '@rrq_dyren',
        ]),
        herofav: ([
          'https://static.wikia.nocookie.net/mobile-legends/images/e/ee/Hero371-icon.png/revision/latest/scale-to-width-down/100?cb=20240605123343',
          'https://static.wikia.nocookie.net/mobile-legends/images/9/97/Hero391-icon.png/revision/latest/scale-to-width-down/100?cb=20240606131418',
          'https://static.wikia.nocookie.net/mobile-legends/images/2/2e/Hero311-icon.png/revision/latest/scale-to-width-down/100?cb=20240605124624',
        ]),
      ),
      Player(nama: 'SUPER KEN',
        role: 'JUNGLER',
        team: 'RRQ Hoshi',
        deskripsi: 'Jungler kelas nasional yang sudah tak perlu diragukan lagi kepiawaiannya dalam menggunakan hero high mekanik',
        gambar: 'assets/images/ken.png',
        prestasi: 'MDL ID S7',
        negara: 'INDONESIA',
        rank: '73',
        sosmed: ([
          '@super_ken_btr',
        ]),
        herofav: ([
          'https://static.wikia.nocookie.net/mobile-legends/images/e/ee/Hero371-icon.png/revision/latest/scale-to-width-down/100?cb=20240605123343',
          'https://static.wikia.nocookie.net/mobile-legends/images/9/97/Hero391-icon.png/revision/latest/scale-to-width-down/100?cb=20240606131418',
          'https://static.wikia.nocookie.net/mobile-legends/images/2/2e/Hero311-icon.png/revision/latest/scale-to-width-down/100?cb=20240605124624',
        ]),
      ),
    ];

    return MaterialApp(
      home: Home(players: players),
    );
  }
}
