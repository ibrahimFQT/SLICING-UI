import 'package:flutter/material.dart';

class PromoPage extends StatelessWidget {
  const PromoPage({super.key});

  Widget _buildPromoItem({
    required String title,
    required String subtitle,
    required Color color,
    double widthFactor = 0.8,
  }) {
    return Container(
      width: 250,
      height: 120,
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.black,
              height: 1.1,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            subtitle,
            style: TextStyle(
              fontSize: 13,
              color: Colors.black.withOpacity(0.7),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBannerCard({
    required String title,
    required String subtitle,
    required String imagePath,
    required Color overlayColor,
    required double height,
  }) {
    return Container(
      width: 250,
      height: height,
      margin: const EdgeInsets.only(right: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: overlayColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            if (subtitle.isNotEmpty) 
              Text(
                subtitle,
                style: const TextStyle(
                  color: Colors.white70,
                  fontSize: 12,
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildBannerImage(String path, {String? text}) {
    return Container(
      width: double.infinity,
      height: 200,
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        image: DecorationImage(
          image: AssetImage(path),
          fit: BoxFit.cover,
        ),
      ),
      child: (text != null)
          ? Container(
              padding: const EdgeInsets.all(15),
              alignment: Alignment.bottomLeft,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.black.withOpacity(0.0),
                    Colors.black.withOpacity(0.6)
                  ],
                ),
              ),
              child: Text(
                text,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          : null,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Promo',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Row(
                      children: [
                        Icon(Icons.airplane_ticket_outlined, color: Colors.indigo, size: 20),
                        SizedBox(width: 5),
                        Text('15 Vouchers', style: TextStyle(color: Colors.black)),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Row(
                      children: [
                        Icon(Icons.stars, color: Colors.indigo, size: 20),
                        SizedBox(width: 5),
                        Text('Vouchers Plus', style: TextStyle(color: Colors.black)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Masukkan kode voucher',
                  prefixIcon: const Icon(Icons.search, color: Colors.black54),
                  suffixIcon: const Icon(Icons.qr_code_scanner, color: Colors.black54),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.grey.shade100,
                  contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 15),
                ),
              ),
            ),

            Container(
              margin: const EdgeInsets.all(16.0),
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.amber.shade100,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  const Icon(Icons.check_box_outline_blank, color: Colors.orange),
                  const SizedBox(width: 10),
                  const Expanded(
                    child: Text('Check-in Setiap Hari Koinnya', style: TextStyle(fontWeight: FontWeight.w500)),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      minimumSize: Size.zero,
                    ),
                    child: const Text('Klaim', style: TextStyle(color: Colors.white)),
                  ),
                ],
              ),
            ),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  for (var text in ['11.11', 'gajian', 'riding', 'food', 'travel', 'vacation', 'hotel', 'drinks'])
                    Container(
                      margin: const EdgeInsets.only(right: 8, bottom: 8),
                      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.black45),
                      ),
                      child: Text(text, style: const TextStyle(color: Colors.black87, fontSize: 13)),
                    ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            
            const Padding(
              padding: EdgeInsets.only(left: 16.0, bottom: 15.0),
              child: Text(
                "Promo hari ini",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  _buildPromoItem(
                    title: "Diskon ongkir Sampai 50%",
                    subtitle: "khusus grab & shoopee",
                    color: const Color(0xFF90EE90).withOpacity(0.5),
                  ),
                  const SizedBox(width: 12),
                  _buildPromoItem(
                    title: "Buy 1 get 1",
                    subtitle: "khusus cemilan kekinian\n*syarat dan ketentuan berlaku",
                    color: const Color(0xFFF7D8C4),
                  ),
                  const SizedBox(width: 12),
                  _buildPromoItem(
                    title: "Beli 2 gratis 1",
                    subtitle: "khusus minuman segar\n*syarat dan ketentuan berlaku",
                    color: const Color(0xFFFFB6C1),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),

            
            const Padding(
              padding: EdgeInsets.only(left: 16.0, bottom: 15.0),
              child: Text(
                "Promo Makanan",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: _buildBannerImage('assets/group1.png'),
            ),
            const SizedBox(height: 30),

            
            const Padding(
              padding: EdgeInsets.only(left: 16.0, bottom: 15.0),
              child: Text(
                "Promo Liburan",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  _buildBannerCard(
                    title: "Jogjakarta",
                    subtitle: "",
                    imagePath: 'assets/banner4.png',
                    overlayColor: Colors.indigo.withOpacity(0.4),
                    height: 120,
                  ),
                  _buildBannerCard(
                    title: "Candi Borobudur",
                    subtitle: "",
                    imagePath: 'assets/banner5.png',
                    overlayColor: Colors.deepPurple.withOpacity(0.4),
                    height: 120,
                  ),
                  _buildBannerCard(
                    title: "Bali",
                    subtitle: "",
                    imagePath: 'assets/banner6.png',
                    overlayColor: Colors.blue.withOpacity(0.4),
                    height: 120,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),

            
            const Padding(
              padding: EdgeInsets.only(left: 16.0, bottom: 15.0),
              child: Text(
                "Promo Transportasi",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  _buildBannerCard(
                    imagePath: 'assets/banner-1.png',
                    overlayColor: Colors.indigo.withOpacity(0.4),
                    height: 150, title: '', subtitle: '',
                  ),
                  _buildBannerCard(
                    title: "Rp 500.000 *",
                    subtitle: "Diskon Tiket Pesawat",
                    imagePath: 'assets/banner-2.png',
                    overlayColor: Colors.deepPurple.withOpacity(0.4),
                    height: 150,
                  ),
                  _buildBannerCard(
                    title: "Promo Bus",
                    subtitle: "Diskon 40%",
                    imagePath: 'assets/banner-3.png',
                    overlayColor: Colors.blue.withOpacity(0.4),
                    height: 150,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),

            
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  _buildBannerImage(
                    'assets/banner1.png', 
                  ),
                  _buildBannerImage(
                    'assets/banner2.png', 
                  ),
                  _buildBannerImage(
                    'assets/banner3.png', 
                  ),
                ],
              ),
            ),
            const SizedBox(height: 80),
          ],
        ),
      ),
    );
  }
}