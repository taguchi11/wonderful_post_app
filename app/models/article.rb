class Article < ApplicationRecord
  # validates :title,presence: true
  # validates :content,presence: true
  validates :title,presence: { message:"を入力してください。" }
  validates :content,presence: { message:"を入力してください。" }
end
