import 'package:flutter/material.dart';
import 'package:weather_app/helpers.dart';

import 'daily_forecast_item.dart';
import 'icons/weather_icons.dart';

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
          child: ListView(
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
                height: 90,
                child: ListView.builder(
                  padding: const EdgeInsets.fromLTRB(0, 0, 16, 8),
                  scrollDirection: Axis.horizontal,
                  itemCount: saudiArabiaCities.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.fromLTRB(0, 8, 16, 8),
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
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(8)),
                  color: Colors.grey[900],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: SizedBox(
                    height: 60,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: const [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 4.0),
                                  child: Icon(
                                    WeatherIcons.rain,
                                    size: 18,
                                    color: Colors.grey,
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Precipitation',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 30),
                              child: Text(
                                '24%',
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.water_drop_outlined,
                                  size: 20,
                                  color: Colors.grey,
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  'Humidity',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 30),
                              child: Text(
                                '48%',
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  WeatherIcons.wind,
                                  size: 20,
                                  color: Colors.grey,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Wind Speed',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 30),
                              child: Text(
                                '20 km/h',
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const SizedBox(
                width: double.infinity,
                child: Text(
                  'Hourly Forecast',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(
                height: 140,
                width: double.infinity,
                child: ListView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.fromLTRB(0, 8, 12, 8),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(8)),
                          color: Colors.grey[900],
                        ),
                        child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 4, horizontal: 30),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Text(
                                  "12:00",
                                  style: TextStyle(fontSize: 18),
                                ),
                                Icon(Icons.sunny,
                                    size: 25, color: Colors.yellow[700]),
                                const Text(
                                  "30°C",
                                  style: TextStyle(fontSize: 18),
                                ),
                              ],
                            )),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                width: double.infinity,
                child: Text(
                  'Daily Forecast',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Column(
                children: [
                  DailyForecastItem(),
                  SizedBox(
                    height: 10,
                  ),
                  DailyForecastItem(),
                  SizedBox(
                    height: 10,
                  ),
                  DailyForecastItem(),
                  SizedBox(
                    height: 10,
                  ),
                  DailyForecastItem(),
                  SizedBox(
                    height: 10,
                  ),
                  DailyForecastItem(),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
