# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require "open-uri"

Shark.destroy_all
User.destroy_all

puts "Creating user"
user = User.create!(first_name: "John", email: "john@email.com", password: "123456")

file = URI.open("https://res.cloudinary.com/dqxolg01p/image/upload/v1701186279/vvk61g10tho4vrzj07z5.jpg")

puts "Creating sharks"
shark1 = Shark.create!(name: "Nemo", description: "Looking for his father", price_per_day: 100, owner_id: user.id, address: "42 Wallaby Way, Sydney", weight: "300grammes", skills: "Super balèze pour trouver des gens")
shark2 = Shark.create(name: "Dory", description: "Swim right ahead", price_per_day: 80, owner_id: user.id, address: "1-5 Wheat Rd, Sydney NSW 2000, Australie", weight:"500grammes", skills:"Très forte en lâcher-prise, short time memory")
shark3 = Shark.create(name: "Polochon", description: "Je m'emmèle les nageoires", price_per_day: 90, owner_id: user.id, address: "St Pierre, Martinique", weight:"1kg", skills:"Bonne humeur et gentillesse")
shark4 = Shark.create(name: "Flo", description: "Sinon, il y a ma soeur, Flo Salut, ça va?", price_per_day: 123, owner_id: user.id, address: "187-191 Macquarie Street Sydney NSW 2000", weight:"1,5kg", skills:"Super nageuse, empathique")
shark5 = Shark.create(name: "Oscar", description: "Jeune poisson bavard et affabulateur, employé au LavO'Baleine", price_per_day: 70, owner_id: user.id, address: "Borabora", weight:"800grammes", skills:"Menteur, charmeur, rigolo")
shark6 = Shark.create(name: "Lola", description: "Poisson ange, meilleure amie d'Oscar", price_per_day: 45, owner_id: user.id, address: "Borabora", weight:"300grammes", skills:"Gentille, fidèle en amitié")
shark7 = Shark.create(name: "Lenny", description: "requin végétarien", price_per_day: 150, owner_id: user.id, address: "Tahiti", weight:"1 tonne", skills:"Gentil, sympathique, sait faire peur si besoin")
shark8 = Shark.create(name: "Sykes", description: "Poisson globe patron du LavO'Baleine", price_per_day: 30, owner_id: user.id, address: "Borabora", weight:"300grammes", skills:"Peut doubler de volume en moins de 30 secondes")
shark9 = Shark.create(name: "Angie", description: "poisson lion", price_per_day: 60, owner_id: user.id, address: "Jamaïque", weight:"600grammes", skills:"Arnaqueuse, charmante")
shark10 = Shark.create(name: "Don Edward Lino", description: "Chef de la pègre, patron d'une foule de requins, d'épaulards, d'espadon et de poulpes", price_per_day: 250, owner_id: user.id, address: "Bahamas", weight:"1,5tonne", skills:"Chef, peut décapiter un poisson d'un seul regard")
shark11 = Shark.create(name: "Arc en Ciel", description: "Tout simplement le plus beau poisson de l'océan", price_per_day: 100, owner_id: user.id, address: "Saint Malo", weight:"800grammes", skills:"Apprends vite, partageur")
shark12 = Shark.create(name: "Loche zebrée", description: "Petit poisson régulant les populations d'escargots d'eau douce", price_per_day: 20, owner_id: user.id, address: "India", weight:"100grammes", skills:"Se faufile partout, aime les escargots")
shark13 = Shark.create(name: "Moby Dick", description: "Grande baleine blanche, némésis du capitain Achab", price_per_day: 3000, owner_id: user.id, address: "Nantucket", weight:"8 tonnes", skills:"Solide, peut tracter un bateau")
shark14 = Shark.create(name: "Sergent major à queue en ciseaux", description: "Petit poisson omnivore à tendance carnivore", price_per_day: 25, owner_id: user.id, address: "Indian Ocean", weight:"400grammes", skills:"Sociable, vif, agressif si besoin")
shark15 = Shark.create(name: "Paul le Poulpe", description: "Poulpe qui prédit l'avenir, citoyen d'honneur de O Carballiño", price_per_day: 2000, owner_id: user.id, address: "Oberhausen", weight:"1,5kg", skills:"Oracle, visionnaire, fan de foot")

