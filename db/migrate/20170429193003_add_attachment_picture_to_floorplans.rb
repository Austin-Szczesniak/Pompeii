class AddAttachmentPictureToFloorplans < ActiveRecord::Migration
  def self.up
    change_table :floorplans do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :floorplans, :picture
  end
end
