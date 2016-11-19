class Picture < ActiveRecord::Base
    belongs_to :user
    mount_uploader :image, ToukouimageUploader #deviseの設定配下に追記
end
