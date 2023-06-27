class Account < ApplicationRecord
    has_secure_password
    enum role: { Manager: '0', User: '1', Guest: '2' }
    # presence: true：确保密码字段不为空; confirmation: true：确保密码和密码确认字段的值相匹配
    validates :password, presence: true, confirmation: true
    # 
    validates :password_confirmation, presence: true

end
