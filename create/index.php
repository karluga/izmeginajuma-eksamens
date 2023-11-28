<?php
include "../db.php";

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $submittedQuestion = $_POST["question"];

    // Insert question into the "questions" table
    $insertQuestionQuery = "INSERT INTO questions (text) VALUES ('$submittedQuestion')";
    mysqli_query($conn, $insertQuestionQuery);

    // Get the ID of the last inserted question
    $questionId = mysqli_insert_id($conn);

    // Loop through the answer array
    if(isset($_POST["answer"]) && is_array($_POST["answer"])) {
        foreach ($_POST["answer"] as $index => $answerText) {
            $isCorrect = ($_POST["correct"] == $index);
            $isCorrectValue = $isCorrect ? 1 : 0;

            $insertAnswersQuery = "INSERT INTO answers (text, question_id, is_correct) VALUES ('$answerText', $questionId, $isCorrectValue)";

            mysqli_query($conn, $insertAnswersQuery);
        }
    }

    echo "Tavs jautājums tika saglabāts!";
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Question Form</title>
</head>
<body>

<h2>Izveidot Jautājumu</h2>

<form action="" method="post">
    <label for="question">Jautājums:</label>
    <input type="text" name="question"><br><br>

    <label for="answer1">
        <input type="radio" id="answer1" name="correct" value="0" required><input type="text" name="answer[]">
    </label><br>

    <label for="answer2">
        <input type="radio" id="answer2" name="correct" value="1" required><input type="text" name="answer[]">
    </label><br><br>

    <input type="submit" value="Iesniegt">
</form>
</body>
</html>