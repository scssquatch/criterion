$('#film_list').append($("<li>").text("<%= @film.title %>"))
$('#video_background').attr "src", "<%= @film.preview.url %>"
$('#play').attr "href", "<%= @film.film.url %>"
$("#new_film").find('input[type=text], input[type=file]').val("");
