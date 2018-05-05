module EmploymentsHelper

    def error_log(model, attribute)
        content = model.errors[attribute].join("\n") if model.errors.include?(attribute)
        if model.errors.include?(attribute)
           return content_tag(:div, content, :class => 'alert alert-danger')
        end
    end
end
