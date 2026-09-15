import streamlit as sl
import re

sl.markdown('<h1 style="text-align: center;">Density Checker</h1>',unsafe_allow_html = True)
sl.markdown("---",unsafe_allow_html = True)

text = sl.text_area("Paragraph")

col1, col2, col3 = sl.columns(3)

words_dict = dict()

if text:
    col1.markdown('<h3 style="text-align: center;">Keywords</h3>', unsafe_allow_html = True)
    col2.markdown('<h3 style="text-align: center;">Occurances</h3>', unsafe_allow_html = True)
    col3.markdown('<h3 style="text-align: center;">Percentage</h3>', unsafe_allow_html = True)

    simple_text = re.sub("[(!@#$%^&*-+.,//\\;:`)]","",text)
    words = simple_text.lower().split(" ")
    t_len = len(words)

    for word in words:
        if word in words_dict:
            words_dict[word] = words_dict[word] + 1
        else:
            words_dict[word] = 1

    keys = list(words_dict.keys())
    values = list(words_dict.values())

    for i in range(len(keys)):
        col1.markdown(f"<h5>{keys[i]}</h5>", unsafe_allow_html = True)
        col2.markdown(f"<h5>{values[i]}</h5>", unsafe_allow_html = True)
        col3.markdown(f"<h5>{(values[i]/t_len)*100}</h5>", unsafe_allow_html = True)


