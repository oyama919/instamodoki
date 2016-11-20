class Picture < ActiveRecord::Base
    validates :title, presence: true
    validates :image, presence: true
    belongs_to :user
    mount_uploader :image, ToukouimageUploader #deviseの設定配下に追記
end
