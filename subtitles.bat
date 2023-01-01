@echo off
title Subtitle Downloader and Merger for Nebula
echo I hope you edited the code to include the link to the first segment and the next ones!
wget --no-check-certificate https://storage.googleapis.com/zype-subtitles-prod/5c182d06649f0f134a001703/5fd838c1af68b90001c60431/subtitles/sub_en_0.vtt
for /l %%x in (1, 1, 200) do (
wget --no-check-certificate https://storage.googleapis.com/zype-subtitles-prod/5c182d06649f0f134a001703/5fd838c1af68b90001c60431/subtitles/sub_en_%%x.vtt
)
copy sub_en_*.vtt sub_en.vtt
pause