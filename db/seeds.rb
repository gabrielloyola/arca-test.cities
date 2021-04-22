pr = State.create!(name: 'Paraná', initials: 'PR')
sc = State.create!(name: 'Santa Catarina', initials: 'SC')
rs = State.create!(name: 'Rio Grande do Sul', initials: 'RS')

%w[Curitiba Londrina Maringá Guaratuba Ponta\ Grossa].each do |city_name|
  City.create!(name: city_name, state: pr)
end

%w[Joinville Florianópolis Itajaí Blumenau].each do |city_name|
  City.create!(name: city_name, state: sc)
end

%w[Porto\ Alegre Pelotas Canoas Santa\ Maria].each do |city_name|
  City.create!(name: city_name, state: rs)
end