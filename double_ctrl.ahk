~ctrl::
    KeyWait, ctrl ; wait for z to be released
    KeyWait, ctrl, D T0.2 ; and pressed again within 0.2 seconds
    if !ErrorLevel ; timed-out (only a single press)
        Send {Home}
Return