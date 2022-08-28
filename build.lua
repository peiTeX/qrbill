#!/usr/bin/env texlua

module = "qrbill"

typesetfiles  = {"*.dtx"}
typesetexe = "lualatex"
typesetopts = "--shell-escape"

packtdszip = true

installfiles = {"*.sty","qrbill_*.pdf","*.qrbill-cfg.tex", "*.csv", "*-demo.tex"}

scriptfiles = {"qrbill-*.lua"}

demofiles = {"*-demo.tex"}
docfiles = {"*-demo.tex"}
sourcefiles = {"*.dtx", "*.ins", "*.csv", "qrbill-*.lua"}

tdslocations = {
	     "tex/latex/qrbill/qrbill_*.pdf",
	     "tex/latex/qrbill/*.csv",
	     "doc/latex/qrbill/*-demo.tex",
}