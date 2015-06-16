class CreateMsgs < ActiveRecord::Migration
  def change
    create_table :msgs do |t|
      t.string :name
      t.string :emails
      t.string :phone
      t.text :content

      t.timestamps null: false
    end
  end
end
