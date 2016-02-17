class CreateBirthdays < ActiveRecord::Migration
  def change
    create_table :birthdays do |t|
      t.string :first_name
      t.string :last_name
      t.string :birthdate
      t.string :gift

      t.timestamps
    end
  end
end
