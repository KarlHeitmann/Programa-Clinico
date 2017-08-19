module ApplicationHelper
  def formateo_de_fecha(objeto_datetime)
    return objeto_datetime.localtime.strftime "%d/%m/%Y"
  end
  def formateo_de_fecha_y_hora(objeto_datetime)
    return "#{objeto_datetime.localtime.strftime "%d/%m/%Y"} <br> #{objeto_datetime.localtime.strftime "%H:%M:%S"}".html_safe
  end
end
