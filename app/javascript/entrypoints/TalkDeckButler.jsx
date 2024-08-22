import React from 'react';
import ReactDOM from 'react-dom';
import TalkDeckButler from '../react/talkdeckbutler/TalkDeckButler';

document.addEventListener('DOMContentLoaded', () => {
  ReactDOM.render(
    <React.StrictMode>
      <TalkDeckButler />
    </React.StrictMode>,
    document.getElementById('root')
  );
});
