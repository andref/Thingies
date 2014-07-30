Thingies -- Little tools I use
==============================


## battery.sh ##

This is a script registered with Mac OS' `launchctl` that periodically
polls the state of the laptop battery and updates a CSV file with the
information.

To run it periodically, I created a launch agent:

``` xml
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN"
                       "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
    <key>Label</key>
    <string>andre.filli.pe.battery</string>
    <key>KeepAlive</key>
    <false/>
    <key>EnableGlobbing</key>
    <true/>
    <key>ProgramArguments</key>
    <array>
        <string>/bin/sh</string>
        <string>~/Scripts/battery.sh</string>
    </array>
    <key>RunAtLoad</key>
    <true/>
    <key>StartInterval</key>
    <integer>600</integer>
</dict>
</plist>
```

and registered it using `launchctl`:

``` sh
$ launchctl load ~/Library/LaunchAgents/andre.filli.pe.battery.plist
```

## prices ##

Whenever I go grocery shopping, I get the receipt and input the prices
of whatever I bought using this tool and it feeds a JSON file with dates
and prices.


### To do ###

-   Generate a report after I'm done, telling me what was bought and if
    it was cheaper than average
