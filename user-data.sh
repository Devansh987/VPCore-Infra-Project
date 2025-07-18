#!/bin/bash
apt-get update
apt-get install nginx -y

# Custom HTML
cat <<EOF > /var/www/html/index.html
<!DOCTYPE html>
<html>
<head>
  <title>Welcome - Server-1</title>
  <style>
    body { background-color:#0a192f; color:#64ffda; font-family:Arial; text-align:center; margin-top:20%; }
    h1 { font-size:3em; }
  </style>
</head>
<body>
  <h1>Welcome to Server-1 🚀</h1>
  <p>This EC2 instance is part of a Load Balanced architecture.</p>
  <p><strong>Hostname:</strong> $(hostname)</p>
</body>
</html>
EOF
