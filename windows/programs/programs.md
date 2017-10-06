# Programs Windows

1. [Sharex](https://getsharex.com)  [Github](https://github.com/ShareX/ShareX)
    * Captura de video mp4 e gif e img
    * hash de files
    * upload files
    * URL shortener
    * Ruler
    * Monitor test
    * Color picker
    * ....

2. [LiceCap](https://www.cockos.com/licecap/) 
    * Screen capture Gif & img

3. [Lightshot](https://app.prntscr.com/pt-br/index.html)
    * Screen capture & Uploader (image)

3. [ffmpeg](https://www.ffmpeg.org)
    * A complete, cross-platform solution to record, convert and stream audio and video.

[Best settings to convert gif to mp4](https://rigor.com/blog/2015/12/optimizing-animated-gifs-with-html5-video)
```bash
.\ffmpeg -i animated.gif -movflags faststart -pix_fmt yuv420p -vf "scale=trunc(iw/2)*2:trunc(ih/2)*2" video.mp4
```
[Outro Link](http://www.bugcodemaster.com/article/convert-video-animated-gif-using-ffmpeg)