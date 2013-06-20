$('#film_list').append($("<li><%= j (link_to @film.title, films_activate_path(@film.id), remote: true) %>"))
$('#video_background').attr "src", "<%= @film.preview.url %>"
$('#play').attr "href", "<%= @film.film.url %>"
$("#new_film").find('input[type=text], input[type=file]').val("");
