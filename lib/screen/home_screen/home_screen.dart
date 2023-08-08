import 'package:erc_test/core/app_assets.dart';
import 'package:erc_test/core/app_string.dart';
import 'package:erc_test/core/app_style.dart';
import 'package:erc_test/core/screen_edit.dart';
import 'package:erc_test/screen/filter_screen/filter_screen.dart';
import 'package:erc_test/screen/home_screen/data_fake.dart';
import 'package:erc_test/screen/home_screen/widget/card_item_home.dart';
import 'package:erc_test/utils/text_form.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> imageAssetPaths = [
    AppAsset.slide1,
    AppAsset.slide2,
    AppAsset.slide3,
    AppAsset.slide3,
  ];

  final List<String> filters = [
    'Geneor',
    'Rock & Roll',
    'Jazz ballads',
    'Folk',
    'Filter 3',
  ];

  Widget buildImageItem(String assetPath) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 2), // changes position of shadow
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Image.asset(
          assetPath,
          width: 150, // Adjust the width of each image as needed
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  PreferredSizeWidget get _appBar {
    return AppBar(
      leading: Container(),
      actions: [
        Padding(
          padding: const EdgeInsets.only(
              right: 16.0), // Adjust the padding as needed
          child: SvgPicture.asset(
            AppAsset.primaryActive,
            height: Screen.resizeFitDevice(context, 50.0),
            width: Screen.resizeFitDevice(context, 50.0),
            allowDrawingOutsideViewBox: true,
          ),
        )
      ],
      centerTitle: false,
      title: const Text(AppString.namePrimary),
    );
  }

  Widget _filterWidget() {
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Row(
          children: [
            Expanded(
              child: SizedBox(
                height: Screen.resizeFitDevice(context, 100.0),
                child: TextFieldInput(
                  value: AppString.filterString,
                  onChanged: (value) {
                    // Implement your search logic here
                  },
                  onSaved: (value) {},
                ),
              ),
            ),
            SizedBox(
              width: Screen.resizeFitDevice(context, 10.0),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    CupertinoPageRoute(
                      builder: (context) => const FilterScreen(),
                    ));
              },
              child: SvgPicture.asset(
                AppAsset.filterActive,
                height: Screen.resizeFitDevice(context, 50.0),
                width: Screen.resizeFitDevice(context, 50.0),
                allowDrawingOutsideViewBox: true,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _appBar,
        body: GestureDetector(
          onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _filterWidget(),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Sắp diễn ra",
                          style: headLine2,
                        ),
                        const SizedBox(width: 10),
                        GestureDetector(
                          child: const Text("See all"),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 200, // Adjust the height of the image list as needed
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: imageAssetPaths.length,
                            itemBuilder: (context, index) {
                              final assetPath = imageAssetPaths[index];
                              return buildImageItem(assetPath);
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 800,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                            child: ListView.separated(
                          separatorBuilder: (context, index) => const Padding(
                            padding: EdgeInsets.symmetric(vertical: 4),
                          ),
                          itemCount: itemCard.length,
                          itemBuilder: (context, index) {
                            return ItemCardWidget(model: itemCard[index]);
                          },
                        ))
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
