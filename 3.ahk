; Define the parameters
scriptToRun := "C:\Users\imove\OneDrive\Desktop\New folder\troll.ahk"  ; Path to the AHK script you want to run
numberOfTimes := 1  ; Number of times to run the script
duration := 0.1  ; Duration in seconds for which the script should run

; Calculate the interval between runs
interval := duration / numberOfTimes

; Run the script the specified number of times
Loop, %numberOfTimes%
{
    ; Get the start time
    startTime := A_TickCount

    ; Run the AHK script
    Run, %scriptToRun%
    
    ; Wait for the specified interval or the remaining duration
    Sleep, % interval * 1000

    ; Calculate elapsed time
    elapsedTime := (A_TickCount - startTime) / 1000
    
    ; If there's remaining time, adjust the sleep
    if (elapsedTime < interval)
    {
        Sleep, % (interval - elapsedTime) * 1000
    }
}

MsgBox, :3


