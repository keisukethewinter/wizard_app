class Address < ApplicationRecord
  belongs_to :user, optional: true #住所情報を入力した時点で、user_idには値が入っていないので、通常ではバリデーションに引っかかり、DBに保存できません。
  validates :postal_code, :address, presence: true
end
