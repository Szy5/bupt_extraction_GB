<h1>
 CHAPTER 1 STRUCTURAL OVERVIEW
</h1>
<p>
 eta/DYNAFORM is a completely new Graphic User Interface (GUI) package operating on Windows (10 and higher) platform. The model generation and input file preparation of a typical stamping simulation are performed in the eta/DYNAFORM Geometry Manager, while the stamping simulation result is processed in Result. The solver, LS-DYNA can be executed on either local or remote server systems.
</p>
<p>
 eta/DYNAFORM is organized as a tree structure and is operated and controlled by the user-friendly GUI.
</p>
<h1>
 1.1 MENU BAR
</h1>
<p>
 eta/DYNAFORM menus are selected by mouse picking and contain a wide variety of functions. Under each menu, the user can click on various icons to activate the functions.
</p>
<html>
 <body>
  <table>
   <tr>
    <td>
     Project
    </td>
    <td>
     BSE
    </td>
    <td>
     DFD
    </td>
    <td>
     FS
    </td>
    <td>
     。 Data
    </td>
    <td>
     Geometry
    </td>
    <td>
     View
    </td>
    <td>
     国 Utilities
    </td>
    <td>
     Result
    </td>
    <td>
     Report
    </td>
    <td>
     Help
    </td>
   </tr>
  </table>
 </body>
</html>
<html>
 <body>
  <table>
   <tr>
    <td>
     Project
    </td>
    <td>
     Imports/exports data to/from eta/DYNAFORM.
    </td>
   </tr>
   <tr>
    <td>
     BSE
    </td>
    <td>
     Blank Size Engineering includes a modified one-step-based unfolding function, spring back, blank development and nesting function.
    </td>
   </tr>
   <tr>
    <td>
     Die Face Design
    </td>
    <td>
     The Die Face Design (DFD) module provides abundant tools for fast die surface design, including the binder and addendum design, local feature modification and fast evaluation of die face design, etc. The user can modify the binder and addendum according to the results of evaluation, which significantly speeds up the efficiency of die face design optimization.
    </td>
   </tr>
   <tr>
    <td>
     Formability Simulation
    </td>
    <td>
     The Formability Simulation module provides a complete set of solutions for problems existed in the sheet forming process.
    </td>
   </tr>
   <tr>
    <td>
     Tube Forming
    </td>
    <td>
     The Tube Forming module provides a complete set of solutions for tube bending and hydroforming analysis. This module supports users to complete the processes from product import to analysis results, including Tube Bending, Pre-forming, Annealing, Hydroforming, Piercing and Trimming and other processes.
    </td>
   </tr>
  </table>
 </body>
</html>
<html>
 <body>
  <table>
   <tr>
    <td>
     Data Manager
    </td>
    <td>
     This application is used to manage simulation data.
    </td>
   </tr>
   <tr>
    <td>
     Geometry Manager
    </td>
    <td>
     This application is used to manage both imported and created geometry such as curves, surfaces and meshes.
    </td>
   </tr>
   <tr>
    <td>
     View
    </td>
    <td>
     Controls the visualization of the entities on the screen.
    </td>
   </tr>
   <tr>
    <td>
     Utilities
    </td>
    <td>
     Includes several auxiliary functions for identifying entities, measurement and load curve generation.
    </td>
   </tr>
   <tr>
    <td>
     Result
    </td>
    <td>
     Initiates post-processing functions for analyzing formability simulation results.
    </td>
   </tr>
   <tr>
    <td>
     Report
    </td>
    <td>
     Automatically generates relevant CAE analysis reports, supporting both PPT and Excel modes
    </td>
   </tr>
   <tr>
    <td>
     Help
    </td>
    <td>
     DisDYNAORisnpumberdOnictifptionand icese maagement for
    </td>
   </tr>
  </table>
 </body>
</html>
<p>
 Descriptions of these functions are located in their respective sections.
</p>
<h1>
 1.2 ICON BAR
</h1>
<p>
 The icon bar is designed to provide the user can easy access to the most commonly used in PROJECT functions of eta/DYNAFORM.
</p>
<p>
 The image displays a series of five icons, each representing different file-related functions commonly found in software applications. The first icon appears to be a blank document, indicating the creation of a new file. The second icon resembles a folder, suggesting the opening or accessing of a directory or file location. The third icon is a floppy disk, traditionally used to represent the action of saving a file. The fourth icon shows two overlapping floppy disks, which may indicate saving a file with a different name or location, often referred to as "Save As." The fifth icon is a floppy disk with a circular arrow, possibly representing the action of refreshing or updating a saved file. These icons are pixelated, suggesting they are from an older software interface, likely from the era when floppy disks were commonly used for data storage.
</p>
<h1>
 NEW PROJECT
</h1>
<p>
 Creates a new database.
</p>
<h1>
 OPEN PROJECT
</h1>
<p>
 Opens a saved database.
</p>
<h1>
 SAVE PROJECT
</h1>
<p>
 Saves the active database using its existing name on the existing folder.
</p>
<h1>
 SAVE PROJECT AS
</h1>
<p>
 The image appears to be a pixelated icon of a floppy disk, which is often used as a symbol for saving files in software applications. The icon consists of two overlapping floppy disks, with the front disk being more prominent. The disks are depicted in a yellow and blue color scheme, with the yellow representing the body of the disk and the blue representing the label area. The pixelated nature of the image suggests it is a low-resolution graphic, typical of icons used in older software interfaces. Floppy disks were widely used for data storage and transfer in the late 20th century before being replaced by more modern storage solutions.
</p>
<p>
 Saves the existing database using another name.
</p>
<h1>
 RELOAD FILE
</h1>
<p>
 Reloads the database from the initial saved database.
</p>
<h1>
 1.3 DISPLAY WINDOW
</h1>
<p>
 eta/DYNAFORM divides the screen into six distinct regions. The regions are used to receive functions or display messages for the user.
</p>
<h1>
 DISPLAY AREA
</h1>
<p>
 All model graphics are displayed in this area.
</p>
<h1>
 MENU BAR
</h1>
<p>
 All functions are accessible through the menu bar. Selectable Icon-based toolbars are used to access and manage all functions.
</p>
<h1>
 ICON BAR
</h1>
<p>
 Selectable Icon-based toolbars are used to access and manage Project functions.
</p>
<h1>
 TASK PANEL
</h1>
<p>
 Listing of all model entities and creation of non-graphical data entities. Process-driven dialog has an access to complete modeling tasks.
</p>
<h1>
 MODEL TREE
</h1>
<p>
 Users may turn on/off generated geometry, tools and curves by mouse clicking on thelight bulbs.
</p>
<h1>
 MESSAGE WINDOW
</h1>
<p>
 Results of functions and warning or error messages are printed in this window.
</p>
<p>
 The image is a screenshot of a software interface, specifically from a program called Dynaform, which is used for sheet forming simulation. The interface is divided into several sections, each labeled with green text boxes.

1. **Menu Bar**: Located at the top of the interface, the menu bar contains various options for navigating and utilizing the software's features. It includes icons for project management, geometry manipulation, utilities, results, reports, and help.

