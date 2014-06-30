class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.references :articles
      t.string :first_name
      t.string :last_name
      t.string :email_id
      t.string :password
      t.timestamps
    end
  end
end
