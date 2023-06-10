import React from 'react';
import { BrowserRouter as Router, Routes, Route } from 'react-router-dom';
import HomePage from './HomePage';
import AboutPage from './AboutPage';

function Aitask() {
  console.log("Aitask");
  return (
    <Router>
      <Routes>
        <Route path="/post" element={<HomePage />} />
        <Route path="/post/about" element={<AboutPage />} />
      </Routes>
    </Router>
  );
}

export default Aitask;
