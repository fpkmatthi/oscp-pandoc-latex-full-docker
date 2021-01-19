#!/bin/sh

pandoc OSCP-Exam-Report-Template-Markdown/src/OSCP-exam-report-template_whoisflynn_v3.2.md \
    -o OSCP-Exam-Report-Template-Markdow/output/report.pdf \
    --from markdown+yaml_metadata_block+raw_html \
    --template pandoc-latex-template/eisvogel.latex \
    --table-of-contents \
    --toc-depth 6 \
    --number-sections \
    --top-level-division=chapter \
    --highlight-style breezedark

