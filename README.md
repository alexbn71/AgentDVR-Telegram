# Agent DVR - Telegram Alerts

This simple PHP script send the screenshot generated by AgentDVR on alerts to your Telegram bot.


## Configuration:

Rename config.php_sample to config.php and change its content.

Create a new camera "Action" on AgentDVR, triggered by "Manual Alert", for testing purposes.

### Set these values:

Actions -> Action Configuration -> URL = http://yourserverIP/telegram_alert.php?msg={MSG}
Actions -> Action Configuration -> Upload Image = 1

Thats it!