class CreateImageRotators < ActiveRecord::Migration

  def self.up
    create_table :image_rotators do |t|
      t.string :title
      t.string :height
      t.string :width

      t.timestamps
    end

    add_index :image_rotators, :id

    load(Rails.root.join('db', 'seeds', 'image_rotators.rb'))

    create_table :image_rotator_images do |t|
      t.integer :image_rotator_id
      t.integer :image_id
      t.text    :url
      t.text    :caption
      t.integer :position

      t.timestamps
    end

    add_index :image_rotator_images, :id
  end

  def self.down
    UserPlugin.destroy_all({:name => "image_rotators"})

    drop_table :image_rotator_images
    drop_table :image_rotators
  end

end
