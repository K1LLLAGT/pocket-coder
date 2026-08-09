const outEl = document.getElementById('out');
const runBtn = document.getElementById('run');
let pyodide = null;

async function loadPyodideOnce() {
  if (pyodide) return pyodide;
  outEl.textContent = 'Loading Pyodide (may take a few seconds)...';
  const s = document.createElement('script');
  s.src = "https://cdn.jsdelivr.net/pyodide/v0.23.4/full/pyodide.js";
  document.head.appendChild(s);
  await new Promise(resolve => s.onload = resolve);
  pyodide = await loadPyodide();
  outEl.textContent = 'Pyodide loaded.';
  return pyodide;
}

runBtn.onclick = async () => {
  try {
    await loadPyodideOnce();
    outEl.textContent = 'Running...';
    const code = document.getElementById('pycode').value;
    const result = await pyodide.runPythonAsync(code);
    outEl.textContent = (typeof result === 'undefined') ? 'Done' : String(result);
  } catch (err) {
    outEl.textContent = 'Error: ' + err;
  }
};
