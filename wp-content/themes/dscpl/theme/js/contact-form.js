jQuery(document).ready(function ($) {
  $("#contactForm").validate({
    rules: {
      name: "required",
      email: {
        required: true,
        email: true
      },
      message: "required"
    },
    messages: {
      name: "Please enter your name",
      email: "Please enter a valid email",
      message: "Please enter your message"
    },
    submitHandler: function (form) {
      const formData = $(form).serialize();

      $.ajax({
        url: contactFormAjax.ajaxurl,
        type: "POST",
        data: {
          action: "submit_contact_form",
          nonce: contactFormAjax.nonce,
          data: formData
        },
        beforeSend: function () {
          $("#formMessage").text("Sending...").removeClass().addClass("text-gray-500");
        },
        success: function (response) {
          if (response.success) {
            $("#formMessage").text("Message sent successfully ✅").removeClass().addClass("text-green-600");
            $("#contactForm")[0].reset();
          } else {
            $("#formMessage").text("Failed to send. Try again.").removeClass().addClass("text-red-600");
          }
        },
        error: function () {
          $("#formMessage").text("Error occurred.").removeClass().addClass("text-red-600");
        }
      });
    }
  });
});
