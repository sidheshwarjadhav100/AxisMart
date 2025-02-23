<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>home page</title>
</head>
 <style>
        /* General Styles */
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background-color: #f9f9f9;
            color: #333;
        }

        a {
            text-decoration: none;
            color: inherit;
        }

        h1, h2, h3 {
            margin: 0;
            padding: 0;
        }

        /* Navigation */
        nav ul {
            list-style: none;
            display: flex;
            justify-content: center;
            background-color: #333;
            margin: 0;
            padding: 10px 0;
        }

        nav ul li {
            margin: 0 20px;
        }

        nav ul li a {
            color: white;
            font-size: 1.1rem;
            padding: 10px 15px;
            text-transform: uppercase;
            font-weight: bold;
        }

        nav ul li a:hover {
            background-color: #28a745;
            border-radius: 5px;
        }

        /* Hero Section */
        .hero {
            background: linear-gradient(135deg, #007bff, #6610f2);
            color: white;
            text-align: center;
            padding: 80px 20px;
            border-bottom: 2px solid #fff;
        }

        .hero h1 {
            font-size: 4rem;
            margin-bottom: 20px;
        }

        .hero p {
            font-size: 1.25rem;
            margin-bottom: 30px;
        }

        .hero .btn {
            background-color: #28a745;
            color: white;
            padding: 15px 30px;
            font-size: 1.2rem;
            text-transform: uppercase;
            font-weight: bold;
            border-radius: 30px;
            transition: background-color 0.3s ease;
        }

        .hero .btn:hover {
            background-color: #218838;
        }

        /* Features Section */
        .features {
            padding: 50px 20px;
            text-align: center;
            background-color: #f0f0f0;
        }

        .features h2 {
            font-size: 2.5rem;
            margin-bottom: 30px;
        }

        .feature-item {
            background-color: white;
            padding: 20px;
            margin: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        .feature-item h3 {
            font-size: 1.8rem;
            margin-bottom: 15px;
        }

        .feature-item p {
            font-size: 1rem;
            color: #555;
        }

        /* About Section */
        .about {
            padding: 50px 20px;
            text-align: center;
        }

        .about h2 {
            font-size: 2.5rem;
            margin-bottom: 30px;
        }

        .about p {
            font-size: 1.15rem;
            color: #444;
            line-height: 1.6;
        }

        /* Contact Section */
        .contact {
            padding: 50px 20px;
            background-color: #f0f0f0;
            text-align: center;
        }

        .contact h2 {
            font-size: 2.5rem;
            margin-bottom: 30px;
        }

        .contact p {
            font-size: 1.1rem;
            color: #555;
        }

        .contact a {
            color: #007bff;
            font-weight: bold;
        }

        .contact a:hover {
            text-decoration: underline;
        }

        /* Footer */
        footer {
            background-color: #333;
            color: white;
            text-align: center;
            padding: 20px;
        }
    </style>
<body>
<jsp:include page="navbar.jsp"></jsp:include>

 <section class="hero">
        <h1>Welcome to AxisMart</h1>
        <p>Your ultimate solution for seamless product management and inventory tracking.</p>
        <a href="#features" class="btn">Explore Features</a>
    </section>
    
    <section id="features" class="features">
        <h2>Key Features</h2>
        <div class="feature-item">
            <h3>Efficient Inventory Management</h3>
            <p>Track and manage your products, prices, and quantities in real-time.</p>
        </div>
        <div class="feature-item">
            <h3>Category Organization</h3>
            <p>Sort and categorize your products for easy access and navigation.</p>
        </div>
        <div class="feature-item">
            <h3>Smart Analytics</h3>
            <p>Analyze your products' performance with integrated reporting tools.</p>
        </div>
    </section>
    
    <section id="about" class="about">
        <h2>About AxisMart</h2>
        <p>AxisMart is designed to make product management simple and intuitive. Whether you're a small business owner or part of a large organization, AxisMart streamlines your inventory and product tracking processes. Built with Spring MVC and MySQL, AxisMart is a robust and scalable solution for any business.</p>
    </section>
    
    <section id="contact" class="contact">
        <h2>Contact Us</h2>
        <p>Have any questions or feedback? Reach out to us at <a href="mailto:support@axismart.com">support@axismart.com</a>.</p>
    </section>
    
    <footer>
        <p>&copy; 2024 AxisMart. All Rights Reserved.</p>
    </footer>
</body>
</html>