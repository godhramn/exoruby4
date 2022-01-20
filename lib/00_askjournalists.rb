require_relative "00_journalists"
require "io/console"

def listsize(list)
  puts "1 - Il y a #{list.size} handles dans l'array."
end

def handleshorter(list)
  shortest = list.sort_by(&:length)[0]
  puts "2 - Le handle le plus court est #{shortest}."
end

def fivecar(list)
  fivecar_handles = []
  list.each do |letters|
    if letters.size == 6
      fivecar_handles.push letters
    end
  end  
  puts "3 - Le nombre de handle contenant 5 caractères est de #{fivecar_handles.size} : \n\n#{fivecar_handles}"  
end

def handlecap(list)
  capalpha = ("A".."Z")
  capcount = list.count {|x| capalpha.include?(x[1])}
  puts "4 - Le nombre de handle commençant par une majuscule est de #{capcount}"
end

def alphaorder(list)
  alphahandles = list.sort_by(&:downcase)
  puts "5 - La liste triée par ordre alphabétique : \n\n#{alphahandles.join(" - ")} "
end

def sizeorder(list)
  sizehandles = list.sort_by(&:length)
  puts "6 - La liste triée par ordre de taille des handles : \n\n#{sizehandles.join(" - ")} "
end

def epenser(list)
  eposition = list.index("@epenser")
  puts "7 - @epenser est en #{eposition}ème position dans la liste."
end

def handlesort(list)
  maxlength = list.size
  (1..maxlength).each do |n|
    
    count = 0
    list.each do |p|
      if p.size == n
        count += 1
      end
    end
    if count !=0
    puts "Nombre de handle avec #{n - 1} caractères: #{count}"
    end
  end
end

def nextanswer
  STDIN.getch
  system "clear"
end

def perform
  puts "- Combien y a-t-il de handle dans cette array ?"
	puts "- Quel est le handle le plus court de cette liste ?"
	puts "- Combien y-a-t'il de handle contenant 5 caractères (le @ ne compte pas pour un caractère)"
	puts "- Combien commencent par une majuscule (première lettre juste après le @) ?"
	puts "- Trie la liste de handle par ordre alphabétique."
	puts "- Trie la liste de handle par taille des handle (du plus court au plus long)"
	puts "- Quelle est la position dans l'array de la personne @epenser ?"
	puts "- Sors-moi une répartition des handle par longueur."
  puts "\nAppuyez sur n'importe quelle touche pour passer d'une réponse à la suivante "
  nextanswer
  listsize(list)
  nextanswer
  handleshorter(list)
  nextanswer
  fivecar(list)
  nextanswer
  handlecap(list)
  nextanswer
  alphaorder(list)
  nextanswer
  sizeorder(list)
  nextanswer
  epenser(list)
  nextanswer
  handlesort(list)
end

perform