# Code Exploit

Owner: Vikram Laheri

WhatsApp bot — Levanter (MIT licence, by lyfe00011) ke asli code par bana hai, naam aur branding Code Exploit.

## Kya badla hai

- Menu aur help ka header: `CODE EXPLOIT`
- `.menu` photo ke saath aata hai aur neeche owner naam + channel link (photo na bheje ja sake to sirf text menu)
- Sticker pack default: `BIHAR_KE_BAHUBALI,Vikram_Laheri_`
- Auto update default OFF (ON karne par original bot ka code wapas aa sakta hai aur naam phir badal jayega)
- Dockerfile isi folder ki files se build karta hai

## Kya nahi badla

- Bot ka engine (`lib/`) original aur band (obfuscated) code hai — usme koi badlav nahi
- Session ID original bot ke session generator se hi banegi (`levanter_...` format)
- Kuch commands (news, qr, downloads) original bot ke server par chalte hain
- pm2 process ka naam andar se `levanter` hi hai (WhatsApp par kahin nahi dikhta)

## Chalane ka tarika

1. Node.js 20+, git, ffmpeg aur yarn install karo
2. Is folder me `config.env.example` ki copy `config.env` naam se banao
3. `config.env` me `SESSION_ID` (apni session ID) aur `SUDO` (owner number, country code ke saath, bina +) bharo
4. `yarn install`
5. `npm start`

## Badalne wali cheezein (config.env)

- `CHANNEL_LINK` — menu ke neeche wala channel link
- `OWNER_NAME` — menu ke neeche dikhne wala owner naam
- `MENU_IMAGE` — menu ki photo ka link (khaali chhodo to sirf text menu)
- `STICKER_PACKNAME` — sticker pack ka naam

Bot chalu hone ke baad ke commands `SETUP-COMMANDS.txt` me hain.


## Bot connect kaise kare (step by step)

1. Levanter ke official session generator par apna WhatsApp number link karo
   (WhatsApp > Linked devices). Wahan se ek session ID milegi, jo `levanter_` se shuru hoti hai.
2. Is folder me `config.env.example` ki copy banao aur naam `config.env` rakho.
3. `config.env` kholo aur ye do line bharo:
   - `SESSION_ID="levanter_..."`  (step 1 wali ID)
   - `SUDO="91xxxxxxxxxx"`        (owner ka number, country code ke saath, bina + ke)
4. Terminal me: `yarn install`
5. Phir: `npm start`
6. Bot chalu hote hi WhatsApp par `.ping` aur `.menu` bhej kar check karo.
7. Uske baad `SETUP-COMMANDS.txt` ki lines ek-ek karke bot ko bhejo (settings + extra plugins).

Dhyan rahe:
- Session ID kisi ko mat bhejo. Jiske paas ye ID hai wo tumhara WhatsApp chala sakta hai.
- Pehle kisi spare number par chala kar dekho.
- `.call on` / `.call off` aane wali call auto-reject karne ka switch hai.
