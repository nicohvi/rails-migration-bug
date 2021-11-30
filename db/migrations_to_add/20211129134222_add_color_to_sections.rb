class AddColorToSections < ActiveRecord::Migration[6.0]
  def up
    add_column :sections, :color, :string

    Section.find_each do |section|
      section.color = 'blue'
      section.save!
    end
  end

  def down
    remove_column :sections, :color
  end
end
