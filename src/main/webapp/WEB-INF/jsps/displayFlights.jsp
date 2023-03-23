<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>display flights</title>
</head>
<body>
     <h2>Flight search result</h2>
     <h2>List of flights</h2>
     <table border="1">
         <tr>
            <th>Airlines</th>
            <th>Departure City</th>
            <th>Arrival City</th>
            <th>Departure Time</th>
            <th>Select Flight</th>
         </tr>
      <c:forEach var = "flight" items="${flights}">
         <tr>
            <td>${flight.operatingAirlines}</td>
            <td>${flight.departureCity}</td>
            <td>${flight.arrivalCity}</td>
            <td>${flight.estimatedDepartureTime}</td>
            <td><a href = "showCompleteReservation?flightId=${flight.id}">select</a></td>
         </tr>
      </c:forEach>   
     </table>
</body>
</html>