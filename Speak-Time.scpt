
tell application "Finder"
	set pre to "AM"
	set myHour to hours of (current date)
	set myMinutes to minutes of (current date)
	if (myHour ≥ 12) then
		set myHour to (myHour - 12)
		set pre to "PM"
	end if
	set mySpeak to myHour & " " & myMinutes & "" & pre
	say "The time is now " & mySpeak
end tell
