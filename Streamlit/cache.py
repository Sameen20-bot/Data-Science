import streamlit as sl
import time

@sl.cache(suppress_st_warning=True)

def printer():
    sl.write("Running")
    time.sleep(3)
    return "Message"

sl.write(printer())