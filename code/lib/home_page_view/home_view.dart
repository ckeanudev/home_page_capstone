import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  bool extraHelmet = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 10,
                right: 10,
                top: 15,
                bottom: 15,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const SizedBox(
                        // color: Colors.orange,
                        width: 50,
                        height: 50,
                        child: Icon(
                          Icons.circle,
                          color: Color(0xff495057),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        children: const [
                          Text(
                            'From',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Divider(
                    color: Colors.grey,
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        // color: Colors.orange,
                        width: 50,
                        height: 50,
                        child: Icon(
                          Icons.circle,
                          color: Color(0xff3c6e71),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        children: const [
                          Text(
                            'To',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Divider(
                    color: Colors.grey,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 8,
                      right: 8,
                      top: 2,
                      bottom: 2,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Extra Helmet',
                          style: TextStyle(fontSize: 16),
                        ),
                        Switch(
                          activeColor: Color(0xff3c6e71),
                          value: extraHelmet,
                          onChanged: (value) {
                            setState(
                              () {
                                extraHelmet = value;
                              },
                            );
                          },
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
