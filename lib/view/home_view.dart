import 'package:flutter/material.dart';
import 'package:health_ux_kit/constants/project_colors.dart';
import 'package:health_ux_kit/constants/project_strings.dart';
import 'package:health_ux_kit/constants/project_texts.dart';

class HomeView extends StatelessWidget
    with ProjectColors, ProjectTexts, ProjectStrings {
  HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: floatingGreen,
        child: const Icon(Icons.add),
        onPressed: () {},
      ),
      bottomNavigationBar: BottomAppBar(
        color: bottomWhite,
        clipBehavior: Clip.hardEdge,
        notchMargin: 5,
        shape: const CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: const Icon(Icons.home),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.favorite_outline_sharp),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.join_full),
              onPressed: () {},
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.42,
            decoration: BoxDecoration(
              color: haki,
              borderRadius: const BorderRadius.horizontal(
                left: Radius.circular(50),
                right: Radius.circular(50),
              ),
            ),
            child: Stack(
              children: [
                const Positioned(
                    top: 60, left: 30, child: Icon(Icons.stacked_bar_chart)),
                _circleAvatar(),
                _circleAvatarChild(),
                _goodEveningAlexisText(),
                _middleText(),
                _moreDetailsButton(),
                _viewYourProfileButton(),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                _whatAreYouDoingTodayText(),
                _verticalListView(),
                _horizontalListView(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _horizontalListItem() {
    return SizedBox(
      child: Stack(
        alignment: AlignmentDirectional.centerStart,
        children: [
          Padding(
            padding: horizontalListPadding,
            child: Stack(
              children: [
                Positioned(
                  child: Container(
                    height: 80,
                    width: 300,
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                          color: bottomWhite,
                          blurRadius: 20,
                          spreadRadius: 2,
                          blurStyle: BlurStyle.outer),
                    ], color: bottomWhite, borderRadius: radius14),
                    child: Center(
                      child: ListTile(
                        title: Padding(
                          padding: left35,
                          child: physician,
                        ),
                        subtitle: Padding(padding: left35, child: nameText),
                        trailing: Container(
                          padding: lineInset1,
                          width: 50,
                          height: 25,
                          child: Center(child: bookButtonText),
                          decoration: BoxDecoration(boxShadow: [
                            BoxShadow(
                              color: deepPurple,
                              blurRadius: 1,
                              spreadRadius: 1,
                            )
                          ], color: bottomWhite, borderRadius: radius20),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 63,
            left: 20,
            child: Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(color: red, borderRadius: radius14),
            ),
          ),
        ],
      ),
    );
  }

  Expanded _horizontalListView() {
    return Expanded(
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          _horizontalListItem(),
          _horizontalListItem(),
          _horizontalListItem(),
        ],
      ),
    );
  }

  Expanded _verticalListView() {
    return Expanded(
      child: ListView(
        children: [
          Padding(
            padding: verticalListViewPadding,
            child: ListTile(
              leading: Icon(
                Icons.book,
                color: darkBlue,
                size: 50,
              ),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [teacher, teacherTitle, teacherSubtitle],
              ),
              trailing: Container(
                height: 25,
                width: 50,
                child: Center(child: viewTextButton),
                decoration: BoxDecoration(color: deepOrange, borderRadius: radius20),
              ),
            ),
          ),
          Divider(
            indent: 20,
            endIndent: 20,
            color: shadowGrey,
          ),
          Padding(
            padding: listTileInset,
            child: ListTile(
              leading: Icon(
                Icons.science_outlined,
                color: darkBlue,
                size: 50,
              ),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [doctors, doctorsTitle, doctorsSubtitle],
              ),
              trailing: Container(
                height: 25,
                width: 50,
                child: Center(
                  child: viewTextButton,
                ),
                decoration: BoxDecoration(color: deepOrange, borderRadius: radius20),
              ),
            ),
          ),
          Divider(
            indent: 20,
            endIndent: 20,
            color: shadowGrey,
          )
        ],
      ),
    );
  }

  Padding _whatAreYouDoingTodayText() {
    return Padding(
      padding: todayText,
      child: Text(
        todaysJob,
        textAlign: TextAlign.start,
        style: TextStyle(
          color: darkBlue,
          fontSize: 16,
          fontFamily: helvetica,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  Positioned _viewYourProfileButton() {
    return Positioned(
      top: 280,
      right: 60,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            fixedSize: const Size.fromHeight(10.0),
            shape: const StadiumBorder(),
            primary: pastelGreen),
        child: Text(
          viewProfile,
          style: TextStyle(
            fontSize: 10,
            fontFamily: helvetica,
            fontWeight: FontWeight.w600,
          ),
        ),
        onPressed: () {},
      ),
    );
  }

  Positioned _moreDetailsButton() {
    return Positioned(
      top: 280,
      left: 40,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          fixedSize: const Size.fromHeight(10.0),
          shape: const StadiumBorder(),
          primary: darkBlue,
        ),
        child: Text(
          moreDetails,
          style: TextStyle(
            fontSize: 10,
            fontFamily: helvetica,
            fontWeight: FontWeight.w600,
          ),
        ),
        onPressed: () {},
      ),
    );
  }

  Positioned _middleText() {
    return Positioned(
      top: 220,
      left: 40,
      child: SizedBox(
        width: 300,
        child: Text(
          dailyTarget,
          style: TextStyle(
            fontFamily: helvetica,
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: pastelGreen,
          ),
        ),
      ),
    );
  }

  Positioned _goodEveningAlexisText() {
    return Positioned(
      top: 140,
      left: 40,
      child: SizedBox(
        width: 250,
        child: Text(
          alexis,
          style: TextStyle(
              fontFamily: helvetica,
              fontSize: 32,
              fontWeight: FontWeight.w600,
              color: darkBlue),
        ),
      ),
    );
  }

  Positioned _circleAvatarChild() {
    return Positioned(
      top: 108,
      right: 30,
      child: Container(
        height: 24,
        width: 24,
        decoration: BoxDecoration(color: bottomWhite, borderRadius: radius60),
        child: Padding(
          padding: inset3,
          child: Container(
            width: 16,
            height: 16,
            decoration: BoxDecoration(
              color: floatingGreen,
              borderRadius: radius60,
            ),
          ),
        ),
      ),
    );
  }

  Positioned _circleAvatar() {
    return Positioned(
      top: 60,
      right: 30,
      child: Container(
        height: 70,
        width: 70,
        child: Padding(
          padding: inset4,
          child: const CircleAvatar(),
        ),
        decoration: BoxDecoration(color: bottomWhite, borderRadius: radius60),
      ),
    );
  }
}
