module.exports = (robot) ->
  robot.respond /drumpf (.+)$/, (msg) ->
    topic = msg.match[1]
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
