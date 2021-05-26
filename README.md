# README

概要：
スマブラの敗北試合の原因追求、反省を通して、
更なる高みを目指すアプリ


なぜ作ったのか：
現在に至るまで、日々の試合はノートに記述していたが、
これをPC上で管理できれば、時間短縮かつ、各キャラごとの対策を容易に管理することができる。
このアプリを通じて、自己のスマブラ力を向上すること目的


今後実装予定
・user登録＋使用キャラを登録、それらを表示する機能
・反省点を入力、表示させる機能
・本日の課題を入力、表示する機能
・各相手キャラに対しての勝率を入力、表示する機能




## users
 Column              | Type    | Options                   |
| ------------------ | ------- | ------------------------- |
| name               | string  | null: false               |
| email              | string  | null: false ,unique: true |
| encrypted_password | string  | null: false               |

### Association
has_many :partners



## partners
 Column              | Type        | Options                   |
| ------------------ | ----------- | ------------------------- |
| character          | string      | null: false               |
| user               | references  | foreign_key: true         |

### Association
has_many :battles
has_many :goals
belongs_to :user



## battles
 Column              | Type        | Options                   |
| ------------------ | ----------- | ------------------------- |
| game               | date        | null: false               |
| win                | date        | null: false               |
| lose               | date        | null: false               |
| rate               | date        | null: false               |
| partner            | references  | foreign_key: true         |

### Association
has_many :reflections
belongs_to :partner



## goals
 Column              | Type        | Options                   |
| ------------------ | ----------- | ------------------------- |
| task               | text        | null: false               |
| partner            | references  | foreign_key: true         |

### Association
belongs_to :partner



## reflections
 Column              | Type        | Options                   |
| ------------------ | ----------- | ------------------------- |
| comment            | text        | null: false               |
| partner            | references  | foreign_key: true         |

### Association
belongs_to :battle