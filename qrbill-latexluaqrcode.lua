qrencode = require("qrbill-qrencode.lua")

function printQRcode(codestring)
	local ok, tab = qrencode.qrcode(codestring, 2)
	local count = 0
	local tabstr = ""
	local qrrows = ""
	if ok then
		for k,v in pairs(tab) do

			count = count + 1 
			for t,s in pairs(v) do
				if s > 0 then
					tabstr=tabstr.."\\qrblack"
				else
					tabstr=tabstr.."\\qrwhite"
				end
			end
			qrrows=tabstr.."\\qrnewline"..qrrows
			tabstr=""
		end	
	end
	return count, qrrows
end