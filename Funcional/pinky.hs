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
pinkiman = UnAnimal 10 "mami" ["pinkisoo","pinkiesa","morder"]

inteligenciaSuperior :: Animal -> Int -> Animal
inteligenciaSuperior (UnAnimal iq especie capacidades) n = UnAnimal (iq+n) especie capacidades

pinkificar :: Animal -> Animal
pinkificar (UnAnimal iq especie capacidades) = UnAnimal iq especie []

superpoderes :: Animal -> Animal
superpoderes (UnAnimal iq especie capacidades)
    | especie == "elefante" = UnAnimal iq "elefante" ("NoMiedoARaton":capacidades)
    | especie == "raton" = UnAnimal iq "raton" ("Hablar":capacidades)
    | otherwise = UnAnimal iq especie capacidades

antropomorfismo :: Animal -> Bool
antropomorfismo (UnAnimal iq especie capacidades)
    | (iq > 60) && elem "Hablar" capacidades = True
    | otherwise = False

noTanCuerdo :: Animal -> Bool
-- Tiene más de dos habilidades que comienzan con pinki
noTanCuerdo (UnAnimal iq especie capacidades) 
    | length(filter (esPinkieska) (capacidades)) >= 2 = True
    | otherwise = False

esPinkieska :: String -> Bool
esPinkieska string = take (5) string == "pinki"




