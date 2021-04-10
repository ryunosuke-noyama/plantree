## Userテーブル

| column    | type    | options     |
| e-mail    | string  | null: false |
| user_name | string  | null: false |
| password  | string  | null: false |

## Association

## Companiesテーブル

| column       | type   | options     |
| company_name | string | null: false |

## Association
- has_many :members
- has_many :teams
- has_many :plans

## Memberテーブル

| column      | type       | options                        |
| member_name | string     | null: false                    |
| company     | references | null: false, foreign_key: true |

## Association
- has_many :member_teams
- has_many :member_plan
- has_one :company

## Teamsテーブル

| column    | type       | options                        |
| team_name | string     | null: false                    |
| company   | references | null: false, foreign_key: true |

### Association
- has_many :member_team
- belongs_to :companies

## Member_teamテーブル

| column | type       | options                        |
| user   | references | null: false, foreign_key: true |
| team   | references | null: false, foreign_key: true |

### Association
- belongs_to :member
- belongs_to :team

## Plansテーブル

| column     | type       | options                        |
| plan-name  | string     | null: false                    |
| contents   | text       | null: false                    |
| start_date | date       |                                |
| last_date  | date       |                                |
| limit_date | date       |                                |
| status     | integer    | null: false                    |
| team       | references | null: false, foreign_key: true |

### Association
- has_many :member_plan
- belongs_to_active_hash :status
- belongs_to :team

## Member_planテーブル

| column | type       | options                        |
| user   | references | null: false, foreign_key: true |
| plan   | references | null: false, foreign_key: true |

## Association
- belongs_to :member
- belongs_to :plan