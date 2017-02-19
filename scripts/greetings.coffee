module.exports = (robot) ->
  robot.respond /おはよう/, (res) ->
    res.reply 'おはようございます！'
  robot.respond /こんにちは/, (res) ->
    res.reply 'こんにちは！'
  robot.respond /こんばん(は|わ)/, (res) ->
    res.reply 'こんばんは！'
