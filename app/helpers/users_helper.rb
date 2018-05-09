module UsersHelper

    def show_role(user)
        case user.admin
        when 1
            "Phụ Huynh"
        when 2 
            "Giáo viên"
        when 3 
            "Hiệu trưởng"
        end
    end
end
