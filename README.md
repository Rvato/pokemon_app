# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

# DB設計------------------------------------------------

## pokemons table
|Column     |Type      |Options    |
|-----------|----------|-----------|
|name       |string    |null: false|
|nickname   |string    |           |
|gender     |string    |null: false|
|ability    |string    |null: false|
|nature     |string    |null: false|
|item       |string    |           |
|move1      |string    |null: false|
|move2      |string    |           |
|move3      |string    |           |
|move4      |string    |           |

### Association
- has_one    :current_status
- has_one    :base_status
- has_one    :effort_value
- belongs_to :party


## parties table
|Column     |Type      |Options    |
|-----------|----------|-----------|
|party_name |string    |null: false|

### Association
- has_many :pokemons


## current_statuses table
|Column             |Type      |Options    |
|-------------------|----------|-----------|
|cs_hp              |string    |null: false|
|cs_attack          |string    |null: false|
|cs_defense         |string    |null: false|
|cs_special_attack  |string    |null: false|
|cs_special_defense |string    |null: false|
|cs_speed           |string    |null: false|

### Association
- has_one :pokemon, dependent: :destroy


## base_statuses table
|Column             |Type      |Options    |
|-------------------|----------|-----------|
|bs_hp              |string    |null: false|
|bs_attack          |string    |null: false|
|bs_defense         |string    |null: false|
|bs_special_attack  |string    |null: false|
|bs_special_defense |string    |null: false|
|bs_speed           |string    |null: false|

### Association
- has_one :pokemon, dependent: :destroy


## effort_values table
|Column             |Type      |Options    |
|-------------------|----------|-----------|
|ev_hp              |string    |           |
|ev_attack          |string    |           |
|ev_defense         |string    |           |
|ev_special_attack  |string    |           |
|ev_special_defense |string    |           |
|ev_speed           |string    |           |

### Association
- has_one :pokemon, dependent: :destroy


## markings table
|Column     |Type       |Options    |
|-----------|-----------|-----------|
|pokemon_id |references |foreign_key: true|

### Association
- belongs_to :pokemon