# AdbKeyboard
Just a wrapper to send text input though adb

The initial idea for this script is to replace spaces ` ` for `%s`.
But now it can also receive keyevents.

## How to use
### Just text
```bash
keyboard "send what do you want"
```
It will execute
```bash
adb shell input text "send%swhat%sdo%syou%swant"
```

### Text and Keyevent
```bash
keyboard "send something;66;this will send the keyevent 66"
```
Result
```bash
adb shell input text "send%ssomething"
adb shell input keyevent 66
adb shell input text "this%swill%send%sthe%skeyevent%s66"
```
