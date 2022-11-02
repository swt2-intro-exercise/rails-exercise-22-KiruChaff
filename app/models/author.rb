class Author < ApplicationRecord

    validates :last_name, presence: true

    def name
        # wo kommen die Variablen her?
        "#{first_name} #{last_name}"
    end
end