2. **Icon Bar**: Below the menu bar, the icon bar provides quick access to frequently used tools and functions within the software. These icons are likely shortcuts for operations related to sheet forming, geometry, and other tasks.

3. **Task Panel**: On the left side of the interface, the task panel displays detailed information and settings related to the current operation, which is labeled as "Sheet Forming." It includes parameters such as stage name, blank position, gap settings, gravity loading, and tool transformations. Users can adjust mesh parameters, forming motion, and other settings here.

4. **Model Tree**: In the center of the interface, the model tree lists the components involved in the simulation. It includes items like the blank, binder, punch, drawbead, and various tools. Each item has a status indicator, likely showing whether it is active or inactive.

5. **Display Area**: The main section of the interface, the display area, visually represents the sheet forming process. It shows a 3D model of the components involved, including the sheet metal and tools. The model is color-coded, possibly indicating different stages or components.

6. **Message Window**: At the bottom right, the message window is where the software likely displays notifications, errors, or other messages related to the simulation process.

Overall, the image provides a comprehensive view of the Dynaform software interface, highlighting its functionality for simulating and analyzing sheet forming processes.
</p>
<h1>
 1.4 MOUSE FUNCTIONS
</h1>
<p>
 eta/DYNAFORM functions are accessible via the three mouse buttons. To access a function, the user moves the mouse cursor to select the desired function, followed by pressing the left mouse button. In certain functions, the middle mouse button is used to complete operations while the right mouse button is used to cancel the last operation, such as creating a line, selecting nodes, surfaces, elements or coordinate system. These three buttons can also be used with ${ \mathrm { &lt; C t r l &gt; } }$ , ${ \mathrm { &lt; A l t &gt; } }$ and ${ \mathrm { &lt; C t r l &gt; + &lt; } }$ Shift&gt; keys respectively for rotation, translation and scaling.
</p>
<p>
 For CAD models, eta/DYNAFORM supports utilizing CATIA, NX and SolidWorks Mouse operations style.
</p>
<html>
 <body>
  <table>
   <tr>
    <td>
     Control Key+ Mouse Button
    </td>
    <td>
     Function
    </td>
   </tr>
   <tr>
    <td>
     Ctrl+Left Button
    </td>
    <td>
     Rotation
    </td>
   </tr>
   <tr>
    <td>
     Ctrl+Shift+ LeftButton
    </td>
    <td>
     Rotate Light
    </td>
   </tr>
   <tr>
    <td>
     Ctrl+Middle Button
    </td>
    <td>
     Translation
    </td>
   </tr>
   <tr>
    <td>
     Ctrl+Right Button
    </td>
    <td>
     Scaling
    </td>
   </tr>
  </table>
 </body>
</html>
<html>
 <body>
  <table>
   <tr>
    <td>
     Function
    </td>
    <td>
     CATIA
    </td>
    <td>
     NX
    </td>
    <td>
     SolidWorks
    </td>
   </tr>
   <tr>
    <td>
     Rotation
    </td>
    <td>
     Three Approaches: 1.Press MMB and then RMB. 2.Press MMB and then Ctrl. 3.Press MMB and then LMB.
    </td>
    <td>
     Hold MMB and move the mouse button.
    </td>
    <td>
     Hold MMB and move the mouse button.
    </td>
   </tr>
   <tr>
    <td>
     Translation
    </td>
    <td>
     HoldMMB and move the mouse button.
    </td>
    <td>
     Two Approaches: 1. Shift+MMB and move the mouse. 2.MMB+RMB.
    </td>
    <td>
     Ctrl+MMB
    </td>
   </tr>
   <tr>
    <td>
     Scaling
    </td>
    <td>
     Ctrl+MMB and move the mouse button.
    </td>
    <td>
     Three Approaches: 1. Hold (LMB+MMB) and move the mouse button. 2. Scroll Wheel. 3. Ctrl+MMB and move the mouse button
    </td>
    <td>
     Scroll Wheel
    </td>
   </tr>
  </table>
 </body>
</html>
<p>
 eta/DYNAFORM provides options in the Option Center to switch operation styles from Dynaform Style to NX, Catia or SolidWorks styles.
</p>
<p>
 The image displays a software interface titled "Option Center," which appears to be a settings or configuration window for a software application. On the left side, there is a hierarchical directory structure labeled "Category," with various expandable folders. The highlighted folder is "Accelerate Key" under the "General" category. 

On the right side, there is a "Value" section with a table containing two columns: "Name" and "Value." The "Name" column has an entry labeled "Style," and the "Value" column shows a dropdown menu with four options: "Dynaform," "NX," "Catia," and "SolidWorks." The currently selected option is "Dynaform."

At the bottom of the window, there are four buttons labeled "OK," "Apply," "Default," and "Cancel," which are typical for confirming, applying, resetting, or canceling changes made in a settings interface. The interface suggests that the user can select different styles or configurations related to the "Accelerate Key" feature, possibly to integrate or customize the software's functionality with different CAD or design applications.
</p>
<h1>
 1.5 GEOMETRY DATA
</h1>
<p>
 eta/DYNAFORM directly reads in IGES, VDA, STEP and eta/DYNAFORM geometry data (lines and surfaces). It also directly reads native CAD data files such as CATIA V4 &amp; V5, Pro/E, NX and SolidWorks.
</p>
<h1>
 1.6 FILE EXTENSIONS
</h1>
<p>
 The protocol for naming files during an eta/DYNAFORM session includes attaching suffixes that specify the file types to the file names. The appropriate file names are listed in the options area of the display screen.
</p>
<h1>
 DYNAFORM Model Files: *.dfp
</h1>
<p>
 Additionally, the following import/export file naming is suggested:
</p>
<html>
 <body>
  <table>
   <tr>
    <td colspan="2">
     CAD Files
    </td>
    <td colspan="2">
     CAE Solver Files
    </td>
   </tr>
   <tr>
    <td>
     IGS
    </td>
    <td>
     *.igs, *.iges
    </td>
    <td>
     LS-DYNA
    </td>
    <td>
     *.dyn, *.k, *.key, *mod
    </td>
   </tr>
   <tr>
    <td>
     ACIS
    </td>
    <td>
     *.sat, *.sab
    </td>
    <td>
     NASTRAN
    </td>
    <td>
     *.nas, *.dat, *.bdf
    </td>
   </tr>
  </table>
 </body>
</html>
<h1>
 1.7 ENTITY SELECTIONS
</h1>
<p>
 In certain functions such as Copy, Delete, etc., eta/DYNAFORM prompts the user to select lines, surfaces elements, nodes, etc. In addition, different entities correspond to different selection boxes. Show/Hide / Button: Click these buttons to show or hide the options for selection.
</p>
<p>
 (a) Display (b) Hide
