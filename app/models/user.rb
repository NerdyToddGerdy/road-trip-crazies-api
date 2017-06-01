class User < ApplicationRecord
   has_secure_password
   has_many :join_tables
   has_many :builds, through: :join_tables
   has_many :my_builds
   has_many :builds, through: :my_builds
   has_many :posts
end
