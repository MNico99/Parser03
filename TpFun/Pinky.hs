data Animal = Animal {
    iq :: Int,
    especie :: String,
    capacidades :: [String] 
} deriving Show

leon = Animal 500 "Felino" ["Morder", "Atacar", "Ronrronear"]

macri = Animal 2 "Felino" ["Aumentar el dolar", "Gato hay para rato"]

ff = Animal 1 "Ave" ["No vuela", "Choriwonka", "Cristibook", "Manaos con pitusas"]

inteligenciaSuperior :: Int -> Animal -> Animal
inteligenciaSuperior n (Animal iq especie capacidades) = Animal (iq + n) especie capacidades

pinkificar :: Animal -> Animal
pinkificar (Animal iq especie _) = (Animal iq especie [])
