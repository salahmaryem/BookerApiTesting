function fn() {
    var config = {
           accessToken: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsImlhdCI6MTY4NTA5MDQ1OSwiZXhwIjoxNjg2ODE4NDU5fQ.RyZ4CU_ywuHrJcIpcMuvBoluqYJVmBzMDbucL5imaok',
               name: 'test123'
             };

             karate.configure('connectTimeout', 5000);
             karate.configure('readTimeout', 5000);
  return config;
}