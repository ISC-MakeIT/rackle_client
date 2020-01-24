# Google_map_flutter

> 公式doc: https://pub.dev/packages/google_maps_flutter

# はじめに
ここではgoogle map apiを使うための各種設定をします

## Android
Androidで使用する際はandroid/app/src/main/AndroidManifest.xmlにAPIを次のように指定します。
```
<manifest ...
<application ...
<meta-data android:name="com.google.android.geo.API_KEY"
android:value="YOUR KEY HERE"/>
```

## iOS
iosで使用する際はios/Runner/AppDelegate.swiftにAPIを次のように指定します。
```
import UIKit
import Flutter
import GoogleMaps

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
override func application(
_ application: UIApplication,
didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?
) -> Bool {
GMSServices.provideAPIKey("YOUR KEY HERE")
GeneratedPluginRegistrant.register(with: self)
return super.application(application, didFinishLaunchingWithOptions: launchOptions)
}
}
```
次にInfo.plistに次のように追記します。
```
<key>io.flutter.embedded_views_preview</key>
<string>YES</string>
```

# mapを表示してみる
GoogleMapを表示するにはGoogleMap Widgetを使用します。</br>
ここでは一部のプロパティについてだけ説明します。
詳しくはこちらを参照してください。
> https://pub.dev/documentation/google_maps_flutter/latest/google_maps_flutter/GoogleMap-class.html 

||説明|
|:-|:-|
|mapType|mapのtypeを指定します。詳しくは君の目で確かめろ！|
|initialCameraPosition|mapの初期値(LatLng,zoom...etc)を指定します。|
|myLocationEnabled|現在位置の取得を許可するか|
|myLocationButtonEnabled|現在地を表示するボタンを設置するか|
indoorViewEnabled|indoorMapを有効にするかどうか|

# コードの説明
initState()
> 初期からあるmarkerを画面上に表示させています

_controller
> mapの表示する場所を変えたりなどのcameraの操作などをするための変数

_kYokohamaStation
> 初期位置である横浜駅の情報を格納しています(_kとなっているのは公式がそうしていたため)

