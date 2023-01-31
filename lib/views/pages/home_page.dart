import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:food_ninja/utils/theme.dart';
import 'package:food_ninja/views/widgets/base_page_constraint.dart';
import 'package:food_ninja/views/widgets/custom_icon_button.dart';

class HomePage extends StatelessWidget {
  static const routeName = '/home-page';
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BasePageConstraint(
      content: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 30,
                left: 30,
                right: 30,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Find Your\nFavorite Food',
                    style: vigaTextFont.copyWith(
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 3,
                            blurRadius: 7,
                            offset: const Offset(0, 1),
                          ),
                        ],
                      ),
                      child: Center(
                        child: Badge(
                          position: BadgePosition.topEnd(top: -12, end: -2),
                          badgeContent: Text(
                            '',
                            style: vigaTextFont.copyWith(color: Colors.white),
                          ),
                          child: const Icon(
                            Icons.notifications,
                            color: Color(0xFF3BD883),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 0.3,
                            blurRadius: 7,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: TextFormField(
                        style: vigaTextFont.copyWith(
                          color: const Color(0xFFEEB287),
                          fontWeight: FontWeight.w100,
                        ),
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 18,
                            vertical: 13,
                          ),
                          prefixIcon: const Icon(
                            Icons.search,
                            color: brownColor,
                          ),
                          fillColor: lightBrown,
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: lightBrown,
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            borderSide: const BorderSide(
                              color: lightBrown,
                            ),
                          ),
                          hintText: 'What do you want to order?',
                          hintStyle: vigaTextFont.copyWith(
                            color: const Color(0xFFEEB287),
                            fontWeight: FontWeight.w100,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  CustomIconButton(
                    onPressed: () {},
                    spreadRadius: 0,
                    backgroundColor: lightBrown,
                    iconColor: brownColor,
                    icon: Icons.filter_alt_outlined,
                    width: 50,
                    height: 50,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Card(
                elevation: 0,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    gradient: const LinearGradient(
                      colors: [Color(0xFF53E88B), Color(0xFF15BE77)],
                    ),
                  ),
                  height: 150,
                  child: Stack(
                    children: [
                      Image.asset(
                        'assets/background_card.png',
                        fit: BoxFit.fill,
                      ),
                      Positioned(
                        right: 35,
                        top: 30,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Special Deal for\nOctober',
                              style: vigaTextFont.copyWith(
                                fontSize: 17,
                                fontWeight: FontWeight.w300,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(height: 15),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                width: 80,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                child: Center(
                                  child: Text(
                                    'Buy Now',
                                    style: vigaTextFont.copyWith(
                                      color: const Color(0xFF6DE89F),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 25),
            
          ],
        ),
      ),
    );
  }
}
