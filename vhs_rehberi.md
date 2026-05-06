# 📹 VHS: Terminal Kayıtlarının Efendisi

VHS, terminal oturumlarınızı kod yazarak GIF, MP4 veya WebM formatında kaydetmenizi sağlayan inanılmaz bir araçtır. Bu rehberde, VHS'yi "tam güç" kullanarak nasıl en profesyonel görünümlü kayıtları alabileceğinizi öğreneceksiniz.

## 🚀 VHS'nin Gücü: Neden Kodla Kayıt?
- **Hata Payı Sıfır:** Manuel kayıtlardaki yazım hataları veya beklemeler olmaz.
- **Tekrar Edilebilirlik:** Kaydı istediğiniz zaman aynı kalitede tekrar oluşturabilirsiniz.
- **Git Dostu:** `.tape` dosyalarınızı versiyon kontrolünde saklayabilirsiniz.
- **Otomasyon:** CI/CD süreçlerine entegre edebilirsiniz.

## 💎 En Güzel Görünüm İçin Altın Kurallar

Bir terminal kaydının "premium" hissettirmesi için şu kurallara uymalısınız:

1.  **Pencere Estetiği:** Sade bir terminal yerine renkli butonları olan (`Set WindowBar Colorful`) ve yuvarlatılmış köşeleri olan (`Set BorderRadius 10`) bir pencere kullanın.
2.  **Boşluk (Margin & Padding):** Terminalin kenarlara yapışık olmaması gerekir. `Set Margin 60` ve `Set Padding 20` kullanarak ferah bir görünüm sağlayın.
3.  **Okunabilirlik:** Küçük fontlardan kaçının. GIF'ler genellikle küçük pencerelerde izlenir, bu yüzden `Set FontSize 46` gibi büyük değerler idealdir.
4.  **Tema Seçimi:** Göz yormayan ama canlı renkleri olan modern temalar seçin (Örn: `Catppuccin Frappe`, `TokyoNight`).
5.  **Zamanlama:** Komutlar arasında `Sleep` kullanarak izleyiciye okuma süresi tanıyın.

---

## 🛠️ Bağımlılıklar ve Kurulum

VHS'nin tam kapasite çalışması için şu araçlara ihtiyaç vardır:
- **ttyd:** Terminali tarayıcı tabanlı hale getirmek için.
- **ffmpeg:** Video ve GIF işleme için.

Eğer bunları tek tek kurmak istemiyorsanız, Docker en temiz çözümdür:
```bash
docker run --rm -v $PWD:/vhs ghcr.io/charmbracelet/vhs demo.tape
```

---

## 🎬 Senaryolar ve Örnek `demo.tape`

Aşağıdaki dosya, istediğiniz tüm senaryoları (Güzellik kuralları, Docker, Bağımlılıklar, En iyi ayarlar) bir araya getiriyor.

### [demo.tape](file:///mnt/samsung/orion-backup-local/projects/vhs/demo.tape)

```elixir
# --- SENARYO 4: EN İYİ AYARLAR (FONT, TEMA, BOYUT) ---
Output demo.gif
Set FontSize 46
Set FontFamily "JetBrains Mono"
Set Theme "Catppuccin Frappe"
Set TypingSpeed 75ms

# --- SENARYO 1: GÖRSEL KURALLAR (PREMIUM GÖRÜNÜM) ---
Set WindowBar Colorful
Set BorderRadius 15
Set Margin 60
Set MarginFill "#674EFF"
Set Padding 20
Set Width 1200
Set Height 600

# --- SENARYO 3: BAĞIMLILIKLARI LİSTELEME ---
# Kayda hazırlık aşamasını gizleyelim
Hide
Type "clear"
Enter
Show

Type "# Gerekli araçlar kontrol ediliyor..."
Sleep 500ms
Enter

# Bağımlılıkları kontrol et (Eğer yoksa VHS hata verir)
Require docker
Require ffmpeg
Require ttyd

Type "✔ docker bulundu"
Sleep 300ms
Enter
Type "✔ ffmpeg bulundu"
Sleep 300ms
Enter
Type "✔ ttyd bulundu"
Sleep 1s
Enter

# --- SENARYO 2: DOCKER PROJESİ ÖRNEĞİ ---
Hide
Type "clear"
Enter
Show

Type "# Bir Docker konteyneri başlatılıyor..."
Enter
Sleep 500ms

Type "docker run --name vhs-demo -d alpine sleep 1000"
Enter
Sleep 2s

Type "docker ps"
Enter
Sleep 3s

Type "# Konteyner temizleniyor..."
Enter
Type "docker rm -f vhs-demo"
Enter
Sleep 1s

Type "# İşlem Tamamlandı!"
Sleep 3s
```

## 🎨 Stil Önerileri Özeti

| Özellik | Önerilen Değer | Neden? |
| :--- | :--- | :--- |
| **Font Family** | `JetBrains Mono` | Okunabilirliği en yüksek developer fontu. |
| **Font Size** | `46` | Mobil ve web üzerinde GIF netliği için. |
| **Theme** | `Catppuccin Frappe` | Yumuşak ama kontrastı yüksek pastel renkler. |
| **Window Bar** | `Colorful` | macOS tarzı modern bir his verir. |
| **MarginFill** | `#674EFF` | Arka plan için enerjik bir mor tonu. |

Bu ayarlar ile terminal kayıtlarınız sadece bilgi vermekle kalmayacak, aynı zamanda izlemesi keyifli birer sanat eserine dönüşecektir! 🚀
