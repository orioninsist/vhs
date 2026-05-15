# VHS Animation Komutlari - sadece hareket/animasyon kismi.
# Require, Set, tema, font, pencere, boyut ve genel ayarlar burada yok.
# Onlar docs/default-all-config.tape icinde durur.
#
# Kullanim mantigi:
# - Type: terminale yazi yazar.
# - Sleep: bekleme/kesme verir.
# - Enter/Tab/Backspace/ok tuslari: klavye animasyonu verir.
# - Wait: komut ciktisini bekleyerek animasyonu senkron tutar.
# - Hide/Show: hazirligi gizler, sadece guzel gorunen kismi kaydeder.
#
# Bu dosya bir katalog gibi dusunuldu. Istedigin satirlari kendi tape dosyana
# kopyalayip Output + Source docs/default-all-config.tape altinda kullanabilirsin.

# ---------------------------------------------------------------------------
# 1) Temel yazi animasyonu
# ---------------------------------------------------------------------------

Type "echo 'Merhaba VHS'"                 # Normal hizda komutu ekrana yazar.
Enter                                    # Yazilan komutu calistirir.
Sleep 1s                                 # 1 saniye bekler; izleyici ciktinin farkina varir.

Type@20ms "echo 'Hizli yazma efekti'"     # Bu satira ozel hizli yazma animasyonu.
Enter                                    # Komutu calistirir.
Sleep 700ms                              # Kisa bekleme; akisi hizli tutar.

Type@120ms "echo 'Yavas ve dramatik yazma'" # Daha yavas, dikkat ceken yazma efekti.
Enter                                    # Komutu calistirir.
Sleep 1.2s                               # Ciktiyi biraz ekranda tutar.

Type "printf 'Birinci satir\nIkinci satir\nUcuncu satir\n'" # Tek komutla cok satirli cikti uretir.
Enter                                    # printf komutunu calistirir.
Sleep 1s                                 # Cok satirli ciktiyi okutmak icin bekler.

# ---------------------------------------------------------------------------
# 2) Bekleme zamanlari
# ---------------------------------------------------------------------------

Sleep 500ms                              # Yarim saniye bekleme.
Sleep .5s                                # Yarim saniyenin alternatif yazimi.
Sleep 1s                                 # 1 saniye bekleme.
Sleep 2                                  # Birim yazmazsan saniye kabul edilir.

# ---------------------------------------------------------------------------
# 3) Enter, bosluk ve tab animasyonlari
# ---------------------------------------------------------------------------

Type "echo satir-1"                      # Komutu yazar.
Enter                                    # Bir kere Enter basar.
Sleep 500ms                              # Kisa ara verir.

Enter 2                                  # 2 kere Enter basar; bos satir etkisi verir.
Enter@500ms 2                            # 500ms aralikla 2 Enter; daha gorunur bosluk animasyonu.

Type "echo"                              # echo yazar.
Space 3                                  # 3 bosluk ekler.
Type "'bosluk ile ayrildi'"              # Bosluklardan sonra metni yazar.
Enter                                    # Komutu calistirir.

Type "cd ."                              # Autocomplete gostermek icin baslangic yazar.
Sleep 500ms                              # Tab oncesi kisa bekleme.
Tab@500ms 2                              # 500ms aralikla 2 Tab; autocomplete hissi verir.
Shift+Tab                                # Geri tab; TUI formlarinda onceki alana donmek icin.
Sleep 1s                                 # Tab sonucunu ekranda tutar.

# ---------------------------------------------------------------------------
# 4) Silme, duzeltme ve cursor hareketi
# ---------------------------------------------------------------------------

Type@50ms "echo 'yanlis yazildi...'"      # Bilerek duzeltilecek metni yazar.
Backspace@35ms 3                         # 3 karakteri yavasca siler.
Type@50ms "!!!'"                         # Silinen kismin yerine yeni metin yazar.
Enter                                    # Komutu calistirir.
Sleep 1s                                 # Sonucu bekletir.

