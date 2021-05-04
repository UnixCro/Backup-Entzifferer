set username to do shell script "whoami"
set Backup to "/Users/" & username & "/Info.plist"
set readBackup to do shell script "defaults read " & Backup
set iconfile to do shell script "curl https://avatars.githubusercontent.com/u/70098046?v=4 -o /Users/Shared/Backup\\ Entzifferer.jpg"


set spaces to "."
set spaced to ":"
set spacez to " "
set spacesz2 to "  "
set x to items 55305 through 55717 of readBackup as string

set y to items 28 through 52 of x as string #413

set z to "Letztes Backup war am " & y

set Jahr to items 1 through 4 of y as string

set Monat to items 6 through 7 of y as string

set Tag to items 9 through 10 of y as string

set Stunde to items 12 through 13 of y as string

set Minute to items 15 through 16 of y as string

set Sekunde to items 18 through 19 of y as string

set id2 to Tag & spaces & Monat & spaces & Jahr & spacez & "um " & Stunde & spaced & Minute & spaced & Sekunde

set Telefonummer to items 105 through 120 of x as string

set AscquistionModel to items 146 through 171 of x as string

set Datei to Backup

display dialog "Datei= " & Backup & spacez & "                                                            " & "Ihr letztes Backup war am " & id2 & " vom Gerät " & AscquistionModel & " mit der Telefonummer " & Telefonummer with title "Backup Entzifferer" buttons {"OK"} default button 1 with icon file ":Users:Shared:Backup Entzifferer.jpg"

