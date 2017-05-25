class CreateBuilds < ActiveRecord::Migration[5.0]
  def change
    create_table :builds do |t|
      t.string :build_name
      t.string :start_date
      t.string :end_date
      t.string :site_address
      t.string :hotel_link
      t.string :family_information

      t.timestamps
    end
  end
end
