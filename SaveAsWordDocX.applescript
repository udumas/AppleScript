property exportFileExtension : ".doc" --docx

-- THE DESTINATION FOLDER 
-- (see the "path" to command in the Standard Additions dictionary for other locations, such as movies folder, pictures folder, desktop folder)
set the defaultDestination to choose file name with prompt "Save the document as:"


tell application "Pages"
	activate
	try
		set the targetFileHFSPath to (defaultDestination as string) & exportFileExtension
		
		-- EXPORT THE DOCUMENT
		with timeout of 1200 seconds
			export front document to file targetFileHFSPath as Microsoft Word
		end timeout
		
	on error errorMessage number errorNumber
		display alert "EXPORT PROBLEM" message errorMessage
		error number -128
	end try
end tell