file = URI.open("https://res.cloudinary.com/dqxolg01p/image/upload/v1701186279/vvk61g10tho4vrzj07z5.jpg")
file_2 = URI.open("https://res.cloudinary.com/dqxolg01p/image/upload/v1701250814/l3vz0er3cvm2ydg6pxrn.jpg")
file_3 = URI.open("https://res.cloudinary.com/dqxolg01p/image/upload/v1701182157/sebastian-pena-lambarri-poly_hmhwJs-unsplash_s4vigi.jpg")
shark1.photos.attach([
  { io: file, filename: "Nemo.jpg", content_type: "image/jpg" },
  { io: file_2, filename: "Nemo_2.png", content_type: "image/jpg" },
  { io: file_3, filename: "Nemo_3.png", content_type: "image/jpg" }
])

file = URI.open("https://res.cloudinary.com/dqxolg01p/image/upload/v1701186287/xqavpcivs3msufdddbcv.jpg")
file_2 = URI.open("https://res.cloudinary.com/dqxolg01p/image/upload/v1701250865/beet65fiuk8vzg09iblm.jpg")
file_3 = URI.open("https://res.cloudinary.com/dqxolg01p/image/upload/v1701342828/Dory3_jzfuyy.jpg")
shark2.photos.attach([
  { io: file, filename: "Dory.jpg", content_type: "image/jpg" },
  { io: file_2, filename: "Dory2.jpg", content_type: "image/jpg" },
  { io: file_3, filename: "Dory3.jpg", content_type: "image/jpg" }
])

file = URI.open("https://res.cloudinary.com/dqxolg01p/image/upload/v1701186267/g3tueo287ksownxxdawb.jpg")
file_2 = URI.open("https://res.cloudinary.com/dqxolg01p/image/upload/v1701250815/jr4rpl65fbkvkvskdujt.jpg")
file_3 = URI.open("https://res.cloudinary.com/dqxolg01p/image/upload/v1701343106/Polochon3_dxeafy.jpg")
shark3.photos.attach([
  { io: file, filename: "Polochon.jpg", content_type: "image/jpg" },
  { io: file_2, filename: "Polochon2.jpg", content_type: "image/jpg" },
  { io: file_3, filename: "Polochon3.jpg", content_type: "image/jpg" }
])

file = URI.open("https://res.cloudinary.com/dqxolg01p/image/upload/v1701267267/jhzh5dbhajspqjl1tavh.jpg")
file_2 = URI.open("https://res.cloudinary.com/dqxolg01p/image/upload/v1701343390/Flo_3_wb3icn.jpg")
file_3 = URI.open("https://res.cloudinary.com/dqxolg01p/image/upload/v1701343400/Flo2_ctqw39.jpg")
shark4.photos.attach([
  { io: file, filename: "Flo.jpg", content_type: "image/jpg" },
  { io: file_2, filename: "Flo2.jpg", content_type: "image/jpg" },
  { io: file_3, filename: "Flo3.jpg", content_type: "image/jpg" }
])

file = URI.open("https://res.cloudinary.com/dqxolg01p/image/upload/v1701290649/Oscar-gang_de_requins_qc5s8p.jpg")
file_2 = URI.open("https://res.cloudinary.com/dqxolg01p/image/upload/v1701290648/Oscar-bis-gang_de_requins_kvrpir.jpg")
file_3 = URI.open("https://res.cloudinary.com/dqxolg01p/image/upload/v1701344164/Oscar3_yiq8fk.jpg")
shark5.photos.attach([
  { io: file, filename: "Oscar.jpg", content_type: "image/jpg" },
  { io: file_2, filename: "Oscar2.jpg", content_type: "image/jpg" },
  { io: file_3, filename: "Oscar3.jpg", content_type: "image/jpg" }
])

