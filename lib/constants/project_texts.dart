import 'package:flutter/material.dart';
import 'package:health_ux_kit/constants/project_colors.dart';
import 'package:health_ux_kit/constants/project_strings.dart';

class ProjectTexts {
  Text physician = Text(
    'Physician',
    style: TextStyle(
      fontFamily: ProjectStrings().helvetica,
      fontWeight: FontWeight.w600,
      fontSize: 14,
      color: ProjectColors().shadowGrey,
    ),
  );

  Text nameText = Text(
    'Svyatoslav Taushev',
    style: TextStyle(
      fontFamily: ProjectStrings().helvetica,
      fontWeight: FontWeight.w600,
      fontSize: 16,
      color: ProjectColors().darkBlue,
    ),
  );

  Text bookButtonText = Text(
    'BOOK',
    style: TextStyle(fontSize: 10, color: ProjectColors().deepPurple),
  );

  Text teacher = Text(
    'Teachers',
    style: TextStyle(
      color: ProjectColors().shadowGrey,
      fontSize: 14,
      fontFamily: ProjectStrings().helvetica,
      fontWeight: FontWeight.w600,
    ),
  );

  Text teacherTitle = Text(
    'New Project Work',
    style: TextStyle(
      color: ProjectColors().darkBlue,
      fontSize: 18,
      fontFamily: ProjectStrings().helvetica,
      fontWeight: FontWeight.w600,
    ),
  );

  Text teacherSubtitle = Text(
    'Have an appointment today',
    style: TextStyle(
      color: ProjectColors().shadowGrey,
      fontSize: 14,
      fontFamily: ProjectStrings().helvetica,
      fontWeight: FontWeight.w600,
    ),
  );

  Text viewTextButton = Text(
    'VİEW',
    style: TextStyle(
      color: ProjectColors().bottomWhite,
      fontSize: 10,
      fontFamily: ProjectStrings().helvetica,
      fontWeight: FontWeight.w600,
    ),
  );

  Text doctors = Text(
    'Doctors',
    style: TextStyle(
      color: ProjectColors().shadowGrey,
      fontSize: 14,
      fontFamily: ProjectStrings().helvetica,
      fontWeight: FontWeight.w600,
    ),
  );

  Text doctorsTitle = Text(
    'Brain Checkout',
    style: TextStyle(
      color: ProjectColors().darkBlue,
      fontSize: 18,
      fontFamily: ProjectStrings().helvetica,
      fontWeight: FontWeight.w600,
    ),
  );

  Text doctorsSubtitle = Text(
    'Have an appointment today',
    style: TextStyle(
      color: ProjectColors().shadowGrey,
      fontSize: 14,
      fontFamily: ProjectStrings().helvetica,
      fontWeight: FontWeight.w600,
    ),
  );

  Text login = Text(
    'Login',
    style: TextStyle(
        fontFamily: ProjectStrings().helvetica,
        fontSize: 28,
        fontWeight: FontWeight.w700),
  );
}
