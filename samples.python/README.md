# python

## 🐍 Run Python Script in VS Code (with input/output redirection)

This setup lets you:

* Run your Python program directly with **Ctrl + R**
* Read input from `input.txt`
* Write output to `output.txt`
* Auto-save files on run (no extensions needed)

---

### 🧩 Folder Structure

```sh
my_python_project/
 ├── input.txt
 ├── output.txt
 ├── main.py
 └── .vscode/
      ├── tasks.json
      └── keybindings.json
```

---

### 🐍 Example Python Script (`main.py`)

```python
# main.py
name = input("Enter your name: ")
print("Hello,", name)
```

---

### ⚙️ 1. Create `.vscode/tasks.json`

In VS Code:

1. Press **Ctrl + Shift + P**
2. Search for **“Tasks: Configure Task”**
3. Choose **“Create tasks.json file from template”** → **“Others”**
4. Replace its contents with:

```json
{
    "version": "2.0.0",
    "tasks": [
        {
            "label": "Run Python Script",
            "type": "shell",
            "command": "python",
            "args": [
                "${file}",
                "<",
                "input.txt",
                ">",
                "output.txt"
            ],
            "group": {
                "kind": "build",
                "isDefault": true
            },
            "presentation": {
                "echo": true,
                "reveal": "always",
                "focus": false,
                "panel": "shared",
                "showReuseMessage": true,
                "clear": false
            },
            "problemMatcher": []
        }
    ]
}
```

#### 🔍 Explanation

| Key              | Description                               |
| ---------------- | ----------------------------------------- |
| `"python"`       | Runs your Python interpreter              |
| `"${file}"`      | Executes the currently open file          |
| `"< input.txt"`  | Redirects standard input                  |
| `"> output.txt"` | Redirects standard output                 |
| `"group"`        | Marks this task as the default build task |

---

### 🧩 2. Bind Task to **Ctrl + R**

Open **Command Palette** → “**Preferences: Open Keyboard Shortcuts (JSON)**”
Then add:

```json
[
    {
        "key": "ctrl+r",
        "command": "workbench.action.tasks.runTask",
        "args": "Run Python Script",
        "when": "editorTextFocus"
    }
]
```

#### 💡 What this does

Pressing **Ctrl + R** while focused in the editor will:

1. Save your current file (if auto-save is enabled)
2. Run the “Run Python Script” task from `tasks.json`

---

### ⚙️ 3. Enable Auto-Save

To make sure your file is always saved before running:

1. Open **Settings (Ctrl +,)** → search for “Auto Save”
2. Set to **`onFocusChange`**
   or add this to your `settings.json`:

   ```json
   {
     "files.autoSave": "onFocusChange"
   }
   ```

This ensures the file is saved as VS Code shifts focus to the terminal for task execution.

---

### ▶️ 4. Run It

Now you can:

* Open `main.py`
* Press **Ctrl + R**
* See output appear in `output.txt`

---

### 🧪 Example

**input.txt**:

```sh
Amit
```

**output.txt** *(after pressing Ctrl + R)*

```sh
Enter your name: Hello, Amit
```

---

### 🧠 Optional Tips

* To always run a specific file (e.g., `main.py`), replace:

  ```json
  "args": ["main.py", "<", "input.txt", ">", "output.txt"]
  ```

* To automatically clear the terminal each run, set `"clear": true` in `presentation`.

---

# cpp

Note: It will not work if your default terminal is Powershell. Make it "cmd" then it will work.
To change default terminal : Hit clt+shift+p->write:default terminal->change it to cmd.

```json tasks.json
{
  "version": "2.0.0",
  "tasks": [
    {
      "label": "Compile and run",
      "type": "shell",
      "command": "",
      "args": [
        "copy",
        "\"${file}\"",
        "${workspaceFolder}\\jspwTest.cpp",
        "&&",
        "g++",
        "jspwTest.cpp",
        "-o",
        "jspwTest",
        "&&",
        "jspwTest",
        "<",
        "input.txt",
        ">",
        "output.txt",
        "&&",
        "del",
        "jspwTest.exe",
        "&&",
        "del",
        "jspwTest.cpp"
      ],
      "presentation": {
        "reveal": "never"
      },
      "group": {
        "kind": "build",
        "isDefault": true,
      },
      "problemMatcher": {
        "owner": "cpp",
        "fileLocation": [
          "relative",
          "${workspaceRoot}"
        ],
        "pattern": {
          "regexp": "^(.*):(\\d+):(\\d+):\\s+(warning|error):\\s+(.*)$",
          "file": 1,
          "line": 2,
          "column": 3,
          "severity": 4,
          "message": 5
        }
      }
    }
  ]
}
```
