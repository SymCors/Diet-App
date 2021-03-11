import 'package:flutter/material.dart';

import 'colors.dart';

final kTitleStyle = TextStyle(
  color: AppColors.app_color,
  fontFamily: 'CM Sans Serif',
  fontSize: 26.0,
  height: 1.5,
);

final kSubtitleStyle = TextStyle(
  color: Colors.black,
  fontSize: 18.0,
  height: 1.2,
);

final kStoryStyle = TextStyle(
  color: Colors.black,
  fontSize: 14,
);

final kPostNameStyle = TextStyle(
  color: Colors.black,
  fontSize: 16,
);

final kPostTextStyle = TextStyle(
  color: Colors.grey[900],
  fontSize: 16,
);

final kPostButtonStyle = ButtonStyle(
  foregroundColor: MaterialStateColor.resolveWith((states) => Colors.black54)
);

final kSearchTitleStyle = TextStyle(
  color: Colors.black,
  fontSize: 18,
  fontWeight: FontWeight.w600
);

final kViewAllStyle = TextStyle(
  color: Colors.grey[600],
);

final kExerciseDetailsTitleStyle = TextStyle(
  color: AppColors.titleColors,
  fontSize: 17,
  fontWeight: FontWeight.w600,
);

final kExerciseDetailsSubtitleStyle = TextStyle(
  color: Colors.grey[600],
);