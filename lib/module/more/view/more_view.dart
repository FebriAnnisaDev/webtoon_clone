import 'package:clone_webtoon/module/more/widget/more_buy_coins_view.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../../../shared/util/const.dart';
import '../controller/more_controller.dart';
import '../widget/more_buttons.dart';

class MoreView extends StatefulWidget {
  const MoreView({Key? key}) : super(key: key);

  @override
  State<MoreView> createState() => _MoreViewState();

  build(BuildContext context, MoreController moreController) {}
}

class _MoreViewState extends State<MoreView> {
  @override
  Widget build(BuildContext context) {
    MoreController controller = Get.put(MoreController());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: const Text(
          "More",
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.grey[900],
                border: Border(
                  top: BorderSide(width: 1.0, color: Colors.grey.shade800),
                  bottom: BorderSide(width: 1.0, color: Colors.grey.shade800),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
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
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Row(
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
                              width: 5.0,
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
                    const Spacer(),
                    InkWell(
                      onTap: () {
                        Get.to(() => const MoreBuyCoins());
                      },
                      child: Container(
                        width: 90,
                        height: 40,
                        decoration: BoxDecoration(
                          color: secondaryColor,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: const Center(
                          child: Text("Buy Coins"),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              children: [
                SizedBox(
                  height: 100,
                  width: MediaQuery.of(context).size.width / 3,
                  child: const MoreButtons(
                    moreIcon: Icons.search,
                    moreTitle: "Search",
                  ),
                ),
                SizedBox(
                  height: 100,
                  width: MediaQuery.of(context).size.width / 3,
                  child: const MoreButtons(
                    moreIcon: Icons.settings,
                    moreTitle: "Settings",
                  ),
                ),
                SizedBox(
                  height: 100,
                  width: MediaQuery.of(context).size.width / 3,
                  child: const MoreButtons(
                    moreIcon: Icons.translate,
                    moreTitle: "Fan Translation",
                  ),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.all(defaultPadding),
              child: Row(
                children: [
                  const Text(
                    "Notice",
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  const Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 12,
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Expanded(
                    child: Text(
                      "[Notice] Lorem ipsum color si amet si ipsum lorem",
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.grey[800],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(15.0),
                      width: MediaQuery.of(context).size.width,
                      height: 70,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: secondaryColor,
                        ),
                        onPressed: () {},
                        child: const Text(
                          "SIGN IN",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 15,
                      left: MediaQuery.of(context).size.width - 100,
                      child: SizedBox(
                        width: 60,
                        height: 60,
                        child: Image.network(
                          "https://i.ibb.co/Pr2xbL2/pngtree-park-jihoon-illustration-in-korean-series-webtoon-boy-cute-png-image-6487021.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
                const Text(
                  "Join WEBTOON for more stories!",
                  style: TextStyle(
                    color: secondaryColor,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void updateCoins() {
    setState(() {});
  }
}
