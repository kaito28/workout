class CreatePostGyms < ActiveRecord::Migration[6.1]
  def change
    create_table :post_gyms do |t|
      t.text :workout_at #トレーニング場所
      t.text :workout_menu #トレーニングした種目名
      t.text :aim          #トレーニングの狙いと、説明
      t.string :image_id
      t.integer :user_id


      t.timestamps
    end
  end
end