class Account < ApplicationRecord
    enum role: { admin: 'Manager', user: 'General users', guest: 'Guest' }
end
