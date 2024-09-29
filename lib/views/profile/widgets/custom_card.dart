import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfileCustomCard extends StatelessWidget {
  final Color color;
  final String title;
  final String subtitle;
  final String imageString;
  final bool isBubbleTop;
  final Function()? onTap;

  const ProfileCustomCard({
    super.key,
    required this.color,
    required this.title,
    required this.subtitle,
    required this.imageString,
    required this.isBubbleTop,
    this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              color,
              color.withOpacity(0.7),
            ]),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 2,
                blurRadius: 5,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Stack(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 25),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.black.withOpacity(0.1),
                      Colors.transparent,
                    ],
                  ),
                ),
                child: Row(
                  children: [
                    Container(
                      height: 45,
                      width: 45,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: color,
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(color: Colors.white),
                      ),
                      child: SvgPicture.asset(imageString),
                    ),
                    const SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          subtitle,
                          style: const TextStyle(
                            color: Colors.white70,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              if(isBubbleTop)
              ...[Positioned(
                right: -40,
                bottom: 40,
                child: Container(
                  decoration: BoxDecoration(
                    color: color,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
              ),],
              if(!isBubbleTop)
                ...[Positioned(
                  right: -40,
                  top: 40,
                  child: Container(
                    decoration: BoxDecoration(
                      color: color,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                ),],
            ],
          ),
        ),
      ),
    );
  }
}
