<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>index</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<section>
<h2>자리등록</h2>
<table border="1">
  <tr>
    <th>자리등록번호 (자동발생)</th>
    <td><input type="text" value="00021" readonly></td>
  </tr>
  <tr>
    <th>사용일자</th>
    <td><input type="date"></td>
  </tr>
  <tr>
    <th>사용시간</th>
    <td>
      <select>
        <option>선택</option>
        <option>09:00</option>
        <option>10:00</option>
        <option>11:00</option>
        <option>12:00</option>
        <option>13:00</option>
        <option>14:00</option>
        <option>15:00</option>
        <option>16:00</option>
        <option>17:00</option>
        <option>18:00</option>
        <option>19:00</option>
      </select>
      부터
      <select>
        <option>선택</option>
        <option>10:00</option>
        <option>11:00</option>
        <option>12:00</option>
        <option>13:00</option>
        <option>14:00</option>
        <option>15:00</option>
        <option>16:00</option>
        <option>17:00</option>
        <option>18:00</option>
        <option>19:00</option>
      </select>
      까지
    </td>
  </tr>
  <tr>
    <th>학습자</th>
    <td>
      <select>
        <option>선택</option>
        <option>23001 김학생</option>
        <option>23002 이학생</option>
        <option>23003 박학생</option>
      </select>
    </td>
  </tr>
  <tr>
    <th>사용자리</th>
    <td>
      <table border="1">
        <tr>
          <th rowspan="2" colspan="2">자리</th>
          <th colspan="9">가로위치</th>
        </tr>
        <tr>
          <th>1</th><th>2</th><th>3</th><th>4</th><th>5</th><th>6</th><th>7</th><th>8</th><th>9</th>
        </tr>
        <!-- 세로위치 1~9행 -->
        <tr>
        <th rowspan="9" class="vertical">세로위치</th>
          <th>1</th>
          <td><input type="radio" name="seat" value="1-1"></td>
          <td><input type="radio" name="seat" value="1-2"></td>
          <td><input type="radio" name="seat" value="1-3"></td>
          <td><input type="radio" name="seat" value="1-4"></td>
          <td><input type="radio" name="seat" value="1-5"></td>
          <td><input type="radio" name="seat" value="1-6"></td>
          <td><input type="radio" name="seat" value="1-7"></td>
          <td><input type="radio" name="seat" value="1-8"></td>
          <td><input type="radio" name="seat" value="1-9"></td>
        </tr>
        <tr>
          <th>2</th>
          <td><input type="radio" name="seat" value="2-1"></td>
          <td><input type="radio" name="seat" value="2-2"></td>
          <td><input type="radio" name="seat" value="2-3"></td>
          <td><input type="radio" name="seat" value="2-4"></td>
          <td><input type="radio" name="seat" value="2-5"></td>
          <td><input type="radio" name="seat" value="2-6"></td>
          <td><input type="radio" name="seat" value="2-7"></td>
          <td><input type="radio" name="seat" value="2-8"></td>
          <td><input type="radio" name="seat" value="2-9"></td>
        </tr>
        <tr>
          <th>3</th>
          <td><input type="radio" name="seat" value="3-1"></td>
          <td><input type="radio" name="seat" value="3-2"></td>
          <td><input type="radio" name="seat" value="3-3"></td>
          <td><input type="radio" name="seat" value="3-4"></td>
          <td><input type="radio" name="seat" value="3-5"></td>
          <td><input type="radio" name="seat" value="3-6"></td>
          <td><input type="radio" name="seat" value="3-7"></td>
          <td><input type="radio" name="seat" value="3-8"></td>
          <td><input type="radio" name="seat" value="3-9"></td>
        </tr>
        <tr>
          <th>4</th>
          <td><input type="radio" name="seat" value="4-1"></td>
          <td><input type="radio" name="seat" value="4-2"></td>
          <td><input type="radio" name="seat" value="4-3"></td>
          <td><input type="radio" name="seat" value="4-4"></td>
          <td><input type="radio" name="seat" value="4-5"></td>
          <td><input type="radio" name="seat" value="4-6"></td>
          <td><input type="radio" name="seat" value="4-7"></td>
          <td><input type="radio" name="seat" value="4-8"></td>
          <td><input type="radio" name="seat" value="4-9"></td>
        </tr>
        <tr>
          <th>5</th>
          <td><input type="radio" name="seat" value="5-1"></td>
          <td><input type="radio" name="seat" value="5-2"></td>
          <td><input type="radio" name="seat" value="5-3"></td>
          <td><input type="radio" name="seat" value="5-4"></td>
          <td><input type="radio" name="seat" value="5-5"></td>
          <td><input type="radio" name="seat" value="5-6"></td>
          <td><input type="radio" name="seat" value="5-7"></td>
          <td><input type="radio" name="seat" value="5-8"></td>
          <td><input type="radio" name="seat" value="5-9"></td>
        </tr>
        <tr>
          <th>6</th>
          <td><input type="radio" name="seat" value="6-1"></td>
          <td><input type="radio" name="seat" value="6-2"></td>
          <td><input type="radio" name="seat" value="6-3"></td>
          <td><input type="radio" name="seat" value="6-4"></td>
          <td><input type="radio" name="seat" value="6-5"></td>
          <td><input type="radio" name="seat" value="6-6"></td>
          <td><input type="radio" name="seat" value="6-7"></td>
          <td><input type="radio" name="seat" value="6-8"></td>
          <td><input type="radio" name="seat" value="6-9"></td>
        </tr>
        <tr>
          <th>7</th>
          <td><input type="radio" name="seat" value="7-1"></td>
          <td><input type="radio" name="seat" value="7-2"></td>
          <td><input type="radio" name="seat" value="7-3"></td>
          <td><input type="radio" name="seat" value="7-4"></td>
          <td><input type="radio" name="seat" value="7-5"></td>
          <td><input type="radio" name="seat" value="7-6"></td>
          <td><input type="radio" name="seat" value="7-7"></td>
          <td><input type="radio" name="seat" value="7-8"></td>
          <td><input type="radio" name="seat" value="7-9"></td>
        </tr>
        <tr>
          <th>8</th>
          <td><input type="radio" name="seat" value="8-1"></td>
          <td><input type="radio" name="seat" value="8-2"></td>
          <td><input type="radio" name="seat" value="8-3"></td>
          <td><input type="radio" name="seat" value="8-4"></td>
          <td><input type="radio" name="seat" value="8-5"></td>
          <td><input type="radio" name="seat" value="8-6"></td>
          <td><input type="radio" name="seat" value="8-7"></td>
          <td><input type="radio" name="seat" value="8-8"></td>
          <td><input type="radio" name="seat" value="8-9"></td>
        </tr>
        <tr>
          <th>9</th>
          <td><input type="radio" name="seat" value="9-1"></td>
          <td><input type="radio" name="seat" value="9-2"></td>
          <td><input type="radio" name="seat" value="9-3"></td>
          <td><input type="radio" name="seat" value="9-4"></td>
          <td><input type="radio" name="seat" value="9-5"></td>
          <td><input type="radio" name="seat" value="9-6"></td>
          <td><input type="radio" name="seat" value="9-7"></td>
          <td><input type="radio" name="seat" value="9-8"></td>
          <td><input type="radio" name="seat" value="9-9"></td>
        </tr>
      </table>
  <tr>
    <th>기능</th>
    <td style="text-align:center;">
      <button type="button">등록</button>
      <button type="button">조회</button>
    </td>
  </tr>
</table>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>