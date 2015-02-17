TransTex: A jinja2 based templating tool for latex
===

Vita making instructions
---

---

###Format and directory structure###


the basic data file is of the form:

	vita.ttex
	
and should be stored in the main repository directory.
this file should be built to include templates from the directory

	_templates
	
each of which is a `.ttex` file built with the TransTex syntax. the templates should then refer to such things as

	data.something
	
to use part of the datafile looking like this:

`metavita.yml`

	something:
		-
			subpart: subdata
			subpart: subdata
		-
			othersubpart: etcetera
			
currently `metativita.yml` is the fixed name for the datafile. this could be changed later perhaps.			


---

###Compilation###

The transtex executable file itself is

	./ttex <template filename> <data filename> \
		<output filename>
	
however, this will generally not be needed to be run explicitly. if it is run, it is used to take a `.ttex` file, a `.yml` data file, and output a `.tex` file which can then be further processed by latex or something similar.

to streamline the process, however, the standard flow is that, upon making a `.ttex` file, the user then runs `./ttbuild`

	./ttbuild <template filename (without .ttex ending)>
	
`./ttbuild` will then produce a temporary makefile named `__ttbuild-Makefile` in the main repository directory using all the files in the `_include` directory as dependencies to construct a `.tex` file in the `_tex` directory, and a separate temporary makefile in the `_tex` directory itself. the `_tex/__ttbuild-Makefile` then produces the `.pdf` from the generated `.tex` and copies it to the main directory. all the resulting makefiles are then removed.




