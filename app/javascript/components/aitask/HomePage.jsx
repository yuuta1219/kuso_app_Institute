import React from 'react';
import { Link } from 'react-router-dom';

function HomePage() {
  return (
    <div>
      Hello, from Home!
      <Link to="/post/about">
        <button>Go to About</button>
      </Link>
    </div>
  );
}

export default HomePage;