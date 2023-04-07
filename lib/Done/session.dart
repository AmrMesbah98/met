import 'package:flutter/material.dart';

import '../Widget_Done/Header.dart';
import '../Widget_Done/sidebar.dart';
import '../shared/component/constants/constants.dart';



class Session extends StatelessWidget {
  const Session({Key? key}) : super(key: key);

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
                              padding: const EdgeInsets.all(40),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'All Session',
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.w900),
                                  ),
                                  Text(
                                    'Here you can show all created sessions and Manage it.',
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.grey),
                                  ),
                                ],
                              ),
                            ),
                            const Spacer(),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.grey[300],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(4),
                                child: Row(
                                  children: [
                                    Text(
                                      'Create',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.pages)),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width: 10),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.grey[300],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(4),
                                child: Row(
                                  children: [
                                    const Text(
                                      'Edit',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    IconButton(
                                        onPressed: () {},
                                        icon: const Icon(Icons.edit)),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width: 20),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            buttonCenter('Computer Science'),
                            const SizedBox(width: 60),
                            buttonCenter('information System'),
                          ],
                        ),
                        const SizedBox(height: 35),
                        const Divider(indent: 130,endIndent: 130),
                        const SizedBox(height: 0),
                        Expanded(child: buildContainer('Computer Vision (CV)')),
                        Expanded(child: buildContainer('DataBase')),
                        SizedBox(
                          width: 400,
                          child: ElevatedButton(
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                                  padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 70, vertical: 20)),
                                  backgroundColor: MaterialStateProperty.all(Colors.black)),
                              onPressed: (){}, child: Text('Create New Session',style: TextStyle(color: Colors.white, fontSize: 25),)),
                        ),
                        const SizedBox(height: 20),

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
          shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
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
      padding: const EdgeInsets.symmetric(
          horizontal: 40, vertical: 20),
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
                    width: 130,
                    height: 130,
                    color: Colors.grey,
                  ),
                )
              ],
            ),
            Padding(
              padding:
              const EdgeInsets.symmetric(vertical: 25),
              child: Column(
                crossAxisAlignment:
                CrossAxisAlignment.start,
                children: [
                  Text(
                    nameSubject,
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
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
                      InkWell( onTap: (){} ,child: const Text('Remove',style: TextStyle(fontWeight: FontWeight.bold),),),
                      const SizedBox(width: 10),
                      InkWell(onTap: (){} ,child: const Text('Details',style: TextStyle(fontWeight: FontWeight.bold),),),
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
