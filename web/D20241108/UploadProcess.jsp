<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.io.File" %>
<%@ page import="D20241108.dto.MyFileDTO" %>
<%@ page import="D20241108.dao.MyFileDAO" %>
<%@ page import="java.io.IOException" %><%--
  Created by IntelliJ IDEA.
  User: GGG
  Date: 2024-11-08
  Time: 오전 10:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String saveDirectory = application.getRealPath("/D20241108/uploads");
    int maxPostSize = 1024 * 1000; //파일 최대 크기(1MB);
    String encoding = "UTF-8";

    try {
//        1. MultipartRequest 객체생성
        MultipartRequest mr = new MultipartRequest(
                request,
                saveDirectory,
                maxPostSize,
                encoding
        );

//        2. 새로운 파일명 생성
        String fileName = mr.getFilesystemName("attachedFile"); //현재 파일이름
        String ext = fileName.substring(fileName.lastIndexOf(".")); //현재 파일 확장자
        String now = new SimpleDateFormat("yyyymmdd_HmsS").format(new Date());
        String newFileName = now + ext; //새로운 파일이름("업로드일시.확장자")

//        3. 파일명 변경
        File oldFile = new File(saveDirectory + File.separator + fileName);
        File newFile = new File(saveDirectory + File.separator + newFileName);
        oldFile.renameTo(newFile);

//        4. 다른 폼 파라미터 받기
        String name = mr.getParameter("name");
        String title = mr.getParameter("title");
        String[] cateArray = mr.getParameterValues("cate");
        StringBuffer cateBuf = new StringBuffer();
        if (cateArray == null) {
            cateBuf.append("선택없음");
        } else {
            for (String cate : cateArray) {
                cateBuf.append(cate + ", ");
            }
        }

//        5. DTO 생성
        MyFileDTO myFileDTO = new MyFileDTO();
        myFileDTO.setName(name);
        myFileDTO.setTitle(title);
        myFileDTO.setCate(cateBuf.toString());
        myFileDTO.setOfile(fileName);
        myFileDTO.setSfile(newFileName);
//        6. DAO를 통해 데이터베이스에 반영
        MyFileDAO myFileDAO = new MyFileDAO();
        myFileDAO.insertFile(myFileDTO);
        myFileDAO.close();

//        7. 파일 목록 jsp로 리다이렉션
        response.sendRedirect("fileList.jsp");

    } catch (IOException e) {
        // 파일 크기 초과 예외 처리
        e.printStackTrace();
        response.sendRedirect("/fileUploadMain.jsp");
        request.setAttribute("errMessage", "업로드한 파일이 너무 큽니다. 1MB 이하의 파일을 업로드하세요.");
        request.getRequestDispatcher("/fileUploadMain.jsp").forward(request, response);
    }


%>
<html>
    <head>
        <title>Title</title>
    </head>
    <body>

    </body>
</html>
