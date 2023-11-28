<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>All Questions</title>
</head>
<body>
<h2>Visi Jautājumi</h2>
<a href="create">Izveidot jautājumu šeit</a>

<?php
include "db.php";

// Fetch all questions
$fetchQuestionsQuery = "SELECT * FROM questions";
$resultQuestions = mysqli_query($conn, $fetchQuestionsQuery);

if ($resultQuestions) {
    while ($rowQuestion = mysqli_fetch_assoc($resultQuestions)) {
        $questionId = $rowQuestion['id'];
        $questionText = $rowQuestion['text'];

        // Fetch all answers for the current question
        $fetchAnswersQuery = "SELECT * FROM answers WHERE question_id = $questionId";
        $resultAnswers = mysqli_query($conn, $fetchAnswersQuery);

        // Check if the question has at least one answer
        if (mysqli_num_rows($resultAnswers) > 0) {
            echo "<h3>Jautājums: $questionText</h3>";
            $i = 0;
            while ($rowAnswer = mysqli_fetch_assoc($resultAnswers)) {
                $i++;
                $answerText = $rowAnswer['text'];
                $isCorrect = $rowAnswer['is_correct'] == 1 ? 'Correct' : 'Incorrect';

                echo "<p>$i. atbilde: $answerText ($isCorrect)</p>";
            }
        }
    }
} else {
    echo "Error fetching questions: " . mysqli_error($conn);
}

mysqli_close($conn);
?>
</body>
</html>