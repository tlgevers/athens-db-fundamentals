import os
from src import config
from src.app import create_app

environ = os.getenv("ENVIRONMENT")

config_obj = config.DevConfig

app = create_app(config_obj)

if __name__ == "__main__":
    app.run(debug=True)

