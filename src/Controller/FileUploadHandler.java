package Controller;

import java.io.File;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;


public class FileUploadHandler extends HttpServlet {
    private final String UPLOAD_DIRECTORY = "C:/Users/Saied/Downloads";

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        //process only if its multipart content
        if(ServletFileUpload.isMultipartContent(request)){
            try {
                List<FileItem> multiparts = new ServletFileUpload(
                        new DiskFileItemFactory()).parseRequest(request);

                for(FileItem item : multiparts){
                    if(!item.isFormField()){
                        String name = new File(item.getName()).getName();
                        item.write( new File(UPLOAD_DIRECTORY + File.separator + name));
                    }
                }

                //File uploaded successfully
                request.setAttribute("message", "File Uploaded Successfully");

//                boolean ajax = "XMLHttpRequest".equals(request.getHeader("X-Requested-With"));
//                // ...
//
//                if (ajax) {
//                    // Handle ajax (JSON) response.
//
//                } else {
//                    // Handle regular (JSP) response.
//
//                    String text = "some text";
//
//                    response.setContentType("text/plain");  // Set content type of the response so that jQuery knows what it can expect.
//                    response.setCharacterEncoding("UTF-8"); // You want world domination, huh?
//                    response.getWriter().write(text);       // Write response body.
//                }

            } catch (Exception ex) {
                request.setAttribute("message", "File Upload Failed due to " + ex);
            }

        }else{
            request.setAttribute("message",
                    "Sorry this Servlet only handles file upload request");
        }

        request.getRequestDispatcher("/result.jsp").forward(request, response);

    }

}