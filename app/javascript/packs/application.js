require("@rails/ujs").start();
require("turbolinks").start();
require("@rails/activestorage").start();
require("channels");

require("jquery");

require("semantic-ui-sass");

scroll_bottom = function () {
  if ($("#messages").length > 0) {
    $("#messages").scrollTop($("#messages")[0].scrollHeight);
  }
};

submit_message = function () {
  $("#message_content").on("keydown", function (e) {
    if (e.key == "Enter") {
      $("button").click();
      e.target.value = "";
    }
  });
};

select_text = function () {
  const input = document.getElementById("message_content");
  input.select();
};

$(document).on("turbolinks:load", function () {
  $(".ui.dropdown").dropdown();
  $(".message .close").on("click", function () {
    $(this).closest(".message").transition("fade");
  });
  scroll_bottom();
  submit_message();
  select_text();
});
