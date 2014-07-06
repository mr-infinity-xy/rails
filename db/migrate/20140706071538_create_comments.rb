class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :article
      t.references :user
      t.text :text

      t.timestamps
    end
  end
end
