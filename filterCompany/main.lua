
require("functions")

--第1个参数为输入文件名称
--第2个参数为过滤文件名称
--第3个参数为输出文件名称

function filterFromFile(inputName,filterName,outputName)
	local beginTime = os.clock() 

	local targetsList = fetchListFromFile(inputName)

	local filterList = fetchListFromFile(filterName)

	-- for _,v in ipairs(filterList) do
	-- 	print(v)
	-- end

	targetsList = goFilter(filterList,targetsList)

	local outputStr = table.concat(targetsList)

	local wrtieFile = io.open(outputName,"w")

	wrtieFile:write(outputStr)

	local elapsedTime = os.clock() - beginTime

	print("Get "..(#targetsList).." results with elapsedTime "..elapsedTime)
end

filterFromFile("test.txt","filter.txt","output.txt")

-- checkCompany("1dfsefawefawefweae.txt")




