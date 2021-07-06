class Appointment < ApplicationRecord
    belongs_to :doctor
    belongs_to :patient

    def date_formatted
        # self.appointment_datetime.to_formatted_s(:long_ordinal)
        self.appointment_datetime.to_date.to_s(:long)
    end

    def time_formatted
        self.appointment_datetime.strftime("%H:%M")
    end
end
