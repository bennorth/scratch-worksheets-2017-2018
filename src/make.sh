#!/bin/bash

pandoc index.md -c github-markdown.css \
       -B body-head.html -A body-foot.html -o ../docs/index.html
