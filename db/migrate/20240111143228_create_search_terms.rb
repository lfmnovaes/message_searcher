class CreateSearchTerms < ActiveRecord::Migration[7.1]
  def change
    create_table :search_terms do |t|
      t.string :term
      t.integer :count

      t.timestamps
    end
  end
end
