# Description:
#   <description of the scripts functionality>
#
# Dependencies:
#   none
#
# Configuration:
#   none
#
# Commands:
#   hubot <trigger> - <what the respond trigger does>
#   <trigger> - <what the hear trigger does>
#
# Notes:
#   Let's make hubot great again!
#
# Author:
#   makii42

module.exports = (robot) ->
  robot.respond /[t|d]rumpf? (me )?(.+)$/, (msg) ->
    topic = msg.match[2]
    trumpified = [
      "<drumpf>",
      "Are you asking me about #{topic}?",
      "Let me tell you about #{topic}.",
      "I know #{topic}.",
      "I like #{topic}.",
      "I donated money for #{topic}.",
      "We're gonna be #{topic}, let me tell you, it'll be great, it'll be yuge.",
      "Next question.",
      "</drumpf>"
    ].join " "
    msg.reply trumpified
