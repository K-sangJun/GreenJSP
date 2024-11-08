package D20241107.servlet;

import javax.servlet.*;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.annotation.WebServlet;

@WebServlet("/singleUpload")
@MultipartConfig
public class singleUploadServlet extends HttpServlet {

    private String getFileName(Part part) {
        String contentDispositionHeader = part.getHeader("content-disposition");

        String[] elements = contentDispositionHeader.split(";");
        for (String element : elements) {
            if (element.trim().startsWith("filename")) {
                return element.substring(element.indexOf("=") + 1).trim().replace("\"", "");
            }
        }

        return null;
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");

        Part part = request.getPart("fileName");
        String fileName = getFileName(part);
        if (fileName != null && !fileName.isEmpty()) {

            String uploadPath = getServletContext().getRealPath("/images") + "/" + fileName;
            part.write(uploadPath);

            PrintWriter out = response.getWriter();
            // 업로드 성공 시 파일 정보 출력
            out.println("<h3>파일 업로드 성공!</h3>");
            out.println("<p>파일 이름: " + fileName + "</p>");
            out.println("<p>파트 getSubmittedFileName: " + part.getSubmittedFileName() + "</p>");
            out.println("<p>저장 경로: " + uploadPath + "</p>");
            out.println("<p>파일 크기: " + part.getSize() + " bytes</p>");
        } else {
            System.out.println("파일이 없는댑숑?");
        }


    }
}