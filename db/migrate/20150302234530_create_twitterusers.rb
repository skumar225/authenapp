class CreateTwitterusers < ActiveRecord::Migration
  def change
    create_table :twitterusers do |t|

      t.timestamps null: false
    end
  end
end
