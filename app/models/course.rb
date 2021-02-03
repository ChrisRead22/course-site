class Course < ApplicationRecord

    def check_enrollment
        if open
            "Open for Enrollment"
        else 
            "All Seats Occupied" 
        end
    end

end
