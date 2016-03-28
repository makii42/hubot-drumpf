# Description:
#   Does an awesome drumpf speech about a specified topic, using
#   very simple words, so everybody can follow.
#
# Dependencies:
#   none
#
# Configuration:
#   none
#
# Commands:
#   hubot drumpf <phrase> - will do a drumpf speech about <phrase>
#   hubot trump <phrase> - will do a drumpf speech about <phrase>
#   hubot trumpf me <phrase> - will do a drumpf speech about <phrase>
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
