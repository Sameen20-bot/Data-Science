import streamlit as sl
import pyshorteners as pst
import pyperclip

shortener = pst.Shortener()

sl.markdown("<h1 style='text-align: center;'>URL SHORTENER</h1>", unsafe_allow_html=True)

form = sl.form("urls")
urls = form.text_input("Enter your URL here")
btn = form.form_submit_button("SHORT")

def copy():
    pyperclip.copy(shorted_url)


if btn:
    shorted_url = shortener.tinyurl.short(urls)
    sl.markdown("<h3 style='text-align: center;'>SHORTED URL</h3>", unsafe_allow_html=True)
    sl.markdown(f"<h6 style='text-align: center;'>{shorted_url}</h6>", unsafe_allow_html=True)
    sl.button("Copy",on_click = copy)
