class AddIpToSearchTerms < ActiveRecord::Migration[7.1]
  def change
    add_column :search_terms, :ip, :string
  end
end
