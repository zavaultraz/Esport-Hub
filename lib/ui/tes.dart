import 'package:flutter/material.dart';
import 'package:lister/model/player_model.dart';
import 'package:lister/ui/home.dart';
import 'package:lister/ui/match_info.dart';
import 'package:lister/ui/userpage.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';

class TesScreen extends StatelessWidget {
  const TesScreen({super.key});

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
      Player(nama: 'OHEB',
        role: 'Gold Lane',
        team: 'Blacklist INT',
        deskripsi: 'Goldlaner kelas dunia yang sudah tak perlu diragukan lagi kepiawaiannya dalam menggunakan hero high mekanik',
        gambar: 'assets/images/oheb.png',
        prestasi: 'M3 World Championship',
        negara: 'Philipine',
        rank: '10',
        sosmed: ([
          '@oheb_real',
        ]),
        herofav: ([
          'https://static.wikia.nocookie.net/mobile-legends/images/e/ee/Hero371-icon.png/revision/latest/scale-to-width-down/100?cb=20240605123343',
          'https://static.wikia.nocookie.net/mobile-legends/images/9/97/Hero391-icon.png/revision/latest/scale-to-width-down/100?cb=20240606131418',
          'https://static.wikia.nocookie.net/mobile-legends/images/2/2e/Hero311-icon.png/revision/latest/scale-to-width-down/100?cb=20240605124624',
        ]),
      ),
      Player(nama: 'SUPER KEN',
        role: 'JUNGLER',
        team: 'BTR Alpha',
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
      Player(nama: 'Karl Tzy',
        role: 'Jungler',
        team: 'Liquid PH',
        deskripsi: 'Jungler yang sudah tak perlu diragukan lagi kepiawaiannya dalam menggunakan hero high mekanik',
        gambar: 'assets/images/karl.png',
        prestasi: '1st Winner M4',
        negara: 'Philiphine',
        rank: '7',
        sosmed: ([
          '@karl_tzy',
        ]),
        herofav: ([
          'https://static.wikia.nocookie.net/mobile-legends/images/e/ee/Hero371-icon.png/revision/latest/scale-to-width-down/100?cb=20240605123343',
          'https://static.wikia.nocookie.net/mobile-legends/images/9/97/Hero391-icon.png/revision/latest/scale-to-width-down/100?cb=20240606131418',
          'https://static.wikia.nocookie.net/mobile-legends/images/2/2e/Hero311-icon.png/revision/latest/scale-to-width-down/100?cb=20240605124624',
        ]),
      ),
      Player(nama: 'Baloyskie',
        role: 'Roamer',
        team: 'Geek Fam',
        deskripsi: 'Roamer yang sudah tak perlu diragukan lagi kepiawaiannya dalam menggunakan hero high mekanik',
        gambar: 'assets/images/baloy.png',
        prestasi: 'Runner up M3',
        negara: 'Philiphine',
        rank: '30',
        sosmed: ([
          '@alen_baloy',
        ]),
        herofav: ([
          'https://static.wikia.nocookie.net/mobile-legends/images/e/ee/Hero371-icon.png/revision/latest/scale-to-width-down/100?cb=20240605123343',
          'https://static.wikia.nocookie.net/mobile-legends/images/9/97/Hero391-icon.png/revision/latest/scale-to-width-down/100?cb=20240606131418',
          'https://static.wikia.nocookie.net/mobile-legends/images/2/2e/Hero311-icon.png/revision/latest/scale-to-width-down/100?cb=20240605124624',
        ]),
      ),
      Player(nama: 'CW',
        role: 'Gold Laner',
        team: 'FNOC',
        deskripsi: 'Jungler Juara Dunia yang sudah tak perlu diragukan lagi kepiawaiannya dalam menggunakan hero high mekanik',
        gambar: 'assets/images/cw.png',
        prestasi: 'MPL ID S12',
        negara: 'Indonesia',
        rank: '17',
        sosmed: ([
          '@calvin_winata',
        ]),
        herofav: ([
          'https://static.wikia.nocookie.net/mobile-legends/images/e/ee/Hero371-icon.png/revision/latest/scale-to-width-down/100?cb=20240605123343',
          'https://static.wikia.nocookie.net/mobile-legends/images/9/97/Hero391-icon.png/revision/latest/scale-to-width-down/100?cb=20240606131418',
          'https://static.wikia.nocookie.net/mobile-legends/images/2/2e/Hero311-icon.png/revision/latest/scale-to-width-down/100?cb=20240605124624',
        ]),
      ),
      Player(nama: 'Dreams',
        role: 'ROAMER',
        team: 'Evos Glory',
        deskripsi: 'Jungler Juara Dunia yang sudah tak perlu diragukan lagi kepiawaiannya dalam menggunakan hero high mekanik',
        gambar: 'assets/images/dreams.png',
        prestasi: 'IESF 2020',
        negara: 'Indonesia',
        rank: '40',
        sosmed: ([
          '@evos_dreams',
        ]),
        herofav: ([
          'https://static.wikia.nocookie.net/mobile-legends/images/e/ee/Hero371-icon.png/revision/latest/scale-to-width-down/100?cb=20240605123343',
          'https://static.wikia.nocookie.net/mobile-legends/images/9/97/Hero391-icon.png/revision/latest/scale-to-width-down/100?cb=20240606131418',
          'https://static.wikia.nocookie.net/mobile-legends/images/2/2e/Hero311-icon.png/revision/latest/scale-to-width-down/100?cb=20240605124624',
        ]),
      ),
      Player(nama: 'FlapTzy',
        role: 'EXP Lane',
        team: 'FCAP',
        deskripsi: 'Jungler Juara Dunia yang sudah tak perlu diragukan lagi kepiawaiannya dalam menggunakan hero high mekanik',
        gambar: 'assets/images/flay.png',
        prestasi: 'M5 World Championship',
        negara: 'Philiphine',
        rank: '1',
        sosmed: ([
          '@flapTzy_real',
        ]),
        herofav: ([
          'https://static.wikia.nocookie.net/mobile-legends/images/e/ee/Hero371-icon.png/revision/latest/scale-to-width-down/100?cb=20240605123343',
          'https://static.wikia.nocookie.net/mobile-legends/images/9/97/Hero391-icon.png/revision/latest/scale-to-width-down/100?cb=20240606131418',
          'https://static.wikia.nocookie.net/mobile-legends/images/2/2e/Hero311-icon.png/revision/latest/scale-to-width-down/100?cb=20240605124624',
        ]),
      ),
      Player(nama: 'RYOTA',
        role: 'JUNGLER',
        team: 'Rebellion',
        deskripsi: 'Jungler Lokal yang sudah tak perlu diragukan lagi kepiawaiannya dalam menggunakan hero high mekanik',
        gambar: 'assets/images/ryota.png',
        prestasi: '-',
        negara: 'Indonesia',
        rank: '200',
        sosmed: ([
          '@rbl_ryota',
        ]),
        herofav: ([
          'https://static.wikia.nocookie.net/mobile-legends/images/e/ee/Hero371-icon.png/revision/latest/scale-to-width-down/100?cb=20240605123343',
          'https://static.wikia.nocookie.net/mobile-legends/images/9/97/Hero391-icon.png/revision/latest/scale-to-width-down/100?cb=20240606131418',
          'https://static.wikia.nocookie.net/mobile-legends/images/2/2e/Hero311-icon.png/revision/latest/scale-to-width-down/100?cb=20240605124624',
        ]),
      ),
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Persistent Bottom Navigation Bar Demo',
      home: PersistentTabView(
        tabs: [
          PersistentTabConfig(
            screen: Home(players: players),
            item: ItemConfig(
              icon: Icon(Icons.home),
              title: "Home",
            ),
          ),
          PersistentTabConfig(
            screen: SportsHomePage(),
            item: ItemConfig(
              icon: Icon(Icons.query_stats),
              title: "Stats Tournament",
            ),
          ),
          PersistentTabConfig(
            screen: ProfilePage(),
            item: ItemConfig(
              icon: Icon(Icons.person),
              title: "Profile",
            ),
          )
        ],
        navBarBuilder: (navBarConfig) => Style1BottomNavBar(
          navBarConfig: navBarConfig,
        ),
      ),
    );
  }
}
