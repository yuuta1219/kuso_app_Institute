import React from 'react';
import { Link } from 'react-router-dom';

function AboutPage() {
  return (
    <div>
      Hello, from About!
      <Link to="/post">
        <button>Go to Home</button>
      </Link>
    </div>
  );
}

export default AboutPage;
