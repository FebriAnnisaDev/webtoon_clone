import 'package:clone_webtoon/module/for_you/view/for_you_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../shared/widget/search_view.dart';

class ForYouSearchView extends StatelessWidget {
  const ForYouSearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 6.0,
                        horizontal: 12.0,
                      ),
                      color: Colors.grey[800],
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.6,
                        height: 30,
                        child: Center(
                          child: TextFormField(
                            initialValue: null,
                            decoration: InputDecoration.collapsed(
                              filled: true,
                              fillColor: Colors.transparent,
                              hintText: "Search Title or Creator",
                              hintStyle: TextStyle(
                                color: Colors.grey[500],
                                fontSize: 16,
                              ),
                              hoverColor: Colors.transparent,
                            ),
                            onFieldSubmitted: (value) {},
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Get.off(() => ForYouView());
                      },
                      child: Text(
                        "CANCEL",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey.shade500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: SearchView()),
            ],
          ),
        ),
      ),
    );
  }
}
