import 'package:flutter/material.dart';

class PreviousMatchSection extends StatelessWidget {
  const PreviousMatchSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Header Row
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Previous Match',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              GestureDetector(
                onTap: () {
                  // Implement action to view more matches
                },
                child: Row(
                  children: [
                    Text(
                      'See more',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.blueAccent,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(width: 5),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 18,
                      color: Colors.blueAccent,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),

        // Match List
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              _buildMatchItem(
                context,
                'assets/images/btr.png',
                '2',
                'assets/images/evos.png',
                '1',
              ),
              _buildMatchItem(
                context,
                'assets/images/rrq.png',
                '2',
                'assets/images/tlid.png',
                '0',
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildMatchItem(
      BuildContext context,
      String imgTim1,
      String skorTim1,
      String imgTim2,
      String skorTim2,
      ) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: InkWell(
        onTap: () {
          // Implement navigation to match details if needed
        },
        child: Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 8,
                offset: Offset(0, 4),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(imgTim1, width: 50),
                      SizedBox(width: 12),
                      Text(
                        skorTim1,
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'VS',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 28,
                      color: Colors.black54,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        skorTim2,
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                      SizedBox(width: 12),
                      Image.asset(imgTim2, width: 50),
                    ],
                  ),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
