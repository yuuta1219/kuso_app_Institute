import React from 'react';
import ReactDOM from 'react-dom';
import Top from '../components/Top';

document.addEventListener('DOMContentLoaded', () => {
  ReactDOM.render(
    <React.StrictMode>
      <Top />
    </React.StrictMode>,
    document.getElementById('root')
  );
});
