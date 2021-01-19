# Pandoc Latex Docker for OSCP Report Template

Get started

```Bash
git clone git@github.com:fpkmatthi/oscp-pandoc-latex-full-docker.git
cd oscp-pandoc-latex-full-docker
```

Get eisvogel

```Bash
git clone https://github.com/Wandmalfarbe/pandoc-latex-template.git
cd pandoc-latex-template
git checkout tags/v1.6.1 -b latest
mv eisvogel.tex eisvogel.latex
cd ..
```

Get OSCP report template

```Bash
git clone https://github.com/noraj/OSCP-Exam-Report-Template-Markdown.git
```

Build image

```Bash
docker build --tag=pandoc-latex-full .
```

Generate PDF

```Bash
docker run --rm -v "`pwd`:/data" --user `id -u`:`id -g` --entrypoint "/data/generate-pdf.sh" pandoc-latex-full
```

Edit generate-pdf.sh to your liking
