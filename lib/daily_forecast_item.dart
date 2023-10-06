import 'package:flutter/material.dart';

class DailyForecastItem extends StatelessWidget {
  const DailyForecastItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(8)),
        color: Colors.grey[900],
      ),
      height: 100,
      padding: const EdgeInsets.all(8),
      child: Row(
        children: [
          Expanded(
            child: ListTile(
              leading: Icon(Icons.sunny, size: 50, color: Colors.yellow[700]),
              title: const Text(
                'Saturday',
                style: TextStyle(fontSize: 20),
              ),
              subtitle: const Row(
                children: [
                  Text(
                    'Clear',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  '30°C',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  '17°C',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }
}
