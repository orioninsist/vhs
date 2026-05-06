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

# --- DOCKER SENARYOSU ---
Type "# Docker Projesi Gösterimi"
Enter
Sleep 1s

Type "docker run --name vhs-demo -d alpine sleep 1000"
Enter
Sleep 2s

Type "docker ps"
Enter
Sleep 2s

Type "docker exec vhs-demo echo 'Selam Dünya!'"
Enter
Sleep 2s

Type "# Temizlik..."
Enter
Type "docker rm -f vhs-demo"
Enter
Sleep 1s

Type "# Kayıt Tamamlandı!"
Sleep 3s
