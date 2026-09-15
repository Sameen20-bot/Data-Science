import streamlit as sl

def printer(name):
    print(name)

input =  sl.text_input("Enter your name")

btn = sl.button("SUBMIT")

if btn:
    sl.checkbox("Show your name", on_change=printer, args=(input,))


# We use call back because if we do not, and click on checkbox the whole streamlit will run again and it would never print