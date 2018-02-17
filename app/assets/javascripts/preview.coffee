App.room = App.cable.subscriptions.create "WebNotificationsChannel",
  received: (data) ->
    post = JSON.parse(data.post)
    abstract = post.abstract
    title = post.title
    body = post.body
    author = post.author
    image_url = post.img_url
    date = post.date

    $('.post').find("[data-post='body']").html(body)
    $('.post').find("[data-post='abstract']").html(abstract)
    $('.post').find("[data-post='title']").html(title)
    $('.post').find("[data-post='author']").html(author)
    $('.post').find("[data-post='date']").html(date)
    $('.post').find("img")[0].src = image_url
