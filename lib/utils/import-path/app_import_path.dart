import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:easy_localization/easy_localization.dart';

// import give alias name
import 'dart:developer' as dev;

import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
// part pages
part '../../view/splash/body.dart';
part '../../view/home/body.dart';

// part Widgets
part '../../widgets/appbar_home.dart';
part '../../widgets/drawer/drawer_home.dart';
part '../../widgets/tab_appbar_home.dart';
part '../../widgets/images/widget_images.dart';
part '../../widgets/drawer/header/drawer_header.dart';
part '../../widgets/images/widget_image_profile.dart';
part '../../widgets/drawer/settings/drawer_setting.dart';
part '../../widgets/drawer/settings/drawer_setting_design.dart';
part '../../widgets/drawer/settings/drawer_setting_theme.dart';
part '../../widgets/drawer/settings/drawer_setting_lang.dart';

// part controller
part '../../controllers/c_theme.dart';

// part start app
part '../../start-app/start_app.dart';
part '../../start-app/material_app.dart';
part '../../start-app/providers_list.dart';

// part utils
part '../constant/app_media.dart';
part '../dime/app_dime.dart';
part '../theme/app_theme_choice.dart';
part '../theme/app_colors.dart';
part '../theme/app_theme.dart';
part '../language/app_lang.dart';
part '../language/app_lang_key.dart';

// part components
part '../../view/home/components/social/social_card.dart';
part '../../view/home/components/social/social_gridview.dart';
part '../../view/home/components/social/social_tab.dart';
