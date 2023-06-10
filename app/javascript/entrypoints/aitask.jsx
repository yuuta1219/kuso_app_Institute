import React from 'react';
import ReactDOM from 'react-dom';
import Aitask from '../components/aitask/Aitask';

document.addEventListener('DOMContentLoaded', () => {
  console.log("aitask");
  ReactDOM.render(
    <React.StrictMode>
      <Aitask />
    </React.StrictMode>,
    document.getElementById('root')
  );
});
