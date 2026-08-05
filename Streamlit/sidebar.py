import streamlit as sl
import seaborn as sns
import matplotlib.pyplot as plt

df = sns.load_dataset("iris")


sidebar = sl.sidebar.radio("Select any graph", options = ["Kdeplot","Distplot","Pairplot"])

fig, ax = plt.subplots()
plt.style.use("https://raw.githubusercontent.com/dhaitz/matplotlib-stylesheets/master/pitayasmoothie-dark.mplstyle")

if sidebar == "Kdeplot":
    sns.kdeplot(df.sepal_length,shade="True", ax=ax)
    sl.pyplot(fig)
elif sidebar == "Distplot":
    sns.distplot(df['sepal_length'], ax=ax)
    sl.pyplot(fig)
elif sidebar == "Pairplot":
     fig = sns.pairplot(df, hue="species", height=2.5)
     sl.pyplot(fig)
