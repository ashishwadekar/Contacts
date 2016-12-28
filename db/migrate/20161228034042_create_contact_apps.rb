class CreateContactApps < ActiveRecord::Migration
  def change
    create_table :contact_apps do |t|
      t.string :First_name
      t.string :Last_Name
      t.string :Phone
      t.string :Telephone
      t.string :Work_Phone
      t.string :Email_Id
      t.string :Work_Email
      t.string :Github_Id
      t.string :Facebook_Id

      t.timestamps null: false
    end
  end
end
