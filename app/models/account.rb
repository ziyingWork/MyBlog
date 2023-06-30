class Account < ApplicationRecord
    has_secure_password
    attr_accessor :verification_code
    validates :name, presence: true
    validates :email, presence: true
    validates :password, presence: true
    validates :password_confirmation, presence: true

    enum role: { Manager: '2', User: '1', guest: '0' }






end
