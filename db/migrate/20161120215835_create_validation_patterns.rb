class CreateValidationPatterns < ActiveRecord::Migration[5.0]
  def change
    create_table :validation_patterns do |t|
      t.string :name

      t.timestamps
    end
  end
end