Type "echo 'A tool for writing GIFs as code.'" # Uzun cumle yazar.
Left@50ms 14                             # Cursor'u 14 karakter sola goturur.
Type " terminal"                         # Araya kelime ekleme animasyonu yapar.
Ctrl+E                                   # Satir sonuna gider.
Enter                                    # Komutu calistirir.
Sleep 1s                                 # Sonucu okutmak icin bekler.

Type "echo 'delete-demo'"                 # Delete tusu icin metin yazar.
Left 5                                   # Cursor'u sola alir.
Delete@80ms 3                            # Cursor sonrasi 3 karakteri siler.
Enter                                    # Komutu calistirir.
Sleep 1s                                 # Ciktiyi bekletir.

Insert                                   # Insert tusuna basar; overwrite modu gostermek gerekiyorsa kullanilir.
Escape                                   # Escape basar; TUI/pager/search modundan cikmak icin kullanilir.

# ---------------------------------------------------------------------------
# 5) Ok tuslari, sayfa ve scroll animasyonlari
# ---------------------------------------------------------------------------

Up                                      # Shell gecmisinde bir onceki komuta gider.
Down                                    # Shell gecmisinde tekrar asagi iner.
Left                                    # Cursor'u bir karakter sola alir.
Right                                   # Cursor'u bir karakter saga alir.

Up@250ms 3                              # 250ms aralikla 3 kere yukari; menu/TUI gezintisi icin guzel.
Down@250ms 3                            # 250ms aralikla 3 kere asagi; secim listesini gezdirir.
Left@80ms 5                             # 5 adim sola yavas hareket.
Right@80ms 5                            # 5 adim saga yavas hareket.

PageDown                                # Sayfayi hizli asagi indirir; uzun dokumanda sert gecis verir.
PageUp                                  # Sayfayi hizli yukari cikarir.
PageDown@500ms 2                        # Iki sayfa asagi; araya gorunur zaman koyar.
PageUp@500ms 2                          # Iki sayfa yukari; geri donus animasyonu.

ScrollDown 4                            # Terminal viewport'unu 4 satir asagi kaydirir.
ScrollUp 4                              # Terminal viewport'unu 4 satir yukari kaydirir.
ScrollDown@100ms 12                     # Uzun ciktiyi yumusak asagi kaydirir.
ScrollUp@100ms 12                       # Uzun ciktiyi yumusak yukari kaydirir.

# Markdown okumada en guzel hareket genelde budur:
Down@60ms 8                             # Satir satir yavas kaydirma; PageDown'dan daha okunakli.
Sleep 600ms                             # Scroll sonrasi izleyiciye okuma zamani verir.
Down@60ms 8                             # Bir blok daha kaydirir.
Sleep 600ms                             # Ikinci bloktan sonra tekrar bekler.

# ---------------------------------------------------------------------------
# 6) Ctrl, Alt ve Shift kombinasyonlari
# ---------------------------------------------------------------------------

Ctrl+C                                  # Calisan komutu/TUI'yi keser.
Ctrl+L                                  # Terminali temizler; yeni sahneye gecis icin en kullanisli tus.
Ctrl+U                                  # Aktif satiri temizler; yanlis komutu silmek icin.
Ctrl+A                                  # Satir basina gider.
Ctrl+E                                  # Satir sonuna gider.
Ctrl+R                                  # Shell reverse search animasyonu icin.

Ctrl+Shift+O                            # Ctrl ile Shift'i birlikte kullanma ornegi.
Ctrl+Alt+Shift+P                        # Coklu modifier zinciri ornegi.
Alt+.                                   # Shell'de son argumani getirir.
Alt+Enter                               # Alt+Enter kombinasyonu.
Shift+Enter                             # Shift+Enter kombinasyonu.

