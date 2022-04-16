import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GreenText extends StatelessWidget {
  final String text;
  final double size;
  final Function()? onTap;
  const GreenText({
    Key? key,
    required this.text,
    required this.size,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: ShaderMask(
        blendMode: BlendMode.srcIn,
        shaderCallback: (rect) => const LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            Color(0xff53E88B),
            Color(0xff15BE77),
          ],
        ).createShader(rect),
        child: Center(
          child: Text(
            text,
            style: GoogleFonts.viga(fontSize: size),
          ),
        ),
      ),
    );
  }
}
