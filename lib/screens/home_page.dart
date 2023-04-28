import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF051D36),
        body: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 100,
              ),
              Text(
                'Baiboly Malagasy',
                style: GoogleFonts.lora(
                  textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const SizedBox(
                height: 80,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: SizedBox(
                  width: double.infinity,
                  height: 460,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                          colors: [
                            Color(0xFF0D556C),
                            Color(0xA60D1D35),
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter),
                      borderRadius: const BorderRadius.all(Radius.circular(12)),
                      border: Border.all(
                        color: const Color(0xFF8D98A7),
                        width: 1,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/bottom_bar');
                },
                child: Container(
                  width: 300,
                  height: 50,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: const Color(0xffF7E733),
                  ),
                  child: Text(
                    'Hamaky',
                    style: GoogleFonts.lora(
                      textStyle: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          letterSpacing: .5,
                          color: Color(0xFF0C0A3E)),
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
