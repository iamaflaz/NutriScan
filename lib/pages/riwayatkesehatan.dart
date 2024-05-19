import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class RiwayatKesehatanPage extends StatelessWidget {
  const RiwayatKesehatanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Riwayat Kesehatan'),
        backgroundColor: Colors.orange,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: RiwayatKesehatan(),
      ),
    );
  }
}

class RiwayatKesehatan extends StatefulWidget {
  @override
  _RiwayatKesehatanState createState() => _RiwayatKesehatanState();
}

class _RiwayatKesehatanState extends State<RiwayatKesehatan> {
  String? selectedHypertensionLevel;
  String? gender;
  final TextEditingController ageController = TextEditingController();
  final TextEditingController allergyController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DropdownButtonFormField<String>(
          decoration: InputDecoration(
            labelText: 'Tingkatan Hipertensi',
            border: OutlineInputBorder(),
          ),
          value: selectedHypertensionLevel,
          items: ['Rendah', 'Sedang', 'Tinggi']
              .map((level) => DropdownMenuItem(
                    value: level,
                    child: Text(level),
                  ))
              .toList(),
          onChanged: (value) {
            setState(() {
              selectedHypertensionLevel = value;
            });
          },
        ),
        SizedBox(height: 16),
        TextFormField(
          controller: ageController,
          decoration: InputDecoration(
            labelText: 'Umur',
            border: OutlineInputBorder(),
          ),
          keyboardType: TextInputType.number,
        ),
        SizedBox(height: 16),
        Text(
          'Jenis Kelamin',
          style: TextStyle(fontSize: 16),
        ),
        Row(
          children: [
            Expanded(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: gender == 'Laki-Laki' ? Colors.orange : Colors.white,
                  foregroundColor: gender == 'Laki-Laki' ? Colors.white : Colors.black,
                  side: BorderSide(color: Colors.orange),
                ),
                onPressed: () {
                  setState(() {
                    gender = 'Laki-Laki';
                  });
                },
                child: Text('Laki-Laki'),
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: gender == 'Perempuan' ? Colors.orange : Colors.white,
                  foregroundColor: gender == 'Perempuan' ? Colors.white : Colors.black,
                  side: BorderSide(color: Colors.orange),
                ),
                onPressed: () {
                  setState(() {
                    gender = 'Perempuan';
                  });
                },
                child: Text('Perempuan'),
              ),
            ),
          ],
        ),
        SizedBox(height: 16),
        TextFormField(
          controller: allergyController,
          decoration: InputDecoration(
            labelText: 'Alergi',
            hintText: 'beri (-) jika tidak memiliki alergi',
            border: OutlineInputBorder(),
          ),
        ),
        SizedBox(height: 24),
        Center(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orange,
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
            ),
            onPressed: () {
              // Action when save button is pressed
            },
            child: Text('Simpan'),
          ),
        ),
      ],
    );
  }
}
