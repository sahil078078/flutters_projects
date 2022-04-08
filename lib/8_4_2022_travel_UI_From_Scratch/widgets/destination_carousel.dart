import 'package:flutter/material.dart';
import 'package:flutters_projects/8_4_2022_travel_UI_From_Scratch/models/destination_model.dart';

class DestinationCarousel extends StatelessWidget {
  const DestinationCarousel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Top Destination",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5,
                ),
              ),
              GestureDetector(
                onTap: () => print("SeeAll"),
                child: Text(
                  "See All",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).primaryColor,
                      letterSpacing: 1.0),
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 300,
          color: Colors.blue,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: destinations.length,
              itemBuilder: (BuildContext contex, int index) {
                Destination destination = destinations[index];
                return Container(
                  margin: const EdgeInsets.all(10),
                  width: 210,
                  color: Colors.red,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Positioned(
                        bottom: 15,
                        child: Container(
                          width: 200,
                          height: 120,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                // Text(destinations[index].city),
                                // Text(destination.city),
                                Text(
                                  '${destination.activities.length} activities',
                                  style: const TextStyle(
                                    letterSpacing: 1.2,
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  destination.description,
                                  style: TextStyle(color: Colors.grey),
                                ),
                                // Text(destinations[index].description),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.0),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black26,
                              offset: Offset(0, 2.0),
                              blurRadius: 6.0,
                            ),
                          ],
                        ),
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image(
                                height: 180,
                                width: 180,
                                image: AssetImage(destination.imageUrl),
                                fit: BoxFit.fill,
                              ),
                            ),
                            Column(
                              children: <Widget>[
                                Text(
                                  destination.city,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 24,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 1.2,
                                  ),
                                ),
                                Text(
                                  destination.country,
                                  style: const TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              }),
        ),
      ],
    );
  }
}
