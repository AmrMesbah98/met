import 'package:flutter/material.dart';

import '../Widget_Done/Header.dart';
import '../Widget_Done/sidebar.dart';
import '../shared/component/constants/constants.dart';



class Report extends StatelessWidget {
  const Report({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeaderWidget(),
          Expanded(
            child: Row(
              children: [
                SideMenu(),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(60),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: whiteColor,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              buttonCenter('Computer Science'),
                              const SizedBox(width: 60),
                              buttonCenter('information System'),
                            ],
                          ),
                          const SizedBox(height: 20),
                          const Divider(indent: 130, endIndent: 130),
                          Expanded(
                              child: buildContainer('Computer Vision (CV)')),
                          Expanded(child: buildContainer('DataBase')),
                          Expanded(child: buildContainer('Operating System'))
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buttonCenter(String nameButton) {
    return ElevatedButton(
      style: ButtonStyle(
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
          padding: MaterialStateProperty.all(const EdgeInsets.symmetric(
            horizontal: 100,
            vertical: 25,
          )),
          backgroundColor: MaterialStateProperty.all(Colors.grey[300])),
      onPressed: () {},
      child: Text(
        nameButton,
        style: TextStyle(
            color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30),
      ),
    );
  }

  Widget buildContainer(String nameSubject) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      child: Container(
        width: double.infinity,
        height: 200,
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(25),
                  child: Container(
                    width: 120,
                    height: 120,
                    color: Colors.grey,
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    nameSubject,
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Date    12/72022',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Spacer(),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    children: [
                      Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey,
                          ),
                          padding: EdgeInsets.all(10),
                          child: InkWell(
                            onTap: () {},
                            child: const Text(
                              'Remove',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          )),
                      const SizedBox(width: 10),
                      Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          padding: EdgeInsets.all(10),
                          child: InkWell(
                            onTap: () {},
                            child: const Text(
                              'Details',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          )),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
