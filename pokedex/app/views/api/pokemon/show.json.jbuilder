json.set! "pokemon" do 
    json.set! @id do 
        json.extract! @pok, :id, :name, :attack, :defense, :poke_type, :image_url 
    end 
end 

json.set! "moves" do 
    @pok.moves.each_with_index do |m, idx|
        json.set! m.id  do 
            json.extract! m, :id, :name
        end 
    end  
end

json.set! "items" do 
    @pok.items.each_with_index do |it, idx|
        json.set! it.id do 
            json.extract! it, :id, :pokemon_id, :name, :price, :happiness, :image_url
        end
    end
end


