import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:metqr/providers/auth_provider.dart';
import 'package:metqr/screens/Lecturer/qr_generator/qr_generator_screen.dart';
import 'package:metqr/shared/component/buttons.dart';
import 'package:metqr/shared/component/constants/constants.dart';
import 'package:provider/provider.dart';

import '../../../widgets/desktop/header_widget.dart';

class LecturerNewHomePage extends StatelessWidget {
  const LecturerNewHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: surfaceColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const HeaderWidget(),
            MorningHeaderWidget(
              width: width,
              height: height,
              textTheme: textTheme,
            ),
            BodyContentsWidget(
              width: width,
              height: height,
              textTheme: textTheme,
            ),
          ],
        ),
      ),
    );
  }
}

class BodyContentsWidget extends StatelessWidget {
  const BodyContentsWidget({
    super.key,
    required this.width,
    required this.height,
    required this.textTheme,
  });

  final double width;
  final double height;
  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 36, top: 18, right: 36),
      child: Container(
        width: width * 1,
        height: height * .8,
        decoration: BoxDecoration(
          color: surfaceColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 5,
                    child: Container(
                      padding: const EdgeInsets.all(basePadding),
                      width: width * .7,
                      height: height * .6,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Upcoming schedule',
                              style: textTheme.titleLarge!.copyWith(
                                fontFamily: 'ping',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            const SizedBox(height: 32),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: const [
                                Center(
                                  child: SizedBox(
                                    width: 400,
                                    height: 400,
                                    child: Center(
                                      child: QRGeneratorScreen(),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  Expanded(
                    child: Container(
                      width: width * .7,
                      height: height * .3,
                      decoration: BoxDecoration(
                        color: surfaceColor,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.all(basePadding),
                              width: width * .3,
                              height: height,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Top Attendance students',
                                    style: textTheme.titleLarge!.copyWith(
                                      fontFamily: 'ping',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.all(basePadding),
                              width: width * .3,
                              height: height,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Today schedule',
                                    style: textTheme.titleLarge!.copyWith(
                                      fontFamily: 'ping',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 12),
            Container(
              padding: const EdgeInsets.all(basePadding),
              width: width * .25,
              height: height,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Text(
                            'Reports',
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: textTheme.titleLarge!.copyWith(
                              fontFamily: 'ping',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'View all',
                                style: textTheme.labelMedium!.copyWith(
                                  fontFamily: 'ping',
                                  color: defaultColor,
                                ),
                              ),
                              const Icon(
                                Icons.arrow_right_alt,
                                color: defaultColor,
                                size: 26,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'Attendance rate in (AI) lecture',
                      style: textTheme.labelMedium!.copyWith(
                        fontFamily: 'ping',
                        color: Colors.grey.shade600,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      child: Container(
                        padding: const EdgeInsets.all(basePadding),
                        height: height * .3,
                        width: width * .25,
                        decoration: BoxDecoration(
                          color: chipTwoColor,
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                    Text(
                      'Students Activity',
                      style: textTheme.titleLarge!.copyWith(
                        fontFamily: 'ping',
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      'Total number of students: 280',
                      style: textTheme.labelMedium!.copyWith(
                        fontFamily: 'ping',
                        color: Colors.grey.shade400,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            color: chipOneColor,
                            height: height * .06,
                          ),
                        ),
                        Expanded(
                          child: Container(
                            color: chipTwoColor,
                            height: height * .06,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Container(
                      padding: const EdgeInsets.all(basePadding),
                      width: width * .25,
                      height: height * .2,
                      decoration: BoxDecoration(
                        color: chipOneColor,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                'Print Reports',
                                style: textTheme.titleLarge!.copyWith(
                                  fontFamily: 'ping',
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: width * .24,
                            height: height * .06,
                            child: TextButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                              ),
                              onPressed: () {},
                              child: Row(
                                children: [
                                  const Icon(Icons.print),
                                  Text(
                                    'Print',
                                    style: textTheme.labelLarge,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MorningHeaderWidget extends StatelessWidget {
  const MorningHeaderWidget({
    super.key,
    required this.width,
    required this.height,
    required this.textTheme,
  });

  final double width;
  final double height;
  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    final auth = Provider.of<AuthProvider>(context);
    return Padding(
      padding: const EdgeInsets.only(top: 36, left: 36, right: 36),
      child: Container(
        padding: const EdgeInsets.all(basePadding),
        width: width * 1,
        height: height * .3,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 2,
                    child: Text(
                      'Good morning Dr, ${auth.lecturerModel?.fullName}',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: textTheme.headlineLarge!.copyWith(
                        color: Colors.black87,
                        fontWeight: FontWeight.w900,
                        fontFamily: 'ping',
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Text(
                      'Start new session to take student attendance now!',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: textTheme.labelLarge!.copyWith(
                        color: Colors.grey.shade600,
                        fontWeight: FontWeight.w200,
                        fontFamily: 'ping',
                      ),
                    ),
                  ),
                  const Spacer(),
                  Expanded(
                    flex: 2,
                    child: DefaultButtonLecturer(
                      width: width * .3,
                      height: 60,
                      text: 'Start session',
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
            SvgPicture.asset(
              'assets/images/docs.svg',
              width: 255,
              height: 255,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}
