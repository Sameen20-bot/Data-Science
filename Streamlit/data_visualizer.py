import streamlit as sl
import pandas as pd
import numpy as np
from matplotlib import pyplot as plt

def date_converter(date_col):
    result = list()
    values = date_col.values()
    for value in values:
        result.append(str(value).split("T"))
    return result

figure = plt.figure()


sl.markdown('<h1 style="text-align: center;">Data Visualizer</h1>',unsafe_allow_html = True)
sl.markdown("---",unsafe_allow_html = True)

file_names = list()

files = sl.file_uploader("Upload Multiple Files", type=["xlsx"], accept_multiple_files=True)

if files:
    for file in files:
        file_names.append(file.name)
    selected_files = sl.multiselect('Select Files', options=file_names)
    if selected_files:
        option = sl.radio("Select entity against date", options=["None","MOUSE","GPU","CPU","CASING","KEYBOARD"])
        if option!='None':
            for file in files:
                if file.name in file_names:
                    shop_data = pd.read_excel(file, index_col=0)
                    items = list(shop_data[option])
                    date = date_converter(shop_data["DATE"])
                    index = np.arrange(len(date))
                    plt.xticks(index,date)
                    plt.gcf.autofmt.xdate()
                    plt.plot(index,items, label=file.name, marker="o")
                    plt.xlabel("Date")
                    plt.ylabel(option)
                    plt.title(option+" Chart")
            sl.write(figure)
