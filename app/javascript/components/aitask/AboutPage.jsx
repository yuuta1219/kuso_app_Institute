import React from 'react';
import { Link } from 'react-router-dom';

function AboutPage() {
  return (
    <div className='min-h-screen '>
      Hello, from About!
      <Link to="/aidoji">
        <button>Go to Home</button>
      </Link>
    </div>
  );
}

export default AboutPage;
