<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>KeepNote</title>
</head>
<body>
   <form action="saveNote" method="POST">
      Note Id:<br> <input type="text" name="noteId"> <br>
      Title:<br> <input type="text" name="noteTitle"> <br>
      Content:<br> <input type="text" name="noteContent"> <br>
      Status:<br> <input type="text" name="noteStatus"> <br> <br>
      <input type="submit" value="Submit">
   </form>

   <!-- Create a form which will have text boxes for Note ID, title, content and status along with a Send
       button. Handle errors like empty fields -->


   <!-- display all existing notes in a tabular structure with Id, Title,Content,Status, Created Date and Action -->
      <table>
           <tbody>
           <c:forEach var="note" items="${notes}" varStatus="status">
           <tr>
           <td>${note.noteId}</td><br>
           <td>${note.noteTitle}</td><br>
           <td>${note.noteContent}</td><br>
           <td>${note.noteStatus}</td><br>
           <td>${note.createdAt}</td>
           <td><form action="deleteNote" method="GET"><input type="hidden" name="noteId" value="${note.noteId}"><input type="submit" value="Delete"></form>
           </td>
           </tr>

           </c:forEach>
           </tbody>
           </table>

       <h1>${error}<h1>

</body>
</html>
