class AddOpenToCourses < ActiveRecord::Migration[6.1]
  def change
    add_column :courses, :open, :boolean
  end
end
