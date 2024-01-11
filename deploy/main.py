# Import Flask module from flask package
from flask import Flask

# Import os module for accessing environment variables
import os

# Create a new instance of the Flask application
app = Flask(__name__)


# Define a route for the default home page of the application
@app.route("/")
def index():
   # Retrieve the value of the COLOR_ENV environment variable
   env_var = os.environ.get("COLOR_ENV")
   # Return a string that includes the value of the COLOR_ENV environment variable
   return f"Hey {env_var}!"


if __name__ == "__main__":
    app.run(host='0.0.0.0', port='5000')