# ---------------------------------------------------------------------------
# 7) Wait ile senkron animasyon
# ---------------------------------------------------------------------------

Type "echo 'World'"                      # Wait ornegi icin komut yazar.
Enter                                    # Komutu calistirir.
Wait /World/                             # Aktif satirda World gorunene kadar bekler.

Type "printf 'Hazirlaniyor...\nBitti\n'" # Cok satirli komut yazar.
Enter                                    # Komutu calistirir.
Wait+Screen /Bitti/                      # Tum ekranda Bitti gorunene kadar bekler.

Type "echo 'prompt bekleme ornegi'"       # Prompt beklemek icin komut yazar.
Enter                                    # Komutu calistirir.
Wait+Line />$/                           # Aktif satir prompt ile bitene kadar bekler.

Wait@10s /done/                          # En fazla 10 saniye done bekler.
Wait+Line@5s />$/                        # Aktif satirda promptu en fazla 5 saniye bekler.
Wait+Screen@8s /README|Usage|Install/    # Ekranda bu kelimelerden biri gecene kadar bekler.

# ---------------------------------------------------------------------------
# 8) Hide / Show ile gizli hazirlik
# ---------------------------------------------------------------------------

Hide                                     # Bundan sonraki islemler kayitta gorunmez.
Type "export PS1='>'"                    # Prompt'u sade yapar; izleyiciye temiz gorunur.
Enter                                    # Degiskeni uygular.
Type "clear"                             # Ekrani temizler.
Enter                                    # clear calisir.
Show                                     # Kaydi tekrar baslatir; bundan sonrasi gorunur.

Type "echo 'Sadece bu temiz sahne gorunur'" # Gizli hazirliktan sonra gorunen ilk komut.
Enter                                    # Komutu calistirir.
Sleep 1s                                 # Sahneyi ekranda tutar.

# ---------------------------------------------------------------------------
# 9) Copy / Paste animasyonu
# ---------------------------------------------------------------------------

Copy "https://raw.githubusercontent.com/charmbracelet/vhs/main/README.md" # Metni clipboard'a alir; bu kisim gorunmez.
Type "echo "                              # Komutun basini normal yazar.
Paste                                     # Clipboard icerigini hizli yapistirir.
Enter                                     # Komutu calistirir.
Sleep 1s                                  # Linkin gorunmesi icin bekler.

Copy "glow -p -s dark -w 80 README.md"    # Uzun komutu clipboard'a hazirlar.
Paste                                     # Uzun komutu tek hamlede yapistirir; uzun Type yerine temiz gorunur.
Enter                                     # Markdown preview komutunu calistirir.
Wait+Screen@8s /README|VHS|Usage/         # Render edilen Markdown basligini bekler.

# ---------------------------------------------------------------------------
# 10) Screenshot animasyonu
# ---------------------------------------------------------------------------

Screenshot docs/animation-frame.png       # O anki terminal karesini PNG olarak kaydeder.
Sleep 500ms                               # Screenshot sonrasi kisa bekleme.

# ---------------------------------------------------------------------------
# 11) Local Markdown'u bat ile guzel gostermek
# ---------------------------------------------------------------------------

Type "clear"                              # Sahne basinda ekrani temizler.
Enter                                     # clear calisir.
Sleep 300ms                               # Temiz ekrana kisa gecis verir.

Type "bat --style=header,grid,numbers --paging=never --color=always docs/demo.md | sed -n '1,45p'" # Local Markdown'u renkli ve numarali gosterir.
Enter                                     # bat komutunu calistirir.
Wait+Screen@5s /File:|Icindekiler|Demo/   # Markdown cikisi ekrana gelene kadar bekler.
Sleep 1s                                  # Ilk bolumu okutmak icin bekler.
Down@60ms 10                              # Markdown'u yavas kaydirir; okuma icin guzel hareket.
Sleep 700ms                               # Kaydirma sonrasi bekler.
Down@60ms 10                              # Bir blok daha kaydirir.
Sleep 1s                                  # Sahneyi bitirmeden bekler.

