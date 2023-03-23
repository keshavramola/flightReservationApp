<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>reservation details</title>
</head>
<body>
    <h2>Flight details</h2>
    Flight Number : ${flight.flightNumber}<br>
    Operating Airlines : ${flight.operatingAirlines }<br>
    Departure City : ${flight.departureCity }<br>
    Arrival City  : ${flight.arrivalCity }<br>
    Departure Date : ${flight.dateOfDeparture}<br>
    
    <h2>Enter passenger details</h2>
    <form action="confirmReservation" method = "post">
    <pre>
             First Name   <input type = "text" name = "firstName"/>
             Last Name    <input type = "text" name = "lastName"/>
             Middle Name  <input type = "text" name = "middleName"/>
             Email        <input type = "text" name = "email"/>
             Mobile       <input type = "text" name = "phone"/>
              <input type = "hidden" name = "flightId" value = "${flight.id}">
              
              <h2>Enter payment details</h2>
              
              Name on Card <input type = "text" name = "nameOnCard"/>
              Card Number <input type = "text" name = "cardNumber"/>
              CVV  <input type = "text" name = "cvv"/>
              Expire Date  <input type = "text" name = "expireDate"/>
              
              <input type = "submit" value = "complete reservation"/>
    </pre>
            
    </form>
</body>
</html>