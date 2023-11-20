<%-- 
    Document   : ProductForm
    Created on : 08-Nov-2023, 8:59:42 pm
    Author     : Mohan_Maali
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <meta charset="UTF-8">
        <title>Shoe Information Form</title>
        <!-- Include Bootstrap CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    </head>

    <body>
        <div class="container">
            <h2>Shoes Information Form</h2>
            <form action="/ShoesShop/ProductFormController">
                <div class="form-row">
                    <div class="form-group col-md-4">
                        <label for="productName">Product Name:</label>
                        <input name="name" type="text" class="form-control" id="productName"
                               placeholder="Enter product name">
                    </div>
                    <div class="form-group col-md-4">
                        <label for="brand">Brand:</label>
                        <input name="brand" type="text" class="form-control" id="brand" placeholder="Enter brand name">
                    </div>
                    <div class="form-group col-md-4">
                        <label for="model">Model:</label>
                        <input name="model" type="text" class="form-control" id="model" placeholder="Enter model">
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group col-md-4">
                        <label for="category">Category:</label>
                        <input name="category" type="text" class="form-control" id="category" placeholder="Enter category">
                    </div>
                    <div class="form-group col-md-4">
                        <label for="color">Color:</label>
                        <input name="color" type="text" class="form-control" id="color" placeholder="Enter color">
                    </div>
                    <div class="form-group col-md-4">
                        <label for="price">Price:</label>
                        <input name="price" type="text" class="form-control" id="price" placeholder="Enter price" required>
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group col-md-4">
                        <label for="discount">Discount:</label>
                        <input name="discount" type="number" class="form-control" id="discount"
                               placeholder="Enter discount">
                    </div>

                    <div class="form-group col-md-4">
                        <label for="discount">Gender:</label><br>
                        <select class=" col-md-12" name="gender" id="gender">
                            <option value="male">male</option>
                            <option value="female">female</option>
                            <option value="boys">Boys</option>
                            <option value="Girls">Girls</option>
                            <option value="Baby boy">Baby boy</option>
                            <option value="bay girl">Baby Girl</option>
                        </select>
                    </div>

                    <div class="form-group col-md-4">
                        <label for="discount">Size:</label>
                        <input name="size" type="text" class="form-control" id="size" placeholder="Enter size">
                    </div>
                </div>




                <div class="form-group col-md-14">
                    <label for="description">Description:</label>
                    <textarea name="description" class="form-control" id="description" rows="4"
                              placeholder="Enter description"></textarea>
                </div>




                <div class="form-group">
                    <label for="image">Image URL:</label>
                    <input type="text" class="form-control" id="image" placeholder="Enter image URL">
                </div>
                <button type="submit" class="btn btn-primary">Submit</button>


            </form>

        </div>

        <!-- Include Bootstrap JS (optional) -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </body>

</html>