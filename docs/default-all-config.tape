# Ortak VHS config dosyasi.
# Kullanim: ana .tape dosyanin en ust tarafina `Source docs/config.tape` ekle.
# Not: Bu dosyada Output yok; Source ile kullanilinca ana tape'in Output satiri ezilmesin diye.

# Require satirlari programin PATH icinde olup olmadigini en basta kontrol eder.
# Eksikse VHS hemen hata verir; demo yarida bozuk cikti uretmez.
# Bu satirlar senin "olmazsa olmaz" temel bagimliliklarin olarak otomatik eklendi.
# bash: Tape icindeki komutlari bash kabugunda calistirmak icin gerekir.
Require bash
# glow: Markdown dosyalarini terminalde guzel render etmek icin gerekir.
Require glow
# bat: Dosya/markdown/kod icerigini renkli ve okunakli gostermek icin gerekir.
Require bat
# less: Glow/bat gibi araclarda uzun Markdown icin daha iyi pager deneyimi verir.
Require less
# base64: Dosya veya metin icerigini terminal demosunda base64 encode/decode etmek icin gerekir.
Require base64
# more: less yoksa veya sade sayfalama istenirse uzun metni sayfa sayfa gostermek icin gerekir.
Require more
# cat: Markdown veya metin dosyasini ham haliyle gostermek icin gerekir.
Require cat
# echo: Basit terminal ciktilari ve test mesajlari icin gerekir.
Require echo
# sed: Markdown/metin icinde satir temizleme, kisa donusum ve demo hazirligi icin gerekir.
Require sed
# awk: Markdown/metin icinden bolum, tablo veya secili alan cikarmak icin gerekir.
Require awk
# grep: Markdown/metin icinde baslik, anahtar kelime veya bolum aramak icin gerekir.
Require grep
# head: Dosyanin ilk bolumunu kisa ve temiz gostermek icin gerekir.
Require head
# tail: Dosyanin son bolumunu veya log akisinin sonunu gostermek icin gerekir.
Require tail
# wc: Satir/kelime/karakter sayisi gibi kisa istatistikleri gostermek icin gerekir.
Require wc
# fold: Uzun satirlari terminal genisligine gore kirmak icin gerekir.
Require fold
# tput: Terminal renk/sutun/satir bilgisi almak ve gorunumu ayarlamak icin gerekir.
Require tput
# stty: Terminal boyutu ve TTY davranisini kontrol etmek icin gerekir.
Require stty
# sleep: Komut satiri icinde bekleme/senaryo zamanlamasi yapmak icin gerekir.
Require sleep
# date: Tarih/saat ciktisi gosteren demolar icin gerekir.
Require date
# clear: Ekrani temizleyip kayda temiz gorunumle baslamak icin gerekir.
Require clear
# printf: Daha kontrollu ve formatli terminal ciktisi basmak icin gerekir.
Require printf
# ffmpeg: VHS final gif/mp4/webm render icin zaten ister; burada da acik zorunlu olarak dursun.
Require ffmpeg
# ttyd: VHS tarayici icinde terminal acmak icin zaten ister; burada da acik zorunlu olarak dursun.
Require ttyd

# Ek guzel gorunum araclari:
# gum: Charmbracelet TUI bilesenleri; tablo, pager, secim ekranlari cok guzel gorunur.
Require gum
# pandoc: Markdown'u farkli formatlara donusturmek icin guclu arac.
Require pandoc
# jq: JSON ciktilarini renklendirmek/duzenlemek icin.
Require jq
# curl: Demo icinde web/API icerigi cekmek icin.
Require curl
# chafa: Terminalde gorsel/resim gostermek icin.
Require chafa
# viu: Terminalde gorsel/resim gostermek icin alternatif.
Require viu
# mdcat: Markdown icin alternatif terminal renderer; resmi pacman reposunda paket bulunamadi.
# Require mdcat

# Shell: Komutlarin hangi kabukta calisacagini belirler.
# Desteklenenler: bash, zsh, fish, nu, osh, xonsh, pwsh, powershell, cmd.
# bash daha tahmin edilebilir script davranisi verir; degistirirsen komut soz dizimi de degisebilir.
Set Shell "bash"

# Width: Final video/gif genisligi, piksel.
# Artarsa goruntu genisler ve terminale daha cok kolon sigar; dosya boyutu/render suresi artabilir.
# Azalirsa daha dar ve kompakt olur; uzun satirlar daha erken kirilir veya tasar.
Set Width 1200

# Height: Final video/gif yuksekligi, piksel.
# Artarsa daha cok satir gorunur; dosya boyutu/render suresi artabilir.
# Azalirsa daha az satir gorunur; uzun ciktilar icin kaydirma veya daha kucuk font gerekebilir.
Set Height 720

# FontFamily: Terminal font ailesi.
# JetBrains Mono okunakli monospaced varsayimdir; sistemde yoksa tarayici fallback font kullanir.
# Daha genis font satirlari daha cabuk kirar; daha dar font ayni genislikte daha cok karakter gosterir.
Set FontFamily "JetBrains Mono"

# FontSize: Harf boyutu, piksel.
# Artarsa yazi daha okunakli ve yakin plan olur; ekrana daha az kolon/satir sigar.
# Azalirsa daha cok icerik sigar; mobilde veya GIF izlerken okunabilirlik dusebilir.
Set FontSize 22

# LetterSpacing: Harfler arasi ek bosluk.
# Artarsa metin havadar olur ama satira daha az karakter sigar.
# Azalirsa metin sikisir; 0 veya negatif degerler okunabilirligi bozabilir.
Set LetterSpacing 1.0

