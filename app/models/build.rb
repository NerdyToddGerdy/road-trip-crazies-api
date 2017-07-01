class Build < ApplicationRecord
   has_many :join_tables
   has_many :users, through: :join_tables
   has_many :my_builds
   has_many :users, through: :my_builds
end
