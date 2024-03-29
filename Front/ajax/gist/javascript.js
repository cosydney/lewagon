function getGistDataAsJson() {
  return JSON.stringify({
    "description": $('#description').val(),
    "public": true,
    "files": {
      "README.md": { "content": $('#content').val() }
    }
  });
}

function createGist() {
  $.ajax({
    type: "POST",
    url: "https://api.github.com/gists",
    data: getGistDataAsJson(),
    success: function(data) {
      $('#result').removeClass('error').html(
        "Successfully created gist at " + data.html_url);
    },
    error: function(jqXHR) {
      $('#result').addClass('error').html(jqXHR.responseText);
    }
  });
}

$(document).ready(function() {
  $("#create-gist").submit(function(e) {
    e.preventDefault();
    createGist();
  });
});
