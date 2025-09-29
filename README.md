# Mathematics-LaTeX-Template
LaTeX template that aims to provide consistently and beautifully typeset documents for course notes and assignments

## Examples
Example PDFs can be found in the "Releases" section. For your convenience, they've also been added here:
[assignment_example.pdf](https://github.com/user-attachments/files/22586425/assignment_example.pdf)
[linear_algebra_example.pdf](https://github.com/user-attachments/files/22586428/linear_algebra_example.pdf)

Two typeset documents are provided, one of linear algebra notes, and the other of a proofs assignment.

### Building from Source
The source code for the examples is also provided for you to review. If you prefer to build the pdf from scratch, you can use any latex compiler to do so. On Linux, this would probably be
```
pdflatex [filename]
```

## Using the template
When starting a latex document, create a copy of the `mlatext.cls` file and move it to the working directory. At the top of your file, you should set your document class as:
```
\documentclass{mlatext}
```
And you should be good to go. You can look through the class file for references to macros and theorems.
