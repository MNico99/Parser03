-- type TAnimal = (Int,String,[String])

data Animal = UnAnimal{
    iq :: Int,
    especie :: String,
    capacidades :: [String]
} deriving Show

elefante = UnAnimal 50 "mamifero" ["comerMani"]
leon = UnAnimal 80 "felino" ["morder","ronrronear"]
macri = UnAnimal 10 "felino" ["aumentarDolar"]
ff = UnAnimal 10 "ave" ["choripan","cristibooks","manaosConPitusas"]

inteligenciaSuperior :: Animal -> Int -> Animal
inteligenciaSuperior (UnAnimal iq especie capacidades) n = UnAnimal (iq+n) especie capacidades

pinkificar :: Animal -> Animal
pinkificar (UnAnimal iq especie capacidades) = UnAnimal iq especie []

superpoderes :: Animal -> Animal
superpoderes UnAnimal (iq especie capacidades)
    | UnAnimal (iq "elefante" capacidades) = UnAnimal (iq "elefante" "NoMiedoARaton":capacidades)
    | UnAnimal ( (iq>100) "raton" capacidades) = UnAnimal (iq "raton" "Hablar":capacidades)
    | otherwise UnAnimal = UnAnimal (iq especie capacidades)




