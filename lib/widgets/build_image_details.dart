import 'package:flutter/material.dart';

class BuildImageDetails extends StatelessWidget {
  const BuildImageDetails({
    super.key,
    required this.title,
    required this.user,
  });

  final String title;
  final String user;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Row(
              children: [
                Icon(
                  Icons.location_on,
                  color: Colors.grey,
                ),
                SizedBox(
                  width: 3.0,
                ),
                Icon(
                  Icons.chat_bubble_outline,
                  color: Colors.grey,
                ),
                SizedBox(
                  width: 3.0,
                ),
                Icon(
                  Icons.favorite_border,
                  color: Colors.grey,
                ),
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 6.0,
        ),
        Row(
          children: [
            Text(
              '$user added 52 Photos . ',
              style: const TextStyle(
                  //fontSize: 16,
                  color: Colors.grey),
            ),
            Text(
              '2h ago . ',
              style: TextStyle(
                  //fontSize: 16,
                  color: Colors.grey.withOpacity(0.5)),
            ),
          ],
        ),
      ],
    );
  }
}
