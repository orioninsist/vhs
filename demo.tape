# VHS Demo: En İyi Görünüm ve Docker Senaryosu
# Bu dosya Antigravity tarafından oluşturulmuştur.

# --- AYARLAR ---
Output demo.gif
Set FontSize 46
Set FontFamily "JetBrains Mono"
Set Theme "Catppuccin Frappe"
Set TypingSpeed 75ms

# --- GÖRSEL KURALLAR ---
Set WindowBar Colorful
Set BorderRadius 15
Set Margin 60
Set MarginFill "#674EFF"
Set Padding 20
Set Width 1200
Set Height 600

# --- BAĞIMLILIK KONTROLÜ ---
Require docker
Require ffmpeg
Require ttyd

# --- BAŞLANGIÇ ---
Hide
Type "clear"
Enter
Show

Type "# VHS En İyi Görünüm Kuralları"
Sleep 1s
Enter
Type "# 1. Büyük Font (46px)"
Sleep 500ms
Enter
Type "# 2. Renkli Pencere Çubuğu"
Sleep 500ms
Enter
Type "# 3. Kenar Boşlukları (Margin/Padding)"
Sleep 1s
Enter

Hide
Type "clear"
Enter
Show

# --- DOCKER SENARYOSU: LOGLAR VE ÇIKTI ---
Type "# Docker Projesi Başlatılıyor ve Çıktı Üretiliyor..."
Enter
Sleep 1s

# Konteyneri başlat ve logları izle
Type "docker run --name vhs-islem -d alpine sh -c 'echo \"Islem basliyor...\"; sleep 1; echo \"Veriler isleniyor [25%]\"; sleep 1; echo \"Veriler isleniyor [75%]\"; sleep 1; echo \"Islem tamamlandi. Sonuc dosyasi olusturuldu.\"; echo \"SUCCESS\" > output.txt; sleep 100'"
Enter
Sleep 2s

Type "docker logs -f vhs-islem"
Enter

# 'Islem tamamlandi' yazısını bekle (Görsel akış için çok önemli!)
Wait+Line /Islem tamamlandi/
Sleep 1s

# Log takibinden çık (Ctrl+C simülasyonu)
Ctrl+C
Sleep 1s

# Çıktıyı göster (Vurgulama kuralı)
Hide
Type "clear"
Enter
Show

Type "# İşlem bitti! Oluşan sonucu görelim:"
Enter
Sleep 1s

Type "docker exec vhs-islem cat output.txt"
Enter
Sleep 2s

# Temizlik
Hide
Type "docker rm -f vhs-islem"
Enter
Show

Type "# Tüm süreç başarıyla tamamlandı!"
Sleep 3s
