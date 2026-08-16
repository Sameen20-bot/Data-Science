import streamlit as sl
from PIL import Image
from PIL.ImageFilter import *

sl.markdown("<h1 style='text-align: center;'>Image Editor</h1>", unsafe_allow_html=True)

image = sl.file_uploader("Please upload an image", type = [ ".jpg",
  ".jpeg",
  ".png",
  ".gif",
  ".webp",
  ".svg",
  ".bmp",
  ".ico",
  ".tif",
  ".tiff",
  ".avif",
  ".heic",
  ".heif"])

size = sl.empty()
mode = sl.empty()
format = sl.empty()

if image:
    img = Image.open(image)
    sl.markdown("<h2 style='text-align: center;'>Information</h1>", unsafe_allow_html=True)
    size.markdown(f"<h6>{img.size}</h6>",unsafe_allow_html = True)
    mode.markdown(f"<h6>{img.mode}</h6>",unsafe_allow_html = True)
    format.markdown(f"<h6>{img.format}</h6>",unsafe_allow_html = True)
    sl.markdown("<h2 style='text-align: center;'>Resizing</h2>", unsafe_allow_html=True)
    width = sl.number_input("Width", value = img.width)
    height = sl.number_input("Height", value = img.height)
    sl.markdown("<h2 style='text-align: center;'>Rotation</h2>", unsafe_allow_html=True)
    degree = sl.number_input("Degree")
    sl.markdown("<h2 style='text-align: center;'>Filters</h2>", unsafe_allow_html=True)
    filter = sl.selectbox("Select a filter", options = ["None","Blur","Detail","Emboss","Smooth"])
    btn = sl.button("Submit")

    if btn:
        edited = img.resize((width,height)).rotate(degree)
        filtered = edited

        if filter != "None":
            if filter == "Blur":
                filtered = edited.filter(BLUR)
            elif filter == "Detail":
                filtered = edited.filter(DETAIL)
            elif filter == "Emboss":
                filtered = edited.filter(EMBOSS)
            elif filter == "Smooth":
                filtered = edited.filter(SMOOTH)
        sl.image(filtered)



