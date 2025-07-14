# CHAPTER 1 STRUCTURAL OVERVIEW

eta/DYNAFORM is a completely new Graphic User Interface (GUI) package operating on Windows (10 and higher) platform. The model generation and input file preparation of a typical stamping simulation are performed in the eta/DYNAFORM Geometry Manager, while the stamping simulation result is processed in Result. The solver, LS-DYNA can be executed on either local or remote server systems.

eta/DYNAFORM is organized as a tree structure and is operated and controlled by the user-friendly GUI.

# 1.1 MENU BAR

eta/DYNAFORM menus are selected by mouse picking and contain a wide variety of functions. Under each menu, the user can click on various icons to activate the functions.

<html><body><table><tr><td>Project</td><td>BSE</td><td>DFD</td><td>FS</td><td>。 Data</td><td>Geometry</td><td> View</td><td>国 Utilities </td><td>Result</td><td>Report</td><td>Help</td></tr></table></body></html>

<html><body><table><tr><td>Project</td><td>Imports/exports data to/from eta/DYNAFORM.</td></tr><tr><td>BSE</td><td>Blank Size Engineering includes a modified one-step-based unfolding function, spring back, blank development and nesting function.</td></tr><tr><td>Die Face Design</td><td>The Die Face Design (DFD) module provides abundant tools for fast die surface design, including the binder and addendum design, local feature modification and fast evaluation of die face design, etc. The user can modify the binder and addendum according to the results of evaluation, which significantly speeds up the efficiency of die face design optimization.</td></tr><tr><td>Formability Simulation</td><td>The Formability Simulation module provides a complete set of solutions for problems existed in the sheet forming process.</td></tr><tr><td>Tube Forming</td><td>The Tube Forming module provides a complete set of solutions for tube bending and hydroforming analysis. This module supports users to complete the processes from product import to analysis results, including Tube Bending, Pre-forming, Annealing, Hydroforming, Piercing and Trimming and other processes.</td></tr></table></body></html>

<html><body><table><tr><td>Data Manager</td><td>This application is used to manage simulation data.</td></tr><tr><td>Geometry Manager</td><td>This application is used to manage both imported and created geometry such as curves, surfaces and meshes.</td></tr><tr><td>View</td><td>Controls the visualization of the entities on the screen.</td></tr><tr><td> Utilities</td><td>Includes several auxiliary functions for identifying entities, measurement and load curve generation.</td></tr><tr><td>Result</td><td>Initiates post-processing functions for analyzing formability simulation results.</td></tr><tr><td>Report</td><td>Automatically generates relevant CAE analysis reports, supporting both PPT and Excel modes</td></tr><tr><td>Help</td><td>DisDYNAORisnpumberdOnictifptionand icese maagement for</td></tr></table></body></html>

Descriptions of these functions are located in their respective sections.

# 1.2 ICON BAR

The icon bar is designed to provide the user can easy access to the most commonly used in PROJECT functions of eta/DYNAFORM.

![](images/5c711461ba2772b129999c64638e6346d6ef21e0bc843fb09dc9e11ce0ee98b2.jpg)

# NEW PROJECT

Creates a new database.

# OPEN PROJECT

Opens a saved database.

# SAVE PROJECT

Saves the active database using its existing name on the existing folder.

# SAVE PROJECT AS

![](images/e7366243f27077df49dc5716245258404ea3e66b2cd31cdaaaf6911a084e8ced.jpg)

Saves the existing database using another name.

# RELOAD FILE

Reloads the database from the initial saved database.

# 1.3 DISPLAY WINDOW

eta/DYNAFORM divides the screen into six distinct regions. The regions are used to receive functions or display messages for the user.

# DISPLAY AREA

All model graphics are displayed in this area.

# MENU BAR

All functions are accessible through the menu bar. Selectable Icon-based toolbars are used to access and manage all functions.

# ICON BAR

Selectable Icon-based toolbars are used to access and manage Project functions.

# TASK PANEL

Listing of all model entities and creation of non-graphical data entities. Process-driven dialog has an access to complete modeling tasks.

# MODEL TREE

Users may turn on/off generated geometry, tools and curves by mouse clicking on thelight bulbs.

# MESSAGE WINDOW

Results of functions and warning or error messages are printed in this window.

![](images/d8a5689e727fc3ed003d3e77e6dd495387b186cccc1db71154b0ca4e60054995.jpg)

# 1.4 MOUSE FUNCTIONS

eta/DYNAFORM functions are accessible via the three mouse buttons. To access a function, the user moves the mouse cursor to select the desired function, followed by pressing the left mouse button. In certain functions, the middle mouse button is used to complete operations while the right mouse button is used to cancel the last operation, such as creating a line, selecting nodes, surfaces, elements or coordinate system. These three buttons can also be used with ${ \mathrm { < C t r l > } }$ , ${ \mathrm { < A l t > } }$ and ${ \mathrm { < C t r l > + < } }$ Shift> keys respectively for rotation, translation and scaling.

For CAD models, eta/DYNAFORM supports utilizing CATIA, NX and SolidWorks Mouse operations style.   

<html><body><table><tr><td>Control Key+ Mouse Button</td><td>Function</td></tr><tr><td>Ctrl+Left Button</td><td>Rotation</td></tr><tr><td>Ctrl+Shift+ LeftButton</td><td>Rotate Light</td></tr><tr><td>Ctrl+Middle Button</td><td>Translation</td></tr><tr><td>Ctrl+Right Button</td><td>Scaling</td></tr></table></body></html>

<html><body><table><tr><td>Function</td><td>CATIA</td><td>NX</td><td>SolidWorks</td></tr><tr><td>Rotation</td><td>Three Approaches: 1.Press MMB and then RMB. 2.Press MMB and then Ctrl. 3.Press MMB and then LMB.</td><td>Hold MMB and move the mouse button.</td><td>Hold MMB and move the mouse button.</td></tr><tr><td>Translation</td><td>HoldMMB and move the mouse button.</td><td>Two Approaches: 1. Shift+MMB and move the mouse. 2.MMB+RMB.</td><td>Ctrl+MMB</td></tr><tr><td>Scaling</td><td>Ctrl+MMB and move the mouse button.</td><td>Three Approaches: 1. Hold (LMB+MMB) and move the mouse button. 2. Scroll Wheel. 3. Ctrl+MMB and move the mouse button</td><td>Scroll Wheel</td></tr></table></body></html>

eta/DYNAFORM provides options in the Option Center to switch operation styles from Dynaform Style to NX, Catia or SolidWorks styles.

![](images/0baf57b21c021bc25353ea032aab18dd995ac7c5cc5cb80f1d5160c4e28736de.jpg)
