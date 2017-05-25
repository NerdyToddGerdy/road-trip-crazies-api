class CreateJoinTables < ActiveRecord::Migration[5.0]
  def change
    create_table :join_tables do |t|
      t.references :user, foreign_key: true
      t.references :build, foreign_key: true

      t.timestamps
    end
  end
end
