module AdminHelper
  def flash_class(level)
    case level
      when :notice, 'notice'    then "text-info"
      when :success, 'success'  then "text-success"
      when :error, 'error'      then "text-danger"
      when :alert, 'alert'      then "text-warning"
    end
  end
end
