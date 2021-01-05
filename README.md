# README

## users table
|   Column   |  Type  |   Options   |
| ---------- | ------ | ----------- |
| email      | string | null: false |
| password   | string | null: false |
| name       | string | null: false |
| profile    | text   | null: false |
| pccupation | text   | null: false |
| position   | text   | null: false |

### Association

- has_many: prototypes
- has_many: comments


## prototypes table
|   Column   |    Type    |   Options   |
| ---------- | ---------- | ----------- |
| title      | string     | null: false |
| catch_copy | text       | null: false |
| concept    | text       | null: false |
| user       | references |             |

### Association

- belongs_to: user
- has_many: comments

## comments table
|  Column   |    Type    |   Options   |
| --------- | ---------- | ----------- |
| text      | test       | null: false |
| user      | references |             |
| prototype | references |             |

### Association

- belongs_to: user
- belongs_to: prototype