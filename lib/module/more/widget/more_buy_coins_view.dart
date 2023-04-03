import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/more_data.dart';
import '../controller/more_controller.dart';

class MoreBuyCoins extends StatefulWidget {
  const MoreBuyCoins({super.key});

  @override
  State<MoreBuyCoins> createState() => _MoreBuyCoinsState();
}

class _MoreBuyCoinsState extends State<MoreBuyCoins> {
  @override
  Widget build(BuildContext context) {
    MoreController controller = Get.put(MoreController());
    List buyCoinsList = MoreData.buyCoins;

    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Coin Shop",
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 120,
              decoration: BoxDecoration(
                color: Colors.grey[900],
                border: Border(
                  top: BorderSide(width: 1.0, color: Colors.grey.shade800),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.network(
                          "https://i.ibb.co/FzjMfTJ/Gambar-Whats-App-2023-03-18-pukul-05-05-22-removebg-preview.png",
                          fit: BoxFit.cover,
                          width: 20,
                        ),
                        const SizedBox(
                          width: 5.0,
                        ),
                        Obx(
                          () => Text(
                            "${controller.userCoins}",
                            style: const TextStyle(
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Purchased",
                          style: TextStyle(
                            color: Colors.grey[600],
                          ),
                        ),
                        const SizedBox(
                          width: 2.0,
                        ),
                        Obx(
                          () => Text("${controller.userCoins}"),
                        ),
                        const SizedBox(
                          width: 15.0,
                        ),
                        Text(
                          "Free",
                          style: TextStyle(
                            color: Colors.grey[600],
                          ),
                        ),
                        const SizedBox(
                          width: 2.0,
                        ),
                        const Text("0"),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            Container(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Basic Coin Packages",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  GridView.count(
                    shrinkWrap: true,
                    crossAxisCount: 3,
                    childAspectRatio: 0.7,
                    children: List.generate(buyCoinsList.length, (index) {
                      return Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: InkWell(
                          onTap: () {
                            int coinsAdded =
                                MoreData.buyCoins[index]['coins_added'];
                            controller.addCoins(coinsAdded);
                            controller.update();
                          },
                          child: Column(
                            children: [
                              Container(
                                height: 100,
                                padding: const EdgeInsets.only(right: 10),
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(5.0),
                                    topRight: Radius.circular(5.0),
                                  ),
                                  border: Border.all(
                                    width: 1.0,
                                    color: Colors.grey[900]!,
                                  ),
                                ),
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.network(
                                        "https://i.ibb.co/FzjMfTJ/Gambar-Whats-App-2023-03-18-pukul-05-05-22-removebg-preview.png",
                                        fit: BoxFit.cover,
                                        width: 20,
                                      ),
                                      const SizedBox(
                                        height: 15.0,
                                      ),
                                      Text(
                                        buyCoinsList[index]['coins'],
                                        style: const TextStyle(
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                height: 35,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.only(
                                    bottomLeft: Radius.circular(5.0),
                                    bottomRight: Radius.circular(5.0),
                                  ),
                                  color: Colors.grey[900],
                                ),
                                child: Center(
                                  child: Text(buyCoinsList[index]['price']),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
