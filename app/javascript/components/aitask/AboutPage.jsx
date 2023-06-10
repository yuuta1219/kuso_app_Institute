import React, { useState } from 'react';
import { Link } from 'react-router-dom';
import axios from 'axios';
import { getCsrfToken } from './utils';

function AboutPage() {
  const [formData, setFormData] = useState({
    name: '',
    email: '',
    // etc...
  });

  const handleChange = (event) => {
    setFormData({
      ...formData,
      [event.target.name]: event.target.value,
    });
  };

  const handleSubmit = async (event) => {
    event.preventDefault();

    const csrfToken = getCsrfToken();

    if (!csrfToken) {
      // CSRFトークンが取得できなかった場合のエラーハンドリング
      return;
    }

    try {
      const response = await axios.post('/your-rails-endpoint', formData, {
        headers: {
          'X-CSRF-Token': csrfToken,
        },
      });

      // レスポンスを処理します
      console.log(response.data);
    } catch (error) {
      if (error.response) {
        // サーバからのレスポンスがある場合のエラー処理
        console.log(error.response.data);
        console.log(error.response.status);
        console.log(error.response.headers);
      } else if (error.request) {
        // レスポンスがなく、リクエストが発行された場合のエラー処理
        console.log(error.request);
      } else {
        // それ以外のエラー処理
        console.log('Error', error.message);
      }
      console.log(error.config);
    }
  };

  return (
    <div className='min-h-screen'>
      Hello, from About!
      <Link to="/aitask">
        <button>Go to Home</button>
      </Link>
      <form onSubmit={handleSubmit}>
        <input
          type="text"
          name="name"
          value={formData.name}
          onChange={handleChange}
        />
        <br></br>
        <input
          type="email"
          name="email"
          value={formData.email}
          onChange={handleChange}
        />
        <br></br>
        <button className="btn" type="submit">Submit</button>
      </form>
    </div>
  );
}

export default AboutPage;