require_relative "01_cryptocurrencies"
require_relative "cryptovalues"
require "io/console"

def hashcrypto
  namecur.zip(valuecur.map(&:to_f)).to_h 
end

def bestvalue
  bestv = hashcrypto.sort_by {|k, v| v}[-1]
  puts "Crypto à la valeur la plus haute :  #{bestv}"
end

def worstvalue
  worstv = hashcrypto.sort_by {|k, v| v}[0]
  puts "Crypto à la valeur la plus basse :  #{worstv}"
end

def undervalue
  under6000 = []
  
  hashcrypto.each do |k, v|
    if v <= 6000
      under6000.push [k, v]
    end
  end
  under6000 = under6000.to_h
  puts "Devise dont le cours est inférieur à 6000 :  #{under6000}"
  return under6000
end

def bestundervalue(undervalue)
  bestunderv = undervalue.sort_by {|k, v| v}[-1]
  puts "Devise la plus chère parmi celles dont le cours est inférieur à 6000 : #{bestunderv}"
end

def nextanswer
  STDIN.getch
  system "clear"
end

def perform
  puts "1 - La crypto qui a la plus grosse valeur"
  puts "2 - La crypto qui a la plus basse valeur"
  puts "3 - Les devises dont le cours est inférieur à 6000"
  puts "4 - La devise la plus chère parmi celles dont le cours est inférieur à 6000"
  puts "\nAppuyez sur n'importe quelle touche pour passer d'une réponse à la suivante "
  nextanswer
  hashcrypto
  bestvalue
  nextanswer
  worstvalue
  nextanswer
  undervalue
  nextanswer
  bestundervalue(undervalue)
  nextanswer
end

perform