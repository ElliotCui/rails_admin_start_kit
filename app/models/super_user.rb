class SuperUser < ApplicationRecord
  attr_accessor :password, :password_confirmation
  before_save :encrypt_password

  validates_confirmation_of :password
  validates :name,          presence: true
  validates :email,         presence: true, uniqueness: true
  validates :password,      presence: true, on: :create

  def as_json(options = {})
    {
      id: self.id,
      name: self.name,
      email: self.email
    }
  end

  def authenticate(password)
    if self && self.password_hash == BCrypt::Engine.hash_secret(password, self.password_salt)
      self
    else
      nil
    end
  end

  def reset_password
    self.password = rand(100000..999999).to_s
    if self.save(validate: false)
      self.password
    else
      nil
    end
  end

  private

  def encrypt_password
    if self.password.present?
      self.password_salt = BCrypt::Engine.generate_salt
      self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
    end

    true
  end
end
