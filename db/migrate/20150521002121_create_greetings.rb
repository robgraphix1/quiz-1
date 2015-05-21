class CreateGreetings < ActiveRecord::Migration
  def change
    create_table :greetings do |t|

      t.string :salutation
      t.string :country
      
      t.timestamps
    end
  end
end
