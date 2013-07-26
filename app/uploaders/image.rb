include CarrierWave::MiniMagick

def default_url
  asset_path [version_name, "default_project_image_huge.png"].compact.join('_')
end

version :small do
  process :resize_to_fill => [32, 32]
end

def extension_white_list
  %w(jpg jpeg gif png)
end
