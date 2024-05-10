import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:study_app/model/list_view_model.dart';

class ListViewDetail extends StatefulWidget {
  final PlaceInfo placeInfo;
  const ListViewDetail({super.key, required this.placeInfo});

  @override
  State<ListViewDetail> createState() => _ListViewDetailState();
}

class _ListViewDetailState extends State<ListViewDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.white,
        label: const Text("Main Page"),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      body: Stack(
        children: [
          Image.asset(
            widget.placeInfo.image,
            fit: BoxFit.cover,
            height: MediaQuery.of(context).size.height * 0.42,
          ),
          SafeArea(
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.35,
                ),
                Expanded(
                  child: Container(
                    height: 400,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15.0, vertical: 15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Recommended',
                            style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Row(
                            children: [
                              Icon(
                                Icons.location_on,
                                color: Colors.orange,
                              ),
                              Text(
                                'Japan',
                                style:
                                    TextStyle(fontSize: 15, color: Colors.grey),
                              ),
                            ],
                          ),
                          const SizedBox(height: 15),
                          const Text(
                            'Trip Detail',
                            style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 15),
                          Text(
                            widget.placeInfo.desc,
                            style: const TextStyle(fontSize: 20),
                          ),
                          const SizedBox(height: 5),
                          // line
                          const Divider(),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
