import 'package:flutter/material.dart';

import '../shared/component/constants/constants.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      backgroundColor: whiteColor,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(basePadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(25),
                child: InkWell(
                    focusColor: Colors.white,
                    hoverColor: Colors.white,
                    onTap: () {},
                    child: Row(
                      children: const [
                        Icon(
                          Icons.settings_overscan_sharp,
                          color: Colors.grey,
                          size: 25,
                        ),
                        SizedBox(width: 7),
                        Text('Sessions',
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w900,
                                color: Colors.grey))
                      ],
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(25),
                child: InkWell(
                    focusColor: Colors.white,
                    hoverColor: Colors.white,
                    onTap: () {},
                    child: Row(
                      children: const [
                        Icon(
                          Icons.insert_page_break_rounded,
                          color: Colors.grey,
                          size: 25,
                        ),
                        SizedBox(width: 7),
                        Text(
                          'Reports',
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w900,
                              color: Colors.grey),
                        ),
                      ],
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(25),
                child: InkWell(
                    focusColor: Colors.white,
                    hoverColor: Colors.white,
                    onTap: () {},
                    child: Row(
                      children: const [
                        Icon(
                          Icons.person_outline_sharp,
                          color: Colors.grey,
                          size: 25,
                        ),
                        SizedBox(width: 7),
                        Text(
                          'Students',
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w900,
                              color: Colors.grey),
                        ),
                      ],
                    )),
              ),
              const SizedBox(height: 200),
              Padding(
                padding: const EdgeInsets.all(25),
                child: InkWell(
                    focusColor: Colors.white,
                    hoverColor: Colors.white,
                    onTap: () {},
                    child: Row(
                      children: const [
                        Icon(
                          Icons.settings,
                          color: Colors.grey,
                          size: 25,
                        ),
                        SizedBox(width: 7),
                        Text(
                          'Settings',
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w900,
                              color: Colors.grey),
                        ),
                      ],
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
