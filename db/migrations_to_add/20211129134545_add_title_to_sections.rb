class AddTitleToSections < ActiveRecord::Migration[6.0]
  def change
    add_column :sections, :title, :string

    Section.find_each do |section|
      section.title = 'NEW TITLE'
      section.save!
    end
  end
end
