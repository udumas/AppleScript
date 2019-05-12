--script to open drafts with a keyboard shortcut with a new document ready for text entry
tell application "Drafts"
	activate
end tell
tell application "System Events"
	tell process "Drafts"
		tell menu bar 1
			tell menu bar item "File"
				tell menu "File"
					click menu item "New"
				end tell
			end tell
		end tell
	end tell
end tell