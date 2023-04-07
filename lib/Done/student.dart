import 'package:flutter/material.dart';

import '../Widget_Done/Header.dart';
import '../Widget_Done/formField.dart';
import '../Widget_Done/sidebar.dart';
import '../shared/component/constants/constants.dart';


class Student extends StatelessWidget {
  const Student({Key? key}) : super(key: key);

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
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(20),
                                child: Text(
                                  'Students ',
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.w900),
                                ),
                              ),
                              Spacer(),
                              Expanded(
                                child: SizedBox(
                                  height: 40,
                                  width: 10,
                                  child: const DefaultFormField(
                                    fillColor: surfaceColor,
                                    prefixIcon: Icons.search,
                                    hintText: 'Search Student ....',
                                  ),
                                ),
                              ),
                              SizedBox(width: 10),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: InkWell(
                                  onTap: () {},
                                  child: Row(
                                    children: const [
                                      Icon(Icons.add_comment_rounded),
                                      SizedBox(width: 10),
                                      Text(
                                        'Manual register',
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(width: 10),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 30),
                                child: InkWell(
                                  onTap: () {},
                                  child: Row(
                                    children: [
                                      Icon(Icons.track_changes),
                                      SizedBox(width: 10),
                                      Text(
                                        'filter',
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Expanded(
                              child: buildContainer(
                                  'Student Name', 200128978, 'Mansoura', 10)),
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

  Widget buildContainer(
      String nameSubject, int ID, String from, int attendance) {
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
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(25),
                  child: Container(
                    width: 300,
                    height: 300,
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
                  Container(
                      color: Colors.white,
                      child: Text(
                        'Student',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      )),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: Text(
                      nameSubject,
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'id ${ID}',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'from: ${from}',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Attendance ${attendance}',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            //const SizedBox(height: 150),
            SizedBox(
              width: 400,
              child: ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                      padding: MaterialStateProperty.all(
                          EdgeInsets.symmetric(horizontal: 70, vertical: 20)),
                      backgroundColor: MaterialStateProperty.all(Colors.black)),
                  onPressed: () {},
                  child: Text(
                    'Manual attendance',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
