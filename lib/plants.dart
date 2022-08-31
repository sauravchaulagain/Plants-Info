import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class plant extends StatefulWidget {
  const plant({Key? key}) : super(key: key);

  @override
  State<plant> createState() => _plantState();
}

class _plantState extends State<plant> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Scaffold(
        body: ListView(
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.arrow_back_ios_new_outlined)),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: size.height * 0.6,
                  width: size.width * 0.75,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.red),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(63),
                        bottomLeft: Radius.circular(63),
                      ),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/plant1.jpg'))),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Overview',
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue),
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Row(
                    children: [
                      Text(
                        'Origin : ',
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                      Text(
                        'Central and South America',
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  Text(
                      'Anthurium is a beautiful flowering indoor plants whose flower blooms in different colors such as red, orange, pink, white, black, purple. This plant is delightful to grow because of how splendid they grow and look. It has broad green glossy leaves and smaller stem in the bottom. It’s flower blooms from the bottom and it blooms flowers about 8 months a year. '),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  Row(
                    children: [
                      Text(
                        'Caring Tips',
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  Text('Lighting: Bright indirect sunlight'),
                  Text('Water: Keep soil most in summer but don’t overwater.'),
                  Text('Temperature: 60-75°C'),
                  Text('Humidity: Mist it with a light spray regularly.'),
                  Text('Soil: Peat moss, coco peat, perlite etc. can be used'),
                  Text(
                      'Fertilizer: Use fertilizer once a month for a healthy Anthurium.'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class LuckyBamboo extends StatelessWidget {
  const LuckyBamboo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Scaffold(
        body: ListView(
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.arrow_back_ios_new_outlined)),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: size.height * 0.6,
                  width: size.width * 0.75,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.red),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(63),
                        bottomLeft: Radius.circular(63),
                      ),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/luckybamboo.jpg'))),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Overview',
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue),
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Row(
                    children: [
                      Text(
                        'Origin : ',
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                      Text(
                        'West Africa',
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  Text(
                      'Lucky bamboo is an easy growing plant that survive in both soil and water. While this plant has a common name of bamboo but the interesting fact is it doesn’t belong to bamboo family but belongs to dracaena genus. Lucky bamboo is well known for its air purifying features and is considered to be lucky in Chinese practice. '),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  Row(
                    children: [
                      Text(
                        'Caring Tips',
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  Text(
                      ' Lighting: Prefers bright indirect sunlight as direct sunlight can burn the leaves '),
                  Text(
                      'Watering: if it is grown in water, change the water once a week and use pure water. If you’ve grown your lucky bamboo in soil, water once the soil becomes slightly dry. '),
                  Text(
                      'Temperature: Warm room temperature from 65°F to 90°F Humidity: Normal room humidity is fine '),
                  Text('Soil: A well-draining potting mix ')
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class SnakePlant extends StatelessWidget {
  const SnakePlant({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Scaffold(
        body: ListView(
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.arrow_back_ios_new_outlined)),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: size.height * 0.6,
                  width: size.width * 0.75,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.red),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(63),
                        bottomLeft: Radius.circular(63),
                      ),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/snakeplant.jpg'))),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Overview',
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue),
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Row(
                    children: [
                      Text(
                        'Origin : ',
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                      Text(
                        'Tropical Africa',
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  Text(
                      'It is also known as Sansevieria, which is a very beginner friendly houseplant. It is mostly preferred because it purifies air around us and removes toxic air. Snake plant is called so because it grows to a shape like that of snake. It is found in various colors and sub varieties. It is one of the most common houseplants across different countries. It might be dwarf or tall depending on its types. It grows so many babies from the bottom.'),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  Row(
                    children: [
                      Text(
                        'Caring Tips',
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  Text(
                      'Lighting: It prefers moderate to bright indirect sunlight. Avoid direct sunlight as it might burn the leaves. '),
                  Text(
                      ' Water: Snake plant loves to be dry. Allow the soil to completely dry before watering.'),
                  Text(
                      'Temperature: Average warmth 60-75°F and no less than 50°F Humidity: Average house humidity is advised.'),
                  Text(
                      ' Soil: Common well-draining potting mix available in any garden stores.'),
                  Text(
                      ' Repotting: Repot it when it starts to grow and pot is covered with baby plants.'),
                  Text(
                      'Note: keep it away from pets as it is dangerous for them. '),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ParlorPalm extends StatelessWidget {
  const ParlorPalm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Scaffold(
        body: ListView(
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.arrow_back_ios_new_outlined)),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: size.height * 0.6,
                  width: size.width * 0.75,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.red),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(63),
                        bottomLeft: Radius.circular(63),
                      ),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/parlorpalm.jpg'))),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Overview',
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue),
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Row(
                    children: [
                      Text(
                        'Origin : ',
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                      Text(
                        'Mexico',
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  Text(
                      'Also known as ‘Chamaedorea Elegans’, parlor palm is a most popular easy growing palm found in many households. It has evergreen leaves which is delightful to watch. It can grow up to approximately 2-4 ft in a suitable condition. It is slow growing plant so be a little patient with it.'),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  Row(
                    children: [
                      Text(
                        'Caring Tips',
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  Text(
                      ' Lighting: Parlor palm adapts low to bright indirect sunlight. '),
                  Text(
                      ' Watering: Once when top soil starts to dry out. Water very little in winter. Make sure this plant is not over watered.'),
                  Text(
                      ' Temperature: Average warmth ranging from 60°F and no less than 50°F Humidity: Spray a water mist to improve its humidity '),
                  Text(' Soil: Any potting mix '),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ZzPlant extends StatelessWidget {
  const ZzPlant({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Scaffold(
        body: ListView(
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.arrow_back_ios_new_outlined)),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: size.height * 0.6,
                  width: size.width * 0.75,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.red),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(63),
                        bottomLeft: Radius.circular(63),
                      ),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/Zzplant.jpg'))),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Overview',
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue),
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Row(
                    children: [
                      Text(
                        'Origin : ',
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                      Text(
                        'Africa',
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  Text(
                      'Zz plant is an easy to grow and care for indoor plant which can grow up to about 3 ft long. Its botanical name is zamioculcas zamiifolia which has small glossy green leaves on stem. It is also popular air purifying plant. '),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  Row(
                    children: [
                      Text(
                        'Caring Tips',
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  Text(
                      ' Lighting: Moderate to bright indirect sunlight but can adapt low light as well. '),
                  Text(
                      ' Water: Over watering can rot the stem. Water once when top soil is dry. '),
                  Text(
                      '   Temperature: Average warm from 60-75°F and not less than 45°F '),
                  Text(' Humidity: Average house humidity   '),
                  Text(
                      ' Repotting: Repot your zz plant in about once a year if there’s visible growth.  '),
                  Text(
                      ' Soil: Keep good drainage holes at bottom and use any potting mix. '),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class PeaceLily extends StatelessWidget {
  const PeaceLily({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Scaffold(
        body: ListView(
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.arrow_back_ios_new_outlined)),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: size.height * 0.6,
                  width: size.width * 0.75,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.red),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(63),
                        bottomLeft: Radius.circular(63),
                      ),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/peacelilly.jpg'))),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Overview',
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue),
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Row(
                    children: [
                      Text(
                        'Origin : ',
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                      Text(
                        'Tropical rainforests of Colombia and Venezuela',
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  Text(
                      'Peace lily’s scientific name is ‘Spathiphyllum wallisii. It has beautiful white color flowers with green glossy leaves. It’s flower bloom beautifully about 8 months a year. It is easy to care and grows quickly.'),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  Row(
                    children: [
                      Text(
                        'Caring Tips',
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  Text(
                      ' Lighting: Too much light can burn the leaves and cause your leaves turn to yellow. Keep it away from direct sunlight, placing in warm indirect sunlight'),
                  Text(
                      'Watering: When the top soil seems slightly dry, water it but don’t overwater in summer. In winter water less, water it when top soil is drier.'),
                  Text('Temperature: Average room temperature above 55°F'),
                  Text(
                      'Humidity: Try to mist leaves regularly for well growing peace lily'),
                  Text('Soil: Use peat based potting mix with perlite'),
                  Text(
                      'Fertilizer: Fertilize it once a month.                     '),
                  Text(
                      'Note: It is dangerous for pets and children so keep it away from them.'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Anthurium extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Scaffold(
        body: ListView(
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.arrow_back_ios_new_outlined)),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: size.height * 0.6,
                  width: size.width * 0.75,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.red),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(63),
                        bottomLeft: Radius.circular(63),
                      ),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/Anthurium.jpg'))),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Overview',
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue),
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Row(
                    children: [
                      Text(
                        'Origin : ',
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                      Text(
                        'Central and South America ',
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  Text(
                      'Anthurium is a beautiful flowering indoor plants whose flower blooms in different colors such as red, orange, pink, white, black, purple. This plant is delightful to grow because of how splendid they grow and look. It has broad green glossy leaves and smaller stem in the bottom. It’s flower blooms from the bottom and it blooms flowers about 8 months a year.  '),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  Row(
                    children: [
                      Text(
                        'Caring Tips',
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  Text(' Lighting: Bright indirect sunlight. '),
                  Text(' Water: Keep soil most in summer but don’t overwater.'),
                  Text(' Temperature: 60-75°C'),
                  Text(' Humidity: Mist it with a light spray regularly.'),
                  Text(' Soil: Peat moss, coco peat, perlite etc. can be used'),
                  Text(
                      'Fertilizer: Use fertilizer once a month for a healthy Anthurium. It is toxic to cats and dogs.'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class SpiderPlant extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Scaffold(
        body: ListView(
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.arrow_back_ios_new_outlined)),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: size.height * 0.6,
                  width: size.width * 0.75,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.red),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(63),
                        bottomLeft: Radius.circular(63),
                      ),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/Spider_Plant.jpg'))),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Overview',
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue),
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Row(
                    children: [
                      Text(
                        'Origin : ',
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                      Text(
                        'South African tropical rainforest',
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  Text(
                      'Its botanical name is ‘Chlorophytum comosum’. It grows indoor as well as semi-indoors. It has small leaves with green and white mix. Spider plant is also easy to grow and grows very quickly. It removes toxic air from the environment. It is also a hanging plant. It grows small flower if it meets favorable condition.  '),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  Row(
                    children: [
                      Text(
                        'Caring Tips',
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  Text(
                      ' Lighting: It grows well in moderate to bright sunlight.'),
                  Text(
                      ' Watering: Spider plant loves to be moist but don’t overwater it. Water when soil starts to dry out.'),
                  Text(
                      ' Temperature: It requires average temperature from 55 to 75°F'),
                  Text(
                      ' Humidity: Misting it’s leaves daily helps it to grow well.'),
                  Text(
                      ' Soil: Make sure there’s proper drainage in the bottom of your pot and it adapts any potting mix or use peat as well.'),
                  Text(
                      ' Repotting: Repot your spider plant when there’s visible growth. Repot to a little bigger pot size with well drainage.'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Arecapalm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Scaffold(
        body: ListView(
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.arrow_back_ios_new_outlined)),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: size.height * 0.6,
                  width: size.width * 0.75,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.red),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(63),
                        bottomLeft: Radius.circular(63),
                      ),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/arecaplam.jpg'))),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Overview',
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue),
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Row(
                    children: [
                      Text(
                        'Origin : ',
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                      Text(
                        'Madagascar',
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  Text(
                      'Areca palm is a tall growing indoor plant which has small green leaves all over. It can grow about 6ft. It grows slowly but watching it grow is grateful. People all over prefers to place it at corner of the rooms because of its height which is attractive. Its Latin name is ‘Dypsis Lutescens'),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  Row(
                    children: [
                      Text(
                        'Caring Tips',
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  Text(
                      ' Lighting: Areca palm needs bright indirect sunlight. Direct sunlight causes leaves to burn.'),
                  Text(
                      ' Watering: It doesn’t need to be feed with water more often. Water it when soil starts to dry. Don’t over or underwater.'),
                  Text(
                      ' Temperature: 60°F to 75°F but sudden temperature drop can cause brown spots on leaves                  '),
                  Text(
                      ' Humidity: Mist the leaves regularly                  '),
                  Text(
                      ' Soil: plant in a proper drained potting mix with the drainage hole at bottom                  '),
                  Text(
                      ' Repotting: Repot during spring in a pot 2-4 inches wider than current pot                  '),
                  Text(
                      ' Fertilizer: Feed a fertilizer during spring and summer. '),
                  Text("data"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ArrowHead extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Scaffold(
        body: ListView(
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.arrow_back_ios_new_outlined)),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: size.height * 0.6,
                  width: size.width * 0.75,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.red),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(63),
                        bottomLeft: Radius.circular(63),
                      ),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/arrrowhead.jpg'))),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Overview',
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue),
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Row(
                    children: [
                      Text(
                        'Origin : ',
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                      Text(
                        'South America',
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  Text(
                      'Arrowhead is known with different name such as syngonium, arrowhead vine, nephthytis podophyllum etc. Arrowhead has huge number of variations from green to white colored leaves. It has arrow like pointed leaves at the top. It can grow up to 6ft depending on its types. It is tall growing, easy to care houseplant.  '),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  Row(
                    children: [
                      Text(
                        'Caring Tips',
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  Text(
                      ' Light: Place in bright indirect sunlight. It grows in direct light as well but it causes brown spot-on leaves.'),
                  Text(
                      ' Water: Water when top soil becomes try to touch. Water less in winter'),
                  Text(
                      ' Temperature: Maintain 60-80°F temperature. Not less than 50.'),
                  Text(' Soil: Any decent potting mix with well drainage.'),
                  Text(' Humidity: Mist the leaves to improve humidity.'),
                  Text(
                      ' Repotting: Repot when the plants grow and seems to need another pot. Repot in a pot with 2-3 inch wider than current pot It is toxic to pets.'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ChristmasCactus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Scaffold(
        body: ListView(
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.arrow_back_ios_new_outlined)),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: size.height * 0.6,
                  width: size.width * 0.75,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.red),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(63),
                        bottomLeft: Radius.circular(63),
                      ),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/christmascactus.jpg'))),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Overview',
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue),
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Row(
                    children: [
                      Text(
                        'Origin : ',
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                      Text(
                        'Brazil',
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  Text(
                      'Its scientific name is schlumbergera bridgesii. It produces a small flat stem segments that are round. It blooms flowers at the end of these segments. It’s flowers ranges from pink to red shades. '),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  Row(
                    children: [
                      Text(
                        'Caring Tips',
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  Text(
                      ' Light: Bright direct light during winter and fall. Bright indirect light during non-flowering time.'),
                  Text(
                      ' Water: Keep top soil moist all the time but don’t overwater'),
                  Text(' Temperature: 60-70°F not less than 50'),
                  Text(
                      ' Humidity: Mist leaves frequently Soil: Use potting mix or peat-based mix.'),
                  Text(' Repotting: Repot once in 3 years.'),
                  Text("data"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
