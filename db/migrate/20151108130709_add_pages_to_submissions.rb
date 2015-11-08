class AddPagesToSubmissions < ActiveRecord::Migration
  def change
    add_column :submissions, :pages, :json
  end
end
