
  echo "# Day 06 - Linux File I/O Practice"
  echo ""
  echo "## 1. Create a File"
  echo 'Command: touch notes.txt'
  echo "Purpose: Creates an empty file."
  echo ""
  echo "## 2. Write and Append Text"
  echo 'Command: echo "Line 1: I am learning Linux." > notes.txt'
  echo "Purpose: Writes text and overwrites existing content."
  echo 'Command: echo "Line 2: I am practising file operations." >> notes.txt'
  echo "Purpose: Appends text to the file."
  echo 'Command: echo "Line 3: These skills are useful in DevOps." | tee -a notes.txt'
  echo "Purpose: Displays text and appends it to the file."
  echo ""
  echo "## 3. Read the File"
  echo 'Command: cat notes.txt'
  echo "Purpose: Displays the entire file."
  echo 'Command: head -n 2 notes.txt'
  echo "Purpose: Displays the first two lines."
  echo 'Command: tail -n 2 notes.txt'
  echo "Purpose: Displays the last two lines."
  echo ""
  echo "## 4. Actual File Content"
  echo '```text'
  cat notes.txt
  echo '```'
  echo ""
  echo "## What I Learned"
  echo "- Created a text file using touch."
  echo "- Used > to write and >> to append text."
  echo "- Used tee to display and append text."
  echo "- Read file contents using cat, head, and tail."
 
