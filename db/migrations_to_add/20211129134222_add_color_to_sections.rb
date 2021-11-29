class AddColorToSections < ActiveRecord::Migration[6.0]
  def change
    add_column :sections, :color, :string

    Post
      .find_each do |post|
        section = post.sections.first
        section.color = 'blue'
        section.save!
      end
  end
end
