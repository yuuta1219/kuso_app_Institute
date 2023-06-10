import React from 'react';
import { BrowserRouter as Router, Routes, Route } from 'react-router-dom';
import HomePage from './HomePage';
import AboutPage from './AboutPage';

function Aitask() {
  console.log("Aitask");
  return (
    <Router>
      <Routes>
        <Route path="/aidoji" element={<HomePage />} />
        <Route path="/aidoji/index" element={<AboutPage />} />
      </Routes>
    </Router>
  );
}

export default Aitask;
