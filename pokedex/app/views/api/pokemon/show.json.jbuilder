json.set! "pokemon" do 
    json.set! @id do 
        json.extract! @pok, :id, :name, :attack, :defense, :poke_type, :image_url 
    end 
end 

# json.set! "moves" do 
#     json.set! @id do 
#         json.extract! @pok.moves, :id, :name
#     end 
# end 

json.set! "moves" do 
    @pok.moves.each_with_index do |m, idx|
        json.set! idx+1  do 
            json.extract! m, :id, :name
        end 
    end  
end


