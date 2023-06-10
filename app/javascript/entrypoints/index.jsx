import React from 'react';
import ReactDOM from 'react-dom';
import Aitask from '../components/aitask/Aitask';

document.addEventListener('DOMContentLoaded', () => {
  console.log("index");
  ReactDOM.render(
    <React.StrictMode>
      <Aitask />
    </React.StrictMode>,
    document.getElementById('root')
  );
});
