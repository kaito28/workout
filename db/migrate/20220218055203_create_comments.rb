class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.text :comment #投稿に対してのコメント
      t.integer :user_id
      t.integer :post_gym_id

      t.timestamps
    end
  end
end
