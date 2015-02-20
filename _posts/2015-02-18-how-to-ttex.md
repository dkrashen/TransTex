---

layout: post
title:  "ttex (TransTex)"
date:   2015-02-18
categories: announcements 
description: "a templating tool for latex using yaml data"

---

What it is:

TransTex is a command-line tool for transforming tex template files into tex files with the aid of auxiliary data files in yaml format.

TransTex supports the inclusion of special tags `\ttvar{name} or \ttblock{command}. These are simply interpreted as jinja2 tags, which are then processed by TransTex in order to produce a standard tex file using a specified yaml datafile for the jinja2 templating.




