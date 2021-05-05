# README

## users
 Column              | Type    | Options                   |
| ------------------ | ------- | ------------------------- |
| nickname           | string  | null: false               |
| email              | string  | null: false ,unique: true |
| password           | string  | null: false               |

### Association
has_many :partners


## partners
 Column           | Type       | Options            |
| --------------- | ---------- | ------------------ |
| name            | string     | null: false        |
| user            | references | foreign_key: true  |

### Association
belongs_to :user
has_many :goals
has_many :grades





## goals
Column       | Type        | Options           |
| ---------- | ----------- | ----------------- |
| task       | text        | null: false       |

### Association
belongs_to :partner




## grades
 Column              | Type       | Options           |
| ------------------ | ---------- | ----------------- |
| game               | date       | null: false       |
| win                | date       | null: false       |
| lose               |  date      | null: false       |
| rate               | date       | null: false       |
| partner            | references | foreign_key: true |


### Association
belongs_to :partner
has_many :comments



## comments
 Column              | Type       | Options                   |
| ------------------ | ---------- | ------------------------- |
| comment            | text       | null: false               |
| grades             | references | foreign_key: true         |
| user               | references | foreign_key: true         |

### Association
belongs_to :grade

