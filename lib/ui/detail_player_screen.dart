import 'package:flutter/material.dart';
import '../model/player_model.dart';

class DetailPlayerScreen extends StatelessWidget {
  final Player player;

  const DetailPlayerScreen({super.key, required this.player});

  @override
    Widget build(BuildContext context) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light(), // Mengatur tema menjadi terang
        home: Scaffold(
          backgroundColor: Colors.white, // Latar belakang menjadi putih
          body: CustomScrollView(
            slivers: [
              SliverAppBar(
                backgroundColor: Colors.blueAccent, // Latar belakang AppBar menjadi warna biru cerah
                expandedHeight: 300.0,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                  title: Text(
                    player.nama,
                    style: const TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white, // Teks menjadi warna putih
                    ),
                  ),
                  background: Image.asset(
                    player.gambar,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.mail, color: Colors.blueAccent, size: 20),
                                SizedBox(width: 5),
                                Text(
                                  player.sosmed[0],
                                  style: TextStyle(
                                    color: Colors.grey[800], // Teks berubah menjadi abu-abu gelap
                                    fontStyle: FontStyle.italic,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 20),
                          _buildInfoRow(),
                          SizedBox(height: 20),
                          const Text(
                            'About Player',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 28,
                              color: Colors.black, // Teks berubah menjadi hitam
                              letterSpacing: 1.2,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            player.deskripsi,
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                              color: Colors.grey[800], // Teks berubah menjadi abu-abu gelap
                            ),
                            textAlign: TextAlign.justify,
                          ),
                          SizedBox(height: 20),
                          const Text(
                            'Favorite Heroes',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 28,
                              color: Colors.black, // Teks berubah menjadi hitam
                            ),
                          ),
                          SizedBox(height: 10),
                          SizedBox(
                            height: 150,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: player.herofav.length,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image.network(
                                      player.herofav[index],
                                      width: 120,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                          SizedBox(
                            height: 50,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    }

  Widget _buildInfoRow() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          _buildCircularInfoCard(
            icon: Icons.shield_moon_outlined,
            label: 'Team',
            value: player.team,
          ),
          SizedBox(width: 16),
          _buildCircularInfoCard(
            icon: Icons.handshake,
            label: 'Role',
            value: player.role,
          ),
          SizedBox(width: 16),
          _buildCircularInfoCard(
            icon: Icons.public,
            label: 'World Rank',
            value: player.rank,
          ),
          SizedBox(width: 16),
          _buildCircularInfoCard(
            icon: Icons.verified_rounded,
            label: 'Achievement',
            value: player.prestasi,
          ),
          SizedBox(width: 16),
          _buildCircularInfoCard(
            icon: Icons.flag,
            label: 'Region',
            value: player.negara,
          ),
        ],
      ),
    );
  }

  Widget _buildCircularInfoCard({
    required IconData icon,
    required String label,
    required String value,
  }) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: Colors.blueAccent, // Latar belakang lingkaran menjadi biru cerah
          child: Icon(icon, color: Colors.white, size: 30), // Ikon menjadi putih
        ),
        SizedBox(height: 8),
        Text(
          label,
          style: TextStyle(
            color: Colors.grey[800], // Teks label menjadi abu-abu gelap
            fontWeight: FontWeight.w400,
            fontSize: 14,
          ),
        ),
        SizedBox(height: 4),
        Text(
          value,
          style: TextStyle(
            color: Colors.black, // Teks nilai menjadi hitam
            fontWeight: FontWeight.w600,
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
