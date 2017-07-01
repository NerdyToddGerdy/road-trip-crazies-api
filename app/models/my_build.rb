class MyBuild < ApplicationRecord
  belongs_to :build
  belongs_to :user

  validates_uniqueness_of :user_id, scope: :build_id
  validates_uniqueness_of :build_id, scope: :user_id
end
