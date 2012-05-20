require "coding"
MD5=coding.md5 -- 使用 coding 的 MD5 函数

-- 生成各类随机数
function rndInt78() -- 7到8位随机数 clientid
	return math.random(10^6, 10^7-1)
end
function rndInt3() -- 3位随机数 face
	return math.random(100, 999)
end
function rndInt16() -- 16位随机数
	return math.random(10^15, 10^16-1)
end
function rndIntColor()
	return math.random(0, 192)
end
function rndColor() -- 随机颜色
	return string.format("%02X%02X%02X", rndIntColor(), rndIntColor(), rndIntColor())
end
-- 各种常用算法
function bin2hex(_s) -- 二进制数据转HEX字符串
	local _r = ""
	for i = 1, #_s do
		local _cc = tonumber(string.byte(_s, i, i))
		local _hs = string.format("%02X", _cc)
		_r = _r .. _hs
	end
	return _r
end
function md5_3(_s) -- 腾讯无聊的MD5三遍算法
	return bin2hex(MD5(MD5(MD5(_s))))
end
function md5(_s) -- 先MD5再转化为HEX字符串
	return bin2hex(MD5(_s))
end
-- [ DUMMY FUNCTIONS ]
-- 文件编码全面转为 UTF-8，无需再转码
function u8toa(_s) -- UTF-8 转系统默认编码
	return _s
end
function atou8(_s) -- 系统默认编码转 UTF-8
	return _s
end
-- 一些字符串处理函数
function rtrim(s) return string.gsub(s, "^%s*(.-)%s*$", "%1") end
function r2n(s) return string.gsub(s, "\r", " ") end
function timestamp() return tostring((8*3600 + os.time()) * 1000 + rndInt3()) end
------------------------------------------------------------------------------------------
function promptask(_p)
	io.write(os.date("[%H:%M:%S #I]\t").._p)
	return io.read()
end
function DBGprint(...)
	if dbglog then
		dbglog:write(os.date("[%H:%M:%S #D]\t"), ...)
		dbglog:write("\r\n")
		dbglog:flush()
	end
end
function logprint(...)
	print(os.date("[%H:%M:%S ]"), ...)
end
function tempFile(_x)
	return "." .. DIRSP .. os.tmpname() .. "." .. _x
end
function InitWq()
	if QQlogin.WQ_INITED then return end
	resetCurl() -- 初始化 Curl
	math.randomseed(os.time()) -- 随机数播种
	QQlogin.WQ_INITED = true
end

