class SlotMachine
    attr_reader :results
    def initialize 
        @items = {
            "joker" => 50,
            "star" => 40,
            "bell" => 30,
            "seven" => 20,
            "cherry" => 10
        } 
        @results = []
    end

    def play 
        3.times do
            @results << @items.keys.sample
        end
    end 

    def score
        # si le résultats contient deux valeurs identiques et un jokers
            # On retrouve la valeur qui apparait deux fois
            # aller chercher la valeur associée dans items
            # diviser la valeur par 2
        # si le résultats contient 3 valeurs identiques
            # On retrouve la valeur qui apparait trois fois
            # aller chercher la valeur associée dans items
        # sinon
            # looser
        if @results.uniq.size == 2 && @results.include?("joker")
            item = @results.sort[1]
            return @items[item] / 2
        elsif @results.uniq.size == 1
            item = @results.first
            return @items[item] 
        else
            return "looser!!!"
        end
    end

end

slot_machine = SlotMachine.new
slot_machine.play
p slot_machine.results
p slot_machine.score
