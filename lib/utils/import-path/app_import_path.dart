import 'dart:async';
import 'dart:io';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:readmore/readmore.dart';
import 'package:sqflite/sqflite.dart';
// import give alias name
import 'dart:developer' as dev;
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
import 'package:validators/validators.dart' as validators;
import 'package:path_provider/path_provider.dart' as dir;
import 'package:path/path.dart' as path;

// part views
part '../../view/splash/body.dart';
part '../../view/home/body.dart';
part '../../view/webview/body.dart';
part '../../view/auth/login.dart';
part '../../view/auth/forget.dart';
part '../../view/auth/register.dart';
part '../../view/auth/wrapper.dart';
part '../../view/details/body.dart';
part '../../view/my-app/body.dart';

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
part '../../widgets/error/error_text.dart';
part '../../view/auth/widgets/auth_appbar.dart';
part '../../view/auth/widgets/auth_button.dart';
part '../../view/auth/widgets/auth_logo.dart';
part '../../view/auth/widgets/auth_footer.dart';
part '../../view/auth/widgets/auth_forget.dart';
part '../../view/auth/widgets/auth_text_form_field.dart';
part '../../view/auth/widgets/auth_email.dart';
part '../../view/auth/widgets/auth_pass.dart';
part '../../widgets/alert/alert_logout.dart';
part '../../widgets/alert/alert_delete.dart';
// part controller
part '../../controllers/c_theme.dart';
part '../../controllers/c_language.dart';
part '../../controllers/c_api.dart';
part '../../controllers/c_auth.dart';
part '../../controllers/c_db.dart';

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
part '../restart/app_restart.dart';
part '../validator/app_validator.dart';
part '../routes/app_routes.dart';
part '../firebase/connection_firebase.dart';

/// part Api
part '../../api/api_key.dart';
part '../../api/api_handle.dart';
part '../../api/api.dart';

/// part Model
part '../../model/social/m_app_social.dart';
part '../../model/social/m_main_social.dart';
part '../../model/premium/m_app_premium.dart';
part '../../model/premium/m_premium.dart';
part '../../model/premium/m_main_premium.dart';
part '../../model/auth/m_user_auth.dart';

// part components
part '../../view/home/components/social/social_card.dart';
part '../../view/home/components/social/social_gridview.dart';
part '../../view/home/components/social/social_tab.dart';
part '../../view/home/components/premium/premium_tab.dart';
part '../../view/home/components/premium/premium_card.dart';
part '../../view/home/components/premium/premium_card_category.dart';
part '../../view/details/components/d_appbar.dart';
part '../../view/details/components/d_card_info.dart';
part '../../view/details/components/d_header.dart';
part '../../view/details/components/d_description.dart';
part '../../view/my-app/components/card_myapp.dart';

/// DataBase
part '../database/table/t_app.dart';
part '../database/model/m_db_app.dart';
part '../database/init-db/init_db.dart';
part '../database/build/b_query_app.dart';
