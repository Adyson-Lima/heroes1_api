puts 'Gerando heroes...'

5.times do |i|
  Hero.create(
    name: ["batman", "flash", "aquaman"].sample ,
    power: "poder especifico"
    )
end

puts 'heroes gerados com sucesso!'