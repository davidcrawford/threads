class CreateOutfitPairs < ActiveRecord::Migration
  def self.up
    create_table :outfit_pairs do |t|
      t.string :first_image
      t.string :second_image
      t.integer :first_votes
      t.integer :second_votes

      t.timestamps
    end
  end

  def self.down
    drop_table :outfit_pairs
  end
end
