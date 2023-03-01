
tell application "Finder"
	set pre to "AM"
	set myHour to hours of (current date)
	set myMinutes to minutes of (current date)
	if (myHour ≥ 12) then
		set myHour to (myHour - 12)
		set pre to "PM"
	end if
	set myTime to time string of (current date)
	set myParts to words of myTime
	set mySpeak to (item 1 of myParts) & " " & (item 2 of myParts) & "" & pre
	say "The time is now " & mySpeak
end tell