import React from 'react';
import { Link } from 'react-router-dom';

function HomePage() {
  return (
    <div className='min-h-screen '>
      Hello, from Home!
      <Link to="/aitask/new">
        <button>Go to New</button>
      </Link>
    </div>
  );
}

export default HomePage;