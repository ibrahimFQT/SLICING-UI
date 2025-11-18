import 'package:flutter/material.dart';
import 'tab.dart';
import 'row.dart';
// import 'layanan_dan_promo.dart'; // TIDAK DIPAKAI KARENA SEMUA LOGIKA DIPINDAH KESINI

class Halaman extends StatelessWidget {
  const Halaman({super.key});

  // Widget Pembantu untuk Ikon di Kanan AppBar
  Widget _buildAppbarIcon(IconData icon, Color color) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.lightBlue.shade300.withOpacity(0.7),
        ),
        child: Center(
          child: Icon(
            icon,
            color: color,
            size: 20,
          ),
        ),
      ),
    );
  }

  // Widget Pembantu untuk Satu Item Menu Ikon (Transfer, Top up, dll.)
  Widget _buildMenuIconItem(BuildContext context, IconData icon, String label) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 4 - 8,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(18),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.blue.withOpacity(0.1),
              border: Border.all(color: Colors.blue.withOpacity(0.3), width: 1),
            ),
            child: Icon(
              icon,
              size: 30,
              color: Colors.blue.shade800,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            label,
            style: const TextStyle(fontSize: 13, color: Colors.black87),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 15),
        ],
      ),
    );
  }

  // Widget Pembantu untuk Kartu Promo
  Widget _buildPromoCard(
    BuildContext context, {
    required String title,
    required String subtitle,
    required Color color,
  }) {
    double cardWidth = MediaQuery.of(context).size.width * 0.8;

    return Container(
      width: cardWidth,
      height: 150,
      padding: const EdgeInsets.all(20),
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
          const SizedBox(height: 8),
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


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        
        // --- Bagian KIRI (Logo Kereta) ---
        title: Container(
          width: 40,
          height: 40,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.black,
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: const Icon(
              Icons.train, 
              color: Colors.red, 
              size: 30,
            ),
          ),
        ),
        
        centerTitle: false,
        
        // --- Bagian KANAN (Tiga Ikon AppBar) ---
        actions: [
          _buildAppbarIcon(Icons.shopping_cart, Colors.blueGrey),
          _buildAppbarIcon(Icons.notifications, Colors.amber),
          _buildAppbarIcon(Icons.settings, Colors.blueGrey),
          const SizedBox(width: 8),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(bottom: 80),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TabPage(),
            const SizedBox(height: 20),
            
            // --- AWAL: WIDGET MENU IKON (sesuai gambar) ---
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Wrap(
                spacing: 0, 
                runSpacing: 10,
                alignment: WrapAlignment.spaceEvenly,
                children: [
                  _buildMenuIconItem(context, Icons.send, "Transfer"),
                  _buildMenuIconItem(context, Icons.account_balance_wallet_outlined, "Top up"),
                  _buildMenuIconItem(context, Icons.money, "Tarik tunai"),
                  _buildMenuIconItem(context, Icons.monetization_on_outlined, "Konfersi"),

                  _buildMenuIconItem(context, Icons.wifi, "Kuota"),
                  _buildMenuIconItem(context, Icons.language, "Pulsa"),
                  _buildMenuIconItem(context, Icons.shopping_cart_outlined, "Ecommerce"),
                  _buildMenuIconItem(context, Icons.savings_outlined, "Nabung"),
                ],
              ),
            ),

            const SizedBox(height: 30),

            // --- WIDGET PROMO (Super deal hari ini) ---
            const Padding(
              padding: EdgeInsets.only(left: 16.0, bottom: 15.0),
              child: Text(
                "Super deal hari ini",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
            ),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  _buildPromoCard(
                    context,
                    title: "Diskon ongkir Sampai 50%",
                    subtitle: "khusus grab & shoopee",
                    color: const Color(0xFFC9F7F7), // Cyan
                  ),
                  const SizedBox(width: 12),
                  _buildPromoCard(
                    context,
                    title: "Buy 1 get 1",
                    subtitle: "khusus cemilan kekinian\n*syarat dan ketentuan berlaku",
                    color: const Color(0xFFF7D8C4), // Peach
                  ),
                  const SizedBox(width: 12),
                  _buildPromoCard(
                    context,
                    title: "Beli 2 gratis 1",
                    subtitle: "khusus minuman segar\n*syarat dan ketentuan berlaku",
                    color: const Color(0xFFFFB6C1), // Pink
                  ),
                ],
              ),
            ),
            // --- AKHIR: WIDGET MENU IKON DAN PROMO ---

            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "Jangan lewatkan",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
              child: Text(
                "Belanja hemat, dapat cashback lagi!",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black54,
                ),
              ),
            ),
            const SizedBox(height: 10),
            RowPage(
              gambarList: const [
                'assets/alfamart.png',
                'assets/indomaret.png',
                'assets/alfamidi.png',
                'assets/alfamart.png',
                'assets/indomaret.png',
                'assets/alfamidi.png',
              ],
              diskonList: const [
                '30% off',
                '50% off',
                '35% off',
                '30% off',
                '50% off',
                '35% off',
              ],
            ),

            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  _buildBanner('assets/banner1.png'),
                  const SizedBox(height: 12),
                  _buildBanner('assets/banner2.png'),
                  const SizedBox(height: 12),
                  _buildBanner('assets/banner3.png'),
                ],
              ),
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
  
  Widget _buildBanner(String path) {
    return Container(
      width: double.infinity,
      height: 200, 
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        image: DecorationImage(
          image: AssetImage(path),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}