class User < ApplicationRecord
   has_secure_password
   has_many :join_tables
   has_many :builds, through: :join_tables
end
