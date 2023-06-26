class Post < ApplicationRecord
    validates :title, presence: true, length:{minimum:5, maximum:75}
    validates :body, presence: true, length:{minimum:7, maximum:200}
  has_rich_text :body
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_one_attached :image
  has_many_attached :pictures
  has_rich_text :content
  has_one :content, class_name: 'ActionText::RichText', as: :record, dependent: :destroy
  after_save :process_images_in_content
  has_noticed_notifications model_name: 'Notification'
  has_many :notifications, through: :user
  content.body.attachments.each do |attachment|
    if attachment.image?
      image = Vips::Image.new_from_file(attachment.blob.service_url)
      # Perform image processing using ruby-vips methods
      # For example: image.resize(0.5)
      # Save the processed image back to the attachment
      attachment.blob.open do |file|
        processed_image_data = image.write_to_buffer('.jpg')
        file.write(processed_image_data)
      end
    end
  end
end
 
end

