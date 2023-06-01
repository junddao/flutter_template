echo "Welcome to du_mobile utilities:"
echo
echo "[0] build runner"
echo "[1] build runner --delete-conflicting-outputs"
echo "[2] 데브 모드로 실행"
echo "[3] 라이브 모드로 실행"
echo "[4] fastlane aos (TEST)"
echo "[5] fastlane ios (TEST)"
echo "[6] fastlane aos (LIVE)"
echo "[7] fastlane ios (LIVE)"
echo
read -p "Run: " selection

case $selection in

    0)
    echo "build_runner"
    flutter pub run build_runner build
    ;;

    1)
    echo "build_runner"
    flutter pub run build_runner build --delete-conflicting-outputs
    ;;

    2)
    echo "run main(dev)"
    flutter run -t lib/main.dart
    ;;

    3)
    echo "run main(live)"
    flutter run -t lib/main.dart --dart-define=flavor=true
    ;;

    4)
    echo "fastlane aos (TEST)"
    cd android/fastlane && fastlane beta --env testbed
    ;;

    5)
    echo "fastlane ios (TEST)"
    flutter build ios --debug -t lib/main.dart && 
    cd ios/fastlane && 
    fastlane beta --env testbed
    ;;

    6)
    echo "fastlane aos (LIVE)"
    cd android/fastlane && fastlane beta --env live
    ;;

    7)
    echo "fastlane ios (LIVE)"
    flutter clean && flutter build ios -t lib/main.dart --dart-define=flavor=true && 
    cd ios/fastlane && 
    fastlane beta --env live
    ;;

    *)
    echo "Unknown command!!"
    ;;

esac
