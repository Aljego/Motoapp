import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:expendable_fab/expendable_fab.dart';
import '../controlmenu/control_menu.dart';


class Inicio extends StatelessWidget {


  @override
  Widget build(context) {
    final controlmenu  c = Get.put(controlmenu());

    return Scaffold(
      // Use Obx(()=> to update Text() whenever count is changed.
        appBar: AppBar(),

        // Replace the 8 lines Navigator.push by a simple Get.to(). You don't need context
        body: Column (
            children: [
              Container(
                child: Column (
                  children: [
                    Text("Categoria 1"),
                    Container(
                      child: Row(
                        children: [
                          Image.asset("assets/images/img1.png"),
                          Image.asset("assets/images/img2.png"),
                          Image.asset("assets/images/img5.png"),
                          Image.asset("assets/images/img4.png"),
                        ],
                      ),
                    ),
          ],
        ),
        ),


              ]

            ),



      floatingActionButton: ExpendableFab (
        distance: 2.0,
        children: [
          ActionButton(
            //onPressed: () => toast(context, 'balance'),
            icon: const Icon(Icons.account_balance),
          ),
          ActionButton(
           // onPressed: () => toast(context, 'money'),
            icon: const Icon(Icons.money),
          ),
          ActionButton(
           // onPressed: () => toast(context, 'credit card'),
            icon: const Icon(Icons.credit_card),
          ),
          ActionButton(
           // onPressed: () => toast(context, 'file copy'),
            icon: const Icon(Icons.file_copy),
          ),
        ],
      ),




        bottomNavigationBar: Obx (()=>SalomonBottomBar(
          currentIndex: c.item.value.toInt(),
          onTap: (i) => c.cambiar(i),
          items: [
            /// Home
            SalomonBottomBarItem(
              icon: Icon(Icons.home),
              title: Text("Home"),
              selectedColor: Colors.purple,
            ),

            /// Likes
            SalomonBottomBarItem(
              icon: Icon(Icons.favorite_border),
              title: Text("Likes"),
              selectedColor: Colors.pink,
            ),

            /// Search
            SalomonBottomBarItem(
              icon: Icon(Icons.search),
              title: Text("Search"),
              selectedColor: Colors.orange,
            ),

            /// Profile
            SalomonBottomBarItem(
              icon: Icon(Icons.person),
              title: Text("Profile"),
              selectedColor: Colors.teal,
            ),
          ],
        )),

    );

  }
}