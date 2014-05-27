class CreateResults < ActiveRecord::Migration
  def change
    create_table :results do |t|
      t.string :identifier, :limit => 20
      t.integer :profile_score
      t.integer :feed_score
      t.integer :post_score

      t.timestamps
    end
  end
end
