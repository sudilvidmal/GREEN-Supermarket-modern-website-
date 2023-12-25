<%--
  Created by IntelliJ IDEA.
  User: neeth
  Date: 12/10/2023
  Time: 12:28 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Feedback Form</title>

    <!-- Include SweetAlert2 from CDN -->
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>


    <link rel="stylesheet" type="text/css" href="css/feedbackcss.css">
</head>
<body>


<div id="feedback-form-wrapper">
    <div id="floating-icon">
        <button type="button" class="btn btn-dark btn-sm" data-bs-toggle="modal" data-bs-target="#exampleModal">
            Feedback
        </button>
    </div>
    <div id="feedback-form-modal">
        <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content border-warning">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Customer Feedback</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <form action="FeedbackServlet" method="post" id="feedbackform">
                            <div class="form-group">
                                <label>How likely you would like to recommend us to your friends?</label>
                                <div class="rating-input-wrapper d-flex justify-content-between mt-2">

                                    <label><input type="radio" name="rating" value="1" /><span class="border rounded px-3 py-2">1</span></label>
                                    <label><input type="radio" name="rating" value="2" /><span class="border rounded px-3 py-2">2</span></label>
                                    <label><input type="radio" name="rating" value="3" /><span class="border rounded px-3 py-2">3</span></label>
                                    <label><input type="radio" name="rating" value="4" /><span class="border rounded px-3 py-2">4</span></label>
                                    <label><input type="radio" name="rating" value="5" /><span class="border rounded px-3 py-2">5</span></label>
                                    <label><input type="radio" name="rating" value="6" /><span class="border rounded px-3 py-2">6</span></label>
                                    <label><input type="radio" name="rating" value="7" /><span class="border rounded px-3 py-2">7</span></label>
                                    <label><input type="radio" name="rating" value="8" /><span class="border rounded px-3 py-2">8</span></label>
                                    <label><input type="radio" name="rating" value="9" /><span class="border rounded px-3 py-2">9</span></label>
                                    <label><input type="radio" name="rating" value="10" /><span class="border rounded px-3 py-2">10</span></label>

                                </div>
                                <div class="rating-labels d-flex justify-content-between mt-3">
                                    <label>Very unlikely</label>
                                    <label>Very likely</label>
                                </div>
                            </div>

                            <div class="form-group mt-3">
                                <label for="input-feedback">Would you like to say something?</label>
                                <textarea class="form-control mt-1" id="input-feedback" rows="3" name="feedback"></textarea>
                            </div>


                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                <button type="submit" class="btn btn-warning">Submit</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
    document.addEventListener('DOMContentLoaded', function () {
        var form = document.getElementById('feedbackform'); // Replace 'yourFormId' with the actual ID of your form

        form.addEventListener('submit', function (event) {
            // Validate radio buttons
            var ratingInputs = document.querySelectorAll('input[name="rating"]');
            var ratingSelected = false;

            ratingInputs.forEach(function (input) {
                if (input.checked) {
                    ratingSelected = true;
                }
            });

            if (!ratingSelected) {
                alert('Please select a rating before submitting the form.');
                event.preventDefault(); // Prevent form submission
                return;
            }

            // Validate textarea
            var feedbackTextarea = document.getElementById('input-feedback'); // Replace 'input-two' with the actual ID of your textarea

            if (feedbackTextarea.value.trim() === '') {
                alert('Please enter your feedback before submitting the form.');
                event.preventDefault(); // Prevent form submission
                return;
            }

            // If all validations pass, the form will be submitted
        });
    });
</script>


</body>



</html>
