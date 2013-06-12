javascript:
  $(".films").append $("<li>").text("#{link_to @film.title, films_activate_path(@film.id), remote: true}")
  $("#video_background").attr("src", "<%= @film.preview.url %>")
  $("#play").attr("href", "<%= @film.film.url %>")
