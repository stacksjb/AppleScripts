on alfred_script(q)
set recipientAddress to "<destintationemailaddress>" -- change this to the recipient
set MsgSender to "<FROM account email address>"" -- set this to the FROM, configured email account in Mac Mail
set MsgRecipient to "<destinationemailaddress>" -- change this to the recipient

tell application "Mail"
	set TheMessages to the selection -- this is a list
	repeat with current_Message in TheMessages -- individual message
		set fwd_Message to forward current_Message with opening window
		tell fwd_Message
			activate
			set sender to MsgSender
			set my_recipient to make new to recipient at end of to recipients with properties {address:MsgRecipient}
			send fwd_Message
delete current_Message
		end tell
end repeat
end tell
end alfred_script
