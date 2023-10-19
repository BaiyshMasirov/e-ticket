# eticket

Application for purchase e-ticket

# run localize gen script
dart run easy_localization:generate -S assets/translations -f keys -o locale_keys.g.dart

#run build script
dart run build_runner build --delete-conflict-outputs

#run flutter launcher icons
dart run flutter_launcher_icons

#run flutter launcher icons
dart run flutter_native_splash:create

