class Vocabulary < ActiveRecord::Base
  mount_uploader :image, ImageFileUploader
  mount_uploader :pronunciation, PronunciationFileUploader
end
