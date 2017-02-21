module.exports = (azusa) ->
  azusa.respond /おはよう/, (res) ->
    res.reply 'おはようございます！'
  azusa.respond /こんにちは/, (res) ->
    res.reply 'こんにちは！'
  azusa.respond /こんばん(は|わ)/, (res) ->
    res.reply 'こんばんは！'