</p>
<html>
 <body>
  <table>
   <tr>
    <td>
     CATIA V4
    </td>
    <td>
     *.model
    </td>
    <td>
     DYNAIN
    </td>
    <td>
     *.dynain
    </td>
   </tr>
   <tr>
    <td>
     CATIA V5
    </td>
    <td>
     *.CATPart, *.CATProduct
    </td>
    <td>
    </td>
    <td>
    </td>
   </tr>
   <tr>
    <td>
     Inventor
    </td>
    <td>
     *.ipt, *.iam
    </td>
    <td>
    </td>
    <td>
    </td>
   </tr>
   <tr>
    <td>
     NX
    </td>
    <td>
     *.prt
    </td>
    <td>
    </td>
    <td>
    </td>
   </tr>
   <tr>
    <td>
     Parasolid
    </td>
    <td>
     *.x_t，*.xmt_txt， *x_b,
    </td>
    <td>
    </td>
    <td>
    </td>
   </tr>
   <tr>
    <td>
     Pro/E/Creo
    </td>
    <td>
     *.xmt_bin *.prt, *.asm
    </td>
    <td>
    </td>
    <td>
    </td>
   </tr>
   <tr>
    <td>
     SolidWorks
    </td>
    <td>
     *.sldprt, *.sldasm
    </td>
    <td>
    </td>
    <td>
    </td>
   </tr>
   <tr>
    <td>
     STEP
    </td>
    <td>
     *.stp,*.step
    </td>
    <td>
    </td>
    <td>
    </td>
   </tr>
  </table>
 </body>
</html>
<p>
 The image displays two instances of a software interface for a tool labeled "Combine Curve." Both instances show options for combining curves with a specified gap of 0.5 units. The interface includes a checkbox labeled "Delete Original Curve," which is checked in both instances, indicating that the original curves will be deleted after combining.

In the first instance, the interface shows that 27 curves have been selected for combination, as indicated by the text "Select Curves [27]." The second instance shows that no curves have been selected, with the text "Select Curves [0]." Both instances have buttons for "Undo," "Redo," "Apply," and "Close," suggesting functionality for managing the curve combination process.

Additionally, there is a section labeled "Select Type" with various options for curve selection, including icons that likely represent different selection methods or types. Options such as "Trace," "Surface Boundary," "Exclude," "By Layer," "By Displayed," "Inside," "Outside," and "Crossing" are visible, indicating different criteria or methods for selecting curves to combine. The "Inside" option is selected in both instances.
</p>
<p>
 Choose to show or hide the selection box through the Project- $. &gt;$ Option Center- $. &gt;$ Selection- $\cdot &gt;$ Yes/No menu. If No is selected, all selection boxes will be hidden when the dialog is displayed. If Yes is selected, all selection boxes will be displayed.
</p>
<p>
 The image displays a software interface titled "Option Center," which is likely part of a settings or configuration menu for a specific application. The interface is divided into two main sections: "Category" on the left and "Value" on the right.

In the "Category" section, there is a directory tree structure with several folders listed. These folders include "General," "View," "Import/Export," "GUI," "Selection," "BSE," "Hot Forming," "Sheet Forming," "DFD," and "Postprocess." The "Selection" folder is expanded, revealing subfolders named "Element" and "Surface."

The "Value" section on the right shows a setting labeled "Show Selection Dialog" with a dropdown menu. The dropdown menu currently displays "No" as the selected option, with "Yes" and "No" as the available choices.

At the bottom of the interface, there are four buttons labeled "OK," "Apply," "Default," and "Cancel," which are typical for confirming, applying, resetting, or canceling changes made in a settings menu. The interface appears to be designed for configuring options related to the software's functionality, possibly in the context of industrial or engineering applications.
</p>
<p>
 eta/DYNAFORM incorporates various dialogs to execute functions throughout the program.Buttons at the bottom of the dialogare used to execute, reject, reset the data or close the dialog. The functions of these buttons are listed below.
</p>
<html>
 <body>
  <table>
   <tr>
    <td>
     Undo
    </td>
    <td>
     Rejects the last step of the operation
    </td>
   </tr>
   <tr>
    <td>
     Redo
    </td>
    <td>
     Redoes the last Undo function and return the database to the previous state.
    </td>
   </tr>
   <tr>
    <td>
     Apply
    </td>
    <td>
     Executes the current function without leaving the dialog.
    </td>
   </tr>
   <tr>
    <td>
     OK
    </td>
    <td>
     Accepts the data in the dialog and forward the user to the next step.
    </td>
   </tr>
   <tr>
    <td>
     Cancel
    </td>
    <td>
     Rejects the current operation.
    </td>
   </tr>
   <tr>
    <td>
     Close
    </td>
    <td>
     Closes the current dialog.
    </td>
   </tr>
   <tr>
    <td>
     Exit
    </td>
    <td>
     Exits the current dialog.
    </td>
   </tr>
  </table>
 </body>
</html>
<h1>
 1.7.1 SELECT LINE MODE
</h1>
<p>
 This mode is utilized to perform the selection operations relevant to line/curve functions. The Line Selection dialog is illustrated in the following figure, including the commonly used selection modes such as Pick, Box and so on.
</p>
<p>
 The image appears to be a screenshot of a software interface related to selection tools, likely from a computer-aided design (CAD) or geographic information system (GIS) application. The interface is labeled "Select Type," indicating options for selecting objects or elements within the software. 

There are several icons at the top, each representing different selection methods. The first icon, which is highlighted, suggests a freeform or lasso selection tool. The subsequent icons may represent polygonal selection, circular selection, and other geometric or path-based selection methods. 

Below the icons, there are checkboxes labeled "Trace," "Surface Boundary," and "Exclude," which likely modify the selection behavior. The "Trace" option might allow the selection to follow a path or line, "Surface Boundary" could restrict selection to defined boundaries, and "Exclude" might prevent certain elements from being selected.

Two buttons labeled "By Layer" and "By Displayed" suggest options for selecting elements based on their layer or visibility status within the software. 

At the bottom, there are radio buttons labeled "Inside," "Outside," and "Crossing," which likely define how the selection interacts with the elements. "Inside" might select elements entirely within the selection area, "Outside" could select elements outside the area, and "Crossing" might select elements that intersect the selection boundary. 

Overall, the interface provides a variety of tools and options for precise and customizable selection of elements within the software environment.
</p>
<h1>
 PICK LINE
</h1>
<p>
 This is the default option for line selection. Select the entity directly inside the box from the Display Area with the mouse button.
</p>
<h1>
 POLYGON
</h1>
<p>
 Select this icon (Multi-point Region) to pick lines inside a closed polygon. Each left mouse button click defines a vertex and a middle button click closes the polygon.Right click to cancel the last defined polygon vertex.
</p>
<p>
 The image appears to show a circular object with a blue outline and a small black cross or plus sign in the center. The object is set against a light gray or white background. The blue outline suggests that the circle is distinct from the background, possibly indicating a boundary or edge. The black cross in the center could be a marker or a point of interest, possibly used for alignment or calibration purposes. The image is slightly blurred, which may affect the clarity of the details. Without additional context or information, it is difficult to determine the specific purpose or function of the object depicted in the image.
</p>
<h1>
 CIRCLE
</h1>
<p>
 Select the lines inside the circle. Click the left mouse button and drag the mouse to define the center of a circle and its radius.
</p>
<p>
 了
</p>
<h1>
 FREE REGION
</h1>
<p>
 Select all lines located inside any region.
</p>
<h1>
 CHAIN LINE
</h1>
<p>
 Directly select the chain line by mouse from the Display Area.
</p>
<h1>
 TRACE
