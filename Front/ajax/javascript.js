function fetchRepositories() {
  $.ajax({
    url: "https://api.github.com/users/" + $('#username').val() + ",/repos",
    success: function(data) {
      $('#repos').empty();
      data.forEach(function(repository) {
        $('#repos').append("<li>" + repository.full_name + "</li>");
      });
    },
    error: function(jqXHR) {
      $('#repos').empty().append("<li>" + jqXHR.responseText + "</li>");
    }
  });
}

$(document).ready(function() {
  $('#fetch').click(function() {
    fetchRepositories(();
  });
});
