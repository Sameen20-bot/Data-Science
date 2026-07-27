import streamlit as sl
import pandas as pd

sl.title("Hi, I am streamlit WebApp!")
sl.subheader("I am a Subheader")
sl.header("I am a header")
sl.text("I am a text")

sl.markdown("___")

sl.code('''

            from sklearn.linear_model import LinearRegression
            lr = LinearRegression()
            ''', language = "python")

sl.markdown("**Hello** *World* ***Earth***")

sl.markdown("[Google](https://google.com)")

sl.markdown("> Hi, this is streamlit")

sl.markdown("# Heading 1")
sl.markdown("## Heading 2")
sl.markdown("### Heading 3")

sl.image("python.jpg", caption="Python Image")

sl.markdown(''' 
 1. Yum
 2. Tum
 3. Pum
''')
sl.markdown(''' 
 - Yum
 - Tum
 - Pum
''')

sl.caption("Above order and unordered list")

sl.markdown("This is so funny! :joy:")

sl.markdown('I need to <mark style="background-color: pink; padding: 2px;">highlight this</mark>', unsafe_allow_html=True)

sl.markdown("<h1>Head</h1>", unsafe_allow_html=True)

sl.markdown("~~This is a strike.~~")

sl.markdown(''' 
 - [x] Done Machine Learning
 - [ ] Time Analysis
 - [ ] Deep Learning
''')

sl.markdown('''
|Table1| Table 2|
|------|--------|
| one  |    1   |
| two  |    2   |
''')

sl.markdown(''' 
<dl> 
<dt>Cavity</dt>
<dd>A hole in the tooth caused by decay.</dd>
</dd>
''',unsafe_allow_html=True)

sl.markdown("H<sub>2</sub>O", unsafe_allow_html=True)
sl.markdown("X<sup>2</sup>", unsafe_allow_html=True)

json = {"a": "1,2,3", "b": "4,5,6"}
sl.json(json)

sl.latex(r"\begin{pmatrix}a&b\\c&d\end{pmatrix}")

sl.metric(label = "Wind Speed", value = "120ms⁻¹", delta = "1.4ms⁻¹")

df = pd.DataFrame({"column1": [1,2,3,4], "column2": [5,6,7,8]})

sl.table(df)
sl.dataframe(df)