</h1>
<p>
 This option is used to facilitate other selection methods, and the position captured by the program will be highlighted on the screen.
</p>
<h1>
 SURFACE BOUNDARY
</h1>
<p>
 Check this option to select the boundary of the surface directly.
</p>
<h1>
 EXCLUDE
</h1>
<p>
 Check this option, and the user can select the lines according to the method provided above. The selected lines will be deselected.
</p>
<h1>
 BY LAYER
</h1>
<p>
 Click this button to display the Select Curve dialog, and all lines in the selected layer will be selected.
</p>
<h1>
 BY DISPLAYED
</h1>
<p>
 Click this button, and all lines that are currently displayed will be selected.
</p>
<h1>
 INSIDE REGION
</h1>
<p>
 Check this option, and the program will select only lines inside the selection region.
</p>
<h1>
 OUTSIDE REGION
</h1>
<p>
 Check this option, and the program will select only lines outside the selection region.
</p>
<h1>
 CROSSING
</h1>
<p>
 Check this option, and the program will select lines that intersect with the boundary of the selection region.
</p>
<h1>
 When selecting at the display area:
</h1>
<p>
 Click LMB to select the line.
 <br/>
 Drag LMB to select the lines by the selection type.
</p>
<h1>
 SHORTCUT
</h1>
<p>
 Ctrl+A: Select all lines.
 <br/>
 Shift+LMB: Cancel the selected lines.
</p>
<h1>
 1.7.2 SELECT SURFACE MODE
</h1>
<p>
 This mode is utilized to perform the selection operations relevant to the surface. The Surface Selection dialog is illustrated in the following figure, including the commonly used selection modes such as Pick, Box and so on.
</p>
<p>
 The image appears to be a screenshot of a software interface related to selection tools, likely used in a CAD or 3D modeling application. The section is titled "Select Type," indicating options for selecting different types of elements or areas within a model or drawing.

There are four icons at the top, each representing a different selection method:
1. The first icon resembles a surface or mesh, possibly indicating a selection tool for surfaces.
2. The second icon looks like an arrow, which might represent a directional or path-based selection.
3. The third icon is a circle with a plus sign, suggesting a point or area selection tool.
4. The fourth icon appears to be a freeform shape, likely indicating a freehand or lasso selection tool.

Below the icons, there are several checkboxes and options:
- "Trace" is checked, suggesting that the current selection method involves tracing elements.
- "Tangent Surfaces" is unchecked, which might be an option to include tangent surfaces in the selection.
- "Spread" is a numerical input set to 30.0, possibly defining the range or influence of the selection tool.
- "Exclude" is unchecked, indicating that exclusion of certain elements is not active.

There are two buttons labeled "By Layer" and "By Displayed," which likely offer selection based on layers or currently displayed elements.

At the bottom, there are three radio buttons labeled "Inside," "Outside," and "Crossing," which are options for defining the selection area relative to a boundary or shape. "Inside" is currently selected, meaning the selection will include elements within a defined boundary.
</p>
<h1>
 PICK SURFACE
</h1>
<p>
 This is the default option for surface selection. Select the entity directly inside the box from the Display Area with the mouse button.
</p>
<p>
 V
</p>
<h1>
 POLYGON
</h1>
<p>
 Select this icon (Multi-point Region) to pick surfaces inside a closed polygon. Each left mouse button click defines a vertex and a middle button click closes the polygon. Right click to cancel the last defined polygon vertex.
</p>
<p>
 。
</p>
<h1>
 CIRCLE
</h1>
<p>
 Select the surfaces inside the circle. Click the left mouse button and drag the mouse to define the center of a circle and its radius.
</p>
<p>
 3
</p>
<h1>
 FREE REGION
</h1>
<p>
 Select all surfaces located inside any region.
</p>
<h1>
 TRACE
</h1>
<p>
 This option is used to facilitate other selection methods, and the position captured by the program will be highlighted on the screen.
</p>
<h1>
 TANGENT SURFACES
</h1>
<p>
 Select this option to automatically select the surfaces that are tangent to the selected surface.
</p>
<h1>
 SPREAD
</h1>
<p>
 The selection is made by spreading it around. If the angle between the normal of the selected surface and that of its adjacent surface is not greater than the given angle, the adjacent surface will be selected.
</p>
<h1>
 EXCLUDE
</h1>
<p>
 Check this option to select the surfaces according to the method provided above. The selected surfaces will be deselected.
</p>
<h1>
 BY LAYER
</h1>
<p>
 Click this button to display the Select Layer dialog, and all surfaces in the selected layer will be selected.
</p>
<h1>
 BY DISPLAYED
</h1>
<p>
 Click this button to select all surfaces that are currently displayed.
</p>
<h1>
 INSIDE REGION
</h1>
<p>
 Check this option, and the program will select only surfaces inside the selection region.
</p>
<h1>
 OUTSIDE REGION
</h1>
<p>
 Check this option, and the program will select only surfaces outside the selection region.
</p>
<h1>
 CROSSING
</h1>
<p>
 Check this option, and the program will select surfaces that intersect with the boundary of the selection region.
</p>
<h1>
 When selecting at the display area:
</h1>
<p>
 Click LMB to select the surface one by one.
 <br/>
 Drag the LMB to select the surface by the selection type.
</p>
<h1>
 SHORTCUT
</h1>
<p>
 $\mathrm { C t r l + A }$ : Select all surfaces.
 <br/>
 Shift+LMB: Cancel the selected surfaces.
</p>
<h1>
 1.7.3 SELECT ELEMENT MODE
</h1>
<p>
 This mode is utilized to perform the selection operationsrelevant to the element. The Element Selection dialog is illustrated in the following figure, including the commonly used selection modes such as Pick, Box and so on.
</p>
<p>
 The image appears to be a screenshot of a software interface related to design or modeling, possibly CAD (Computer-Aided Design) or a similar application. The section is labeled "By Cursor," indicating that the tools and options available are related to cursor-based actions or selections.

At the top, there are several icons, each likely representing different cursor tools or modes. These icons include shapes and lines, suggesting functions like drawing, tracing, or selecting specific areas or paths. The "Trace" option is checked, indicating that the current mode is set to trace objects or paths.

Below the icons, there are options for "Spread" with an associated input box set to 0.0, and a checkbox for "Exclude," which is unchecked. This suggests that the user can adjust the spread of the tool's effect and choose whether to exclude certain elements from the operation.

There are buttons labeled "By Layer" and "By Displayed," which likely allow the user to filter or select elements based on their layer or visibility status within the project.

The "By ID" section includes an input box with the number 0, suggesting that the user can specify an ID to select or manipulate specific elements. The "Apply Input" button is likely used to execute the action based on the entered ID.

At the bottom, there are three radio buttons labeled "Inside," "Outside," and "Crossing," which probably define the selection criteria or behavior of the cursor tool, such as selecting elements inside a boundary, outside a boundary, or crossing a boundary. The "Inside" option is currently selected.
</p>
<h1>
 八 PICK ELEMENT
</h1>
<p>
 This is the default option for element selection. Select the entity directly inside the box from the Display Area with the mouse button. This approach can be used to activate the Trace and Spread options.
