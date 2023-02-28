#!/usr/bin/env texlua

module = "qrbill"

cp("","libraries/luaqrcode/qrencode.lua","qrbill-qrencode.lua")

typesetfiles  = {"*.dtx"}
typesetexe = "lualatex"
typesetopts = "--shell-escape"

packtdszip = true

installfiles = {"*.sty","qrbill_*.pdf","*.qrbill-cfg.tex", "*.csv", "*-demo.tex","qrbill-*.lua"}

scriptfiles = {"qrbill-*.lua"}

demofiles = {"*-demo.tex"}
docfiles = {"*-demo.tex"}
sourcefiles = {"*.dtx", "*.ins", "*.csv", "qrbill-*.lua"}
cleanfiles={"*.log", "*.pdf", "*.zip", "qrbill-qrencode.lua"}

tdslocations = {
	     "tex/latex/qrbill/qrbill_*.pdf",
	     "tex/latex/qrbill/*.csv",
	     "doc/latex/qrbill/*-demo.tex",
}

function update_tag(file,content,tagname,tagdate)
	local replaced = string.gsub(content,"%d%d%d%d/%d%d/%d%d v%d+.%d%d", tagdate.." v"..tagname)
	replaced = string.gsub(replaced,"\\ProvidesExplPackage{qrbill}{%d%d%d%d/%d%d/%d%d}{%d+.%d%d}", "\\ProvidesExplPackage{qrbill}{"..tagdate.."}{"..tagname.."}")
	return replaced
end