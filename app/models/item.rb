class Item < Resume
  mount_uploader :attachment , AttachmentUploader
  default_scope { where(filetype: 'item') }
end
