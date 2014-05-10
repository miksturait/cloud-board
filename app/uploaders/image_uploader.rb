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
  
    # --- Default image ---
  def default_url
    "/assets/" + [version_name, "no-avatar.jpg"].compact.join('-')
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