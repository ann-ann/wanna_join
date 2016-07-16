module ApplicationHelper
  def body_class
    controller_name == 'welcome' ? 'welcome' : 'app'
  end

  def bootstrap_class_for(flash_type)
    case flash_type
      when 'success'
        "alert-success"
      when 'error'
        "alert-error"
      when 'alert'
        "alert-danger"
      when 'notice'
        "alert-info"
      else
        flash_type.to_s
    end
  end
end
