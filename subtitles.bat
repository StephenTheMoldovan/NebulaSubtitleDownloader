@echo off
title Subtitle Downloader and Merger for Nebula
echo I hope you edited the code to include the link to the first segment and the next ones!
:: replace "a." with the link to the first vtt segment which can be found in the Network tab of your browser when you first start the video (make sure you have captions turned on)
:: (example: https://storage.googleapis.com/zype-subtitles-prod/5c182d06649f0f134a001703/5fd838c1af68b90001c60431/subtitles/sub_en_0.vtt)
:: the Network tab can be found by right-clicking on the page and clicking "Inspect"
wget --no-check-certificate a./subtitles/sub_en_0.vtt
:: replace "b" with the total number of vtt segments that the subtitle file is comprised of 
:: (to find out, skip to the end of the video and find the vtt segment with the highest value)
:: example: sub_en_66.vtt
for /l %%x in (1, 1, b) do (
:: replace "c." with the same link you replaced "a." with, making sure to replace sub_en_0 with sub_en_%%x
wget --no-check-certificate c./subtitles/sub_en_%%x.vtt
)
copy sub_en_*.vtt sub_en.vtt
pause
