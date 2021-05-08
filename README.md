# README

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