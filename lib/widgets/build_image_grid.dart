import 'package:flutter/material.dart';

class BuildImageGrid extends StatelessWidget {
  const BuildImageGrid({
    super.key,
    required this.imageList,
  });

  final List<String> imageList;

  @override
  Widget build(BuildContext context) {
    double larguraTela = (MediaQuery.of(context).size.width - 58) / 2;
    return Row(
      children: [
        Container(
          height: 225,
          width: larguraTela + 40,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(imageList[0]), fit: BoxFit.cover),
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20.0),
              bottomLeft: Radius.circular(20.0),
            ),
          ),
        ),
        const SizedBox(
          width: 3.0,
        ),
        Column(
          children: [
            Container(
              height: 111,
              width: larguraTela - 45,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(imageList[0]), fit: BoxFit.cover),
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(20.0),
                ),
              ),
            ),
            const SizedBox(
              height: 3.0,
            ),
            Container(
              height: 111,
              width: larguraTela - 45,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(imageList[0]), fit: BoxFit.cover),
                borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(20.0),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
