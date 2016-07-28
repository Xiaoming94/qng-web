class Image < Resume
  mount_uploader :attachment, ImageUploader
  default_scope { where(filetype: 'image') }
end
