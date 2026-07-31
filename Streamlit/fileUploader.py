import streamlit as sl

images = sl.file_uploader("Please upload an image", type = [ ".jpg",
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
  ".heif"], accept_multiple_files = True)

if images is not None:
    for image in images:
      sl.image(images)

slider = sl.slider("This is a slider")
print(slider)

slider = sl.slider("This is a slider", min_value = 0, max_value = 10, value = 5)
print(slider)

selectSlider = sl.select_slider("Slider Selector", options = ["Low","Medium","High"])
sl.write(selectSlider)
print(selectSlider)

textInput = sl.text_input("Type your name here.", max_chars = 60)
sl.write(textInput)

textArea = sl.text_area("Type your description here.")
sl.write(textArea)

dateInput = sl.date_input("Enter your date")
sl.write(dateInput)

setInput = sl.time_input("Enter your set")
sl.write(setInput)