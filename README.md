# MATLAB Automations
A collection of useful MATLAB functions for Simulink model manipulation, input reading, etc. This repository provides tools to handle Simulink models, read Excel files, text files and what not.

---

## Table of Contents
* [Function List](#function-list)
* [Requirements](#requirements)
* [Usage](#usage)
* [License](#license)

---

## Function List
* read_model: Allows loading, reading and manipulating model layer-by-layer. Modifications for each layer can be inserted as needed.
* read_text: Allows reading any text file and storing it in a variable. The function output is character array with the content in it.
* read_excel_file: Allows user to read the first sheet of an Excel file. Needs modification for further customization for your use-case.

---

## Requirements
* MATLAB 2020b and above
* Simulink
* A PC or Container to run MATLAB and Simulink
* Valid MATLAB and/or Simulink license

---

## Usage
* Each function is a self-contained function i.e. they will use GUI commands such as uigetfile to handle file selection based on user input.
* The output is usually text in case we are reading text file, table or cell array if we are reading excel-type files, etc. It depends on the context or functionality of the function.
* You can call them in MATLAB Command window if the file is present in the Set Path.

---

## License
This project is licensed under MIT License. See LICENSE file for details.