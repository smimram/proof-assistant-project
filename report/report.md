---
title: Report for the _proof assistant project_
author: Fill you name
---

This is an example for the report in _Markdown_ format, which is a text format that can be converted to anything including pdf. I am fine with any other tool to produce the pdf though (Word, LaTeX, etc.). You can see the syntax at <https://pandoc.org/MANUAL.html>.

In order to produce the pdf, you should install `pandoc`, on Ubuntu this can be done with

```
sudo apt install pandoc
```

and then you can compile it to pdf by typing

```
pandoc report.md -o report.pdf
```

or simply

```
make
```

Erase the above and write an introduction.

# What was implemented in the project

Explain. You can write inline code `let x = 4`{.ocaml} or cite paragraphs of your code

```ocaml
let rec f x =
  let y = x + x in
  y * y
```

you have words in _italic_ or in **bold**.

## Simple types

...

## Dependent types

...

# Difficulties encountered

Detail

# Implementation choices

Detail

# Possible extensions

Imagine

# Conclusion

Conclude
