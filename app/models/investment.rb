class Investment < ActiveRecord::Base
  has_attached_file :main_image, :styles => { :medium => "1438x960>" }, default_url: "/images/:style/missing.png"
  has_attached_file :sub_image, :styles => { :medium => "300x300>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :main_image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
  validates_attachment_content_type :sub_image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

  belongs_to :user

end