file = URI.open("https://res.cloudinary.com/dqxolg01p/image/upload/v1701290646/Angibis-gang_de_requins_wbrxhs.jpg")
file_2 = URI.open("https://res.cloudinary.com/dqxolg01p/image/upload/v1701344870/Lola2_ahk7qy.webp")
file_3 = URI.open("https://res.cloudinary.com/dqxolg01p/image/upload/v1701345002/Lola3_tm4kyp.jpg")
shark6.photos.attach([
  { io: file, filename: "Lola.jpg", content_type: "image/jpg" },
  { io: file_2, filename: "Lola2.jpg", content_type: "image/jpg" },
  { io: file_3, filename: "Lola3.jpg", content_type: "image/jpg" },
])

file = URI.open("https://res.cloudinary.com/dqxolg01p/image/upload/v1701290646/Lenny-gang_de_requins_j5bwj6.jpg")
file_2 = URI.open("https://res.cloudinary.com/dqxolg01p/image/upload/v1701341518/Lenny_grand-blanc_taunff.avif")
file_3 = URI.open("https://res.cloudinary.com/dqxolg01p/image/upload/v1701341520/Lenny-_gang_de_requins_ucysg8.jpg")
shark7.photos.attach([
  { io: file, filename: "Lenny.jpg", content_type: "image/jpg" },
  { io: file_2, filename: "Lenny2.jpg", content_type: "image/jpg" },
  { io: file_3, filename: "Lenny3.jpg", content_type: "image/jpg" }
])

file = URI.open("https://res.cloudinary.com/dqxolg01p/image/upload/v1701290646/Sykes-gang_de_requins_oozcgc.jpg")
file_2 = URI.open("https://res.cloudinary.com/dqxolg01p/image/upload/v1701290650/sykes_poisson_globe_akz4sl.jpg")
file_3 = URI.open("https://res.cloudinary.com/dqxolg01p/image/upload/v1701290647/sykes_poisson_globe_bis_gsbx5r.jpg")
shark8.photos.attach([
  { io: file, filename: "Sykes.jpg", content_type: "image/jpg" },
  { io: file_2, filename: "Sykes2.jpg", content_type: "image/jpg" },
  { io: file_3, filename: "Sykes3.jpg", content_type: "image/jpg" }
])

file = URI.open("https://res.cloudinary.com/dqxolg01p/image/upload/v1701290646/Angie-gang_de_requins_dpgw8i.jpg")
file_2 = URI.open("https://res.cloudinary.com/dqxolg01p/image/upload/v1701290653/lola-bis-gang_de_requins_j3u7hc.jpg")
file_3 = URI.open("https://res.cloudinary.com/dqxolg01p/image/upload/v1701346356/angie_3_r4jzeb.jpg")
shark9.photos.attach([
  { io: file, filename: "Angie.jpg", content_type: "image/jpg" },
  { io: file_2, filename: "Angie2.jpg", content_type: "image/jpg" },
  { io: file_3, filename: "Angie3.jpg", content_type: "image/jpg" }
])

file = URI.open("https://res.cloudinary.com/dqxolg01p/image/upload/v1701341517/Don_Edward_Lino1_jh7ncb.webp")
file_2 = URI.open("https://res.cloudinary.com/dqxolg01p/image/upload/v1701346701/donlino2_nk87kg.jpg")
file_3 = URI.open("https://res.cloudinary.com/dqxolg01p/image/upload/v1701346701/donlino3_gfwizw.jpg")
shark10.photos.attach([
  { io: file, filename: "Don Edward Lino.jpg", content_type: "image/jpg" },
  { io: file_2, filename: "Don Edward Lino2.jpg", content_type: "image/jpg" },
  { io: file_3, filename: "Don Edward Lino3.jpg", content_type: "image/jpg" }
])

