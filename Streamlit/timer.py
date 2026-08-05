import streamlit as sl
import time as ts
from datetime import time

setInput = sl.time_input("Enter the timer", value = time(0,0,0))

def converter(value):
    m,s,mm = value.split(":")
    total_seconds = int(m)*60 + int(s) + int(mm)/100
    return total_seconds

if str(setInput) == "00:00:00":
    sl.write("Please set a timer")
else:
    sec = converter(str(setInput))
    bar = sl.progress(0)
    per = sec/10
    progress_status = sl.empty()
    for i in range(10):
       bar.progress((i+1)*10)
       progress_status.write(str((i+1)*10)+'%')
       ts.sleep(per)