</p>
<p>
 This option is used to pick the elements on a surface.
</p>
<p>
 W
</p>
<h1>
 POLYGON
</h1>
<p>
 Select this icon (Multi-point Region) to pick elements inside a closed polygon. Each left mouse button click defines a vertex and a middle button click closes the polygon. Right click to cancel the last defined polygon vertex.
</p>
<h1>
 5 FREE REGION
</h1>
<p>
 Select all elements located inside any region.
</p>
<p>
 Select the elements inside the circle. Click the left mouse button and drag the mouse to define the center of a circle and its radius.
</p>
<p>
 This option is used to select elements inside the line, or the elements inside and intersecting with the line.
</p>
<h1>
 TRACE
</h1>
<p>
 This option is used to facilitate other selection methods, and the position captured by the program will be highlighted on the screen.
</p>
<h1>
 SPREAD
</h1>
<p>
 Select this option to pick elements by chained approach based on the spread angle that is the angle difference between the normal vector of an element and the normal vector of its adjacent elements. The user can input values to adjust the spread angle. If the angle formed by the normal vectors of the selected element and the adjacent element is less than the selected angle, the adjacent element is selected. This option can be activated only in Pick Element.
</p>
<h1>
 EXCLUDE
</h1>
<p>
 Toggle on this option, and the user can select the elements according to the method provided above. The selected elements will be deselected.
</p>
<h1>
 BY LAYER
</h1>
<p>
 Click this button to display the Select Layer dialog, and all elements in the selected layer will be selected.
</p>
<h1>
 BY DISPLAYED
</h1>
<p>
 Click this button to select all elements that are currently displayed.
</p>
<h1>
 INSIDE REGION
</h1>
<p>
 Check this option, and the program will select only elements inside the selection region.
</p>
<h1>
 OUTSIDE REGION
</h1>
<p>
 Check this option, and the program will select only elements outside the selection region.
</p>
<h1>
 CROSSING
</h1>
<p>
 Check this option, and the program will select elements that intersect with the boundary of the selection region.
</p>
<h1>
 1.7.4 SELECT NODE MODE
</h1>
<p>
 This mode is utilized to perform the selection operations relevant to the node. The Node Selection dialog is illustrated in the following figure, including the commonly used selection modes such as Pick, Box and so on.
</p>
<p>
 The image appears to be a screenshot of a software interface related to a tool or feature labeled "By Cursor." The interface includes several icons at the top, which likely represent different cursor modes or tools. The first icon is highlighted, suggesting it is currently selected. Below the icons, there are several options and settings:

1. A checkbox labeled "Trace" is checked, indicating that this feature is active.
2. A checkbox labeled "Front" is unchecked.
3. There is an option labeled "Spread" with a numerical input field set to 0.0, and a "Stop Angle" field set to 80.0.
4. A checkbox labeled "Cross Part Boundary" is unchecked.
5. A button labeled "By ID..." is present, suggesting functionality related to identification.
6. At the bottom, there are three radio buttons labeled "Inside," "Outside," and "Crossing," with "Inside" currently selected.

The interface seems to be part of a software application that involves cursor-based operations, possibly for design, modeling, or analysis purposes.
</p>
<h1>
 PICK NODE
</h1>
<p>
 Select this icon to select anode using mouse cursor and/or holding the left mouse button and dragging the mouse cursor over the desired nodes to select multiple nodes.
</p>
<h1>
 POLYGON
</h1>
<p>
 Select this icon to pick nodes inside a polygon, or the nodes inside and intersecting with the polygon. Click the left mouse button in a sequence to define the polygon vertices. Click the right mouse button to reject the last point. Click the middle mouse button to complete polygon definition and node selection.
</p>
<p>
 O
</p>
<h1>
 CIRCLE
</h1>
<p>
 Select this icon to pick nodes inside a circle, or the nodes inside and intersecting with the circle. Click the left mouse button to define the center of the circle. Hold the left mouse button and drag the mouse to define the circle radius. Release the left mouse button to complete definition of circle and node selection.
</p>
<h1>
 FREEHAND
</h1>
<p>
 Select this icon to pick nodes inside a free hand region, or the nodes inside and intersecting with the region.
</p>
<h1>
 ALONG EDGE
</h1>
<p>
 This option is used to select the boundary nodes, in conjunction with the Stop Angle, and select those nodes on the edge that have a smaller angle with the selected boundary than the stop angle. The following figures illustrate the plate models constituted by the shell nodes. The Stop Angle is set to $9 1 ^ { \circ }$ .When one boundary node is selected, all connected boundary nodes will be selected.
</p>
<p>
 The image shows a meshed 2D geometry, likely from a finite element analysis (FEA) software. The mesh consists of a grid of small, square elements that cover the entire surface of the geometry. The geometry itself has a curved, irregular shape, with a smooth contour on the left and right sides. The top and bottom edges appear to be straight. The mesh is uniform, with elements of consistent size and shape, indicating a structured mesh. The green color of the elements suggests they are selected or highlighted, which is common in FEA software to indicate active or focused areas. The white outline around the geometry may represent the boundary or edge of the meshed area. There are no visible labels, dimensions, or other annotations in the image.
</p>
<p>
 The Stop Angle is set to $8 9 ^ { \circ }$ . When one node on the side edge is selected, only the nodes on the same boundary will be selected.
</p>
<p>
 The image depicts a mesh grid applied to a curved surface, likely used in a computational simulation or finite element analysis (FEA). The mesh consists of small, square elements that cover the entire surface, indicating a structured mesh pattern. The surface has a distinct curvature, with a smooth transition from a wider section at the top to a narrower section at the bottom. The mesh elements appear uniform in size, suggesting a consistent resolution across the surface. The green color of the mesh may be used to differentiate it from other elements or surfaces in the simulation environment. The presence of the mesh indicates that the surface is being prepared for analysis, possibly to study stress distribution, deformation, or other physical properties under certain conditions. The image does not provide information about the material properties, boundary conditions, or the specific type of analysis being conducted.
</p>
<p>
 NOTE: The part boundary is not passed through by default with Along Edge. It enables the user to select the nodes of the adjacent part with the Cross Part Boundary option.
</p>
<h1>
 PATH
</h1>
<p>
 Select this icon to pick nodes that the mouse passes through.
</p>
<h1>
 TRACE
</h1>
<p>
 This option is used to facilitate other selection methods, and the position captured by the program will be highlighted on the screen.
</p>
<h1>
 FRONT
</h1>
<p>
 Select the node to activate this option. Toggle on this option to select the node nearest to the user.
</p>
<h1>
 SPREAD
</h1>
<p>
 Toggle on this option to pick nodes by chained approach based on the spread angle which is the angle difference between the normal vector of an element and the normal vector of its adjacent elements. The slider can be moved to adjust the spread angle. If the angle formed by the normal vectors of the selected element and the adjacent element is less than the selected angle, the adjacent node is selected.
</p>
<h1>
 STOP ANGLE
</h1>
<p>
 When Along Edge option is selected, this option will be activated. It is used to select nodes on the edge that have the smaller angle with the selected boundary than the stop angle.
</p>
<h1>
 BY ID
