﻿# HONDA顧客に対してCRMメール送信プログラム

## 送信先の設定
送信先はスプレッドシートで管理しています。  
[HONDA_CRM_対象](https://docs.google.com/spreadsheets/d/19M_Ift3wkIMo7raR7_Xpj4IE2ciHrUJcpbZUqBQtdo4/edit?usp=sharing)のシート`送信対象`

送信対象から削除する場合は、その行を削除、  
送信対象を増やす場合は、末尾に行を追加してください。  

上記のシートは、編集する際に警告を出すように設定していますが、意図していない編集を防ぐ目的なので、編集していただいて大丈夫です。  
アクセスが弾かれる場合は、`SFPJ`のアカウントを利用して確認してみてください。

## メール送信
1. デスクトップ上にある フォルダ`HONDA_CRM` にアクセス
2. フォルダ内にある `HONDA_CRM_データセット.bat` をダブルクリック
ファルダ内の`TRAN_DATA`配下に当日付のフォルダが作成されます
3. 作成された当日付のフォルダにアクセス  
フォルダの場所 `TRAN_DATA/{year_month_date}`  
フォルダ内には宛先リスト`mail_status.csv`、メールの件名を設定する`subject.txt`、紹介するパーツ名を設定する`parts_name.txt`が作成されます

### ユーザ設定部分
4. メールの件名を`subject.txt`内に記述する
5. 紹介するパーツ名(黒い線で挟まれた部分)を`parts_name.txt`内に記述する  
改行を含める場合は`<br>`を改行の代わりに含めてください。
6. `TRAN_DATA/{year_month_date}`配下に添付したい画像をファイル名`mail`で、ファイル形式を`png`にして配置。

### メール自動送信部分
7. `HONDA_CRM`配下に移動
8. `HONDA_CRM_メール送信.bat`をダブルクリック
9. 1通目はOutlookのアプリでプレビュー表示されるので、それを確認して問題がなければ、メールのプレビューを閉じる
10. そのまま送信を続ける場合は、黒い画面で`y`を打ち込み、`Enter`を押してください


## 注意点
- bat処理 `HONDA_CRM_データセット.bat`と`メール自動送信.bat`の2つは同一日に実行するようにしてください。  
実行できなかった場合は、最初からやりなおすようにしてください。

- メールのフォーマットなどを、変更したい場合は、*藤原*に連絡してください。  
すぐしたければ、メール本文は`HONDA_CRMメール送信/MASTER_DATA/mail.html`を変更すればいけます。

- CCを含めずにメールを送信したい場合は、`HONDA_CRM/MASTER_DATA/.env`ないの`CC_FLG = 0`に変更してください。

- `connect_google_servive.json`はGoogleアカウント`SFPJ`の`Google Cloud Platform`のプロジェクト`marketing-crm`から取得することが可能です。  
一応隠してます。
