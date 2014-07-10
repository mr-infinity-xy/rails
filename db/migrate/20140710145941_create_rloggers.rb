class CreateRloggers < ActiveRecord::Migration
  def change
    create_table :rloggers do |t|
      t.text :log

      t.timestamps
    end
  end
end
