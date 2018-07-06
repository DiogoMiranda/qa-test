
#################### Dado ################################

Dado("que eu faça um GET de cinco personagens no endpoint") do
    @get_personagens = HTTParty.get 'https://gateway.marvel.com:443/v1/public/characters?ts=1&hash=fd9fe3c07c18391d45f01a254b233557&apikey=5f289c8d6e82d328c970226474735fa5&limit=5'
end

Dado("que eu faça um GET de um personagem especifico") do
   @get_personagem_especifico = HTTParty.get 'https://gateway.marvel.com:443/v1/public/characters/1009368?ts=1&hash=fd9fe3c07c18391d45f01a254b233557&apikey=5f289c8d6e82d328c970226474735fa5&limit=5'

end

Dado("que realizo o filtro comics de acordo com um personagem específico") do
    @get_filtro_comic = HTTParty.get 'https://gateway.marvel.com:443/v1/public/characters/1009368/comics?ts=1&hash=fd9fe3c07c18391d45f01a254b233557&apikey=5f289c8d6e82d328c970226474735fa5'
end


################# Então #################################

Entao("devo receber um retorno de cinco personagens cadastrados") do
    (0..4).each do |index|
    puts @get_personagens.parsed_response['data']['results'][index]['name']
    end   
    puts @get_personagens.code
    expect(@get_personagens.code).to eq 200
end 

Entao("devo receber um retorno deste personagem especifico") do
    puts @get_personagem_especifico.parsed_response['data']['results'][0]['name']
    puts @get_personagem_especifico.parsed_response['data']['results'][0]['description']
    puts @get_personagem_especifico.code
    expect(@get_personagem_especifico.code).to eq 200
end

Entao("devo visualizar o filtro de comics de acordo com um personagem específico") do
    quantidade = @get_filtro_comic.parsed_response['data']['limit']
    quantidade.to_i
 
    (0...quantidade).each do |index|
    puts @get_filtro_comic.parsed_response['data']['results'][index]['title']
    end
    puts @get_filtro_comic.code
    expect(@get_filtro_comic.code).to eq 200
end