# LineHeight: Satir yuksekligi carpani.
# Artarsa satirlar acilir, okumasi rahatlar; ekrana daha az satir sigar.
# Azalirsa daha cok satir sigar; cok dusuk degerlerde satirlar ust uste binebilir.
Set LineHeight 1.0

# TypingSpeed: Type ve hiz belirtilmemis tus komutlari arasindaki varsayilan bekleme.
# Artarsa yazma animasyonu yavaslar ve daha dogal gorunur.
# Azalirsa demo hizlanir; cok dusuk degerlerde izleyici komutlari takip etmekte zorlanabilir.
Set TypingSpeed 50ms

# Framerate: Saniyedeki kare sayisi.
# Artarsa hareket daha akici olur; dosya boyutu ve render maliyeti artar.
# Azalirsa dosya kuculur; hareket daha kesik gorunebilir.
Set Framerate 50

# PlaybackSpeed: Kaydin oynatma hizi carpani.
# 1.0 normal hizdir. Artarsa cikti daha hizli oynar; sure kisalir.
# Azalirsa daha yavas oynar; sure ve kare sayisi etkisiyle dosya boyutu artabilir.
Set PlaybackSpeed 1.0

# Padding: Terminal icerigi ile video kenari arasindaki ic bosluk, piksel.
# Artarsa terminal nefes alir ve daha sunum gibi gorunur; kullanilabilir terminal alani azalir.
# Azalirsa daha cok icerik sigar; 0 kenara yapisik ve daha sert bir gorunum verir.
Set Padding 40

# Margin: Terminal disinda kalan cerceve/arka plan kalinligi, piksel.
# Artarsa terminal daha kucuk bir pencere gibi durur; dis alan genisler.
# Azalirsa terminal alani buyur; 0 dis cerceveyi kaldirir.
Set Margin 0

# MarginFill: Margin alaninin dolgusu.
# Hex renk (#RRGGBB) ya da resim yolu olabilir. Renk stabil ve temizdir.
# Resim yolu verirsen arka plan gorseli kullanilir; dosya okunamazsa render hata verebilir.
Set MarginFill "#171717"

# WindowBar: Ust pencere bari stili.
# Gecerli degerler: "" (yok), Colorful, ColorfulRight, Rings, RingsRight.
# Bar acilirsa pencere hissi artar; dikey alandan WindowBarSize kadar yer ayrilir.
Set WindowBar "Colorful"

# WindowBarSize: Ust pencere barinin yuksekligi, piksel.
# Artarsa bar ve noktalar daha belirgin olur; terminal icerigi icin kalan yukseklik azalir.
# Azalirsa daha ince gorunur; cok kucuk degerlerde noktalar ezilebilir.
Set WindowBarSize 32

# BorderRadius: Terminal/pencere kose yuvarlakligi, piksel.
# Artarsa daha yumusak modern kose verir.
# Azalirsa daha koseli olur; 0 tamamen keskin kosedir.
Set BorderRadius 10

# Theme: Terminal renk paleti.
# Tema adi (THEMES.md icinden) veya JSON tema verilebilir.
# Tema degisirse ANSI renkleri, foreground/background, cursor renkleri topluca degisir.
Set Theme "Catppuccin Mocha"

# BackgroundColor: Video icinde terminalin arka plan rengi.
# Theme arka planini override eder; Theme'den sonra yazilmasi gerekir.
# Acik renk daha parlak, koyu renk daha kontrastli terminal gorunumu verir.
Set BackgroundColor "#1e1e2e"

# WindowBarColor: WindowBar arka plan rengi.
# Theme set edilince tema background'una doner; bu yuzden Theme'den sonra tutuldu.
# Terminal background ile ayni olursa butunlesir; farkli olursa bar ayrisir.
Set WindowBarColor "#181825"

# CursorColor: Terminal imlecinin rengi.
# Artan kontrast imleci daha kolay takip ettirir; cok soluk renk imleci kaybettirir.
Set CursorColor "#f5e0dc"

# CursorAccent: Blok cursor icindeki metin/aksan rengi.
# CursorColor ile kontrastli olursa imlec altindaki karakter okunur.
# Benzer renge cekilirse cursor daha sade ama karakter daha zor okunur.
Set CursorAccent "#1e1e2e"

# SelectionColor: Secim vurgusu rengi.
# Copy/select gosterilen demolar icin belirgindir; normal kayitta etkisi sadece secim varsa gorulur.
# Daha kontrastli renk secili alani one cikarir; cok parlak renk dikkat dagitabilir.
Set SelectionColor "#45475a"

# CursorBlink: Imlecin yanip sonmesini kontrol eder.
# true daha canli terminal hissi verir; false daha stabil kareler ve sakin GIF uretir.
Set CursorBlink true

# LoopOffset: GIF donguye girerken sondan basa geciste atlanacak yuzde.
# Artarsa dongu baslangica daha erken sarar ve bekleme kisalir.
# Azalirsa son kareler daha uzun korunur; 0 hic offset uygulamaz.
Set LoopOffset 0%

# WaitTimeout: Wait komutlarinin varsayilan maksimum bekleme suresi.
# Artarsa yavas komutlara tolerans artar; takilan demo daha gec hata verir.
# Azalirsa hata daha erken yakalanir; yavas makinelerde false negative olabilir.
Set WaitTimeout 15s

# WaitPattern: Wait icin varsayilan regex.
# Varsayilan `>$` prompt sonunu bekler. Shell prompt'unu degistirirsen bunu da guncelle.
# Daha dar pattern daha kesin bekler; daha genel pattern erken gecip komutlarin ust uste binmesine yol acabilir.
Set WaitPattern />$/
