class Author < ApplicationRecord
    def name
        # wo kommen die Variablen her?
        "#{first_name} #{last_name}"
    end
end