</h1>
<p>
 Toggle on this option to select one node or multiple nodes by ID, or a range of ID. As illustrated in the figures below.
</p>
<p>
 The image displays a user interface for selecting IDs, with two separate sections labeled "By ID." Each section offers two radio button options: "Single" and "Range." In the first section, the "Single" option is selected, and there is an input field labeled "ID" with the value "0" entered. Below this input field, there are three buttons: "OK," "Apply," and "Cancel," with the "OK" and "Apply" buttons appearing to be disabled or grayed out.

In the second section, the "Range" option is selected, and there are two input fields labeled "From" and "To," both containing the value "0." Similar to the first section, there are three buttons below the input fields: "OK," "Apply," and "Cancel," with the "OK" and "Apply" buttons also appearing to be disabled or grayed out.

The interface is designed for selecting IDs either individually or within a specified range, but the current configuration shows both sections set to the default value of "0" for the ID fields. The presence of disabled buttons suggests that further input or changes may be required to enable these actions.
</p>
<h1>
 INSIDE
</h1>
<p>
 Select this option to select the nodes inside the region.
</p>
<h1>
 OUTSIDE
</h1>
<p>
 Select this option to select the nodes outside the region.
</p>
<h1>
 CROSSING
</h1>
<p>
 Select nodes where the mouse passed. It is unusable when select node.
</p>
<h1>
 1.7.5 SELECT COORDINATE MODE
</h1>
<p>
 This mode is utilized to perform the selection operations relevant to the coordinate. The coordinate point means the position, which refers to the coordinate position of the node, or the point on the line, surface and the work plane, and various selection methods will be introduced in detail in this section.
</p>
<p>
 The image is a screenshot of a user interface from a software application, likely related to 3D modeling or CAD (Computer-Aided Design). The interface is divided into two main sections: "By Cursor" and "Coordinate Value."

In the "By Cursor" section, there are several icons, each representing different tools or functions. These icons include symbols that suggest operations like tracing, drawing lines, or creating shapes. The "Trace" checkbox is selected, indicating that this function is active. Other options such as "Current View Plane," "Show Grid," and "Snap Grid" are available but not selected. The "Front" checkbox is checked, suggesting that the current view or operation is oriented towards the front plane.

The "Coordinate Value" section provides options for inputting coordinates. There are two radio buttons: "X,Y,Z" and "DX,DY,DZ," allowing the user to choose between absolute coordinates and relative coordinates, respectively. The "X,Y,Z" option is currently selected. Below this, there is a text input field containing the values "0.0,0.0,0.0," which likely represent the X, Y, and Z coordinates. The "Apply Input Value" button is present for applying the entered coordinates to the model or operation.
</p>
<h1>
 BY CURSOR
</h1>
<p>
 Select a point or node with the mouse button. The node, point, endpoint of a line, any point location on the line, midpoint of a line, center of a circle or an arc, any point location on the surface and point location on the current workplane nearest to the cursor location will be automatically captured.
</p>
<p>
 Each method has its corresponding icon, and the corresponding option will be activated by clicking on its icon. Once again, the option will be cancelled. It enables the user to select one or multi methods by activating one or more icons simultaneously.
</p>
<p>
 米
</p>
<h1>
 SNAP ON NODE
</h1>
<p>
 Select the existing nodes in the model.
</p>
<h1>
 SNAP ON SHAPE
</h1>
<p>
 Select the existing point in the model, point on the line and any position on the surface.
</p>
<p>
 This method is decided by comparing the distance between location picked by the user with the mouse and the Endpoint, Line and Surface.
</p>
<p>
 It enables the user to select the coordinate on the surface under the Shading mode with this approach.
</p>
<p>
 If the current mode is Wireframe, it enables the user to switch to the Shading mode. If the user has never switched to the Shading mode, eta/DYNAFORM will automatically prepare the surface selection data to select the coordinates on the surface under the current mode
</p>
<p>
 NOTE: As the system automatically switches the display mode, a certain preparation time is needed for this method. It enables the user to select the coordinates on the surface with the prompt message: “Prepare surface selection data done.” on the message window.
</p>
<h1>
 SNAP ON LINE
</h1>
<p>
 Select the point of a line.
</p>
<h1>
 SNAP ON SURFACE
</h1>
<p>
 Select the point of a surface.
</p>
<p>
 The image appears to be a blurred close-up of an object with a circular end and a long, straight shaft extending from it. The circular end is predominantly dark with a lighter center, while the shaft has a gradient of colors, transitioning from blue to yellow. Due to the low resolution and blurriness of the image, it is difficult to ascertain specific details or the exact nature of the object. The object could potentially be a tool or a component, but without additional context or a clearer image, it is not possible to definitively identify it or determine its function.
</p>
<h1>
 SNAP ON ENDPOINT
</h1>
<p>
 Select the endpoint of a line.
</p>
<p>
 The image appears to be a blurred representation of a logo or emblem. The central element seems to be circular, possibly containing text or a symbol, but the blurriness makes it difficult to discern specific details. Extending horizontally from the central circle are two lines, one colored blue and the other yellow, which may represent a flag or a design element. The overall composition suggests a symmetrical design, possibly indicative of an organization or brand identity. Due to the lack of clarity, it is not possible to identify the specific entity or the exact nature of the logo from this image alone.
</p>
<h1>
 SNAP ON MIDDLE POINT
</h1>
<p>
 Select the middle point of a line.
</p>
<p>
 The image shows a circular object with a purple outline and a smaller, blurred, dark circular shape in the center. The central shape appears to have some horizontal lines or features, but due to the low resolution and blurriness, it is difficult to discern specific details or identify the object. The background is a plain, light color, which does not provide additional context or information about the object. Without further context or a clearer image, it is challenging to determine the purpose or nature of the object depicted.
</p>
<h1>
 SNAP ON CENTER
</h1>
<p>
 Select the center of a circle or an arc.
</p>
<p>
 长
</p>
<h1>
 SNAP ON CURRENT REF. PLANE
</h1>
<p>
 Selectany point location on the current work plane.
</p>
<p>
 Click this icon to activate the Current View Plane and the Grid options.
</p>
<h1>
 Current View Plane
</h1>
<p>
 All selected points will be on the current view plane set by the user with this activated option.
</p>
<h1>
 Show Grid/Snap Grid
</h1>
<p>
 It displays and snaps the grid on the current work plane with this activated option. These two options can be activated only when Snap On Current Ref. Planeis activated and the Current View Plane option is toggled off.
</p>
<p>
 When these two options are selected, it displays and snaps the grid on the current work plane.
</p>
<p>
 The image depicts a 3D model of a surface with a grid overlay, likely representing a mesh used in computational simulations or computer-aided design (CAD). The surface is colored green, and it features a distinct geometric shape with a raised section that forms a ridge or a wave-like pattern. The grid overlay consists of evenly spaced lines, creating square cells across the surface, which is typical in finite element analysis (FEA) or other numerical methods for solving physical problems. The background is a gradient of blue and gray, which helps to highlight the green surface. The image suggests a focus on the structural or mechanical properties of the surface, possibly for analysis of stress, deformation, or fluid dynamics.
</p>
<h1>
 1.8 MODEL TREE
