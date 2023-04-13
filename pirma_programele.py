import random

# zaidimas atspeti skaiciu nuo 1 iki 10
print("\nAtspek skaiciu nuo 1 iki 10")
mano_skaicius = int(input("Iveskite savo skaiciu: "))
ai_skaicius = random.randint(1,10)
if mano_skaicius == ai_skaicius:
    print("OHO atspejai! >:0, mano skaicius buvo: ", ai_skaicius)
elif mano_skaicius != ai_skaicius:
    print("neatspejai, bandyk dar karta ;) mano skaicius buvo: ", ai_skaicius)
else:
    print("kazkokia nesamone ivedei, krc bandyk  dar karta..\n")


# programele sugeneruoti komandas atsitikine tvarka
zmogeliukai = [
"Raimonda Anisimova",
"Žygimantas Bičkus",
"Jūratė Krupavičienė",
"Karolis Tamulevičius",
"Andrius Mačaitis",
"Renaldas Zvėga",
"Milda Auglytė",
"Karolis Venckus",
"Mantvydas Račickas",
"Robertas Sapronavičius",
"Deividas Skestenis",
"Karolis Jasadavičius",
"Andrius Gedvilas",
"Tadas Zupka",
"Bronius Grigaras",
"Evelina Stonytė",
"Petras Anskaitis",
"Darius Kašėta",
"Erikas Jankauskas",
"Alan Žink",
"Loreta Papučkaitė"]

zmoniu_suma_sarase = len(zmogeliukai)
komandu_kiekis = 3

while zmoniu_suma_sarase > 0 and komandu_kiekis > 0:
    komanda = random.sample(zmogeliukai, int(zmoniu_suma_sarase/komandu_kiekis))
    for zmogus in komanda:
        zmogeliukai.remove(zmogus)
    zmoniu_suma_sarase -= int(zmoniu_suma_sarase/komandu_kiekis)
    komandu_kiekis -= 1
    print("\nKomanda Nr.", (3-komandu_kiekis), komanda)