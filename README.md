# Agent DVR - Telegram Alerts

This simple PHP script send the screenshot generated by AgentDVR on alerts to your Telegram bot.


## PHP Configuration:

Rename config.php_sample to config.php and change the content of the file.


## AgentDVR Configuration:

### Set these values to the new camera Action created

Actions -> Action Configuration -> If = Manual Alert

Actions -> Action Configuration -> Then = Call URL

Actions -> Action Configuration -> URL = http://yourserverIP/telegram_alert.php?msg={MSG}

Actions -> Action Configuration -> Upload Image = 1

Actions -> Action Configuration -> Method = POST


## Telegram BOT configuration (on the web there are dozens of guides better than this):

1) Click “Start” to activate BotFather bot. In response, you receive a list of commands to manage bots.
2) Choose or type the /newbot command and send it.
3) Choose a name for your bot — your subscribers will see it in the conversation. And choose a username for your bot — the bot can be found by its username in searches. The username must be unique and end with the word “bot.”
4) After you choose a suitable name for your bot — the bot is created. You will receive a message with a link to your bot t.me/<bot_username>, recommendations to set up a profile picture, description, a list of commands to manage your new bot and the TOKEN.


Thats it! Enjoy.