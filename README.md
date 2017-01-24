# AdbKeyboard
Just a wrapper to send text input though adb

The initial idea for this script is to replace spaces ` ` for `%s`.
But now it can also receive keyevents.

## How to use
### Just text
```bash
keyboard "send what do you want"
```
### Text and Keyevent
```bash
keyboard "send something;66;this will send the keyevent 66"
```
