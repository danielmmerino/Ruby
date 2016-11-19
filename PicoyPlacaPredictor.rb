=begin
		Develop by Daniel Merino for Stack Builders
=end
class Predictor

	def initialize(plateNumber, date, time)
		@plateNumber = plateNumber
		@date = date
		@time = time

	end
	
	def predic ()
		#Impresion Para pruebas
		puts "Placa: "+@plateNumber
		puts "Dia: " + @date
		puts "Hora: " + @time


		pos_div = @time =~ /:/ 
		hora = @time [0 .. pos_div -1].to_i
		minutos = @time [ pos_div +1 .. (@time.length-1)].to_i
		last_dig = @plateNumber[@plateNumber.length-1] #Obtener ultimo digito placa
		last_dig = last_dig.to_i

		puts hora
		puts minutos
		#Analizo primero la hora 
		if (((hora>=7) && (hora<=9 && minutos<=30)) || ((hora>=16)&&(hora<=19 && minutos<=30)))
			horario = true
		else
			horario = false
		end
		dia = false

		if ((last_dig==1 || last_dig==2) && (@date == "Lunes"))
			dia = true
		elsif ((last_dig==3 || last_dig==4)  && (@date == "Martes"))
			dia = true
		elsif ((last_dig==5 || last_dig==6)  && (@date == "Miercoles"))
			dia = true
		elsif ((last_dig==7 || last_dig==8)  && (@date == "Jueves"))
			dia = true
		elsif ((last_dig==9 || last_dig==0) && (@date == "Viernes"))
			dia = true
		end
puts horario
puts dia		
		#Comparaci'on final

		if (horario && dia)
			resul = " NO"
		else
			resul = " SI"
		end

	puts "RESULTADO:"	
puts "El vehiculo con placa " + @plateNumber +" "+ resul +" puede circular en este momento"

		
	end
end




obj = Predictor.new("PQT-121","Lunes","9:25")
obj.predic
gets
