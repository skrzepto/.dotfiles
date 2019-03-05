youtube-dl -F https://www.youtube.com/watch\?v\=-pxRXP3w-sQ

171         webm      audio only  DASH audio  115k , audio@128k (44100Hz), 2.59MiB (worst)
140         m4a       audio only  DASH audio  129k , audio@128k (44100Hz), 3.02MiB
141         m4a       audio only  DASH audio  255k , audio@256k (44100Hz), 5.99MiB
160         mp4       256x144     DASH video  111k , 12fps, video only, 2.56MiB
247         webm      1280x720    DASH video 1807k , 1fps, video only, 23.48MiB
136         mp4       1280x720    DASH video 2236k , 24fps, video only, 27.73MiB
248         webm      1920x1080   DASH video 3993k , 1fps, video only, 42.04MiB
137         mp4       1920x1080   DASH video 4141k , 24fps, video only, 60.28MiB
43          webm      640x360
18          mp4       640x360
22          mp4       1280x720    (best)



youtube-dl -f 137+141 https://www.youtube.com/watch\?v\=-pxRXP3w-sQ




notice best is set to 1280x720 even though we have 1080p video which extracted out the audio to a seperate file






Best audio

alias youtubemp3="youtube-dl -f bestaudio --external-downloader aria2c --extract-audio --audio-format mp3  --audio-quality  0 -i"

