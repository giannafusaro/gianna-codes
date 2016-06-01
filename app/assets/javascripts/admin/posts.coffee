ready = ->
  $("#new_post").on("ajax:success", (e, data, status, xhr) ->
    $("#new_post").replaceWith xhr.responseText
  ).on "ajax:error", (e, xhr, status, error) ->
    $("#new_post").append "<p>ERROR</p>"
################################################################################
# Initialize
################################################################################

$(document).ready ready
$(document).on 'page:load', ready
