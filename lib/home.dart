import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          header(),
          categories(),
        ],
      ),
    );
  }

  Widget categories() {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(
            top: 16,
            left: 16
          ),
          child: Text(
            'Categories',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 18
            ),
          ),
        ),
        ListView.separated(
          
          )
      ],
    );
  }

  Container header() {
    return Container(
      color: const Color(0xff51A8FF),
      width: double.infinity,
      height: 350,
      padding: const EdgeInsets.all(16),
      child:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Hi Abhishek",
                style: TextStyle(
                  fontSize: 18,
                  color: Color(0xffFFFFFF)
                ),
              ),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(10)
                ),
                child: SvgPicture.asset(
                  'assets/vectors/notification.svg',
                  fit: BoxFit.none,
                ),
              )
            ],
          ),
          const SizedBox(height: 30,),
          const Text(
            "Let's find \nyour top doctor!",
            style: TextStyle(
              fontSize: 28,
              color: Colors.white,
              fontWeight: FontWeight.w600
            ),
          ),
          const SizedBox(height: 30,),
          const TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              prefixIcon: Icon(
                Icons.search,
                color: Colors.black,
                size: 25,
              ),
              hintText: 'Search Here...',
              hintStyle: TextStyle(
                fontWeight: FontWeight.w300
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.all(Radius.circular(50))
              )
            ),
          )
        ],
      ),
    );
  }
}