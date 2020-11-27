import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: HomeScreen(),
  ));
}

class HomeScreen extends StatelessWidget {
  @override
  final List<Makanan> makanan =[
    Makanan(
      'Salad Alpukat',
      'Minggu, 25 Oktober 2020',
      'Bahan:\n\n'

        '250 alpukat matang, potong dadu\n'

        '100 gram paprika, rajang halus\n'

        '150 gram tomat, buang bijinya, rajang halus\n'

        '250 gram babycorn, rebus dan potong-potong\n'

        '100 gram timun, potong-potong\n\n'

        'Dressing:\n\n'

    '2 sdm sirup maple\n'

    '3/4 sdm sari lemon\n'

    '2 sdt daun mint cincang\n'

    'garam dan merica hitam secukupnya\n\n'

    'Cara membuat:\n\n'

    '1. Campur semua bahan dalam satu mangkuk dan aduk sampai rata.\n'

    '2. Tambahkan dressing dan aduk sampai benar-benar rata.\n'

    '3. Resep makanan sehat untuk diet vegan sudah siap. Sajikan segera saat masih segar.\n',
      'https://images.unsplash.com/photo-1579254646895-fa623c08d24e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=600&q=60'
    ),
    Makanan(
      'Tumis Tahu Teriyaki',
      'Minggu, 25 Oktober 2020',
      'Bahan:\n\n'

        '1 blok tahu putih, potong dadu dan rendam sedikit garam\n'

    '2 sdm tepung terigu serbaguna\n\n'

    'Bumbu:\n\n'

    '2 sdm saus teriyaki\n'

    '2 siung bawang putih\n'

    '1/2 sdt merica, haluskan\n'

        '1 sdm saus tiram\n'

    '1 sdm saus cabai\n'

    'garam dan gula secukupnya\n'

    'minyak secukupnya\n\n'

    'Cara membuat:\n'

    '1. Gulung tahu ke dalam tepung lalu goreng tahu hingga matang kecokelatan, tiriskan.\n'

        '2. Tumis bawang putih hingga harum, masukkan semua saus dan merica, masukkan tahu goreng dan aduk merata.\n'

        '3. Tes rasa, masukkan garam dan gula secukupnya.\n'

    '4. Resep makanan sehat untuk diet vegan siap disantap dengan nasi hangat.',
      'https://images.unsplash.com/photo-1578208705984-d3ec84cf3a5d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=600&q=60'
    ),
    Makanan(
      'Sate Tempe',
      'Sabtu, 24 Oktober 2020',
      'Bahan-bahan:\n\n'

        '1 kotak tempe, potong dadu\n\n'

        'Bumbu kasar:\n\n'

        '2 lembar daun salam\n'

        '1 ruas lengkuas, memarkan\n\n'

        'Bumbu halus:\n\n'

    '3 siung bawang putih\n'

    '5 siung bawang merah\n'

        '1 ruas kunyit\n'

        '1 sdt ketumbar\n'

        '5 buah cabai rawit\n'

        'gula dan garam secukupnya\n\n'

        'Bumbu oles:\n\n'

        '2 sdm kecap manis\n'

        '1 sdm margarin, lelehkan\n\n'

        'Cara membuat:\n\n'

        '1. Tumis bumbu halus, masukkan bumbu kasar dan tumis hingga harum dan bumbu matang.\n'

    '2. Masukkan tempe, tuang sedikit air dan masak bersama bumbu hingga air habis dan bumbu meresap.\n'

    '3. Tusuk-tusuk tempe di tusuk sate dan oles dengan bumbu kecap. Panggang hingga agak kering dan sajikan.\n'

    '4. Resep makanan sehat untuk diet vegan ini bisa disantap dengan nasi atau sebagai camilan.\n',
      'https://cdn1-production-images-kly.akamaized.net/7eOscLjuS7UhHCVQOKUxLnEt2KQ=/750x416/smart/filters:quality(75):strip_icc():format(webp)/kly-media-production/medias/3154999/original/018911200_1592376548-tempe-327931.jpg'
    )
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu Makanan Vegan'),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: makanan.length,
          itemBuilder: (context,index){
            return new GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailVegan(
                      makanan: makanan[index],
                    )
                  )
                );
              },
              child: new Card(
                child: new Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image.network(
                        '${makanan[index].gambar}',
                        width: 100,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: Text(
                              '${makanan[index].nama}',
                              style: Theme.of(context).textTheme.headline6,
                            ),
                          ),
                          Text('${makanan[index].tanggal}')
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class DetailVegan extends StatelessWidget {
  final Makanan makanan;

  DetailVegan({Key key,@required this.makanan}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget judul = Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Text(makanan.nama, style: Theme.of(context).textTheme.headline6),
                  ),
                  Text(
                    makanan.tanggal,
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
    Widget deskripsi = Container(
      padding: EdgeInsets.all(16),
      child: Text(
        makanan.deskripsi,
        style: Theme.of(context).textTheme.bodyText1,
        softWrap: true,
        textAlign: TextAlign.justify,
      ),
    );
    return Scaffold(
      appBar: AppBar(
        title: Text(makanan.nama),
      ),
      body: ListView(
        children: <Widget>[
          Image.network(
            makanan.gambar,
            width: 600,
            fit: BoxFit.cover,
          ),
          judul,
          deskripsi,
        ],
      ),
    );
  }
}

class Makanan{
  final String nama;
  final String tanggal;
  final String deskripsi;
  final String gambar;

  Makanan(this.nama, this.tanggal, this.deskripsi, this.gambar);
}
