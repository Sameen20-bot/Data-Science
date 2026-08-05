import streamlit as sl

sl.markdown('<h1 style="text-align: center;">User Registeration</h1>',unsafe_allow_html = True)

with sl.form("form-1", clear_on_submit = True):
    col1, col2 = sl.columns(2)
    f_name = col1.text_input("First Name")
    l_name = col2.text_input("Last Name")
    sl.text_input("Email Address")
    sl.text_input("Password")
    sl.text_input("Confirm Password")
    day, month, year = sl.columns(3)
    day.text_input("Day")
    month.text_input("Month")
    year.text_input("Year")

    s_state = sl.form_submit_button("Submit")

    if s_state:
        if f_name == "" or l_name == "":
            sl.warning("Please fill above fields")
        else:
            sl.success("Form submitted")

