import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class TrackPage extends StatelessWidget {
  const TrackPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // Search bar and filter
          Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search",
                      isDense: true,
                      contentPadding: const EdgeInsets.all(12),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade300),
                        borderRadius: const BorderRadius.all(Radius.circular(99)),
                      ),
                      prefixIcon: const Icon(IconlyLight.search),
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                IconButton.filled(
                  onPressed: () {},
                  icon: const Icon(IconlyLight.filter),
                ),
              ],
            ),
          ),

          // Nutritional information box with shadow
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  offset: const Offset(2.0, 2.0),
                  blurRadius: 5.0,
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildNutrientCard('15kcal', 'Natrium/Sodium'),
                _buildNutrientCard('12gr', 'Lemak Jenuh'),
                _buildNutrientCard('10gr', 'Kalori'),
              ],
            ),
          ),

          // Text "Track Makanan" outside the box
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 10),
            child: Text(
              'Track Makanan',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(color: Colors.brown),
            ),
          ),

          // Track Makanan box with shadow
          Container(
            padding: const EdgeInsets.only(bottom: 15, top: 15),
            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  offset: const Offset(0, 3),
                  blurRadius: 6,
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildTrackCard('Pagi', '0 Makanan', '0.0 gr'),
                _buildTrackCard('Siang', '0 Makanan', '0.0 gr'),
                _buildTrackCard('Malam', '0 Makanan', '0.0 gr'),
              ],
            ),
          ),

          // Rekomendasi
          Padding(
            padding: const EdgeInsets.only(bottom: 15, top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Rekomendasi',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(height: 10),
                _buildRecommendationCard(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNutrientCard(String value, String label) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              colors: [Colors.pink, Colors.blue],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Text(
            value,
            style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(height: 8),
        Text(label, style: const TextStyle(color: Colors.black54)),
      ],
    );
  }

  Widget _buildTrackCard(String meal, String foods, String weight) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            offset: const Offset(2.0, 2.0),
            blurRadius: 5.0,
          ),
        ],
      ),
      child: Column(
        children: [
          Text(meal, style: const TextStyle(color: Colors.black)),
          const SizedBox(height: 8),
          Text(foods, style: const TextStyle(color: Colors.black)),
          const SizedBox(height: 8),
          Row(
            children: [
              Image.asset(
                'assets/profil.png', 
                width: 60,
                height: 60,
                fit: BoxFit.cover,
              ),
            ],
          ),
          Row(
            children: [
              Text(weight, style: const TextStyle(color: Colors.black)),
              const SizedBox(width: 8), 
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildRecommendationCard() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            offset: const Offset(2.0, 2.0),
            blurRadius: 5.0,
          ),
        ],
      ),
      child: Row(
        children: [
          Image.asset(
            'assets/profil.png', 
            width: 60,
            height: 60,
            fit: BoxFit.cover,
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Chatime - Taro Milk Tea',
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 4),
                const Text('Porsi : 1 Cup Reguler (500ml)'),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildNutrientInfo('Kalori', '399.00 kcal'),
                    _buildNutrientInfo('Sodium', '12.00 gr'),
                    _buildNutrientInfo('Lemak Jenuh', '12.00 gr'),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNutrientInfo(String label, String value) {
    return Column(
      children: [
        Text(label, style: const TextStyle(color: Colors.black54)),
        const SizedBox(height: 4),
        Text(value, style: const TextStyle(fontWeight: FontWeight.bold)),
      ],
    );
  }
}
