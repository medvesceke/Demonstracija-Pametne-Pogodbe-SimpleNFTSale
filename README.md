<!DOCTYPE html>
<html lang="sl">
<head>
    <meta charset="UTF-8">
    <title>Navodila za Demonstracijo: SimpleNFTSale</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 20px;
            padding: 20px;
            background-color: #f4f7f6;
            color: #333;
            line-height: 1.6;
        }
        .container {
            max-width: 900px;
            margin: 0 auto;
            background-color: #ffffff;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
        }
        h1 {
            color: #007bff;
            border-bottom: 3px solid #007bff;
            padding-bottom: 10px;
            margin-bottom: 25px;
            text-align: center;
        }
        h2 {
            color: #28a745;
            margin-top: 30px;
            border-bottom: 2px solid #28a745;
            padding-bottom: 5px;
        }
        h3 {
            color: #6c757d;
            margin-top: 20px;
        }
        .step {
            margin-bottom: 20px;
            padding-left: 20px;
            border-left: 4px solid #ffc107;
        }
        .step-title {
            font-weight: bold;
            color: #555;
            font-size: 1.1em;
        }
        .note {
            background-color: #e9f7fe;
            border: 1px solid #cce5ff;
            color: #004085;
            padding: 15px;
            border-radius: 5px;
            margin-top: 15px;
        }
        .role {
            font-weight: bold;
            color: #dc3545; /* Rdeča za poudarek vloge */
        }
        ol {
            padding-left: 25px;
        }
        li {
            margin-bottom: 10px;
        }
    </style>
</head>
<body>

    <div class="container">
        <h1>🚀 Navodila za Demonstracijo: SimpleNFTSale</h1>
        
        <div class="note">
            <p><strong>Cilj demonstracije:</strong> Prikazati celoten življenjski cikel NFT (skovanje, nastavitev cene, nakup in prenos lastništva) z uporabo spletnega vmesnika in MetaMaska.</p>
        </div>

        <h2>1. Priprava Okolja (Pred zagonom)</h2>
        
        <div class="step">
            <div class="step-title">1. Uvedba Pogodbe</div>
            <p>Uvedite vašo pogodbo <code>SimpleNFTSale</code> na izbrano testno omrežje (npr. Sepolia, ali lokalni Hardhat/Ganache/Remix VM).</p>
            <p><strong>Ključno:</strong> Zapišite si naslov pogodbe (Contract Address).</p>
        </div>

        <div class="step">
            <div class="step-title">2. Priprava Računov</div>
            <p>V MetaMasku potrebujete dva računa, ki imata nekaj testnega ETH:</p>
            <ul>
                <li>**Račun A (<span class="role">Prodajalec/Lastnik Pogodbe</span>):** Račun, ki je uvedel pogodbo in bo skoval NFT.</li>
                <li>**Račun B (<span class="role">Kupec</span>):** Račun, ki bo izvedel nakup.</li>
            </ul>
        </div>
        
        <div class="step">
            <div class="step-title">3. Zagon Vmesnika</div>
            <p>Odprite datoteko <code>index.html</code> (vaš spletni vmesnik) v brskalniku.</p>
            <p>V polje **"Naslov Pogodbe"** v vmesniku vnesite naslov pogodbe iz koraka 1.</p>
        </div>

        <h2>2. Demonstracija - Prodajalec Pripravi NFT</h2>
        
        <div class="step">
            <h3>A. Preklop na Prodajalca</h3>
            <p>V MetaMasku se prepričajte, da ste preklopljeni na **Račun A (<span class="role">Prodajalec</span>)**.</p>
        </div>

        <div class="step">
            <h3>B. Skovanje (Minting)</h3>
            <ol>
                <li>Vnesite želeni ID žetona (npr. **1**) v polje "ID žetona".</li>
                <li>Kliknite gumb **"1. Skovanje (mintCar)"**.</li>
                <li>Potrdite transakcijo v MetaMasku.</li>
                <li>**Preverjanje:** Kliknite **"Prikaži Trenutno Stanje (getInfo)"**. Prikaže se naslov Prodajalca kot lastnika.</li>
            </ol>
        </div>

        <div class="step">
            <h3>C. Nastavitev cene in Prodaja</h3>
            <ol>
                <li>Vnesite želeno ceno (npr. **1000000000000000000** za 1 ETH) v polje "Cena (v Wei)".</li>
                <li>Kliknite gumb **"2. Daj naprodaj (setForSale)"**.</li>
                <li>Potrdite transakcijo.</li>
                <li>**Preverjanje:** Kliknite **"Prikaži Trenutno Stanje (getInfo)"**. Prikaže se, da je `Naprodaj?` **DA** in določena cena.</li>
            </ol>
        </div>

        <h2>3. Demonstracija - Kupec Kupi NFT</h2>

        <div class="step">
            <h3>A. Preklop na Kupca</h3>
            <p>V MetaMasku se **obvezno preklopite** na **Račun B (<span class="role">Kupec</span>)**.</p>
        </div>

        <div class="step">
            <h3>B. Nakup</h3>
            <ol>
                <li>Kliknite gumb **"3. Kupi (buy) - Potreben ETH v 'Value'"**.</li>
                <li>MetaMask bo samodejno zahteval potrditev transakcije z zahtevanim zneskom ETH. Potrdite transakcijo.</li>
            </ol>
        </div>

        <div class="step">
            <h3>C. Končno Preverjanje</h3>
            <ol>
                <li>Kliknite ponovno **"Prikaži Trenutno Stanje (getInfo)"**.</li>
                <li>**Pričakovani rezultat:**</li>
                <ul>
                    <li>`Trenutni lastnik:` mora biti naslov **Kupca** (Račun B).</li>
                    <li>`Naprodaj?` mora biti **NE**.</li>
                </ul>
            </ol>
        </div>

        <div class="note" style="background-color: #fff3cd; border: 1px solid #ffeeba; color: #856404;">
            **NASVET:** Če pride do napake pri nakupu (`buy`), preverite, ali imate v MetaMasku res preklopljen naslov Kupca in ali ima ta naslov dovolj sredstev za plačilo.
        </div>

    </div>

</body>
</html>