# Daha sade local Markdown:
Type "glow -p -s dark -w 80 docs/demo.md" # Local Markdown'u glow ile terminalde render eder.
Enter                                     # glow calisir.
Wait+Screen@8s /Icindekiler|Demo/         # Cikti baslayana kadar bekler.
Down@70ms 8                               # Glow ekraninda yavas asagi iner.
Sleep 1s                                  # Okuma zamani verir.

# ---------------------------------------------------------------------------
# 12) GitHub Markdown'u en guzel animasyonla gostermek
# ---------------------------------------------------------------------------

Type "clear"                              # Yeni sahne icin ekrani temizler.
Enter                                     # clear calisir.
Sleep 300ms                               # Kisa sahne gecisi.

Type "glow -p -s dark -w 78 https://raw.githubusercontent.com/charmbracelet/vhs/main/README.md | sed -n '1,45p'" # GitHub raw Markdown'u glow ile render eder.
Enter                                     # Komutu calistirir.
Wait+Screen@8s /VHS|Charm|terminal/       # GitHub Markdown cikisini bekler.
Sleep 1s                                  # Ilk ekranin okunmasi icin bekler.
Down@60ms 8                               # Yavas ve okunabilir scroll.
Sleep 700ms                               # Scroll sonrasi bekleme.
Down@60ms 8                               # Ikinci scroll blogu.
Sleep 1s                                  # Sahne sonu bekleme.

# GitHub linki icin en stabil sekil raw.githubusercontent.com kullanmaktir.
Type "curl -L https://raw.githubusercontent.com/charmbracelet/vhs/main/README.md | glow -p -s dark -w 80" # Linkten Markdown cekip glow'a verir.
Enter                                     # Komutu calistirir.
Wait+Screen@8s /VHS|Usage|Install/        # Ciktiyi bekler.
Down@60ms 12                              # Uzun README icin yumusak kaydirma.
Sleep 1s                                  # Okuma payi verir.

# GitHub blob linki yerine raw link tercih et:
Type "echo 'github.com/.../blob/... yerine raw.githubusercontent.com/... kullan'" # Izleyiciye dogru link mantigini gosterir.
Enter                                     # Mesaji basar.
Sleep 1s                                  # Mesaji okutmak icin bekler.

# ---------------------------------------------------------------------------
# 13) Shell bash script animasyonlari
# ---------------------------------------------------------------------------

Type "bash -lc 'echo prepare; sleep .4; echo render; sleep .4; echo publish'" # Kisa bash akisini tek satirda gosterir.
Enter                                     # Scripti calistirir.
Wait+Screen@5s /publish/                  # Son adim gorunene kadar bekler.
Sleep 800ms                               # Final ciktisini ekranda tutar.

Type "bash -lc 'for step in prepare render publish; do echo [ok] $step; sleep .35; done'" # Loop ile daha gercekci build akisi.
Enter                                     # Loop scriptini calistirir.
Sleep 2s                                  # Her adimin gorunmesi icin sabit bekleme.

Type "bash -lc 'echo build; sleep .4; echo test; sleep .4; echo ok'" # Build/test gibi kompakt script animasyonu.
Enter                                     # Scripti calistirir.
Sleep 1.5s                                # Ciktiyi bekletir.

# ---------------------------------------------------------------------------
# 14) bat ile kod veya Markdown sunumu
# ---------------------------------------------------------------------------

Type "bat --paging=never --color=always --style=header,grid,numbers main.go | sed -n '1,35p'" # Kod dosyasini renkli gosterir.
Enter                                     # bat calisir.
Wait+Screen@5s /File:|package|func/       # Kod cikisi beklenir.
Sleep 1s                                  # Ilk bolumu okutmak icin bekler.

