## Userテーブル

| column    | type    | options                        |
| e-mail     | string  | null: false                    |
| user_name   | string  | null: false                    |
| password   | string  | null: false                    |


- has_many :user_teams
- has_many :user_plan
- has_one :company

## Companiesテーブル

| column       | type   | options     |
| company_name | string | null: false |

## Association
- belongs_to :user
- has_many :teams
- has_many :plans

## Teamsテーブル

| column    | type    | options                        |
| team_name | string  | null: false                    |
| company   | integer | null: false, foreign_key: true |

### Association
- has_many :user_team
- belongs_to :companies

## User_teamテーブル

| column | type       | options                        |
| user   | references | null: false, foreign_key: true |
| team   | references | null: false, foreign_key: true |

### Association
- belongs_to :user
- belongs_to :team

## Plansテーブル

| column     | type       | options     |
| plan-name  | string     | null: false |
| contents   | text       | null: false |
| start_date | date       |             |
| last_date  | date       |             |
| limit_date | date       |             |
| status     | integer    | null: false |
| team       | references | null: false, foreign_key: true |

### Association
- has_many :user_plan
- belongs_to_active_hash  :status
- belongs_to :team

## User_planテーブル

| column | type       | options                        |
| user   | references | null: false, foreign_key: true |
| plan   | references | null: false, foreign_key: true |

## Association
- belongs_to :user
- belongs_to :plan