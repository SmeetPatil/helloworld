// PWA React code

import React, { useState } from 'react';
import './App.css'; // Optional: For custom tweaks beyond Bootstrap
const App = () => {
  // Sample e-commerce data
  const [products] = useState([
    { id: 1, name: 'Wireless Headphones', price: '$99.99', image: '🎧' },
    { id: 2, name: 'Smart Watch', price: '$149.50', image: '⌚' },
    { id: 3, name: 'Bluetooth Speaker', price: '$45.00', image: '🔊' },
    { id: 4, name: 'Laptop Backpack', price: '$35.99', image: '🎒' },
    { id: 5, name: 'Mechanical Keyboard', price: '$85.00', image: '⌨️' },
    { id: 6, name: 'Gaming Mouse', price: '$50.00', image: '🖱️' },
  ]);
  return (
    <div className="App">
      {/* Responsive Navbar */}
      <nav className="navbar navbar-expand-lg navbar-dark bg-dark">
        <div className="container">
          <a className="navbar-brand" href="#home">SFIT TechStore</a>
          <button className="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
            <span className="navbar-toggler-icon"></span>
          </button>
          <div className="collapse navbar-collapse" id="navbarNav">
            <ul className="navbar-nav ms-auto">
              <li className="nav-item"><a className="nav-link active" href="#home">Home</a></li>
              <li className="nav-item"><a className="nav-link" href="#products">Products</a></li>
              <li className="nav-item"><a className="nav-link" href="#cart">Cart (0)</a></li>
            </ul></div></div></nav>
      {/* Main Content Area */}
      <div className="container mt-5">
        <h2 className="text-center mb-4">Featured Products</h2>
        {/* Responsive Grid System */}
        <div className="row">
          {products.map((product) => (
            <div className="col-12 col-md-6 col-lg-4 mb-4" key={product.id}>
              <div className="card h-100 shadow-sm text-center p-3">
                <div style={{ fontSize: '4rem' }}>{product.image}</div>
                <div className="card-body">
                  <h5 className="card-title">{product.name}</h5>
                  <p className="card-text fw-bold text-success">{product.price}</p>
                  <button className="btn btn-primary w-100">Add to Cart</button>
                </div></div></div>))}</div></div>
      {/* Footer */}
      <footer className="bg-dark text-white text-center py-3 mt-5">
        <p className="mb-0">&copy; 2026 SFIT TechStore. All Rights Reserved.</p>
      </footer></div>);};
export default App;
