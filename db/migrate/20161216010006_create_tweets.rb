class CreateTweets < ActiveRecord::Migration[5.0]
  def change
    create_table :tweets do |t|
      t.string :author
      t.string :content

      t.timestamps
    end
  end
end
