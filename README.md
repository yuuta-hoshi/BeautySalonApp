## 開発経緯 
友人が美容室の経営をしており、自店舗で使用できるポイント加算アプリを試しに作成してほしいという要望で作成しました。

## アプリの要約
追加用のQRコードを読み取ることでポイントが加算され、たまったポイントで商品と交換できるようにしました。
商品の交換は、交換したい商品のQRコードを読み取ることでポイントと交換できます。

## 使用技術 
今回QRコードの読み取りにAVFoundationを使用しています。

また、値はRealm Swiftを使用しデバイス内に保持するようにしました。


| 環境 | 言語 | DB |
|:---:|:---:|:---:|
| Xcode (14.2) | Swift (5.7.2) | Realm Swift (10.33.0) |

**下記のファイルに、画面の遷移図とアプリーションで使用するQRコードが入っております。**

**[BeautySalonAPP画面遷移図.xlsx](https://github.com/yuuta-hoshi/BeautySalonApp/files/10445588/BeautySalonAPP.xlsx)**


