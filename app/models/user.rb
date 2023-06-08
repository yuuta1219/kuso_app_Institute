class User < ApplicationRecord
  authenticates_with_sorcery!
  
  has_many :umbrellas, dependent: :destroy

  validates :password, length: { minimum: 3 }, if: -> { new_record? || changes[:crypted_password] }
  validates :password, confirmation: true, if: -> { new_record? || changes[:crypted_password] }
  validates :password_confirmation, presence: true, if: -> { new_record? || changes[:crypted_password] }

  validates :email, uniqueness: true

  enum role: { general: 0, prisoner: 1}



  def self.create_prisoner
    user = create(email: "prisoner-#{SecureRandom.hex(8)}@example.com", password: "1234", password_confirmation: "1234", role: :prisoner)
    Rails.logger.info user.errors.full_messages if user.errors.any?
    user
  end

  def prisoner?
    role == "prisoner"
  end
end
