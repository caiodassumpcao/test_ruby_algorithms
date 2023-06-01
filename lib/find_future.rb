#Entrada: arr[]={“22/4/1233”, “1/3/633”, “23/5/56645”, “4/12/233”}, Q = 2,
#Consulta[] = {“ 23/3/4345”, “12/3/2”}
#Saída:
#23/5/56645
#4/12/233

require 'date'

def find_date_position(dates, input_date)
  datas = dates.map { |data_str| Date.strptime(data_str, '%d/%m/%Y') }

  data_usuario = Date.strptime(input_date, '%d/%m/%Y')

  if datas.include?(data_usuario)
    index = datas.index(data_usuario)
    "A data #{data_usuario.strftime('%d/%m/%Y')} existe na biblioteca, na posição #{index}."
  else
    "A data #{data_usuario.strftime('%d/%m/%Y')} não existe no biblioteca."
  end
end
