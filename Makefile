SHELL=/bin/bash

setup:
    python3 -m venv build_env
    source build_env/bin/activate && pip install -r requirements.txt
    echo "#!/bin/bash" > .git/hooks/post-commit
    echo "source build_env/bin/activate && python3 ./scripts/post-commit.py" >> .git/hooks/post-commit
    chmod +x .git/hooks/post-commit

lint:
    source build_env/bin/activate && python3 ./scripts/post-commit.py

run:
	source build_env/bin/activate && python app.py

test:
    source build_env/bin/activate && pytest

clean:
	rm -rf build_env __pycache__
