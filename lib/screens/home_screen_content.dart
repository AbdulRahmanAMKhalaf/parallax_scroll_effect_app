import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:parallax_scroll_effect_app/models/home_model.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HomeScreenContent extends StatefulWidget {
  const HomeScreenContent({super.key});

  @override
  State<HomeScreenContent> createState() => _HomeScreenContentState();
}

class _HomeScreenContentState extends State<HomeScreenContent> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: Text('Scroll Horizantally',
            style: TextStyle(
                color: Colors.black.withOpacity(0.6)
            ),
          ),
        ),
        SizedBox(height: 5.h,),
        CarouselSlider(
            items: List.generate(
                homeList.length,
                (index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white70,
                        borderRadius: BorderRadius.circular(20.px),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 32.h,
                            width: double.infinity,
                            decoration:  BoxDecoration(
                              color: Colors.black87,
                              borderRadius: BorderRadius.vertical(top: Radius.circular(20.px)),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                  image:AssetImage(homeList[index].image)
                              ),
                            ),
                          ).animate().rotate(duration: 1000.ms,begin: 0,end: 1,curve: Curves.easeInOut).fadeIn(duration: 200.ms,curve: Curves.easeInOut),
                          SizedBox(height: 1.h,),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(homeList[index].text,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 22.px,
                                    fontWeight: FontWeight.w600
                                  ),
                                  ),
                                  SizedBox(height: 1.h,),
                                  Text('4 20-30',
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        color: Colors.grey.shade400,
                                        fontSize: 15.px,
                                        fontWeight: FontWeight.w600
                                    ),
                                  ),
                                  const Spacer(),
                                  Row(
                                    children: [
                                      ElevatedButton(
                                          onPressed:() => (){},
                                        style: ButtonStyle(
                                          backgroundColor: WidgetStatePropertyAll(Colors.black87.withOpacity(0.8)),
                                          minimumSize: const WidgetStatePropertyAll(Size(30, 50)),
                                        ),
                                          child:Text('Reserve',
                                          style: TextStyle(
                                            fontSize: 20.px,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.white70,
                                          ),
                                          ),
                                      ),
                                      const Spacer(),
                                      Text('0.00\$',
                                      style: TextStyle(
                                        color: Colors.black87,
                                        fontSize: 25.px,
                                        fontWeight: FontWeight.w700
                                      ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ).animate().fadeIn(),
                    ),
                  );
                },),
            options:CarouselOptions(
              height: 55.h,
              viewportFraction: 1,
              initialPage: 0,
              clipBehavior: Clip.none,
            )
        ),
      ],
    );
  }
}
