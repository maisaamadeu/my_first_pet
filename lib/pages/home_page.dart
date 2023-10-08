import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_first_pet/shared/theme/app_colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: const Drawer(),
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.white,
          statusBarIconBrightness: Brightness.dark,
          statusBarBrightness: Brightness.light,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        scrolledUnderElevation: 0,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(
                'https://c.wallhere.com/photos/4a/66/Nero_Claudius_Fate_Grand_Order_Fate_Extra-2241600.jpg!d',
              ),
            ),
          ],
        ),
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            Text.rich(
              TextSpan(
                text: 'Seja Bem Vinda, ',
                style: GoogleFonts.alegreya(
                  fontSize: 26,
                ),
                children: [
                  const TextSpan(
                    text: 'Nero!',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Seus pets: ',
              style: GoogleFonts.alegreyaSans(
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 300,
              child: ListView.separated(
                clipBehavior: Clip.none,
                itemBuilder: (context, index) => Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                        image: NetworkImage(
                            'https://static.nationalgeographicbrasil.com/files/styles/image_3200/public/01-lion-populations-nationalgeographic_1777804.jpg?w=1600&h=900'),
                        fit: BoxFit.cover,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x141313).withOpacity(0.18),
                          offset: Offset(6, 6),
                          blurRadius: 7,
                          spreadRadius: -2,
                        ),
                      ]),
                  height: 300,
                  width: 250,
                  child: Stack(
                    children: [
                      Positioned.fill(
                        left: 0,
                        top: 0,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.black.withOpacity(
                              0.5,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        right: 10,
                        top: 15,
                        child: Icon(
                          Icons.more_vert,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Simba',
                              style: GoogleFonts.alegreya(
                                fontSize: 24,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Idade: 5 anos',
                              style: GoogleFonts.alegreyaSans(
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                separatorBuilder: (context, index) => const SizedBox(
                  width: 10,
                ),
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                primary: false,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
