angular.module("mentionFilter", []).filter "mention", ->
  (input, recipients) ->
    HASHTAG_REGEXP =  /(^|\s)#(\w*[a-zA-Z_]+\w*)/gim
    MENTION_REGEXP = /(^|\s)\@(\w*[a-zA-Z_]+\w*)/gim
    for hashtag in (input.match(HASHTAG_REGEXP) || [])
      input = input.replace(hashtag, "<a href='#/topics/#{hashtag.replace('#', '').trim()}'>#{hashtag}</a>")
    for mention in (input.match(MENTION_REGEXP) || [])
      break unless recipients
      stripMention = mention.replace('@', '').trim()
      mentionUser = (recipient for recipient in recipients when recipient.username is stripMention)[0]
      if mentionUser
        input = input.replace(mention, "<a href='#/users/#{mentionUser.id}'>#{mention}</a>")
    input
