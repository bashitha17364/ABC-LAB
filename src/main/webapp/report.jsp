<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Blood Test Medical Report</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.3/css/bulma.min.css">
    <!-- Add your custom styles here -->
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 20px;
        }

        .container {
            max-width: 800px;
            margin: 20px auto;
            padding: 20px;
            background-color: #ffffff;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        h1 {
            color: #3273dc;
        }

        h2 {
            color: #555555;
        }

        p {
            line-height: 1.6;
        }
    </style>
</head>

<body>
    <div class="container">
    <br/>
        <h1 class="title is-1 has-text-centered has-text-primary mt-4">ABC Laboratories</h1>

        <h1 class="title is-3 has-text-centered">Blood Test Medical Report</h1>
        <br/>
        <h2 class="subtitle is-5">Patient Information</h2>
        <p><strong>Patient Name:</strong> John Doe</p>
        <p><strong>Date of Birth:</strong> January 1, 1980</p>
        <p><strong>Gender:</strong> Male</p>
        <p><strong>Contact Number:</strong> +1 123-456-7890</p>

        <h2 class="subtitle is-5">Test Results</h2>
        <table class="table is-fullwidth">
            <thead>
                <tr>
                    <th>Test</th>
                    <th>Result</th>
                    <th>Reference Range</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Red Blood Cell Count (RBC)</td>
                    <td>5.2 M/mcL</td>
                    <td>4.5 - 5.9 M/mcL</td>
                </tr>
                <tr>
                    <td>Hemoglobin (Hb)</td>
                    <td>14.5 g/dL</td>
                    <td>13.5 - 17.5 g/dL</td>
                </tr>
                <tr>
                    <td>White Blood Cell Count (WBC)</td>
                    <td>8.2 K/uL</td>
                    <td>4.5 - 11.0 K/uL</td>
                </tr>
                <tr>
                    <td>Platelet Count</td>
                    <td>14.5 K/uL</td>
                    <td>150 - 450 K/uL</td>
                </tr>
                <!-- Add more rows for additional test results -->
            </tbody>
        </table>

        <h2 class="subtitle is-5">Doctor's Comments</h2>
        <p>The blood test results are within the normal range. No abnormalities detected. Follow-up appointments are not
            necessary at this time. Please consult your healthcare provider if you have any concerns.</p>

        <div class="content">
            <p><strong>Note:</strong> This report is for informational purposes only. Consult with your healthcare
                provider for a detailed interpretation of your blood test results.</p>
        </div>
    </br>
</body>

</html>