</h1>
<p>
 Model Tree provides great convenience for the user to operate eta/DYNAFORM. It consists of three types: GEOMETRY, PROJECT and VIEWER.
</p>
<h1>
 1.8.1 MODEL TREE FOR GEOMETRY
</h1>
<p>
 It is used to manage the operation for geometry model. The model tree contains the sub branches: Curve, Surface, and Element.
</p>
<p>
 For detailed information, please refer to Chapter 5.
</p>
<p>
 The image displays a section of a software interface titled "Geometry Manager," which is likely used for managing geometric data in a CAD or engineering application. The interface is organized into a hierarchical structure with expandable lists. The top-level category is "Imported Files List," which contains three subcategories: "Curve List," "Surface Files," and "Element Files."

1. **Curve List**: This section includes three subcategories: "Created Curves," "Imported Curves," and "Section Cut Curves." Each subcategory is represented with a folder icon, indicating that they can be expanded to reveal more details. The icons next to these subcategories suggest options for visibility or selection, with a sun icon likely indicating visibility and a gray icon possibly indicating selection or activation status.

2. **Surface Files**: This section contains a subcategory named "Created Surfaces" and several imported files with the ".stp" extension, which is a common format for 3D CAD models. The files listed are "fender_op10_upr_die.stp," "fender_op30_camslider.stp," "fender_op30_lwr_die.stp," and "fender_op30_upr_pad.stp." Each file has a nested "Body" item, indicating that these files contain 3D body data. The visibility and selection icons are present here as well.

3. **Element Files**: This section includes a subcategory named "Created Elements," which is currently not expanded. Similar visibility and selection icons are present.

The right side of the image shows a vertical toolbar with various icons, likely representing different tools or functions related to geometry management, such as curve creation, surface manipulation, and element editing.
</p>
<h1>
 1.8.2 MODEL TREE FOR PROJECT
</h1>
<p>
 It is used to manage the operation for BSE and FS projects. The model tree contains the sub branches, including the list of Stage, Blank, Tools, Drawbeads, Parts, Outline, Nesting, etc. operations for project.
</p>
<p>
 For detailed information, please refer to the following Chapters.
</p>
<p>
 The image is a screenshot of a software interface related to sheet forming operations. The interface is divided into several sections, with a navigation pane on the left and a detailed information pane on the right.

On the left side, there is a hierarchical tree structure under the "Operation" tab, which lists various components and operations involved in the sheet forming process. The components include "Blank," "OP10," "OP20," "OP30," and "CAM Tool." Each operation, such as "OP10" and "OP30," has sub-components like "UpperTool," "LowerTool," and "Drawbead," with specific elements like "die," "punch," "binder," "Bead 1," "Bead 2," and "Bead 3."

On the right side, the "Project Information" section provides details about the project, including the project number "001," name "Fender," and the person responsible, "Andy." There is also a section for comments, which is currently empty.

The "Simulation Accuracy" section allows the user to select the accuracy type, which is set to "Normal." The "Element Type" is specified as "Shell." The "Press Coordinate System" section provides fields for entering the center and rotation values along the X, Y, and Z axes, all currently set to 0.0. There is also a button labeled "Assign..." for further configuration.

Overall, the interface appears to be part of a software tool used for simulating and managing sheet forming processes, with options to configure various parameters and components involved in the operation.
</p>
<h1>
 1.8.3 MODEL TREE FOR VIEWER
</h1>
<p>
 It is used to manage the display of imported geometry, tools and curves.It consists of Geom/Tool and Curve tab with multiple sub branches for imported geometry, tools of Sheet Forming and BSE.
</p>
<p>
 On/Off Control Geom/Tool Curve
 <br/>
 -Geometry
 <br/>
 ·Sheet Forming ..Blank OP10 .die .-punch ..inder ·OP30 ..ad ..post .CAM1
</p>
<h1>
 ON/OFF CONTROL
</h1>
<p>
 This function is utilized to manage the model tree viewer. The user can click on the button to fold/unfold the tree.
</p>
<p>
 Click to fold the model tree.
 <br/>
 Click to unfold the model tree.
</p>
<h1>
 GEOM/TOOL
</h1>
<p>
 This function is utilized to manage all related geometry and tools. It consists of IMPORT GEOMETRY, SHEET FORMING and BSE projects.
</p>
<h1>
 IMPORT GEOMETRY
</h1>
<p>
 All imported surfaces and mesh are listed.
</p>
<h1>
 SHEET FORMING
</h1>
<p>
 All defined tools related to Sheet Forming are listed.
</p>
<h1>
 BSE
</h1>
<p>
 All defined parts and results related to BSE are listed.
</p>
<p>
 NOTE: The tree displays an active SHEET FORMING or BSE projects. For example, BSE project is disabled when users are working on Sheet Forming project.
</p>
<h1>
 CURVE
</h1>
<p>
 This function is utilized to manage the display of all listed curves. The list includes Created Curves, Section Cut, Import Curves, Sheet Forming and BSE Curves.
</p>
<p>
 On/Off Control Geom/Tool Curve - Created Curv es i·Imported Curves 8SE -Part 1 ...DFD
</p>
<h1>
 1.9 HELP
</h1>
<p>
 This menu consists of such information as the online help, license control, version number and contact support for eta/DYNAFORM. The user can view the online help and version information and manage the license at any time.
</p>
<h1>
 1.9.1 ONLINE HELP
</h1>
<p>
 The image displays a user interface element, likely from a software application. It consists of two distinct sections. The left section features a large circular icon with a question mark inside, accompanied by the word "Help." This suggests that clicking this icon would provide assistance or guidance related to the software.

The right section contains three smaller circular icons. The first icon is a question mark, similar to the one in the left section, indicating it may also be related to help or support. The second icon is an "i," which typically represents information, suggesting that clicking it would provide additional details or context about the software or a specific feature. The third icon resembles a globe, which could imply options related to internet connectivity, online resources, or language settings.

The overall design uses a consistent color scheme of yellow and blue, which is often used to denote help or information in software interfaces. The layout is simple and organized, allowing users to easily identify and access help or information features.
</p>
<p>
 The user can click this menu to view the online help documents to get help on how to use this software when the user encounters a problem. Meanwhile, the shortcut key F1 can also be used to activate this function.
</p>
<p>
 eta/DYNAFORM7.2
 <br/>
 面 国 ? 包 业 国
 <br/>
 Hide Locate Back Stop Refresh Home Print Qptions INTRODUCTION 00 DINTRODUCTION
 <br/>
 田 STRUCTURALOVERVIEW etDYAFORsesealedeTI
 <br/>
 GETTING STARTED oftareombshefalisofDAredPrendorocefctTesealsdesde
 <br/>
 VEW PROJECT feeededeogeee andtledeWihspsndtltoaORelnsfeefprob
 <br/>
 GEOMETRYMANAGER maximizestraditionalCAEtechniquestoreduceprototyping costsandleadtimeforproduct development.
 <br/>
 ACEZENGNEERING etDAFORededI
 <br/>
 SHEETFORMING lisdeedbfodohdeeedftsc
 <br/>
 TUBEFORMING crashworthiness,occupant safety,underwaterexplosion,and sheet metalforming.
