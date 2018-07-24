<head>
  <link rel='stylesheet prefetch' href='https://fonts.googleapis.com/css?family=Lato'>
  <style>
  	
  	html,
body {
  display: flex;
}

.btn4 {
  position: relative;
  background-image: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
  padding: 14px 20px;
  border-radius: 10px;
  border: none;
  margin: 10px 5px 10px 5px;
  min-width: 120px;
  color: #fff;
  cursor: pointer;
  outline: none;
  overflow: hidden;
  box-shadow: 0 14px 30px rgba(0, 0, 0, 0.15);
  font-family: 'Lato', sans-serif;
  font-size: 16px;
  letter-spacing: 2px;
}
.btn4 span {
  position: relative;
}
.btn4::before {
  --size: 0;
  content: '';
  position: absolute;
  left: var(--x);
  top: var(--y);
  width: var(--size);
  height: var(--size);
  background: radial-gradient(circle closest-side, #a3b1f1, transparent);
  transform: translate(-50%, -50%);
  transition: all .2s ease;
}
.btn4:hover::before {
  --size: 200px;
}

  </style>
</head>

<body>
  
  

<script>
	const btn4 = document.querySelector('.btn4')

btn4.onmousemove = function (e) {
  const x = e.pageX - btn4.offsetLeft
  const y = e.pageY - btn4.offsetTop
  
  btn4.style.setProperty('--x', x + 'px')
  btn4.style.setProperty('--y', y + 'px')
}
</script>



</body>

</html>
