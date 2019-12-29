[top](/README.md)
# コーディング規約
## インデント
- 2tab統一
- 要素間の改行は2
    - ただしclass/関数内/変数内は1行とする。
- 引数は必ず末尾に``,``を付けて改行する。
## 省略関連
- 1行でreturnする場合はArrowを用いる。
- ``new SampleClass()``は``new``を省略して書く。
- ``Widget``も``new``を省略するが、適宜``const``を用いること
    > ``const``は``Widget``をキャッシュしておける為、リビルドしない``Widget``は基本的に``const Text('更新しないWidget')``のように必ずつける。
