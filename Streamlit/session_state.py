import streamlit as sl

text = "🐶"

if "click" not in sl.session_state:
    sl.session_state.click = False
else:
    if sl.session_state.click == False:
        text = "🐱"
        sl.session_state.click = True
    else:
        text = "🐶"
        sl.session_state.click = False

sl.button(text)


