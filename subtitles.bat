@echo off
title Subtitle Downloader and Merger for Nebula
echo I hope you edited the code to include the link to the first segment and the next ones!
wget --no-check-certificate a./subtitles/sub_en_0.vtt
for /l %%x in (1, 1, b) do (
wget --no-check-certificate a./subtitles/sub_en_%%x.vtt
)
copy sub_en_*.vtt sub_en.vtt
pause
