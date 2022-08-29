import 'package:flutter/material.dart';

import 'package:code/home_page_view/home_view/from_to_widget/from_to_widget.dart';
import 'package:code/home_page_view/home_view/category_item/category_item.dart';
import 'package:code/home_page_view/home_view/payment_date_widget/payment_date_widget.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  bool extraHelmet = false;

  String categoryChoose = 'Motorcycles';

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const FromToWidget(),
                  const Divider(
                    color: Colors.grey,
                  ),
                  categoryChoose == 'Motorcycles'
                      ? Padding(
                          padding: const EdgeInsets.only(
                            left: 15,
                            right: 15,
                            top: 2,
                            bottom: 2,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Extra Helmet',
                                style: TextStyle(fontSize: 15),
                              ),
                              Switch(
                                activeColor: const Color(0xff00b4d8),
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
                      : const SizedBox(),
                  const Divider(
                    color: Colors.grey,
                  ),
                  InkWell(
                    onTap: () {
                      print('Clicked!');
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 6,
                        bottom: 6,
                        left: 15,
                        right: 15,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: const [
                              Icon(
                                Icons.check_box,
                                color: Color(0xff343a40),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Requests for your order',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                          const Icon(
                            Icons.arrow_right,
                            size: 33,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const PaymentAndDate(),
                  const Divider(
                    color: Colors.grey,
                  ),
                  const Divider(
                    color: Colors.grey,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                categoryChoose = 'Motorcycles';
                              });
                            },
                            child: CategoryItem(
                              category: 'Motorcycles',
                              categoryClicked: categoryChoose,
                              priceFrom: 'from Php10',
                              iconData: Icons.motorcycle,
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                categoryChoose = 'Trike';
                              });
                            },
                            child: CategoryItem(
                                category: 'Trike',
                                categoryClicked: categoryChoose,
                                priceFrom: 'from Php10',
                                iconData: Icons.motorcycle),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                categoryChoose = 'Trucks';
                              });
                            },
                            child: CategoryItem(
                                category: 'Trucks',
                                categoryClicked: categoryChoose,
                                priceFrom: 'from Php220',
                                iconData: Icons.fire_truck),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                categoryChoose = 'Bus';
                              });
                            },
                            child: CategoryItem(
                                category: 'Bus',
                                categoryClicked: categoryChoose,
                                priceFrom: 'from Php50',
                                iconData: Icons.bus_alert),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: InkWell(
                  onTap: () {
                    print('ORDER CLICKED!');
                  },
                  child: Container(
                    padding: const EdgeInsets.only(top: 15, bottom: 15),
                    decoration: BoxDecoration(
                        color: const Color(0xff00b4d8),
                        borderRadius: BorderRadius.circular(50)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'ORDER',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ))
      ],
    );
  }
}
