TASK_URL = "#{process.env.JENKINS_URL}/job/%E3%82%BF%E3%82%A4%E3%83%9E%E3%83%BC/buildWithParameters?token=timer"
BATH_DURATION = 10

module.exports = (azusa) ->
  azusa.router.get '/timer/bath', (req, res) ->
    azusa.send {room: 'general'}, 'お風呂が沸きました！'
    res.send 'OK'
  azusa.hear /風呂.*(入れ|沸か)/, (msg) ->
    callback = "#{process.env.CALLBACK_URL}/timer/bath"
    azusa.http("#{TASK_URL}&duration=#{BATH_DURATION}&callback=#{callback}").get() (err, res, body) ->
      if err
        msg.reply "なんか体調が悪いみたいです……すみません、今日はもうお休みしますね"
      else
        msg.reply "はい、じゃあ#{BATH_DURATION / 60}分後にお知らせしますね！"
