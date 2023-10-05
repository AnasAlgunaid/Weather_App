import 'package:flutter/material.dart';
import 'package:weather_app/helpers.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int chosenCity = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const SizedBox(
                width: double.infinity,
                child: Text(
                  'Choose a city',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(
                height: 100,
                child: ListView.builder(
                  padding: const EdgeInsets.all(8),
                  scrollDirection: Axis.horizontal,
                  itemCount: saudiArabiaCities.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        child: Container(
                          width: 150,
                          decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(8)),
                            color: chosenCity == index
                                ? Colors.blue
                                : Colors.grey[900],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Center(
                              child: Text(
                                saudiArabiaCities[index],
                                style: const TextStyle(
                                  fontSize: 20,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                        onTap: () => setState(() {
                          chosenCity = index;
                        }),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.location_on_outlined),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      saudiArabiaCities[chosenCity],
                      style: const TextStyle(
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Icon(Icons.sunny, size: 100, color: Colors.yellow[700]),
              const SizedBox(
                height: 10,
              ),
              const Text(
                '30°C',
                style: TextStyle(
                  fontSize: 50,
                ),
                textAlign: TextAlign.center,
              ),
              const Text(
                'Clear',
                style: TextStyle(
                  fontSize: 24,
                ),
                textAlign: TextAlign.center,
              ),
              const Text(
                'H: 32°C  L: 28°C',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(8)),
                  color: Colors.grey[900],
                ),
                child: const Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'High: ',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Low: ',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
