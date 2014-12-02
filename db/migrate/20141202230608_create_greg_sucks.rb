class CreateGregSucks < ActiveRecord::Migration
  def change
    create_table :greg_sucks do |t|
      t.boolean :sucks

      t.timestamps
    end
  end
end
