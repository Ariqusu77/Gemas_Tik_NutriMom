import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 48),
      child: ListView(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Selamat Siang, Bunda',
                    ),
                  ],
                ),
                const SizedBox(
                  height: 3,
                ),
                // ------------------------------------------------------------------ profile
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xff128058),
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  padding: const EdgeInsets.all(12),
                  child: const Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(12),
                            child: Icon(
                              Icons.person,
                              size: 24,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(width: 12),
                          Expanded(
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Siti Zubair',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      '4 minggu',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(12),
                            child: Icon(
                              Icons.arrow_forward_ios,
                              size: 24,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      Divider(color: Colors.white), // Changed color to white
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.all(6),
                                child: Icon(
                                  Icons.notifications,
                                  size: 21,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                'makan siang',
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.all(6),
                                child: Icon(
                                  Icons.schedule,
                                  size: 21,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                '12 : 00 AM',
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xff1ae29a),
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  padding: const EdgeInsets.all(12),
                  child: Column(children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [Text('rekomendasi menu hari ini ...')],
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image.network(
                            'https://asset.kompas.com/crops/6ZwiRohnvHACa6TqkeNG0VvSKiU=/0x2:1000x669/750x500/data/photo/2021/07/06/60e3ef91620b7.jpg',
                            width: 120,
                            height: 120,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        const Expanded(
                          child: Column(
                            crossAxisAlignment:
                                CrossAxisAlignment.start, // Align text to start
                            children: [
                              Text(
                                'Pecel Sayur',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Text(
                                'makanan tinggi nutrisi yang terdiri dari sayur sayur rebus dengan saus kacang yang dapat dinikmati dengan tempe berprotein tinggi',
                                overflow: TextOverflow.clip,
                                maxLines: 4,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 6,),
                    const Center(
                      child: Icon(
                        Icons.arrow_drop_down,
                      ),
                    )
                  ]),
                ),
                const SizedBox( height: 12,),
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xff8696bb),
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.person,
                            size: 24,
                            color: Colors.white,
                          ),
                          SizedBox(width: 24,),
                          Column(
                            children: [
                              Text(
                                'Dr. Imran Syahrir',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(),
                              Text(
                                'Dokter Spesialis Kandungan',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const Divider(color: Colors.white),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.domain,
                            color: Colors.white,
                          ),
                          Text(
                            'Rumah Sakit Pelita Harapan',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 6,),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        padding: const EdgeInsets.all(6),
                        child: const Text(
                          'Hubungi Dokter ....',
                          style: TextStyle(
                            color: Colors.black38,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox( height: 12,),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  padding: const EdgeInsets.all(12),
                  child: const Column(
                    children: [
                      Text(
                        'Artikel',
                        style: TextStyle(
                          fontWeight: FontWeight.bold
                        ) 
                      ),
                      Text(
                        'Lorem ipsum dolor sit amet consectetur. Elementum faucibus leo et viverra felis faucibus pretium. Volutpat viverra at dictumst malesuada lectus aliquet eget euismod lacus. Amet nisi ut et massa sociis. Adipiscing viverra nisl nibh tincidunt eget. Diam fringilla auctor massa ac eget neque pulvinar congue lectus. Est fermentum nibh turpis pharetra blandit. Id cursus ut fringilla neque pellentesque dolor volutpat etiam praesent. Ut sit libero vel egestas convallis faucibus at volutpat eu. Ligula orci pharetra mauris sed. Libero nunc feugiat fusce dictumst ipsum. Ultricies vestibulum sit sodales sollicitudin a. Aliquet posuere feugiat libero eget quam pulvinar. Massa vel habitant pulvinar et maecenas pretium elementum. Porttitor convallis elementum tristique diam enim nullam lacinia facilisis mauris. Turpis mi vestibulum mauris nullam dui vitae morbi. Iaculis viverra nisi cursus sit. Egestas dictum ultrices nisi tincidunt nunc morbi vitae. Neque neque proin nunc lectus. In arcu aliquet vel habitasse. Nisl vulputate morbi malesuada turpis libero. Eget in posuere magnis tristique hendrerit. Suscipit magnis id turpis sit sit risus sodales habitasse. Diam eget tortor scelerisque volutpat. Gravida nulla ornare risus nulla egestas justo diam. Nulla sed in eget scelerisque elit condimentum pretium scelerisque vel. Aenean id elit sodales vitae nibh. Nec lobortis posuere ornare eu netus. Morbi sed pellentesque diam vulputate. Sed sit pellentesque volutpat laoreet ut viverra. Magna eleifend dui amet blandit scelerisque sed. Mauris fermentum amet nulla parturient arcu. Ut quis etiam facilisis malesuada mauris hac id pharetra. Nisl praesent tempus ornare nulla arcu. Tortor a felis pulvinar dictum ante. Turpis accumsan commodo a erat. Vel turpis laoreet mi pretium scelerisque ac magna placerat tempor. Condimentum vitae aliquam odio natoque nunc pellentesque dignissim quam. Quis quisque amet egestas amet risus vitae massa. Elit interdum volutpat lacus adipiscing. Tortor eget duis risus adipiscing. Eget feugiat lectus massa non. Sit et mollis vitae elementum. Cursus mattis amet nisl pretium imperdiet. Pretium metus quisque semper sagittis ultricies arcu tincidunt leo. Nulla vitae malesuada neque nibh volutpat eget ut congue. Diam duis sed enim hac dapibus maecenas ipsum. Euismod non in augue tortor viverra integer. Facilisi aliquet ut morbi bibendum turpis nec etiam. Sit scelerisque ante lobortis massa nunc dignissim. Dis a ut.',
                        overflow: TextOverflow.clip,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
