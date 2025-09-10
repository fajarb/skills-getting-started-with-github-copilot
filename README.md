# Getting Started with GitHub Copilot

<img src="https://octodex.github.com/images/Professortocat_v2.png" align="right" height="200px" />

Hey fajarb!

Mona here. I'm done preparing your exercise. Hope you enjoy! 💚

Remember, it's self-paced so feel free to take a break! ☕️

[![](https://img.shields.io/badge/Go%20to%20Exercise-%E2%86%92-1f883d?style=for-the-badge&logo=github&labelColor=197935)](https://github.com/fajarb/skills-getting-started-with-github-copilot/issues/1)

## Quick Start

This repository contains a FastAPI application that you can run using either `uv` (recommended) or `pip`.

### Using uv (recommended)

```bash
# Install uv
pip install uv

# Install dependencies
make install
# or: uv sync

# Start the application
make start
# or: uv run python -m uvicorn src.app:app --host 0.0.0.0 --port 8000 --reload
```

### Using pip (legacy)

```bash
# Install dependencies
pip install -r requirements.txt

# Start the application
python -m uvicorn src.app:app --host 0.0.0.0 --port 8000 --reload
```

The application will be available at http://localhost:8000

---

&copy; 2025 GitHub &bull; [Code of Conduct](https://www.contributor-covenant.org/version/2/1/code_of_conduct/code_of_conduct.md) &bull; [MIT License](https://gh.io/mit)