file = URI.open("https://res.cloudinary.com/dqxolg01p/image/upload/v1701290652/Arcencie_jimd12.jpg")
file_2 = URI.open("https://res.cloudinary.com/dqxolg01p/image/upload/v1701347410/Arcenciel2_dgu9og.jpg")
file_3 = URI.open("https://res.cloudinary.com/dqxolg01p/image/upload/v1701347409/arcenciel3_easlsr.jpg")
shark11.photos.attach([
  { io: file, filename: "Arcenciel.jpg", content_type: "image/jpg" },
  { io: file_3, filename: "Arcenciel2.jpg", content_type: "image/jpg" },
  { io: file_3, filename: "Arcenciel3.jpg", content_type: "image/jpg" }
])

file = URI.open("https://res.cloudinary.com/dqxolg01p/image/upload/v1701341521/lochezebre%CC%81e1_jpkgw1.jpg")
file_2 = URI.open("https://res.cloudinary.com/dqxolg01p/image/upload/v1701341524/lochezebre%CC%81e2_jl3wtz.jpg")
file_3 = URI.open("https://res.cloudinary.com/dqxolg01p/image/upload/v1701341523/locheze%CC%81bre%CC%81e3_aqinv1.jpg")
shark12.photos.attach([
  { io: file, filename: "Loche zébrée.jpg", content_type: "image/jpg" },
  { io: file_2, filename: "Loche zébrée2.jpg", content_type: "image/jpg" },
  { io: file_3, filename: "Loche zébrée3.jpg", content_type: "image/jpg" }
])

file = URI.open("https://res.cloudinary.com/dqxolg01p/image/upload/v1701341526/Mobydick1_o1aq7c.jpg")
file_2 = URI.open("https://res.cloudinary.com/dqxolg01p/image/upload/v1701341527/Mobydick2_w1xgvz.jpg")
file_3 = URI.open("https://res.cloudinary.com/dqxolg01p/image/upload/v1701341529/Mobydick3_area7f.jpg")
shark13.photos.attach([
  { io: file, filename: "Mobydick.jpg", content_type: "image/jpg" },
  { io: file_2, filename: "Mobydick2.jpg", content_type: "image/jpg" },
  { io: file_3, filename: "Mobydick3.jpg", content_type: "image/jpg" }
])

file = URI.open("https://res.cloudinary.com/dqxolg01p/image/upload/v1701341790/sergentmajor_pcrydh.jpg")
file_2 = URI.open("https://res.cloudinary.com/dqxolg01p/image/upload/v1701347909/sergentmajor2_zvxpcp.jpg")
file_3 = URI.open("https://res.cloudinary.com/dqxolg01p/image/upload/v1701347909/sergentmajor3_o9jbep.jpg")
shark14.photos.attach([
  { io: file, filename: "Sergentmajor.jpg", content_type: "image/jpg" },
  { io: file_2, filename: "Sergentmajor2.jpg", content_type: "image/jpg" },
  { io: file_3, filename: "Sergentmajor3.jpg", content_type: "image/jpg" }
])

file = URI.open("https://res.cloudinary.com/dqxolg01p/image/upload/v1701341911/Oktopus-Orakel_Paul_mit_Schuh_gsqytr.jpg")
file_2 = URI.open("https://res.cloudinary.com/dqxolg01p/image/upload/v1701348265/paullepoulpe2_hqsa3c.jpg")
file_3 = URI.open("https://res.cloudinary.com/dqxolg01p/image/upload/v1701348265/paullepoulpe3_dra1mf.jpg")
shark15.photos.attach([
  { io: file, filename: "Paulpoulpe.jpg", content_type: "image/jpg"},
  { io: file_2, filename: "Paulpoulpe2.jpg", content_type: "image/jpg"},
  { io: file_3, filename: "Paulpoulpe3.jpg", content_type: "image/jpg"}
])

puts "Sauvegarde les sharks"
shark1.save
shark2.save
shark3.save
shark4.save
shark5.save
shark6.save
shark7.save
shark8.save
shark9.save
shark10.save
shark11.save
shark12.save
shark13.save
shark14.save
shark15.save
