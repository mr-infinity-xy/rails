class RemoveRefArticleFromUser < ActiveRecord::Migration
  def change
  	remove_reference :users, :article
  end
end
