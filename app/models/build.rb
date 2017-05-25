class Build < ApplicationRecord
   has_many :join_tables
   has_many :users, through: :join_tables
end
