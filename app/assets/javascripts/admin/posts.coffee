delay = do ->
  timer = 0
  (callback, ms) ->
    clearTimeout timer
    timer = setTimeout(callback, ms)
    return

ready = ->
  $('[data-gist-id]').gist() if $('[data-gist-id]').length
  $("#new_post").on("ajax:success", (e, data, status, xhr) ->
    $("#new_post").replaceWith xhr.responseText
  ).on "ajax:error", (e, xhr, status, error) ->
    $("#new_post").append "<p>ERROR</p>"

  $('form').on 'keyup', ->
    previewUrl = this.dataset.previewUrl
    serialized = $(this).serialize()
    delay (->
      $.ajax({
        type: "POST",
        url: previewUrl,
        data: serialized,
        success: ->
          console.log('sucess!')
      });
      return
    ), 1000

    # get the current value of the input field.
    return

  # $(document).on 'keyup', 'input', doAThing
################################################################################
# Initialize
################################################################################

$(document).ready ready
$(document).on 'page:load', ready
