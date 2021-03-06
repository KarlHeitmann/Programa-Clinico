module ApplicationHelper

  def formateo_de_fecha(objeto_datetime)
    return objeto_datetime.localtime.strftime "%d/%m/%Y"
  end

  def formateo_de_fecha_y_hora(objeto_datetime)
    return "#{objeto_datetime.localtime.strftime "%d/%m/%Y"} <br> #{objeto_datetime.localtime.strftime "%H:%M:%S"}".html_safe
  end

  def cortar_descripcion(texto)
    unless texto.nil?
      if texto.length > 70
        return "#{texto[0...70]}..."
      else
        return texto
      end
    else
      return ""
    end
  end
  def age(dob)
    now = Time.now.utc.to_date
    now.year - dob.year - ((now.month > dob.month || (now.month == dob.month && now.day >= dob.day)) ? 0 : 1)
  end

end
