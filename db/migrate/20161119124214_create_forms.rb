class CreateForms < ActiveRecord::Migration[5.0]
  def change
    create_table :forms do |t|
      t.string :name
      t.string :url
      t.string :confirmation_url
      t.boolean :active, default: true
      t.string :trigger_frequency

      t.timestamps
    end
  end
end
