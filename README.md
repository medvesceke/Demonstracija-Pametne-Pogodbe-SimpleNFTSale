Navodila za demonstracijo s spletnim vmesnikom
Uvedba pogodbe:

Uvedite vašo pogodbo SimpleNFTSale na testno omrežje (npr. Sepolia) ali uporabite lokalno vozlišče (npr. Hardhat).

Zapišite si naslov pogodbe (Contract Address).
0x49D87fe14FC979Acb2A1b69dB583a478bCA80c25


Priprava HTML:

Shranite zgornjo kodo kot index.html.

Odprite datoteko index.html v brskalniku (npr. Chrome ali Firefox).

Konfiguracija vmesnika:

V polje "Naslov Pogodbe" vnesite naslov pogodbe, ki ste si ga zapisali v 1. koraku.

Demonstracija (koraki):

A. Prodajalec (Lastnik):

Preverite, da ste povezani kot Lastnik pogodbe v MetaMasku.

Kliknite "1. Skovanje (mintCar)" (transakcijo potrdite v MetaMasku).

V polje za ceno vnesite želeno vrednost (privzeto je 1 ETH v wei-ih).

Kliknite "2. Daj naprodaj (setForSale)" (transakcijo potrdite v MetaMasku).

B. Preverjanje:

Kliknite "Prikaži Trenutno Stanje (getInfo)". Izhod bi moral pokazati, da je Naprodaj? DA.

C. Kupec:

V MetaMasku preklopite na drugi račun (račun Kupca), ki ima dovolj ETH za nakup.

Kliknite "3. Kupi (buy)". Funkcija samodejno prebere ceno, nastavi value in zahteva transakcijo. Potrdite jo.

D. Preverjanje prenosa:

Ponovno kliknite "Prikaži Trenutno Stanje (getInfo)".

Izhod mora pokazati, da je Trenutni lastnik zdaj naslov Kupca in Naprodaj? je NE.
