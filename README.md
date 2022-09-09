# Agent DVR - Telegram alert notifications

This simple PHP script sends the screenshot generated by AgentDVR on alerts to your Telegram bot.
It works with the free version of AgentDVR.


## PHP Configuration:

Rename config.php_sample to config.php and change the content of the file according to your configuration.

Test your URL on browser: http://yourserverIP/telegram_alert.php?msg=TEST

You should see a reply like this:

```bash
{"ok":true,"result":{"message_id":56,"from":{"id":1234567890,"is_bot":true,"first_name":"AgentDVR","username":"test_bot"},"chat":{"id":1234567890,"first_name":"My name","last_name":"My lastname","type":"private"},"date":1662710877,"text":"{MSG}"}}
```

When no image is passed to the script the notification is sent to Telegram only in text format.


## AgentDVR Configuration:

### Set these values to the new camera Action created

Actions -> Action Configuration -> If = Manual Alert (just for testing purposes)

Actions -> Action Configuration -> Then = Call URL

Actions -> Action Configuration -> URL = http://yourserverIP/telegram_alert.php?msg={MSG}

Actions -> Action Configuration -> Upload Image = 1

Actions -> Action Configuration -> Method = POST


## Telegram BOT configuration (on the web there are dozens of guides better than this):

1) Click “Start” to activate BotFather bot. In response, you receive a list of commands to manage bots.
2) Choose or type the /newbot command and send it.
3) Choose a name for your bot — your subscribers will see it in the conversation. And choose a username for your bot — the bot can be found by its username in searches. The username must be unique and end with the word “bot.”
4) After you choose a suitable name for your bot — the bot is created. You will receive a message with a link to your bot t.me/<bot_username>, recommendations to set up a profile picture, description, a list of commands to manage your new bot and the TOKEN.


Now you can fire "Manual Alert" and see what happen on Telegram.

Share any improvements to the script with me so that everyone can benefit!

Thats it! Enjoy.