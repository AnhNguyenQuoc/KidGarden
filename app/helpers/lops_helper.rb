module LopsHelper


    def setup_field(number = 2, model)
        number.times { model.phanconggiangday.build }
        model 
    end 
end
