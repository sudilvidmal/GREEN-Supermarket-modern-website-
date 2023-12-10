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
                        <form>
                            <div class="form-group">
                                <label>How likely you would like to recommend us to your friends?</label>
                                <div class="rating-input-wrapper d-flex justify-content-between mt-2">

                                    <label><input type="radio" name="rating" /><span class="border rounded px-3 py-2">1</span></label>
                                    <label><input type="radio" name="rating" /><span class="border rounded px-3 py-2">2</span></label>
                                    <label><input type="radio" name="rating" /><span class="border rounded px-3 py-2">3</span></label>
                                    <label><input type="radio" name="rating" /><span class="border rounded px-3 py-2">4</span></label>
                                    <label><input type="radio" name="rating" /><span class="border rounded px-3 py-2">5</span></label>
                                    <label><input type="radio" name="rating" /><span class="border rounded px-3 py-2">6</span></label>
                                    <label><input type="radio" name="rating" /><span class="border rounded px-3 py-2">7</span></label>
                                    <label><input type="radio" name="rating" /><span class="border rounded px-3 py-2">8</span></label>
                                    <label><input type="radio" name="rating" /><span class="border rounded px-3 py-2">9</span></label>
                                    <label><input type="radio" name="rating" /><span class="border rounded px-3 py-2">10</span></label>

                                </div>
                                <div class="rating-labels d-flex justify-content-between mt-3">
                                    <label>Very unlikely</label>
                                    <label>Very likely</label>
                                </div>
                            </div>

                            <div class="form-group mt-3">
                                <label for="input-two">Would you like to say something?</label>
                                <textarea class="form-control mt-1" id="input-two" rows="3"></textarea>
                            </div>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                        <button type="button" class="btn btn-warning">Submit</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

</body>



</html>
