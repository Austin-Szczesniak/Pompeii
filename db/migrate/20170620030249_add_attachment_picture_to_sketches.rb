class AddAttachmentPictureToSketches < ActiveRecord::Migration
  def self.up
    change_table :sketches do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :sketches, :picture
  end
end
