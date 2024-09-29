package controller;

import dao.ProductDao;
import model.Product;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.File;
import java.io.IOException;

@WebServlet("/ProductServlet")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, 
        maxFileSize = 1024 * 1024 * 10, 
        maxRequestSize = 1024 * 1024 * 50)
public class ProductServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private ProductDao productDao;

    public void init() {
        productDao = new ProductDao();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
     
        String itemName = request.getParameter("item");
        String price = request.getParameter("price");


        Part filePart = request.getPart("image");
        String fileName = extractFileName(filePart);
        String savePath = "C:\\uploadedFiles" + File.separator + fileName; 
        File fileSaveDir = new File(savePath);
        if (!fileSaveDir.exists()) {
            fileSaveDir.mkdirs();
        }
        filePart.write(savePath + File.separator);

    
        Product product = new Product();
        product.setItemName(itemName);
        product.setPrice(price);
        product.setImage(savePath);

      
        boolean isInserted = productDao.insertProduct(product);

        if (isInserted) {
            response.sendRedirect("products.jsp?success=true");
        } else {
            response.sendRedirect("products.jsp?error=true");
        }
    }

    private String extractFileName(Part part) {
        String contentDisposition = part.getHeader("content-disposition");
        String[] items = contentDisposition.split(";");
        for (String s : items) {
            if (s.trim().startsWith("filename")) {
                return s.substring(s.indexOf("=") + 2, s.length() - 1);
            }
        }
        return "";
    }
}
