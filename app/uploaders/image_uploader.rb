class ImageUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave

  # --- Global transformations ---
  cloudinary_transformation quality: 80
  
  # --- Versions ---
  version :standard do
  end

  version :thumb do
    process resize_to_fill: [250, 150, :center]
  end
  
  # --- Storage ---
  def store_dir
    "uploads/photos/#{model.gallery.id}/#{model.id}"
  end
    
  # --- Whitelist ---
  def extension_white_list
    %w(jpg jpeg gif png webm)
  end
end