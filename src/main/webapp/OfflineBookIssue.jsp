<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Offline Book Issue</title>
    <link rel="stylesheet" href="OfflineBookIssue.css">
    <script>
        function generateRandomSlot() {
            const slots = ["9:00 AM", "10:00 AM", "11:00 AM", "12:00 PM", "1:00 PM", "2:00 PM", "3:00 PM", "4:00 PM"];
            const randomIndex = Math.floor(Math.random() * slots.length);
            document.getElementById("slot").innerText = "Your slot: " + slots[randomIndex];
            document.getElementById("confirmSlotBtn").style.display = 'inline';
        }

        function confirmSlot() {
            const selectedSlot = document.getElementById("slot").innerText;
            
            
            alert("Your slot (" + selectedSlot + ") is confirmed!");
            
        
            window.location.href = "dashboard.jsp"; 
        }
    </script>
</head>
<body>

<div class="nav">
    <a href="dashboard.jsp"><button class="btn">Back</button></a>
</div>

<h2>Choose Your Time Slot</h2>

<p>Click the button below to get a time slot for your offline book issue.</p>
<div class="random">
<button class="btn-orange" onclick="generateRandomSlot()">Get Your Slot</button></div>

<div id="slot"></div>
<div class="random">
<button class="btn-orange" id="confirmSlotBtn" style="display:none" onclick="confirmSlot()">Confirm Slot</button>
</div>

</body>
</html>
