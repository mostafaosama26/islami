import 'package:flutter/cupertino.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

extension ConttextExtensions on BuildContext{
  AppLocalizations get locale {
    return AppLocalizations.of(this)!;
  }
}
