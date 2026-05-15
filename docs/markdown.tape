Output orioninsist-cli-2-shorts.mp4

Require bash
Require glow
Require bat
Require less
Require base64
Require more
Require cat
Require sed
Require awk
Require grep
Require head
Require tail
Require wc
Require fold
Require tput
Require stty
Require sleep
Require date
Require clear
Require printf
Require ffmpeg
Require ttyd
Require gum
Require pandoc
Require jq
Require curl
Require chafa
Require viu

# YouTube Shorts / Reels / TikTok icin 9:16 dikey final video.
# VHS render matematigi: dis final 1080x1920; ic terminal alani
# Width - 2*Padding - 2*Margin ve Height - 2*Padding - 2*Margin - WindowBarSize.
Set Shell "bash"
Set FontFamily "JetBrainsMono Nerd Font"
Set Width 1080
Set Height 1920
Set FontSize 30
Set LetterSpacing 0.6
Set LineHeight 1.12
Set Padding 28
Set Margin 44
Set MarginFill "#11111b"
Set WindowBar Rings
Set WindowBarSize 34
Set BorderRadius 22
Set Theme "Catppuccin Mocha"
Set BackgroundColor "#1e1e2e"
Set WindowBarColor "#181825"
Set CursorColor "#f5e0dc"
Set CursorAccent "#1e1e2e"
Set SelectionColor "#45475a"
Set CursorBlink false
Set Framerate 60
Set PlaybackSpeed 1.0
Set TypingSpeed 35ms
Set LoopOffset 0%
Set WaitTimeout 20s
Set WaitPattern />$/


# --- 2. ENVIRONMENT VARIABLES ---
Env TERM xterm-256color
Env COLORTERM truecolor
Env FORCE_COLOR "1"
Env PAGER less
Env LESS "-R"


Hide
Type@20ms "clear && glow -p -s dark -w 52 orioninsist-cli-1.md"
Enter
Show

Sleep 4s                                  # Ilk ekranin okunmasi icin bekler.
Down@60ms 8                               # Yavas ve okunabilir scroll.
Sleep 4s                               # Scroll sonrasi bekleme.
Down@60ms 8                               # Ikinci scroll blogu.
Sleep 4s 
Down@60ms 8                               # Ikinci scroll blogu.
Sleep 4s 
Down@60ms 8                               # Ikinci scroll blogu.
Sleep 4s 

# md den shell geciste ciksi yapmak lazim 
Type  "q"
Sleep 1s


Hide
Type "clear && bat --paging=always --style=header,grid,numbers --color=always --pager 'less -R' orioninsist-cli-1.sh"
Enter
Wait+Screen@8s /set -euo pipefail|Usage:|rsync/
Show

Sleep 2s                                  # Ilk ekran kod okunurken dursun.

Down@300ms 10                             # 3 saniyede 10 satir asagi iner.
Sleep 2s                                  # Okuma molasi.

Down@300ms 10                             # Tekrar 3 saniyede 10 satir asagi iner.
Sleep 2s


# shell den bas calistirma yeri  
Type "q"
Sleep 1s

Hide
Type "clear"
Enter
Type "chmod +x orioninsist-cli-1.sh"
Enter
Type "rm -rf /tmp/orion-src /tmp/orion-dest"
Enter
Type "mkdir -p /tmp/orion-src /tmp/orion-dest"
Enter
Type "printf 'demo file\n' > /tmp/orion-src/example.txt"
Enter
Show

Type@35ms "./orioninsist-cli-1.sh /tmp/orion-src /tmp/orion-dest"
Enter

Wait+Screen@8s /Source:|Destination:|Continue\?/
Sleep 1s

Type "y"
Enter

Wait+Screen@8s /Move completed successfully/
Sleep 4s




## DOkunma asaji yere 


#Sleep 30s
#Down@70ms 15
#Sleep 30s
#Down@70ms 15
#Sleep 30s
#Down@70ms 15
#Sleep 30s
#Down@70ms 15
#Sleep 30s
#Down@70ms 15
#Sleep 30s
#Down@70ms 15
#Sleep 30s
#Down@70ms 15
#Sleep 30s
#Down@70ms 15
#Sleep 30s
#Down@70ms 15
#Sleep 30s
#Down@70ms 15
#Sleep 5s
# altaki secenekler dire sayfayi asagi indirmek icn yani keserek indirebliliyor bu nedene pagedown degil biz 
# down kullnadik buradabi 70ms hizini yanida 15 ise indirecegi satir sayisini soylemek icin bunu sleep ile sabit 
#beklemesini sagliyoruz.
#Sleep 35s
#PageDown
#Sleep 35s
#PageDown
#Sleep 35s
#PageDown
#Sleep 35s
#PageDown
#Sleep 35s
#PageDown
#Sleep 35s
#PageDown
#Sleep 35s
#PageDown
#Sleep 35s
