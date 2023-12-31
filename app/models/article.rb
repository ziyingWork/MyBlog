class Article < ApplicationRecord
  # Article模型 属于 Account模型
  belongs_to :account
  # Article 对象可以拥有多个 Comment 对象
  has_many :comments
  # 对 Article 的 title 属性进行验证，确保title属性存在
  validates :title, presence: true
                    
end
