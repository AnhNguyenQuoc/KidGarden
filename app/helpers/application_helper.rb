module ApplicationHelper

    def button_text
        if controller.action_name == "new"
            return "Thêm"
        elsif controller.action_name == "edit"
            return "Sửa"
        else 
            return "Xác nhận"
        end 
    end
end
