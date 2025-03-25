SHELL=/bin/bash

setup:
    python3 -m venv build_env
    source build_env/bin/activate && pip install -r requirements.txt
    echo "#!/bin/bash" > .git/hooks/post-commit
    echo "source build_env/bin/activate && python3 ./scripts/post-commit.py" >> .git/hooks/post-commit
    chmod +x .git/hooks/post-commit


run:
	source venv/bin/activate && python app.py

clean:
	rm -rf venv __pycache__
