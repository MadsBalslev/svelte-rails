class User < ApplicationRecord
  before_save :set_full_name
  validates :first_name, :last_name, presence: true
  validates :email, presence: true, uniqueness: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :omniauthable, omniauth_providers: %i[github]

  has_many :bank_accounts, dependent: :destroy
  has_many :transactions, through: :bank_accounts, dependent: :destroy

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0, 20]
      user.first_name = auth.info.name.split(' ').first
      user.last_name = auth.info.name.split(' ').last
      user.avatar_url = auth.info.image
    end
  end

  private

  def set_full_name
    self.first_name = first_name.capitalize
    self.last_name = last_name.capitalize
    self.full_name = "#{first_name} #{last_name}"
    self.email = email.downcase
  end
end