</p>
<p>
 田REPORT etD APPENDIXA HARDWAREANDSOFTV predicting SkidMark and Springback effects.
 <br/>
 田APPENDIXB INDEXFILEFORMAT eta/DYNAFORM7.1isavailableforWindows10/11x64operating systems. Special featuresof eta/DYNAFORM7.1include: TheFoeroopleeetfsfobseighgprocssroesprovdedeodfoet geneteteeledoe techolgicalpaeemakasiefrhsetpeetifoctalecholseleetspldefhatd technologicalparameterfortheanalysisandcalculation，whichgreatlysimplifiestheanalysisprocess． Themodleeeeeslehe Formingcompletesvarioussetupsforblankforminganalysisinchdinglasertailor-weldedblankandmulti-stageforming.
</p>
<h1>
 1.9.2 LICENSE ROAMING
</h1>
<p>
 License Roaming is used to enable a floating license to roam to a system that is disconnected to the network. The resulting license can be used for the number of days specified when the license was set to roam, and it can be checked back automatically. In addition, the user can return the roamed license back to the license pool early when desired.
</p>
<p>
 In License Roaming of eta/DYNAFORM, it lists all the products available in the license.
</p>
<p>
 Roam: Select the desired products and click the Roam button. The licenses will be roamed on the client (the roaming machine). The user can also click the Roam All button to roam all products.
</p>
<p>
 Roaming Days: The number of days specified. The maximum roaming day is 7.
</p>
<html>
 <body>
  <table>
   <tr>
    <td colspan="4">
     License
    </td>
   </tr>
   <tr>
    <td colspan="4">
     Licensed to
    </td>
   </tr>
   <tr>
    <td colspan="4">
     ETA
    </td>
   </tr>
   <tr>
    <td>
     Available License
    </td>
    <td>
    </td>
    <td>
    </td>
    <td>
    </td>
   </tr>
   <tr>
    <td>
     Product Name
    </td>
    <td>
     Type
    </td>
    <td>
     Expiration
    </td>
    <td>
     Action
    </td>
   </tr>
   <tr>
    <td>
     df_formability
    </td>
    <td>
     Node-locked
    </td>
    <td>
     31-dec-2024
    </td>
    <td>
    </td>
   </tr>
   <tr>
    <td>
     df_bse
    </td>
    <td>
     Node-locked
    </td>
    <td>
     31-dec-2024
    </td>
    <td>
    </td>
   </tr>
   <tr>
    <td>
     df_bse_outline
    </td>
    <td>
     Node-locked
    </td>
    <td>
     31-dec-2024
    </td>
    <td>
    </td>
   </tr>
   <tr>
    <td>
     df_bse_nesting
    </td>
    <td>
     Node-locked
    </td>
    <td>
     31-dec-2024
    </td>
    <td>
    </td>
   </tr>
   <tr>
    <td>
     df_bse_unfold_trimline
    </td>
    <td>
     Node-locked
    </td>
    <td>
     31-dec-2024
    </td>
    <td>
    </td>
   </tr>
   <tr>
    <td>
     df_trimlndev
    </td>
    <td>
     Node-locked
    </td>
    <td>
     31-dec-2024
    </td>
    <td>
    </td>
   </tr>
   <tr>
    <td>
     df_hotform
    </td>
    <td>
     Node-locked
    </td>
    <td>
     31-dec-2024
    </td>
    <td>
    </td>
   </tr>
   <tr>
    <td>
     df_tubebend
    </td>
    <td>
     Node-locked
    </td>
    <td>
     31-dec-2024
    </td>
    <td>
    </td>
   </tr>
   <tr>
    <td>
     df_optimization
    </td>
    <td>
     Node-locked
    </td>
    <td>
     31-dec-2024
    </td>
    <td>
    </td>
   </tr>
   <tr>
    <td>
     df_die_face_design
    </td>
    <td>
     Node-locked
    </td>
    <td>
     31-dec-2024
    </td>
    <td>
    </td>
   </tr>
   <tr>
    <td>
     df_die_simulation
    </td>
    <td>
     Node-locked
    </td>
    <td>
     31-dec-2024
    </td>
    <td>
    </td>
   </tr>
   <tr>
    <td>
     df_ssr
    </td>
    <td>
     Node-locked
    </td>
    <td>
     31-dec-2024
    </td>
    <td>
    </td>
   </tr>
   <tr>
    <td>
     df_smth
    </td>
    <td>
     Node-locked
    </td>
    <td>
     31-dec-2024
    </td>
    <td>
    </td>
   </tr>
   <tr>
    <td>
     df_dsi
    </td>
    <td>
     Node-locked
    </td>
    <td>
     31-dec-2024
    </td>
    <td>
    </td>
   </tr>
   <tr>
    <td>
     df_sheet_drop_test
    </td>
    <td>
     Node-locked
    </td>
    <td>
     31-dec-2024
    </td>
    <td>
    </td>
   </tr>
   <tr>
    <td>
     df_assembly_bse
    </td>
    <td>
     Node-locked
    </td>
    <td>
     31-dec-2024
    </td>
    <td>
    </td>
   </tr>
   <tr>
    <td>
     io_nx
    </td>
    <td>
     Node-locked
    </td>
    <td>
     31-dec-2024
    </td>
    <td>
    </td>
   </tr>
   <tr>
    <td>
     reporter
    </td>
    <td>
     Node-locked
    </td>
    <td>
     31-dec-2024
    </td>
    <td>
    </td>
   </tr>
   <tr>
    <td colspan="4">
     Roaming
    </td>
   </tr>
   <tr>
    <td colspan="4">
     7 days
    </td>
   </tr>
   <tr>
    <td colspan="2">
    </td>
    <td colspan="2">
    </td>
   </tr>
   <tr>
    <td colspan="2">
     Roam All
    </td>
    <td colspan="2">
     Return All
    </td>
   </tr>
   <tr>
    <td colspan="4">
    </td>
   </tr>
  </table>
 </body>
</html>
<h1>
 Return License
</h1>
<p>
 When the license is set to Roam, the license will be checked back automatically at the end of this operation.
</p>
<p>
 If you prefer to return the license before the roaming time has expired, reconnect the system to the network (so that it can contact the original license server), and click Return or Return All button. The roamed license will be returned to the license pool on the server.
</p>
<h1>
 1.9.3 VERSION
</h1>
<p>
 This function is utilized to display various software information, including the version number, copyright and contact support, etc.
</p>
<p>
 The image is a software information dialog box for a program called "Dynaform 7.2." It provides details about the software version, release date, operating system compatibility, copyright information, and company contact details. The version of the software is 7.2, and it was released on August 23, 2024. It is compatible with 64-bit (x64) Windows operating systems. The copyright notice indicates that the software is owned by ETA, Inc., with rights reserved from 2010 to 2024.

The company associated with the software is Engineering Technology Associates, Inc., located at 5445 Corporate Drive, Suite 301, Troy, MI 48098, USA. Contact information is provided, including a telephone number (+1 (248) 729-3010), a fax number (+1 (248) 729-3020), and a website (www.eta.com). The dialog box includes a logo with the letters "eta" and an "OK" button for closing the dialog.
</p>