Ctrl+L                                    # Yeni sahne icin terminali temizler.
Sleep 300ms                               # Temizleme animasyonunu yedirir.

Type "bat --paging=never --color=always --style=plain docs/demo.md | sed -n '1,60p'" # Markdown'u sade ama renkli gosterir.
Enter                                     # Komutu calistirir.
Wait+Screen@5s /Amazing|Demo|QR/          # Markdown basligini bekler.
Down@60ms 8                               # Okunabilir scroll verir.
Sleep 1s                                  # Sahneyi tamamlar.

# ---------------------------------------------------------------------------
# 15) README/GitHub icin guzel animasyon akisi
# ---------------------------------------------------------------------------

Hide                                      # Hazirlik kisimlarini gizle.
Type "clear"                              # Baslangicta temiz ekran hazirla.
Enter                                     # clear calissin.
Show                                      # Artik gorunen animasyon baslasin.

Type@30ms "printf 'README preview basliyor...\n\n'" # Kisa giris yazisi.
Enter                                     # Girisi ekrana basar.
Sleep 700ms                               # Izleyiciye girisi okut.

Type@30ms "glow -p -s dark -w 78 https://raw.githubusercontent.com/charmbracelet/vhs/main/README.md | sed -n '1,50p'" # GitHub README'yi render eden komutu yazar.
Enter                                     # Komutu calistirir.
Wait+Screen@8s /VHS|README|terminal/      # README cikisini bekler.
Sleep 1s                                  # Ilk ekrani okut.
Down@60ms 8                               # Yavas scroll.
Sleep 700ms                               # Okuma payi.
Down@60ms 8                               # Ikinci yavas scroll.
Sleep 1s                                  # Final bekleme.

# ---------------------------------------------------------------------------
# 16) Mini kullan-at animasyon sablonlari
# ---------------------------------------------------------------------------

# Local Markdown sablonu:
Type "clear && glow -p -s dark -w 80 docs/demo.md" # Local Markdown'u temiz ekranda acar.
Enter                                              # Komutu calistirir.
Wait+Screen@8s /Icindekiler|Demo/                  # Ciktiyi bekler.
Down@60ms 12                                       # Yavas Markdown scroll.
Sleep 1s                                           # Sahne sonu bekleme.

# GitHub Markdown sablonu:
Type "clear && glow -p -s dark -w 80 https://raw.githubusercontent.com/OWNER/REPO/main/README.md" # GitHub raw README render eder.
Enter                                              # Komutu calistirir.
Wait+Screen@8s /README|Usage|Install/              # Ciktiyi bekler.
Down@60ms 12                                       # Okunabilir scroll.
Sleep 1s                                           # Sahne sonu bekleme.

# bat ile dosya sablonu:
Type "clear && bat --style=header,grid,numbers --paging=never --color=always README.md | sed -n '1,60p'" # README'yi renkli gosterir.
Enter                                              # Komutu calistirir.
Wait+Screen@5s /File:|README/                      # bat cikisini bekler.
Down@60ms 8                                        # Yavas kaydirir.
Sleep 1s                                           # Sahne sonu bekleme.

# TUI/list gezme sablonu:
Type "./demo-tui"                                  # TUI uygulamasini baslatir.
Enter                                              # Uygulamayi calistirir.
Sleep 1s                                           # TUI acilsin diye bekler.
Down@250ms 3                                       # Listede asagi iner.
Up@250ms 1                                         # Bir satir yukari doner.
Enter                                              # Secimi onaylar.
Sleep 1s                                           # Sonucu bekletir.

# Komut duzeltme sablonu:
Type@50ms "echo yanlis-komutt"                     # Bilerek hatali komut yazar.
Backspace@40ms 1                                   # Fazla harfi siler.
Type@50ms "u"                                      # Dogru harfi ekler.
Enter                                              # Duzeltilmis komutu calistirir.
Sleep 1s                                           # Sonucu bekletir.
