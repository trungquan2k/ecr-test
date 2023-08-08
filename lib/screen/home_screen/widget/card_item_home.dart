import 'package:erc_test/core/app_style.dart';
import 'package:erc_test/core/screen_edit.dart';
import 'package:erc_test/models/item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ItemCardWidget extends StatelessWidget {
  final ItemCard model;

  const ItemCardWidget({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: SizedBox(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
            child: Row(
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: SvgPicture.asset(
                      model.avatar,
                      height: Screen.resizeFitDevice(context, 80.0),
                      width: Screen.resizeFitDevice(context, 80.0),
                      allowDrawingOutsideViewBox: true,
                    )),
                Expanded(
                    child: Text(
                  model.name,
                  style: headLine6,
                ))
              ],
            ),
          ),
          SizedBox(
            height: 150,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                model.image,
                width: Screen.getWidth(
                    context), // Adjust the width of each image as needed
                fit: BoxFit.cover,
              ),
            ),
          ),

          // title
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(model.title, style: headLine2,),
              SizedBox(height: 10,),
              Text(model.content, style: headLine6,)
            ],
          ),
          Divider(height: 2,color: AppColor.ercPrimary),
          const SizedBox(height: 15,),

          // Description
          SizedBox(child: Row(children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(model.address),
                Text("${model.time}"),
                Text("${model.createdAt}")
              ],
            ),
            const SizedBox(width: 50,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(model.discount),
                Text(model.address),
                Text(model.price, style: headLine3,)
              ],
            ),
          ],),),
          const SizedBox(width: 15,),
          // button
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColor.ercPrimary, // Background color
                    borderRadius: BorderRadius.circular(8.0), // Border radius
                  ),
                  child: TextButton.icon(
                    onPressed: () {
                     
                    },
                    icon: const Icon(Icons.shopping_cart, color: Colors.white), // Icon to be displayed on the left
                    label:const Text('Đặt vé ngay', style: TextStyle(color: Colors.white)), // Text to be displayed on the right
                  ),
                ),
              ),
              const SizedBox(width: 50,),
              Container(
                  decoration: BoxDecoration(
                    color: AppColor.ercPrimary, // Background color
                    borderRadius: BorderRadius.circular(8.0), // Border radius
                  ),
                  child: TextButton.icon(
                    onPressed: () {
                     
                    },
                    icon: const Icon(Icons.heat_pump_sharp, color: Colors.white), // Icon to be displayed on the left
                    label:const Text('Thích', style: TextStyle(color: Colors.white)), // Text to be displayed on the right
                  ),
                ),
            ],
          )
        ]),
      ),
    );
  }
}
