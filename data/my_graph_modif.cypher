# Neo4j导入脚本 - 使用参数化查询
import json

def import_graph_data(graph):
    """
    使用参数化查询导入图数据，避免字符串转义问题
    """
    # 约束创建
    # 无需创建约束

    # 节点数据
    nodes_data = [
  {
    "labels": [
      "软件"
    ],
    "properties": {
      "id": "Eta/Dynaform",
      "名称": "eta/DYNAFORM",
      "描述": "A completely new Graphic User Interface (GUI) package operating on Windows (10 and higher) platform, used for stamping simulation model generation, input file preparation, and result processing."
    }
  },
  {
    "labels": [
      "模块"
    ],
    "properties": {
      "id": "Geometry Manager",
      "名称": "Geometry Manager",
      "描述": "Responsible for stamping simulation model generation and input file preparation in eta/DYNAFORM."
    }
  },
  {
    "labels": [
      "模块"
    ],
    "properties": {
      "id": "Result",
      "名称": "Result",
      "描述": "Processes stamping simulation results in eta/DYNAFORM."
    }
  },
  {
    "labels": [
      "软件"
    ],
    "properties": {
      "id": "Ls-Dyna",
      "名称": "LS-DYNA",
      "描述": "Solver that can be executed on either local or remote server systems for stamping simulation."
    }
  },
  {
    "labels": [
      "Document"
    ],
    "properties": {
      "id": "381a4d53dd74c016568b7f9119925fec",
      "page_content": "CHAPTER 1 STRUCTURAL OVERVIEW\neta/DYNAFORM is a completely new Graphic User Interface (GUI) package operating on Windows (10 and higher) platform. The model generation and input file preparation of a typical stamping simulation are performed in the eta/DYNAFORM Geometry Manager, while the stamping simulation result is processed in Result. The solver, LS-DYNA can be executed on either local or remote server systems.\neta/DYNAFORM is organized as a tree structure and is operated and controlled by the user-friendly GUI.",
      "metadata": {
        "id": "381a4d53dd74c016568b7f9119925fec"
      }
    }
  },
  {
    "labels": [
      "用户界面元素"
    ],
    "properties": {
      "id": "Menu Bar",
      "名称": "MENU BAR",
      "描述": "eta/DYNAFORM menus are selected by mouse picking and contain a wide variety of functions."
    }
  },
  {
    "labels": [
      "Document"
    ],
    "properties": {
      "id": "867125a49928c942920e6e44ec57b162",
      "page_content": "1.1 MENU BAR\neta/DYNAFORM menus are selected by mouse picking and contain a wide variety of functions. Under each menu, the user can click on various icons to activate the functions.",
      "metadata": {
        "id": "867125a49928c942920e6e44ec57b162"
      }
    }
  },
  {
    "labels": [
      "用户界面元素"
    ],
    "properties": {
      "id": "Datageometry View",
      "名称": "DataGeometry View"
    }
  },
  {
    "labels": [
      "用户界面元素"
    ],
    "properties": {
      "id": "Utilities",
      "名称": "Utilities"
    }
  },
  {
    "labels": [
      "用户界面元素"
    ],
    "properties": {
      "id": "Resultreporthelp",
      "名称": "ResultReportHelp"
    }
  },
  {
    "labels": [
      "功能_特性"
    ],
    "properties": {
      "id": "Projectimports/Exports Data To/From Eta/Dynaform.Bse",
      "名称": "ProjectImports/exports data to/from eta/DYNAFORM.BSE",
      "描述": "Imports/exports data to/from eta/DYNAFORM.BSE"
    }
  },
  {
    "labels": [
      "模块"
    ],
    "properties": {
      "id": "Blank Size Engineering",
      "名称": "Blank Size Engineering",
      "描述": "Includes a modified one-step-based unfolding function, spring back, blank development and nesting function."
    }
  },
  {
    "labels": [
      "模块"
    ],
    "properties": {
      "id": "Die Face Design",
      "名称": "Die Face Design",
      "描述": "The Die Face Design (DFD) module provides abundant tools for fast die surface design, including the binder and addendum design, local feature modification and fast evaluation of die face design, etc."
    }
  },
  {
    "labels": [
      "Document"
    ],
    "properties": {
      "id": "ea1ffdee4e548f953b1726c614e2eca9",
      "page_content": "ProjectBSEDFDFS。 DataGeometry View国 Utilities ResultReportHelp\nProjectImports/exports data to/from eta/DYNAFORM.BSEBlank Size Engineering includes a modified one-step-based unfolding function, spring back, blank development and nesting function.Die Face DesignThe Die Face Design (DFD) module provides abundant tools for fast die surface design, including the binder and addendum design, local feature modification and fast evaluation of die face design, etc.",
      "metadata": {
        "id": "ea1ffdee4e548f953b1726c614e2eca9"
      }
    }
  },
  {
    "labels": [
      "模块"
    ],
    "properties": {
      "id": "Formability Simulation",
      "名称": "Formability Simulation",
      "描述": "The Formability Simulation module provides a complete set of solutions for problems existed in the sheet forming process."
    }
  },
  {
    "labels": [
      "模块"
    ],
    "properties": {
      "id": "Tube Forming",
      "名称": "Tube Forming",
      "描述": "The Tube Forming module provides a complete set of solutions for tube bending and hydroforming analysis."
    }
  },
  {
    "labels": [
      "Document"
    ],
    "properties": {
      "id": "1ad1e13c282c91767ef1d3e72546f9e4",
      "page_content": "The user can modify the binder and addendum according to the results of evaluation, which significantly speeds up the efficiency of die face design optimization.Formability SimulationThe Formability Simulation module provides a complete set of solutions for problems existed in the sheet forming process.Tube FormingThe Tube Forming module provides a complete set of solutions for tube bending and hydroforming analysis.",
      "metadata": {
        "id": "1ad1e13c282c91767ef1d3e72546f9e4"
      }
    }
  },
  {
    "labels": [
      "模块"
    ],
    "properties": {
      "id": "Process_Module",
      "名称": "Process Module",
      "描述": "Supports users to complete the processes from product import to analysis results, including Tube Bending, Pre-forming, Annealing, Hydroforming, Piercing and Trimming and other processes."
    }
  },
  {
    "labels": [
      "模块"
    ],
    "properties": {
      "id": "Data_Manager",
      "名称": "Data Manager",
      "描述": "Used to manage simulation data."
    }
  },
  {
    "labels": [
      "模块"
    ],
    "properties": {
      "id": "Geometry_Manager",
      "名称": "Geometry Manager",
      "描述": "Used to manage both imported and created geometry such as curves, surfaces and meshes."
    }
  },
  {
    "labels": [
      "功能_特性"
    ],
    "properties": {
      "id": "View",
      "名称": "View",
      "描述": "Controls the visualization of the entities on the screen."
    }
  },
  {
    "labels": [
      "Document"
    ],
    "properties": {
      "id": "a5d8624351dcbab678136807ba3c49a9",
      "page_content": "This module supports users to complete the processes from product import to analysis results, including Tube Bending, Pre-forming, Annealing, Hydroforming, Piercing and Trimming and other processes. Data ManagerThis application is used to manage simulation data.Geometry ManagerThis application is used to manage both imported and created geometry such as curves, surfaces and meshes.ViewControls the visualization of the entities on the screen.",
      "metadata": {
        "id": "a5d8624351dcbab678136807ba3c49a9"
      }
    }
  },
  {
    "labels": [
      "功能_特性"
    ],
    "properties": {
      "id": "Report",
      "名称": "Report",
      "描述": "Automatically generates relevant CAE analysis reports, supporting both PPT and Excel modes."
    }
  },
  {
    "labels": [
      "功能_特性"
    ],
    "properties": {
      "id": "Help",
      "名称": "Help",
      "描述": "DisDYNAORisnpumberdOnictifptionand icese maagement for Descriptions of these functions are located in their respective sections."
    }
  },
  {
    "labels": [
      "Document"
    ],
    "properties": {
      "id": "4562b3d74deb0089b00a742e67b170cb",
      "page_content": "UtilitiesIncludes several auxiliary functions for identifying entities, measurement and load curve generation.ResultInitiates post-processing functions for analyzing formability simulation results.ReportAutomatically generates relevant CAE analysis reports, supporting both PPT and Excel modesHelpDisDYNAORisnpumberdOnictifptionand icese maagement for\nDescriptions of these functions are located in their respective sections.",
      "metadata": {
        "id": "4562b3d74deb0089b00a742e67b170cb"
      }
    }
  },
  {
    "labels": [
      "用户界面元素"
    ],
    "properties": {
      "id": "Icon_Bar",
      "名称": "ICON BAR",
      "描述": "The icon bar is designed to provide the user easy access to the most commonly used PROJECT functions of eta/DYNAFORM."
    }
  },
  {
    "labels": [
      "功能_特性"
    ],
    "properties": {
      "id": "New_Project",
      "名称": "NEW PROJECT",
      "描述": "Creates a new database."
    }
  },
  {
    "labels": [
      "功能_特性"
    ],
    "properties": {
      "id": "Open_Project",
      "名称": "OPEN PROJECT",
      "描述": "Opens a saved database."
    }
  },
  {
    "labels": [
      "功能_特性"
    ],
    "properties": {
      "id": "Save_Project",
      "名称": "SAVE PROJECT",
      "描述": "Saves the active database using its existing name on the existing folder."
    }
  },
  {
    "labels": [
      "功能_特性"
    ],
    "properties": {
      "id": "Save_Project_As",
      "名称": "SAVE PROJECT AS",
      "描述": "Saves the existing database using another name."
    }
  },
  {
    "labels": [
      "功能_特性"
    ],
    "properties": {
      "id": "Reload_File",
      "名称": "RELOAD FILE",
      "描述": "Reloads the database from the initial saved database."
    }
  },
  {
    "labels": [
      "Document"
    ],
    "properties": {
      "id": "13d350cd8a0585ecadc2b895969a249e",
      "page_content": "1.2 ICON BAR\nThe icon bar is designed to provide the user can easy access to the most commonly used in PROJECT functions of eta/DYNAFORM.\nNEW PROJECT\nCreates a new database.\nOPEN PROJECT\nOpens a saved database.\nSAVE PROJECT\nSaves the active database using its existing name on the existing folder.\nSAVE PROJECT AS\nSaves the existing database using another name.\nRELOAD FILE\nReloads the database from the initial saved database.",
      "metadata": {
        "id": "13d350cd8a0585ecadc2b895969a249e"
      }
    }
  },
  {
    "labels": [
      "用户界面元素"
    ],
    "properties": {
      "id": "Display_Window",
      "名称": "DISPLAY WINDOW",
      "描述": "eta/DYNAFORM divides the screen into six distinct regions. The regions are used to receive functions or display messages for the user."
    }
  },
  {
    "labels": [
      "用户界面元素"
    ],
    "properties": {
      "id": "Display_Area",
      "名称": "DISPLAY AREA",
      "描述": "All model graphics are displayed in this area."
    }
  },
  {
    "labels": [
      "用户界面元素"
    ],
    "properties": {
      "id": "Menu_Bar",
      "名称": "MENU BAR",
      "描述": "All functions are accessible through the menu bar. Selectable Icon-based toolbars are used to access and manage all functions."
    }
  },
  {
    "labels": [
      "用户界面元素"
    ],
    "properties": {
      "id": "Task_Panel",
      "名称": "TASK PANEL",
      "描述": "Listing of all model entities and creation of non-graphical data entities. Process-driven dialog has an access to complete modeling tasks."
    }
  },
  {
    "labels": [
      "Document"
    ],
    "properties": {
      "id": "2897150791aaa773a5e85ff1c273e003",
      "page_content": "1.3 DISPLAY WINDOW\neta/DYNAFORM divides the screen into six distinct regions. The regions are used to receive functions or display messages for the user. DISPLAY AREA\nAll model graphics are displayed in this area. MENU BAR\nAll functions are accessible through the menu bar. Selectable Icon-based toolbars are used to access and manage all functions. ICON BAR\nSelectable Icon-based toolbars are used to access and manage Project functions. TASK PANEL\nListing of all model entities and creation of non-graphical data entities. Process-driven dialog has an access to complete modeling tasks.",
      "metadata": {
        "id": "2897150791aaa773a5e85ff1c273e003"
      }
    }
  },
  {
    "labels": [
      "用户界面元素"
    ],
    "properties": {
      "id": "Model_Tree",
      "名称": "MODEL TREE",
      "描述": "Users may turn on/off generated geometry, tools and curves by mouse clicking on the light bulbs."
    }
  },
  {
    "labels": [
      "用户界面元素"
    ],
    "properties": {
      "id": "Message_Window",
      "名称": "MESSAGE WINDOW",
      "描述": "Results of functions and warning or error messages are printed in this window."
    }
  },
  {
    "labels": [
      "Document"
    ],
    "properties": {
      "id": "a2502167b93f85a26b45be670e16f39c",
      "page_content": "MODEL TREE\nUsers may turn on/off generated geometry, tools and curves by mouse clicking on thelight bulbs. MESSAGE WINDOW\nResults of functions and warning or error messages are printed in this window.",
      "metadata": {
        "id": "a2502167b93f85a26b45be670e16f39c"
      }
    }
  },
  {
    "labels": [
      "功能_特性"
    ],
    "properties": {
      "id": "Mouse_Functions",
      "名称": "MOUSE FUNCTIONS"
    }
  },
  {
    "labels": [
      "Document"
    ],
    "properties": {
      "id": "705e816eed0c94cf5faf65943c1a959e",
      "page_content": "1.4 MOUSE FUNCTIONS\neta/DYNAFORM functions are accessible via the three mouse buttons. To access a function, the user moves the mouse cursor to select the desired function, followed by pressing the left mouse button. In certain functions, the middle mouse button is used to complete operations while the right mouse button is used to cancel the last operation, such as creating a line, selecting nodes, surfaces, elements or coordinate system.",
      "metadata": {
        "id": "705e816eed0c94cf5faf65943c1a959e"
      }
    }
  },
  {
    "labels": [
      "修饰键"
    ],
    "properties": {
      "id": "Control_Key",
      "名称": "Ctrl"
    }
  },
  {
    "labels": [
      "修饰键"
    ],
    "properties": {
      "id": "Alt_Key",
      "名称": "Alt"
    }
  },
  {
    "labels": [
      "修饰键"
    ],
    "properties": {
      "id": "Shift_Key",
      "名称": "Shift"
    }
  },
  {
    "labels": [
      "功能_特性"
    ],
    "properties": {
      "id": "Rotation",
      "名称": "Rotation",
      "描述": "Three Approaches: 1.Press MMB and then RMB. 2.Press MMB and then Ctrl."
    }
  },
  {
    "labels": [
      "功能_特性"
    ],
    "properties": {
      "id": "Translation",
      "名称": "Translation"
    }
  },
  {
    "labels": [
      "功能_特性"
    ],
    "properties": {
      "id": "Scaling",
      "名称": "Scaling"
    }
  },
  {
    "labels": [
      "软件"
    ],
    "properties": {
      "id": "Catia",
      "名称": "CATIA"
    }
  },
  {
    "labels": [
      "软件"
    ],
    "properties": {
      "id": "Nx",
      "名称": "NX"
    }
  },
  {
    "labels": [
      "软件"
    ],
    "properties": {
      "id": "Solidworks",
      "名称": "SolidWorks"
    }
  },
  {
    "labels": [
      "Document"
    ],
    "properties": {
      "id": "48aa6925641532157e5be16fc11cd67a",
      "page_content": "These three buttons can also be used with ${ \\mathrm { < C t r l > } }$ , ${ \\mathrm { < A l t > } }$ and ${ \\mathrm { < C t r l > + < } }$ Shift> keys respectively for rotation, translation and scaling. For CAD models, eta/DYNAFORM supports utilizing CATIA, NX and SolidWorks Mouse operations style. Control Key+ Mouse ButtonFunctionCtrl+Left ButtonRotationCtrl+Shift+ LeftButtonRotate LightCtrl+Middle ButtonTranslationCtrl+Right ButtonScaling\nFunctionCATIANXSolidWorksRotationThree Approaches: 1.Press MMB and then RMB. 2.Press MMB and then Ctrl.",
      "metadata": {
        "id": "48aa6925641532157e5be16fc11cd67a"
      }
    }
  },
  {
    "labels": [
      "功能_特性"
    ],
    "properties": {
      "id": "Ctrl+Mmbscaling",
      "名称": "Ctrl+MMBScaling",
      "描述": "Ctrl+MMB and move the mouse button"
    }
  },
  {
    "labels": [
      "输入设备"
    ],
    "properties": {
      "id": "Scroll Wheel",
      "名称": "Scroll Wheel",
      "描述": "Ctrl+MMB and move the mouse button"
    }
  },
  {
    "labels": [
      "Document"
    ],
    "properties": {
      "id": "9ae7dce91a79bd680f68520975c802e7",
      "page_content": "3.Press MMB and then LMB.Hold MMB and move the mouse button.Hold MMB and move the mouse button.TranslationHoldMMB and move the mouse button.Two Approaches: 1. Shift+MMB and move the mouse. 2.MMB+RMB.Ctrl+MMBScalingCtrl+MMB and move the mouse button.Three Approaches: 1. Hold (LMB+MMB) and move the mouse button. 2. Scroll Wheel. 3. Ctrl+MMB and move the mouse buttonScroll Wheel\neta/DYNAFORM provides options in the Option Center to switch operation styles from Dynaform Style to NX, Catia or SolidWorks styles.",
      "metadata": {
        "id": "9ae7dce91a79bd680f68520975c802e7"
      }
    }
  },
  {
    "labels": [
      "模块"
    ],
    "properties": {
      "id": "1.5 Geometry Data",
      "名称": "1.5 GEOMETRY DATA",
      "描述": "eta/DYNAFORM直接读取IGES、VDA、STEP格式以及eta/DYNAFORM几何数据（线和面）。它还可以直接读取本地CAD数据文件，例如CATIA V4 & V5、Pro/E、NX和SolidWorks。"
    }
  },
  {
    "labels": [
      "Document"
    ],
    "properties": {
      "id": "d304911c77ef3bac3caa7ab3c2cf7bef",
      "page_content": "1.5 GEOMETRY DATA\neta/DYNAFORM directly reads in IGES, VDA, STEP and eta/DYNAFORM geometry data (lines and surfaces). It also directly reads native CAD data files such as CATIA V4 & V5, Pro/E, NX and SolidWorks.",
      "metadata": {
        "id": "d304911c77ef3bac3caa7ab3c2cf7bef"
      }
    }
  },
  {
    "labels": [
      "文件格式"
    ],
    "properties": {
      "id": "Dynaform_Model_Files",
      "名称": "DYNAFORM Model Files",
      "描述": "DYNAFORM model files are attached with the extension *.dfp during an eta/DYNAFORM session.",
      "扩展名": "*.dfp"
    }
  },
  {
    "labels": [
      "文件格式"
    ],
    "properties": {
      "id": "Cad_Files",
      "名称": "CAD Files",
      "描述": "Import/export CAD files during an eta/DYNAFORM session are typically named using extensions such as *.igs, *.iges.",
      "扩展名": "*.igs, *.iges"
    }
  },
  {
    "labels": [
      "文件格式"
    ],
    "properties": {
      "id": "Cae_Solver_Files",
      "名称": "CAE Solver Files",
      "描述": "Import/export CAE Solver files during an eta/DYNAFORM session are typically named using extensions such as LS-DYNA: *.dyn, *.k, *.key, *mod.",
      "扩展名": "*.dyn, *.k, *.key, *mod"
    }
  },
  {
    "labels": [
      "文件格式"
    ],
    "properties": {
      "id": "Acis_Files",
      "名称": "ACIS Files",
      "描述": "Import/export ACIS files during an eta/DYNAFORM session are typically named using extensions such as *.sat, *.sab.",
      "扩展名": "*.sat, *.sab"
    }
  },
  {
    "labels": [
      "文件格式"
    ],
    "properties": {
      "id": "Nastran_Files",
      "名称": "NASTRAN Files",
      "描述": "Import/export NASTRAN files during an eta/DYNAFORM session are typically named using extensions such as *.nas, *.dat, *.bdf.",
      "扩展名": "*.nas, *.dat, *.bdf"
    }
  },
  {
    "labels": [
      "Document"
    ],
    "properties": {
      "id": "41be9181779ac354132996cc037f2468",
      "page_content": "1.6 FILE EXTENSIONS\nThe protocol for naming files during an eta/DYNAFORM session includes attaching suffixes that specify the file types to the file names. The appropriate file names are listed in the options area of the display screen.\nDYNAFORM Model Files: *.dfp\nAdditionally, the following import/export file naming is suggested:\nCAD FilesCAE Solver FilesIGS*.igs, *.igesLS-DYNA*.dyn, *.k, *.key, *modACIS*.sat, *.sabNASTRAN*.nas, *.dat, *.bdf",
      "metadata": {
        "id": "41be9181779ac354132996cc037f2468"
      }
    }
  },
  {
    "labels": [
      "功能_特性"
    ],
    "properties": {
      "id": "Entity_Selections",
      "名称": "ENTITY SELECTIONS",
      "描述": "Allows users to select lines, surfaces, elements, nodes, etc., during functions like Copy and Delete."
    }
  },
  {
    "labels": [
      "文件格式"
    ],
    "properties": {
      "id": "Catia_V4_Model",
      "名称": "CATIA V4*.model"
    }
  },
  {
    "labels": [
      "文件格式"
    ],
    "properties": {
      "id": "Dynain_Dynain",
      "名称": "DYNAIN*.dynain"
    }
  },
  {
    "labels": [
      "文件格式"
    ],
    "properties": {
      "id": "Catia_V5_Catpart_Catproduct",
      "名称": "CATIA V5*.CATPart, *.CATProduct"
    }
  },
  {
    "labels": [
      "文件格式"
    ],
    "properties": {
      "id": "Inventor_Ipt_Iam",
      "名称": "Inventor*.ipt, *.iam"
    }
  },
  {
    "labels": [
      "文件格式"
    ],
    "properties": {
      "id": "Nx_Prt",
      "名称": "NX*.prt"
    }
  },
  {
    "labels": [
      "文件格式"
    ],
    "properties": {
      "id": "Parasolid_X_T_Xmt_Txt_X_B",
      "名称": "Parasolid*.x_t，*.xmt_txt，*x_b"
    }
  },
  {
    "labels": [
      "文件格式"
    ],
    "properties": {
      "id": "Pro_E_Creo_Xmt_Bin_Prt_Asm",
      "名称": "Pro/E/Creo*.xmt_bin *.prt, *.asm"
    }
  },
  {
    "labels": [
      "文件格式"
    ],
    "properties": {
      "id": "Solidworks_Sldprt_Sldasm",
      "名称": "SolidWorks*.sldprt, *.sldasm"
    }
  },
  {
    "labels": [
      "文件格式"
    ],
    "properties": {
      "id": "Step_Stp_Step",
      "名称": "STEP*.stp,*.step"
    }
  },
  {
    "labels": [
      "Document"
    ],
    "properties": {
      "id": "0dcf31e37cf1d61c2548e1ea3aab1cb1",
      "page_content": "1.7 ENTITY SELECTIONS\nIn certain functions such as Copy, Delete, etc., eta/DYNAFORM prompts the user to select lines, surfaces elements, nodes, etc. In addition, different entities correspond to different selection boxes. Show/Hide / Button: Click these buttons to show or hide the options for selection.\n(a) Display (b) Hide   \nCATIA V4*.modelDYNAIN*.dynainCATIA V5*.CATPart, *.CATProductInventor*.ipt, *.iamNX*.prtParasolid*.x_t，*.xmt_txt， *x_b,Pro/E/Creo*.xmt_bin *.prt, *.asmSolidWorks*.sldprt, *.sldasmSTEP*.stp,*.step",
      "metadata": {
        "id": "0dcf31e37cf1d61c2548e1ea3aab1cb1"
      }
    }
  },
  {
    "labels": [
      "用户界面元素"
    ],
    "properties": {
      "id": "Project",
      "名称": "Project",
      "描述": "Allows choosing to show or hide the selection box."
    }
  },
  {
    "labels": [
      "用户界面元素"
    ],
    "properties": {
      "id": "Option Center",
      "名称": "Option Center",
      "描述": "Enables configuration of selection visibility settings."
    }
  },
  {
    "labels": [
      "用户界面元素"
    ],
    "properties": {
      "id": "Selection",
      "名称": "Selection",
      "描述": "Provides Yes/No menu for selection visibility."
    }
  },
  {
    "labels": [
      "对话框按钮"
    ],
    "properties": {
      "id": "Yes",
      "名称": "Yes",
      "描述": "If selected, all selection boxes will be displayed when the dialog is shown."
    }
  },
  {
    "labels": [
      "对话框按钮"
    ],
    "properties": {
      "id": "No",
      "名称": "No",
      "描述": "If selected, all selection boxes will be hidden when the dialog is shown."
    }
  },
  {
    "labels": [
      "Document"
    ],
    "properties": {
      "id": "6138a2f0211e922e223836d48ea7e2fc",
      "page_content": "Choose to show or hide the selection box through the Project- $. >$ Option Center- $. >$ Selection- $\\cdot >$ Yes/No menu. If No is selected, all selection boxes will be hidden when the dialog is displayed. If Yes is selected, all selection boxes will be displayed.",
      "metadata": {
        "id": "6138a2f0211e922e223836d48ea7e2fc"
      }
    }
  },
  {
    "labels": [
      "对话框按钮"
    ],
    "properties": {
      "id": "Undo",
      "名称": "Undo",
      "描述": "Rejects the last step of the operation"
    }
  },
  {
    "labels": [
      "对话框按钮"
    ],
    "properties": {
      "id": "Redo",
      "名称": "Redo",
      "描述": "Redoes the last Undo function and return the database to the previous state"
    }
  },
  {
    "labels": [
      "对话框按钮"
    ],
    "properties": {
      "id": "Apply",
      "名称": "Apply",
      "描述": "Executes the current function without leaving the dialog"
    }
  },
  {
    "labels": [
      "对话框按钮"
    ],
    "properties": {
      "id": "Ok",
      "名称": "OK",
      "描述": "Accepts the data in the dialog and forward the user to the next step"
    }
  },
  {
    "labels": [
      "对话框按钮"
    ],
    "properties": {
      "id": "Cancel",
      "名称": "Cancel",
      "描述": "Rejects the current operation"
    }
  },
  {
    "labels": [
      "对话框按钮"
    ],
    "properties": {
      "id": "Close",
      "名称": "Close",
      "描述": "Closes the current dialog"
    }
  },
  {
    "labels": [
      "对话框按钮"
    ],
    "properties": {
      "id": "Exit",
      "名称": "Exit",
      "描述": "Exits the current dialog"
    }
  },
  {
    "labels": [
      "Document"
    ],
    "properties": {
      "id": "6de47e50cb3cfed3eaefb4f98e8f7503",
      "page_content": "eta/DYNAFORM incorporates various dialogs to execute functions throughout the program.Buttons at the bottom of the dialogare used to execute, reject, reset the data or close the dialog. The functions of these buttons are listed below.\nUndoRejects the last step of the operationRedoRedoes the last Undo function and return the database to the previous state.ApplyExecutes the current function without leaving the dialog.OKAccepts the data in the dialog and forward the user to the next step.CancelRejects the current operation.CloseCloses the current dialog.ExitExits the current dialog.",
      "metadata": {
        "id": "6de47e50cb3cfed3eaefb4f98e8f7503"
      }
    }
  },
  {
    "labels": [
      "选择模式"
    ],
    "properties": {
      "id": "Select_Line_Mode",
      "名称": "SELECT LINE MODE",
      "描述": "This mode is utilized to perform the selection operations relevant to line/curve functions."
    }
  },
  {
    "labels": [
      "用户界面元素"
    ],
    "properties": {
      "id": "Line_Selection_Dialog",
      "名称": "Line Selection dialog",
      "描述": "The Line Selection dialog is illustrated in the following figure, including the commonly used selection modes such as Pick, Box."
    }
  },
  {
    "labels": [
      "Document"
    ],
    "properties": {
      "id": "15ec6c67885848d6ce4e68fdd01777fb",
      "page_content": "1.7.1 SELECT LINE MODE\nThis mode is utilized to perform the selection operations relevant to line/curve functions. The Line Selection dialog is illustrated in the following figure, including the commonly used selection modes such as Pick, Box and so on.",
      "metadata": {
        "id": "15ec6c67885848d6ce4e68fdd01777fb"
      }
    }
  },
  {
    "labels": [
      "选择模式"
    ],
    "properties": {
      "id": "Pick Line",
      "名称": "PICK LINE",
      "描述": "This is the default option for line selection. Select the entity directly inside the box from the Display Area with the mouse button."
    }
  },
  {
    "labels": [
      "选择模式"
    ],
    "properties": {
      "id": "Polygon",
      "名称": "POLYGON",
      "描述": "Select this icon (Multi-point Region) to pick lines inside a closed polygon. Each left mouse button click defines a vertex and a middle button click closes the polygon. Right click to cancel the last defined polygon vertex."
    }
  },
  {
    "labels": [
      "Document"
    ],
    "properties": {
      "id": "50916c91fa200e5fed2aeee15a27e7c0",
      "page_content": "PICK LINE\nThis is the default option for line selection. Select the entity directly inside the box from the Display Area with the mouse button.\nPOLYGON\nSelect this icon (Multi-point Region) to pick lines inside a closed polygon. Each left mouse button click defines a vertex and a middle button click closes the polygon.Right click to cancel the last defined polygon vertex.",
      "metadata": {
        "id": "50916c91fa200e5fed2aeee15a27e7c0"
      }
    }
  },
  {
    "labels": [
      "选择模式"
    ],
    "properties": {
      "id": "Circle",
      "名称": "CIRCLE",
      "描述": "Select the lines inside the circle. Click the left mouse button and drag the mouse to define the center of a circle and its radius."
    }
  },
  {
    "labels": [
      "选择模式"
    ],
    "properties": {
      "id": "Free Region",
      "名称": "FREE REGION",
      "描述": "Select all lines located inside any region."
    }
  },
  {
    "labels": [
      "选择模式"
    ],
    "properties": {
      "id": "Chain Line",
      "名称": "CHAIN LINE",
      "描述": "Directly select the chain line by mouse from the Display Area."
    }
  },
  {
    "labels": [
      "选择模式"
    ],
    "properties": {
      "id": "Trace",
      "名称": "TRACE",
      "描述": "This option is used to facilitate other selection methods, and the position captured by the program will be highlighted on the screen."
    }
  },
  {
    "labels": [
      "选择模式"
    ],
    "properties": {
      "id": "Surface Boundary",
      "名称": "SURFACE BOUNDARY",
      "描述": "Check this option to select the boundary of the surface directly."
    }
  },
  {
    "labels": [
      "选择模式"
    ],
    "properties": {
      "id": "Exclude",
      "名称": "EXCLUDE",
      "描述": "Check this option, and the user can select the lines according to the method provided above."
    }
  },
  {
    "labels": [
      "Document"
    ],
    "properties": {
      "id": "79e028c4726948aa474905e9e67210c8",
      "page_content": "CIRCLE\nSelect the lines inside the circle. Click the left mouse button and drag the mouse to define the center of a circle and its radius. 了\nFREE REGION\nSelect all lines located inside any region. CHAIN LINE\nDirectly select the chain line by mouse from the Display Area. TRACE\nThis option is used to facilitate other selection methods, and the position captured by the program will be highlighted on the screen. SURFACE BOUNDARY\nCheck this option to select the boundary of the surface directly. EXCLUDE\nCheck this option, and the user can select the lines according to the method provided above.",
      "metadata": {
        "id": "79e028c4726948aa474905e9e67210c8"
      }
    }
  },
  {
    "labels": [
      "选择模式"
    ],
    "properties": {
      "id": "By Layer",
      "名称": "BY LAYER",
      "描述": "The selected lines will be deselected. Click this button to display the Select Curve dialog, and all lines in the selected layer will be selected."
    }
  },
  {
    "labels": [
      "选择模式"
    ],
    "properties": {
      "id": "By Displayed",
      "名称": "BY DISPLAYED",
      "描述": "Click this button, and all lines that are currently displayed will be selected."
    }
  },
  {
    "labels": [
      "选择模式"
    ],
    "properties": {
      "id": "Inside Region",
      "名称": "INSIDE REGION",
      "描述": "Check this option, and the program will select only lines inside the selection region."
    }
  },
  {
    "labels": [
      "选择模式"
    ],
    "properties": {
      "id": "Outside Region",
      "名称": "OUTSIDE REGION",
      "描述": "Check this option, and the program will select only lines outside the selection region."
    }
  },
  {
    "labels": [
      "选择模式"
    ],
    "properties": {
      "id": "Crossing",
      "名称": "CROSSING",
      "描述": "Check this option, and the program will select lines that intersect with the boundary of the selection region."
    }
  },
  {
    "labels": [
      "Document"
    ],
    "properties": {
      "id": "5cf262fd6e6375910e7b949440224dec",
      "page_content": "The selected lines will be deselected. BY LAYER\nClick this button to display the Select Curve dialog, and all lines in the selected layer will be selected. BY DISPLAYED\nClick this button, and all lines that are currently displayed will be selected. INSIDE REGION\nCheck this option, and the program will select only lines inside the selection region. OUTSIDE REGION\nCheck this option, and the program will select only lines outside the selection region. CROSSING\nCheck this option, and the program will select lines that intersect with the boundary of the selection region.",
      "metadata": {
        "id": "5cf262fd6e6375910e7b949440224dec"
      }
    }
  },
  {
    "labels": [
      "用户界面元素"
    ],
    "properties": {
      "id": "显示区域",
      "描述": "当在显示区域选择时，可以通过不同的鼠标和快捷键操作来选择线条"
    }
  },
  {
    "labels": [
      "输入设备"
    ],
    "properties": {
      "id": "左键单击(Lmb)",
      "描述": "选择线条"
    }
  },
  {
    "labels": [
      "输入设备"
    ],
    "properties": {
      "id": "左键拖动(Lmb Drag)",
      "描述": "通过选择模式选择线条"
    }
  },
  {
    "labels": [
      "修饰键"
    ],
    "properties": {
      "id": "Ctrl+A",
      "名称": "Ctrl+A",
      "描述": "选择所有线条"
    }
  },
  {
    "labels": [
      "修饰键"
    ],
    "properties": {
      "id": "Shift+Lmb",
      "名称": "Shift+LMB",
      "描述": "取消选中的线条"
    }
  },
  {
    "labels": [
      "Document"
    ],
    "properties": {
      "id": "189273b0a8b1511cb77657924d48e86e",
      "page_content": "When selecting at the display area:\nClick LMB to select the line. Drag LMB to select the lines by the selection type. SHORTCUT\nCtrl+A: Select all lines. Shift+LMB: Cancel the selected lines.",
      "metadata": {
        "id": "189273b0a8b1511cb77657924d48e86e"
      }
    }
  },
  {
    "labels": [
      "选择模式"
    ],
    "properties": {
      "id": "Select_Surface_Mode",
      "名称": "SELECT SURFACE MODE",
      "描述": "This mode is utilized to perform the selection operations relevant to the surface. The Surface Selection dialog is illustrated in the following figure, including the commonly used selection modes such as Pick, Box and so on."
    }
  },
  {
    "labels": [
      "Document"
    ],
    "properties": {
      "id": "c90a68fb8107ff715fc8d719c3ea8e1e",
      "page_content": "1.7.2 SELECT SURFACE MODE\nThis mode is utilized to perform the selection operations relevant to the surface. The Surface Selection dialog is illustrated in the following figure, including the commonly used selection modes such as Pick, Box and so on.",
      "metadata": {
        "id": "c90a68fb8107ff715fc8d719c3ea8e1e"
      }
    }
  },
  {
    "labels": [
      "选择模式"
    ],
    "properties": {
      "id": "Pick Surface",
      "名称": "PICK SURFACE",
      "描述": "This is the default option for surface selection. Select the entity directly inside the box from the Display Area with the mouse button."
    }
  },
  {
    "labels": [
      "Document"
    ],
    "properties": {
      "id": "e7860bb55cb54ab18a82e3ac03a21eb3",
      "page_content": "PICK SURFACE\nThis is the default option for surface selection. Select the entity directly inside the box from the Display Area with the mouse button. V\nPOLYGON\nSelect this icon (Multi-point Region) to pick surfaces inside a closed polygon. Each left mouse button click defines a vertex and a middle button click closes the polygon. Right click to cancel the last defined polygon vertex. 。\nCIRCLE\nSelect the surfaces inside the circle. Click the left mouse button and drag the mouse to define the center of a circle and its radius. 3\nFREE REGION\nSelect all surfaces located inside any region.",
      "metadata": {
        "id": "e7860bb55cb54ab18a82e3ac03a21eb3"
      }
    }
  },
  {
    "labels": [
      "功能_特性"
    ],
    "properties": {
      "id": "Tangent_Surfaces",
      "名称": "TANGENT SURFACES",
      "描述": "Select this option to automatically select the surfaces that are tangent to the selected surface."
    }
  },
  {
    "labels": [
      "功能_特性"
    ],
    "properties": {
      "id": "Spread",
      "名称": "SPREAD",
      "描述": "The selection is made by spreading it around. If the angle between the normal of the selected surface and that of its adjacent surface is not greater than the given angle, the adjacent surface will be selected."
    }
  },
  {
    "labels": [
      "Document"
    ],
    "properties": {
      "id": "0cd61d214971b424aead42a1fd744e80",
      "page_content": "TRACE\nThis option is used to facilitate other selection methods, and the position captured by the program will be highlighted on the screen. TANGENT SURFACES\nSelect this option to automatically select the surfaces that are tangent to the selected surface. SPREAD\nThe selection is made by spreading it around. If the angle between the normal of the selected surface and that of its adjacent surface is not greater than the given angle, the adjacent surface will be selected. EXCLUDE\nCheck this option to select the surfaces according to the method provided above.",
      "metadata": {
        "id": "0cd61d214971b424aead42a1fd744e80"
      }
    }
  },
  {
    "labels": [
      "Document"
    ],
    "properties": {
      "id": "58f2f7f54e70de17dd124752e0838849",
      "page_content": "The selected surfaces will be deselected. BY LAYER\nClick this button to display the Select Layer dialog, and all surfaces in the selected layer will be selected. BY DISPLAYED\nClick this button to select all surfaces that are currently displayed. INSIDE REGION\nCheck this option, and the program will select only surfaces inside the selection region. OUTSIDE REGION\nCheck this option, and the program will select only surfaces outside the selection region. CROSSING\nCheck this option, and the program will select surfaces that intersect with the boundary of the selection region.",
      "metadata": {
        "id": "58f2f7f54e70de17dd124752e0838849"
      }
    }
  },
  {
    "labels": [
      "操作样式"
    ],
    "properties": {
      "id": "Click_Lmb",
      "名称": "Click LMB",
      "描述": "Select the surface one by one."
    }
  },
  {
    "labels": [
      "操作样式"
    ],
    "properties": {
      "id": "Drag_Lmb",
      "名称": "Drag LMB",
      "描述": "Select the surface by the selection type."
    }
  },
  {
    "labels": [
      "Document"
    ],
    "properties": {
      "id": "17d461534c6122dfc308f8e88d87766b",
      "page_content": "When selecting at the display area:\nClick LMB to select the surface one by one. Drag the LMB to select the surface by the selection type. SHORTCUT\n$\\mathrm { C t r l + A }$ : Select all surfaces. Shift+LMB: Cancel the selected surfaces.",
      "metadata": {
        "id": "17d461534c6122dfc308f8e88d87766b"
      }
    }
  },
  {
    "labels": [
      "选择模式"
    ],
    "properties": {
      "id": "Select Element Mode",
      "名称": "SELECT ELEMENT MODE",
      "描述": "This mode is utilized to perform the selection operations relevant to the element. The Element Selection dialog is illustrated in the following figure, including the commonly used selection modes such as Pick, Box and so on."
    }
  },
  {
    "labels": [
      "Document"
    ],
    "properties": {
      "id": "36674e7bcba20bd9582c2249d915dac8",
      "page_content": "1.7.3 SELECT ELEMENT MODE\nThis mode is utilized to perform the selection operationsrelevant to the element. The Element Selection dialog is illustrated in the following figure, including the commonly used selection modes such as Pick, Box and so on.",
      "metadata": {
        "id": "36674e7bcba20bd9582c2249d915dac8"
      }
    }
  },
  {
    "labels": [
      "选择模式"
    ],
    "properties": {
      "id": "Pick Element",
      "名称": "PICK ELEMENT",
      "描述": "This is the default option for element selection. Select the entity directly inside the box from the Display Area with the mouse button. This approach can be used to activate the Trace and Spread options. This option is used to pick the elements on a surface."
    }
  },
  {
    "labels": [
      "Document"
    ],
    "properties": {
      "id": "f496ded2a663d34fbc7d022a78e6966f",
      "page_content": "八 PICK ELEMENT\nThis is the default option for element selection. Select the entity directly inside the box from the Display Area with the mouse button. This approach can be used to activate the Trace and Spread options. This option is used to pick the elements on a surface. W\nPOLYGON\nSelect this icon (Multi-point Region) to pick elements inside a closed polygon. Each left mouse button click defines a vertex and a middle button click closes the polygon. Right click to cancel the last defined polygon vertex. 5 FREE REGION\nSelect all elements located inside any region.",
      "metadata": {
        "id": "f496ded2a663d34fbc7d022a78e6966f"
      }
    }
  },
  {
    "labels": [
      "选择模式"
    ],
    "properties": {
      "id": "Circle_Selection",
      "描述": "Click the left mouse button and drag the mouse to define the center of a circle and its radius.",
      "名称": "Select the elements inside the circle."
    }
  },
  {
    "labels": [
      "选择模式"
    ],
    "properties": {
      "id": "Line_Selection",
      "描述": "This option is used to select elements inside the line, or the elements inside and intersecting with the line.",
      "名称": "TRACE"
    }
  },
  {
    "labels": [
      "选择模式"
    ],
    "properties": {
      "id": "Spread_Selection",
      "描述": "Select this option to pick elements by chained approach based on the spread angle that is the angle difference between the normal vector of an element and the normal vector of its adjacent elements.",
      "名称": "SPREAD"
    }
  },
  {
    "labels": [
      "Document"
    ],
    "properties": {
      "id": "6cee4187d604dbf3498e8bad085d613d",
      "page_content": "Select the elements inside the circle. Click the left mouse button and drag the mouse to define the center of a circle and its radius. This option is used to select elements inside the line, or the elements inside and intersecting with the line. TRACE\nThis option is used to facilitate other selection methods, and the position captured by the program will be highlighted on the screen. SPREAD\nSelect this option to pick elements by chained approach based on the spread angle that is the angle difference between the normal vector of an element and the normal vector of its adjacent elements.",
      "metadata": {
        "id": "6cee4187d604dbf3498e8bad085d613d"
      }
    }
  },
  {
    "labels": [
      "功能_特性"
    ],
    "properties": {
      "id": "User_Input_To_Adjust_Spread_Angle",
      "名称": "User input to adjust spread angle",
      "描述": "The user can input values to adjust the spread angle. If the angle formed by the normal vectors of the selected element and the adjacent element is less than the selected angle, the adjacent element is selected. This option can be activated only in Pick Element."
    }
  },
  {
    "labels": [
      "功能_特性"
    ],
    "properties": {
      "id": "Exclude_Option",
      "名称": "EXCLUDE Option",
      "描述": "Toggle on this option, and the user can select the elements according to the method provided above. The selected elements will be deselected."
    }
  },
  {
    "labels": [
      "用户界面元素"
    ],
    "properties": {
      "id": "By_Layer_Button",
      "名称": "BY LAYER Button",
      "描述": "Click this button to display the Select Layer dialog, and all elements in the selected layer will be selected."
    }
  },
  {
    "labels": [
      "Document"
    ],
    "properties": {
      "id": "f6ecd23173ac0da0d2ae2aebbcbe3f07",
      "page_content": "The user can input values to adjust the spread angle. If the angle formed by the normal vectors of the selected element and the adjacent element is less than the selected angle, the adjacent element is selected. This option can be activated only in Pick Element. EXCLUDE\nToggle on this option, and the user can select the elements according to the method provided above. The selected elements will be deselected. BY LAYER\nClick this button to display the Select Layer dialog, and all elements in the selected layer will be selected.",
      "metadata": {
        "id": "f6ecd23173ac0da0d2ae2aebbcbe3f07"
      }
    }
  },
  {
    "labels": [
      "对话框按钮"
    ],
    "properties": {
      "id": "Displaybutton",
      "名称": "BY DISPLAYED",
      "描述": "Click this button to select all elements that are currently displayed."
    }
  },
  {
    "labels": [
      "对话框按钮"
    ],
    "properties": {
      "id": "Insideregionoption",
      "名称": "INSIDE REGION",
      "描述": "Check this option, and the program will select only elements inside the selection region."
    }
  },
  {
    "labels": [
      "对话框按钮"
    ],
    "properties": {
      "id": "Outsideregionoption",
      "名称": "OUTSIDE REGION",
      "描述": "Check this option, and the program will select only elements outside the selection region."
    }
  },
  {
    "labels": [
      "对话框按钮"
    ],
    "properties": {
      "id": "Crossingoption",
      "名称": "CROSSING",
      "描述": "Check this option, and the program will select elements that intersect with the boundary of the selection region."
    }
  },
  {
    "labels": [
      "Document"
    ],
    "properties": {
      "id": "94509bc482385fcf01b1e9e53985b5dc",
      "page_content": "BY DISPLAYED\nClick this button to select all elements that are currently displayed. INSIDE REGION\nCheck this option, and the program will select only elements inside the selection region. OUTSIDE REGION\nCheck this option, and the program will select only elements outside the selection region. CROSSING\nCheck this option, and the program will select elements that intersect with the boundary of the selection region.",
      "metadata": {
        "id": "94509bc482385fcf01b1e9e53985b5dc"
      }
    }
  },
  {
    "labels": [
      "选择模式"
    ],
    "properties": {
      "id": "Select Node Mode",
      "名称": "SELECT NODE MODE",
      "描述": "This mode is utilized to perform the selection operations relevant to the node. The Node Selection dialog is illustrated in the following figure, including the commonly used selection modes such as Pick, Box and so on."
    }
  },
  {
    "labels": [
      "Document"
    ],
    "properties": {
      "id": "84df505bca6e41cf553317e66145541b",
      "page_content": "1.7.4 SELECT NODE MODE\nThis mode is utilized to perform the selection operations relevant to the node. The Node Selection dialog is illustrated in the following figure, including the commonly used selection modes such as Pick, Box and so on.",
      "metadata": {
        "id": "84df505bca6e41cf553317e66145541b"
      }
    }
  },
  {
    "labels": [
      "功能_特性"
    ],
    "properties": {
      "id": "Pick Node",
      "名称": "PICK NODE",
      "描述": "Select this icon to select a node using mouse cursor and/or holding the left mouse button and dragging the mouse cursor over the desired nodes to select multiple nodes."
    }
  },
  {
    "labels": [
      "Document"
    ],
    "properties": {
      "id": "42d12d1248d5f9f348d71caea64a0199",
      "page_content": "PICK NODE\nSelect this icon to select anode using mouse cursor and/or holding the left mouse button and dragging the mouse cursor over the desired nodes to select multiple nodes. POLYGON\nSelect this icon to pick nodes inside a polygon, or the nodes inside and intersecting with the polygon. Click the left mouse button in a sequence to define the polygon vertices. Click the right mouse button to reject the last point. Click the middle mouse button to complete polygon definition and node selection.",
      "metadata": {
        "id": "42d12d1248d5f9f348d71caea64a0199"
      }
    }
  },
  {
    "labels": [
      "选择模式"
    ],
    "properties": {
      "id": "Freehand",
      "名称": "FREEHAND",
      "描述": "Select this icon to pick nodes inside a free hand region, or the nodes inside and intersecting with the region."
    }
  },
  {
    "labels": [
      "Document"
    ],
    "properties": {
      "id": "babf04a0aeb4f9feff5f0b6282ebbaca",
      "page_content": "O\nCIRCLE\nSelect this icon to pick nodes inside a circle, or the nodes inside and intersecting with the circle. Click the left mouse button to define the center of the circle. Hold the left mouse button and drag the mouse to define the circle radius. Release the left mouse button to complete definition of circle and node selection. FREEHAND\nSelect this icon to pick nodes inside a free hand region, or the nodes inside and intersecting with the region.",
      "metadata": {
        "id": "babf04a0aeb4f9feff5f0b6282ebbaca"
      }
    }
  },
  {
    "labels": [
      "功能_特性"
    ],
    "properties": {
      "id": "Along_Edge",
      "名称": "ALONG EDGE",
      "描述": "This option is used to select the boundary nodes, in conjunction with the Stop Angle, and select those nodes on the edge that have a smaller angle with the selected boundary than the stop angle. When one boundary node is selected, all connected boundary nodes will be selected."
    }
  },
  {
    "labels": [
      "Document"
    ],
    "properties": {
      "id": "b109b6a4d8f33e0df68f1be86b7f378d",
      "page_content": "ALONG EDGE\nThis option is used to select the boundary nodes, in conjunction with the Stop Angle, and select those nodes on the edge that have a smaller angle with the selected boundary than the stop angle. The following figures illustrate the plate models constituted by the shell nodes. The Stop Angle is set to $9 1 ^ { \\circ }$ .When one boundary node is selected, all connected boundary nodes will be selected.",
      "metadata": {
        "id": "b109b6a4d8f33e0df68f1be86b7f378d"
      }
    }
  },
  {
    "labels": [
      "功能_特性"
    ],
    "properties": {
      "id": "Stop Angle",
      "名称": "Stop Angle",
      "描述": "The Stop Angle is set to $8 9 ^ { \\circ }$"
    }
  },
  {
    "labels": [
      "功能_特性"
    ],
    "properties": {
      "id": "Side Edge Node Selection",
      "名称": "Side Edge Node Selection",
      "描述": "When one node on the side edge is selected, only the nodes on the same boundary will be selected"
    }
  },
  {
    "labels": [
      "Document"
    ],
    "properties": {
      "id": "4cd4c2ea97b5f7e3707c32b36d60c37f",
      "page_content": "The Stop Angle is set to $8 9 ^ { \\circ }$ . When one node on the side edge is selected, only the nodes on the same boundary will be selected.",
      "metadata": {
        "id": "4cd4c2ea97b5f7e3707c32b36d60c37f"
      }
    }
  },
  {
    "labels": [
      "功能_特性"
    ],
    "properties": {
      "id": "Path",
      "名称": "PATH",
      "描述": "Select this icon to pick nodes that the mouse passes through."
    }
  },
  {
    "labels": [
      "功能_特性"
    ],
    "properties": {
      "id": "Front",
      "名称": "FRONT",
      "描述": "Select the node to activate this option. Toggle on this option to select the node nearest to the user."
    }
  },
  {
    "labels": [
      "Document"
    ],
    "properties": {
      "id": "930ad40b9f28f13c56eef0f4af4cdbaa",
      "page_content": "NOTE: The part boundary is not passed through by default with Along Edge. It enables the user to select the nodes of the adjacent part with the Cross Part Boundary option. PATH\nSelect this icon to pick nodes that the mouse passes through. TRACE\nThis option is used to facilitate other selection methods, and the position captured by the program will be highlighted on the screen. FRONT\nSelect the node to activate this option. Toggle on this option to select the node nearest to the user.",
      "metadata": {
        "id": "930ad40b9f28f13c56eef0f4af4cdbaa"
      }
    }
  },
  {
    "labels": [
      "Document"
    ],
    "properties": {
      "id": "8f146e565a17ae12ff16df1f34a0092e",
      "page_content": "SPREAD\nToggle on this option to pick nodes by chained approach based on the spread angle which is the angle difference between the normal vector of an element and the normal vector of its adjacent elements. The slider can be moved to adjust the spread angle. If the angle formed by the normal vectors of the selected element and the adjacent element is less than the selected angle, the adjacent node is selected. STOP ANGLE\nWhen Along Edge option is selected, this option will be activated.",
      "metadata": {
        "id": "8f146e565a17ae12ff16df1f34a0092e"
      }
    }
  },
  {
    "labels": [
      "功能_特性"
    ],
    "properties": {
      "id": "Selectnodesbyangle",
      "名称": "SelectNodesByAngle",
      "描述": "It is used to select nodes on the edge that have the smaller angle with the selected boundary than the stop angle."
    }
  },
  {
    "labels": [
      "功能_特性"
    ],
    "properties": {
      "id": "Toggleselectbyid",
      "名称": "ToggleSelectByID",
      "描述": "Toggle on this option to select one node or multiple nodes by ID, or a range of ID."
    }
  },
  {
    "labels": [
      "Document"
    ],
    "properties": {
      "id": "9a96e1f9cb1b936132997eb642da7b1c",
      "page_content": "It is used to select nodes on the edge that have the smaller angle with the selected boundary than the stop angle. BY ID\nToggle on this option to select one node or multiple nodes by ID, or a range of ID. As illustrated in the figures below.",
      "metadata": {
        "id": "9a96e1f9cb1b936132997eb642da7b1c"
      }
    }
  },
  {
    "labels": [
      "选择模式"
    ],
    "properties": {
      "id": "Inside",
      "名称": "INSIDE",
      "描述": "Select this option to select the nodes inside the region."
    }
  },
  {
    "labels": [
      "选择模式"
    ],
    "properties": {
      "id": "Outside",
      "名称": "OUTSIDE",
      "描述": "Select this option to select the nodes outside the region."
    }
  },
  {
    "labels": [
      "选择模式"
    ],
    "properties": {
      "id": "Select_Coordinate_Mode",
      "名称": "SELECT COORDINATE MODE",
      "描述": "This mode is utilized to perform the selection operations relevant to the coordinate. The coordinate point means the position, which refers to the coordinate position of the node, or the point on the line, surface and the work plane, and various selection methods will be introduced in detail in this section."
    }
  },
  {
    "labels": [
      "Document"
    ],
    "properties": {
      "id": "a8964e4d1ac23bc2ddf016cb1b851de3",
      "page_content": "INSIDE\nSelect this option to select the nodes inside the region.\nOUTSIDE\nSelect this option to select the nodes outside the region.\nCROSSING\nSelect nodes where the mouse passed. It is unusable when select node.\n1.7.5 SELECT COORDINATE MODE\nThis mode is utilized to perform the selection operations relevant to the coordinate. The coordinate point means the position, which refers to the coordinate position of the node, or the point on the line, surface and the work plane, and various selection methods will be introduced in detail in this section.",
      "metadata": {
        "id": "a8964e4d1ac23bc2ddf016cb1b851de3"
      }
    }
  },
  {
    "labels": [
      "功能_特性"
    ],
    "properties": {
      "id": "By_Cursor",
      "名称": "BY CURSOR",
      "描述": "Select a point or node with the mouse button. The node, point, endpoint of a line, any point location on the line, midpoint of a line, center of a circle or an arc, any point location on the surface and point location on the current workplane nearest to the cursor location will be automatically captured. Each method has its corresponding icon, and the corresponding option will be activated by clicking on its icon. Once again, the option will be cancelled. It enables the user to select one or multi methods by activating one or more icons simultaneously."
    }
  },
  {
    "labels": [
      "Document"
    ],
    "properties": {
      "id": "8ffaed0da2477a4431b459b318bc97bf",
      "page_content": "BY CURSOR\nSelect a point or node with the mouse button. The node, point, endpoint of a line, any point location on the line, midpoint of a line, center of a circle or an arc, any point location on the surface and point location on the current workplane nearest to the cursor location will be automatically captured. Each method has its corresponding icon, and the corresponding option will be activated by clicking on its icon. Once again, the option will be cancelled. It enables the user to select one or multi methods by activating one or more icons simultaneously.",
      "metadata": {
        "id": "8ffaed0da2477a4431b459b318bc97bf"
      }
    }
  },
  {
    "labels": [
      "功能_特性"
    ],
    "properties": {
      "id": "Snap_On_Node",
      "名称": "SNAP ON NODE",
      "描述": "Select the existing nodes in the model."
    }
  },
  {
    "labels": [
      "功能_特性"
    ],
    "properties": {
      "id": "Snap_On_Shape",
      "名称": "SNAP ON SHAPE",
      "描述": "Select the existing point in the model, point on the line and any position on the surface. This method is decided by comparing the distance between location picked by the user with the mouse and the Endpoint, Line and Surface. It enables the user to select the coordinate on the surface under the Shading mode with this approach. If the current mode is Wireframe, it enables the user to switch to the Shading mode."
    }
  },
  {
    "labels": [
      "Document"
    ],
    "properties": {
      "id": "fae83c842b9797800c3e1730b7aa4e05",
      "page_content": "米\nSNAP ON NODE\nSelect the existing nodes in the model. SNAP ON SHAPE\nSelect the existing point in the model, point on the line and any position on the surface. This method is decided by comparing the distance between location picked by the user with the mouse and the Endpoint, Line and Surface. It enables the user to select the coordinate on the surface under the Shading mode with this approach. If the current mode is Wireframe, it enables the user to switch to the Shading mode.",
      "metadata": {
        "id": "fae83c842b9797800c3e1730b7aa4e05"
      }
    }
  },
  {
    "labels": [
      "选择模式"
    ],
    "properties": {
      "id": "Shading",
      "名称": "Shading",
      "描述": "If the user has never switched to the Shading mode, eta/DYNAFORM will automatically prepare the surface selection data to select the coordinates on the surface under the current mode."
    }
  },
  {
    "labels": [
      "功能_特性"
    ],
    "properties": {
      "id": "Snap_On_Line",
      "名称": "SNAP ON LINE",
      "描述": "Select the point of a line."
    }
  },
  {
    "labels": [
      "功能_特性"
    ],
    "properties": {
      "id": "Snap_On_Surface",
      "名称": "SNAP ON SURFACE",
      "描述": "Select the point of a surface."
    }
  },
  {
    "labels": [
      "Document"
    ],
    "properties": {
      "id": "f7664453f70c4301d58c70c9d11cc529",
      "page_content": "If the user has never switched to the Shading mode, eta/DYNAFORM will automatically prepare the surface selection data to select the coordinates on the surface under the current mode\nNOTE: As the system automatically switches the display mode, a certain preparation time is needed for this method. It enables the user to select the coordinates on the surface with the prompt message: “Prepare surface selection data done.” on the message window. SNAP ON LINE\nSelect the point of a line. SNAP ON SURFACE\nSelect the point of a surface.",
      "metadata": {
        "id": "f7664453f70c4301d58c70c9d11cc529"
      }
    }
  },
  {
    "labels": [
      "功能_特性"
    ],
    "properties": {
      "id": "Snap On Endpoint",
      "名称": "SNAP ON ENDPOINT",
      "描述": "Select the endpoint of a line."
    }
  },
  {
    "labels": [
      "功能_特性"
    ],
    "properties": {
      "id": "Snap On Middle Point",
      "名称": "SNAP ON MIDDLE POINT",
      "描述": "Select the middle point of a line."
    }
  },
  {
    "labels": [
      "Document"
    ],
    "properties": {
      "id": "f908b20d638fd64a04013992f9480a31",
      "page_content": "SNAP ON ENDPOINT\nSelect the endpoint of a line.\nSNAP ON MIDDLE POINT\nSelect the middle point of a line.",
      "metadata": {
        "id": "f908b20d638fd64a04013992f9480a31"
      }
    }
  },
  {
    "labels": [
      "功能_特性"
    ],
    "properties": {
      "id": "Snap On Center",
      "名称": "SNAP ON CENTER",
      "描述": "Select the center of a circle or an arc."
    }
  },
  {
    "labels": [
      "功能_特性"
    ],
    "properties": {
      "id": "Snap On Current Ref. Plane",
      "名称": "SNAP ON CURRENT REF. PLANE",
      "描述": "Select any point location on the current work plane. Click this icon to activate the Current View Plane and the Grid options."
    }
  },
  {
    "labels": [
      "功能_特性"
    ],
    "properties": {
      "id": "Current View Plane",
      "名称": "Current View Plane",
      "描述": "All selected points will be on the current view plane set by the user with this activated option."
    }
  },
  {
    "labels": [
      "功能_特性"
    ],
    "properties": {
      "id": "Show Grid/Snap Grid",
      "名称": "Show Grid/Snap Grid",
      "描述": "It displays and snaps the grid on the current work plane with this activated option. These two options can be activated only when Snap On Current Ref. Plane is activated and the Current View Plane option is toggled off."
    }
  },
  {
    "labels": [
      "Document"
    ],
    "properties": {
      "id": "d9c942c2e89359c15ba2ec0d285a63b7",
      "page_content": "SNAP ON CENTER\nSelect the center of a circle or an arc. 长\nSNAP ON CURRENT REF. PLANE\nSelectany point location on the current work plane. Click this icon to activate the Current View Plane and the Grid options. Current View Plane\nAll selected points will be on the current view plane set by the user with this activated option. Show Grid/Snap Grid\nIt displays and snaps the grid on the current work plane with this activated option. These two options can be activated only when Snap On Current Ref. Planeis activated and the Current View Plane option is toggled off.",
      "metadata": {
        "id": "d9c942c2e89359c15ba2ec0d285a63b7"
      }
    }
  },
  {
    "labels": [
      "功能_特性"
    ],
    "properties": {
      "id": "Displays_And_Snaps_Grid_On_Current_Work_Plane",
      "名称": "Displays and Snaps Grid on Current Work Plane",
      "描述": "When these two options are selected, it displays and snaps the grid on the current work plane."
    }
  },
  {
    "labels": [
      "Document"
    ],
    "properties": {
      "id": "74b832649a9d12ab7c971b64eff77103",
      "page_content": "When these two options are selected, it displays and snaps the grid on the current work plane.",
      "metadata": {
        "id": "74b832649a9d12ab7c971b64eff77103"
      }
    }
  },
  {
    "labels": [
      "用户界面元素"
    ],
    "properties": {
      "id": "Model Tree",
      "名称": "Model Tree",
      "描述": "Model Tree provides great convenience for the user to operate eta/DYNAFORM. It consists of three types: GEOMETRY, PROJECT and VIEWER."
    }
  },
  {
    "labels": [
      "模型树类型"
    ],
    "properties": {
      "id": "Geometry",
      "名称": "Geometry",
      "描述": "It is used to manage the operation for geometry model."
    }
  },
  {
    "labels": [
      "模型树类型"
    ],
    "properties": {
      "id": "Curve",
      "名称": "Curve"
    }
  },
  {
    "labels": [
      "模型树类型"
    ],
    "properties": {
      "id": "Surface",
      "名称": "Surface"
    }
  },
  {
    "labels": [
      "模型树类型"
    ],
    "properties": {
      "id": "Element",
      "名称": "Element"
    }
  },
  {
    "labels": [
      "Document"
    ],
    "properties": {
      "id": "5b9658e99de185edcc0d0e50b099a367",
      "page_content": "1.8 MODEL TREE\nModel Tree provides great convenience for the user to operate eta/DYNAFORM. It consists of three types: GEOMETRY, PROJECT and VIEWER.\n1.8.1 MODEL TREE FOR GEOMETRY\nIt is used to manage the operation for geometry model. The model tree contains the sub branches: Curve, Surface, and Element.\nFor detailed information, please refer to Chapter 5.",
      "metadata": {
        "id": "5b9658e99de185edcc0d0e50b099a367"
      }
    }
  },
  {
    "labels": [
      "模型树类型"
    ],
    "properties": {
      "id": "Model_Tree_For_Project",
      "名称": "MODEL TREE FOR PROJECT",
      "描述": "It is used to manage the operation for BSE and FS projects. The model tree contains the sub branches, including the list of Stage, Blank, Tools, Drawbeads, Parts, Outline, Nesting, etc. operations for project."
    }
  },
  {
    "labels": [
      "项目"
    ],
    "properties": {
      "id": "Bse_Projects",
      "名称": "BSE projects"
    }
  },
  {
    "labels": [
      "项目"
    ],
    "properties": {
      "id": "Fs_Projects",
      "名称": "FS projects"
    }
  },
  {
    "labels": [
      "Document"
    ],
    "properties": {
      "id": "95ee12315ca97253d4bd4366eb9bd13a",
      "page_content": "1.8.2 MODEL TREE FOR PROJECT\nIt is used to manage the operation for BSE and FS projects. The model tree contains the sub branches, including the list of Stage, Blank, Tools, Drawbeads, Parts, Outline, Nesting, etc. operations for project.\nFor detailed information, please refer to the following Chapters.",
      "metadata": {
        "id": "95ee12315ca97253d4bd4366eb9bd13a"
      }
    }
  },
  {
    "labels": [
      "功能_特性"
    ],
    "properties": {
      "id": "Model_Tree_For_Viewer",
      "名称": "MODEL TREE FOR VIEWER",
      "描述": "It is used to manage the display of imported geometry, tools and curves.It consists of Geom/Tool and Curve tab with multiple sub branches for imported geometry, tools of Sheet Forming and BSE."
    }
  },
  {
    "labels": [
      "功能_特性"
    ],
    "properties": {
      "id": "On/Off_Control",
      "名称": "ON/OFF CONTROL",
      "描述": "This function is utilized to manage the model tree viewer. The user can click on the button to fold/unfold the tree."
    }
  },
  {
    "labels": [
      "Document"
    ],
    "properties": {
      "id": "c8648ec99658132bbd351913dd545361",
      "page_content": "1.8.3 MODEL TREE FOR VIEWER\nIt is used to manage the display of imported geometry, tools and curves.It consists of Geom/Tool and Curve tab with multiple sub branches for imported geometry, tools of Sheet Forming and BSE. On/Off Control Geom/Tool Curve \n-Geometry \n·Sheet Forming ..Blank OP10 .die .-punch ..inder ·OP30 ..ad ..post .CAM1\nON/OFF CONTROL\nThis function is utilized to manage the model tree viewer. The user can click on the button to fold/unfold the tree. Click to fold the model tree. Click to unfold the model tree.",
      "metadata": {
        "id": "c8648ec99658132bbd351913dd545361"
      }
    }
  },
  {
    "labels": [
      "功能_特性"
    ],
    "properties": {
      "id": "Geom/Tool",
      "名称": "GEOM/TOOL",
      "描述": "This function is utilized to manage all related geometry and tools."
    }
  },
  {
    "labels": [
      "项目"
    ],
    "properties": {
      "id": "Import Geometry",
      "名称": "IMPORT GEOMETRY",
      "描述": "All imported surfaces and mesh are listed."
    }
  },
  {
    "labels": [
      "项目"
    ],
    "properties": {
      "id": "Sheet Forming",
      "名称": "SHEET FORMING",
      "描述": "All defined tools related to Sheet Forming are listed."
    }
  },
  {
    "labels": [
      "项目"
    ],
    "properties": {
      "id": "Bse",
      "名称": "BSE",
      "描述": "All defined parts and results related to BSE are listed."
    }
  },
  {
    "labels": [
      "Document"
    ],
    "properties": {
      "id": "9863c06c971e77275ed0559483b06210",
      "page_content": "GEOM/TOOL\nThis function is utilized to manage all related geometry and tools. It consists of IMPORT GEOMETRY, SHEET FORMING and BSE projects. IMPORT GEOMETRY\nAll imported surfaces and mesh are listed. SHEET FORMING\nAll defined tools related to Sheet Forming are listed. BSE\nAll defined parts and results related to BSE are listed. NOTE: The tree displays an active SHEET FORMING or BSE projects. For example, BSE project is disabled when users are working on Sheet Forming project. CURVE\nThis function is utilized to manage the display of all listed curves.",
      "metadata": {
        "id": "9863c06c971e77275ed0559483b06210"
      }
    }
  },
  {
    "labels": [
      "功能_特性"
    ],
    "properties": {
      "id": "Created Curves",
      "名称": "Created Curves"
    }
  },
  {
    "labels": [
      "功能_特性"
    ],
    "properties": {
      "id": "Section Cut",
      "名称": "Section Cut"
    }
  },
  {
    "labels": [
      "功能_特性"
    ],
    "properties": {
      "id": "Import Curves",
      "名称": "Import Curves"
    }
  },
  {
    "labels": [
      "功能_特性"
    ],
    "properties": {
      "id": "Bse Curves",
      "名称": "BSE Curves"
    }
  },
  {
    "labels": [
      "功能_特性"
    ],
    "properties": {
      "id": "On/Off Control",
      "名称": "On/Off Control"
    }
  },
  {
    "labels": [
      "功能_特性"
    ],
    "properties": {
      "id": "Geom/Tool Curve",
      "名称": "Geom/Tool Curve"
    }
  },
  {
    "labels": [
      "Document"
    ],
    "properties": {
      "id": "c014195492adcc38ec48a97ef8b356a0",
      "page_content": "The list includes Created Curves, Section Cut, Import Curves, Sheet Forming and BSE Curves. On/Off Control Geom/Tool Curve - Created Curv es i·Imported Curves 8SE -Part 1 ...DFD",
      "metadata": {
        "id": "c014195492adcc38ec48a97ef8b356a0"
      }
    }
  },
  {
    "labels": [
      "功能_特性"
    ],
    "properties": {
      "id": "Online Help",
      "名称": "ONLINE HELP"
    }
  },
  {
    "labels": [
      "Document"
    ],
    "properties": {
      "id": "20e4391d9e751ee0e5e943021d318749",
      "page_content": "1.9 HELP\nThis menu consists of such information as the online help, license control, version number and contact support for eta/DYNAFORM. The user can view the online help and version information and manage the license at any time.\n1.9.1 ONLINE HELP",
      "metadata": {
        "id": "20e4391d9e751ee0e5e943021d318749"
      }
    }
  },
  {
    "labels": [
      "功能_特性"
    ],
    "properties": {
      "id": "在线帮助功能",
      "名称": "在线帮助功能",
      "描述": "用户可以点击该菜单查看在线帮助文档，以获得使用该软件的帮助，或者在遇到问题时获取支持。"
    }
  },
  {
    "labels": [
      "修饰键"
    ],
    "properties": {
      "id": "F1",
      "名称": "F1",
      "描述": "可作为快捷键用于激活在线帮助功能。"
    }
  },
  {
    "labels": [
      "软件"
    ],
    "properties": {
      "id": "Eta/Dynaform7.2",
      "名称": "eta/DYNAFORM7.2"
    }
  },
  {
    "labels": [
      "Document"
    ],
    "properties": {
      "id": "3fc313eb94863e06886d8e7ef65e3be3",
      "page_content": "The user can click this menu to view the online help documents to get help on how to use this software when the user encounters a problem. Meanwhile, the shortcut key F1 can also be used to activate this function. eta/DYNAFORM7.2 \n面 国 ?",
      "metadata": {
        "id": "3fc313eb94863e06886d8e7ef65e3be3"
      }
    }
  },
  {
    "labels": [
      "用户界面元素"
    ],
    "properties": {
      "id": "包业国",
      "名称": "包业国"
    }
  },
  {
    "labels": [
      "功能_特性"
    ],
    "properties": {
      "id": "Introduction",
      "名称": "INTRODUCTION",
      "描述": "软件简介"
    }
  },
  {
    "labels": [
      "功能_特性"
    ],
    "properties": {
      "id": "Structuraloverview",
      "名称": "STRUCTURALOVERVIEW"
    }
  },
  {
    "labels": [
      "功能_特性"
    ],
    "properties": {
      "id": "Getting_Started",
      "名称": "GETTING STARTED"
    }
  },
  {
    "labels": [
      "功能_特性"
    ],
    "properties": {
      "id": "View_Project",
      "名称": "VIEW PROJECT"
    }
  },
  {
    "labels": [
      "功能_特性"
    ],
    "properties": {
      "id": "Geometrymanager",
      "名称": "GEOMETRYMANAGER",
      "描述": "最大化传统CAE技术以减少产品开发中的原型成本和提前期"
    }
  },
  {
    "labels": [
      "功能_特性"
    ],
    "properties": {
      "id": "Ace_Engineering",
      "名称": "ACE ENGINEERING"
    }
  },
  {
    "labels": [
      "功能_特性"
    ],
    "properties": {
      "id": "Sheetforming",
      "名称": "SHEETFORMING"
    }
  },
  {
    "labels": [
      "功能_特性"
    ],
    "properties": {
      "id": "Tubeforming",
      "名称": "TUBEFORMING",
      "描述": "涉及碰撞安全性、乘员安全性、水下爆炸以及金属板成型"
    }
  },
  {
    "labels": [
      "Document"
    ],
    "properties": {
      "id": "d392a495f2dfc32caaed6c11611afd47",
      "page_content": "包 业 国 \nHide Locate Back Stop Refresh Home Print Qptions INTRODUCTION 00 DINTRODUCTION \n田 STRUCTURALOVERVIEW etDYAFORsesealedeTI \nGETTING STARTED oftareombshefalisofDAredPrendorocefctTesealsdesde \nVEW PROJECT feeededeogeee andtledeWihspsndtltoaORelnsfeefprob \nGEOMETRYMANAGER maximizestraditionalCAEtechniquestoreduceprototyping costsandleadtimeforproduct development. ACEZENGNEERING etDAFORededI \nSHEETFORMING lisdeedbfodohdeeedftsc \nTUBEFORMING crashworthiness,occupant safety,underwaterexplosion,and sheet metalforming.",
      "metadata": {
        "id": "d392a495f2dfc32caaed6c11611afd47"
      }
    }
  },
  {
    "labels": [
      "软件"
    ],
    "properties": {
      "id": "Eta/Dynaform 7.1",
      "名称": "eta/DYNAFORM 7.1",
      "描述": "eta/DYNAFORM 7.1 is available for Windows 10/11 x64 operating systems. Special features include the technological parameter for analysis and calculation, simplifying the analysis process. The module Forming completes setups for blank forming analysis, including laser tailor-welded blank and multi-stage forming."
    }
  },
  {
    "labels": [
      "文件格式"
    ],
    "properties": {
      "id": "Index File Format",
      "名称": "INDEX FILE FORMAT"
    }
  },
  {
    "labels": [
      "Document"
    ],
    "properties": {
      "id": "5f5d80fb3095a02ae6fb290a06f32c94",
      "page_content": "田REPORT etD APPENDIXA HARDWAREANDSOFTV predicting SkidMark and Springback effects. 田APPENDIXB INDEXFILEFORMAT eta/DYNAFORM7.1isavailableforWindows10/11x64operating systems. Special featuresof eta/DYNAFORM7.1include: TheFoeroopleeetfsfobseighgprocssroesprovdedeodfoet geneteteeledoe techolgicalpaeemakasiefrhsetpeetifoctalecholseleetspldefhatd technologicalparameterfortheanalysisandcalculation，whichgreatlysimplifiestheanalysisprocess． Themodleeeeeslehe Formingcompletesvarioussetupsforblankforminganalysisinchdinglasertailor-weldedblankandmulti-stageforming.",
      "metadata": {
        "id": "5f5d80fb3095a02ae6fb290a06f32c94"
      }
    }
  },
  {
    "labels": [
      "功能_特性"
    ],
    "properties": {
      "id": "License Roaming",
      "名称": "LICENSE ROAMING",
      "描述": "License Roaming is used to enable a floating license to roam to a system that is disconnected to the network. The resulting license can be used for the number of days specified when the license was set to roam, and it can be checked back automatically. In addition, the user can return the roamed license back to the license pool early when desired."
    }
  },
  {
    "labels": [
      "Document"
    ],
    "properties": {
      "id": "fc218e5f5dd6457a9f3d533a66257988",
      "page_content": "1.9.2 LICENSE ROAMING\nLicense Roaming is used to enable a floating license to roam to a system that is disconnected to the network. The resulting license can be used for the number of days specified when the license was set to roam, and it can be checked back automatically. In addition, the user can return the roamed license back to the license pool early when desired. In License Roaming of eta/DYNAFORM, it lists all the products available in the license. Roam: Select the desired products and click the Roam button. The licenses will be roamed on the client (the roaming machine).",
      "metadata": {
        "id": "fc218e5f5dd6457a9f3d533a66257988"
      }
    }
  },
  {
    "labels": [
      "用户界面元素"
    ],
    "properties": {
      "id": "Roam All",
      "名称": "Roam All",
      "描述": "The user can click the Roam All button to roam all products."
    }
  },
  {
    "labels": [
      "功能_特性"
    ],
    "properties": {
      "id": "Roaming Days",
      "名称": "Roaming Days",
      "描述": "The number of days specified. The maximum roaming day is 7."
    }
  },
  {
    "labels": [
      "Document"
    ],
    "properties": {
      "id": "a4c8ca433812c6b3309339607c9b7ad0",
      "page_content": "The user can also click the Roam All button to roam all products. Roaming Days: The number of days specified. The maximum roaming day is 7.",
      "metadata": {
        "id": "a4c8ca433812c6b3309339607c9b7ad0"
      }
    }
  },
  {
    "labels": [
      "许可"
    ],
    "properties": {
      "id": "Df_Formability",
      "名称": "df_formability",
      "描述": "Licensed to ETA, Node-locked license, Expiration Date: 31-dec-2024"
    }
  },
  {
    "labels": [
      "许可"
    ],
    "properties": {
      "id": "Df_Bse",
      "名称": "df_bse",
      "描述": "Licensed to ETA, Node-locked license, Expiration Date: 31-dec-2024"
    }
  },
  {
    "labels": [
      "许可"
    ],
    "properties": {
      "id": "Df_Bse_Outline",
      "名称": "df_bse_outline",
      "描述": "Licensed to ETA, Node-locked license, Expiration Date: 31-dec-2024"
    }
  },
  {
    "labels": [
      "许可"
    ],
    "properties": {
      "id": "Df_Bse_Nesting",
      "名称": "df_bse_nesting",
      "描述": "Licensed to ETA, Node-locked license, Expiration Date: 31-dec-2024"
    }
  },
  {
    "labels": [
      "许可"
    ],
    "properties": {
      "id": "Df_Bse_Unfold_Trimline",
      "名称": "df_bse_unfold_trimline",
      "描述": "Licensed to ETA, Node-locked license, Expiration Date: 31-dec-2024"
    }
  },
  {
    "labels": [
      "许可"
    ],
    "properties": {
      "id": "Df_Trimlndev",
      "名称": "df_trimlndev",
      "描述": "Licensed to ETA, Node-locked license, Expiration Date: 31-dec-2024"
    }
  },
  {
    "labels": [
      "许可"
    ],
    "properties": {
      "id": "Df_Hotform",
      "名称": "df_hotform",
      "描述": "Licensed to ETA, Node-locked license, Expiration Date: 31-dec-2024"
    }
  },
  {
    "labels": [
      "许可"
    ],
    "properties": {
      "id": "Df_Tubebend",
      "名称": "df_tubebend",
      "描述": "Licensed to ETA, Node-locked license, Expiration Date: 31-dec-2024"
    }
  },
  {
    "labels": [
      "许可"
    ],
    "properties": {
      "id": "Df_Optimization",
      "名称": "df_optimization",
      "描述": "Licensed to ETA, Node-locked license, Expiration Date: 31-dec-2024"
    }
  },
  {
    "labels": [
      "许可"
    ],
    "properties": {
      "id": "Df_Die_Face_Design",
      "名称": "df_die_face_design",
      "描述": "Licensed to ETA, Node-locked license, Expiration Date: 31-dec-2024"
    }
  },
  {
    "labels": [
      "许可"
    ],
    "properties": {
      "id": "Df_Die_Simulation",
      "名称": "df_die_simulation",
      "描述": "Licensed to ETA, Node-locked license, Expiration Date: 31-dec-2024"
    }
  },
  {
    "labels": [
      "许可"
    ],
    "properties": {
      "id": "Df_Ssr",
      "名称": "df_ssr",
      "描述": "Licensed to ETA, Node-locked license, Expiration Date: 31-dec-2024"
    }
  },
  {
    "labels": [
      "许可"
    ],
    "properties": {
      "id": "Df_Smth",
      "名称": "df_smth",
      "描述": "Licensed to ETA, Node-locked license, Expiration Date: 31-dec-2024"
    }
  },
  {
    "labels": [
      "许可"
    ],
    "properties": {
      "id": "Df_Dsi",
      "名称": "df_dsi",
      "描述": "Licensed to ETA, Node-locked license, Expiration Date: 31-dec-2024"
    }
  },
  {
    "labels": [
      "许可"
    ],
    "properties": {
      "id": "Df_Sheet_Drop_Test",
      "名称": "df_sheet_drop_test",
      "描述": "Licensed to ETA, Node-locked license, Expiration Date: 31-dec-2024"
    }
  },
  {
    "labels": [
      "许可"
    ],
    "properties": {
      "id": "Df_Assembly_Bse",
      "名称": "df_assembly_bse",
      "描述": "Licensed to ETA, Node-locked license, Expiration Date: 31-dec-2024"
    }
  },
  {
    "labels": [
      "许可"
    ],
    "properties": {
      "id": "Io_Nx",
      "名称": "io_nx",
      "描述": "Licensed to ETA, Node-locked license, Expiration Date: 31-dec-2024"
    }
  },
  {
    "labels": [
      "许可"
    ],
    "properties": {
      "id": "Reporter",
      "名称": "reporter",
      "描述": "Licensed to ETA, Node-locked license, Expiration Date: 31-dec-2024"
    }
  },
  {
    "labels": [
      "许可"
    ],
    "properties": {
      "id": "Roaming",
      "名称": "Roaming",
      "描述": "Roam license with 7 days availability. License will automatically return at the end of the operation."
    }
  },
  {
    "labels": [
      "Document"
    ],
    "properties": {
      "id": "1a15b2868af7d0186c18cb5c97e7f5ca",
      "page_content": "LicenseLicensed toETAAvailable LicenseProduct NameTypeExpiration Actiondf_formabilityNode-locked31-dec-2024df_bseNode-locked 31-dec-2024df_bse_outlineNode-locked31-dec-2024df_bse_nestingNode-locked31-dec-2024df_bse_unfold_trimlineNode-locked31-dec-2024df_trimlndevNode-locked31-dec-2024df_hotformNode-locked31-dec-2024df_tubebendNode-locked 31-dec-2024df_optimizationNode-locked31-dec-2024df_die_face_designNode-locked31-dec-2024df_die_simulationNode-locked31-dec-2024df_ssrNode-locked31-dec-2024df_smthNode-locked31-dec-2024df_dsiNode-locked31-dec-2024df_sheet_drop_testNode-locked31-dec-2024df_assembly_bseNode-locked31-dec-2024io_nxNode-locked31-dec-2024reporterNode-locked31-dec-2024Roaming7 daysRoam AllReturn All\nReturn License\nWhen the license is set to Roam, the license will be checked back automatically at the end of this operation.",
      "metadata": {
        "id": "1a15b2868af7d0186c18cb5c97e7f5ca"
      }
    }
  },
  {
    "labels": [
      "许可"
    ],
    "properties": {
      "id": "License",
      "名称": "license",
      "描述": "The roamed license will be returned to the license pool on the server."
    }
  },
  {
    "labels": [
      "对话框按钮"
    ],
    "properties": {
      "id": "Return",
      "名称": "Return",
      "描述": "Return the license before the roaming time has expired."
    }
  },
  {
    "labels": [
      "对话框按钮"
    ],
    "properties": {
      "id": "Return All",
      "名称": "Return All",
      "描述": "Return all licenses before the roaming time has expired."
    }
  },
  {
    "labels": [
      "Document"
    ],
    "properties": {
      "id": "d5f8866da38d84ad768ca01d410503f9",
      "page_content": "If you prefer to return the license before the roaming time has expired, reconnect the system to the network (so that it can contact the original license server), and click Return or Return All button. The roamed license will be returned to the license pool on the server.",
      "metadata": {
        "id": "d5f8866da38d84ad768ca01d410503f9"
      }
    }
  },
  {
    "labels": [
      "功能_特性"
    ],
    "properties": {
      "id": "1.9.3 Version",
      "名称": "1.9.3 VERSION",
      "描述": "This function is utilized to display various software information, including the version number, copyright and contact support, etc."
    }
  },
  {
    "labels": [
      "Document"
    ],
    "properties": {
      "id": "668694d683100c39654fcd9c0a49d7ed",
      "page_content": "1.9.3 VERSION\nThis function is utilized to display various software information, including the version number, copyright and contact support, etc.",
      "metadata": {
        "id": "668694d683100c39654fcd9c0a49d7ed"
      }
    }
  }
]

    # 关系数据
    relationships_data = [
  {
    "source_id": "Eta/Dynaform",
    "source_labels": [
      "软件"
    ],
    "target_id": "Geometry Manager",
    "target_labels": [
      "模块"
    ],
    "type": "包含模块",
    "properties": {}
  },
  {
    "source_id": "Eta/Dynaform",
    "source_labels": [
      "软件"
    ],
    "target_id": "Result",
    "target_labels": [
      "模块"
    ],
    "type": "包含模块",
    "properties": {}
  },
  {
    "source_id": "Eta/Dynaform",
    "source_labels": [
      "软件"
    ],
    "target_id": "Ls-Dyna",
    "target_labels": [
      "软件"
    ],
    "type": "引用",
    "properties": {}
  },
  {
    "source_id": "381a4d53dd74c016568b7f9119925fec",
    "source_labels": [
      "Document"
    ],
    "target_id": "Eta/Dynaform",
    "target_labels": [
      "软件"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "381a4d53dd74c016568b7f9119925fec",
    "source_labels": [
      "Document"
    ],
    "target_id": "Geometry Manager",
    "target_labels": [
      "模块"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "381a4d53dd74c016568b7f9119925fec",
    "source_labels": [
      "Document"
    ],
    "target_id": "Result",
    "target_labels": [
      "模块"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "381a4d53dd74c016568b7f9119925fec",
    "source_labels": [
      "Document"
    ],
    "target_id": "Ls-Dyna",
    "target_labels": [
      "软件"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "867125a49928c942920e6e44ec57b162",
    "source_labels": [
      "Document"
    ],
    "target_id": "Menu Bar",
    "target_labels": [
      "用户界面元素"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "ea1ffdee4e548f953b1726c614e2eca9",
    "source_labels": [
      "Document"
    ],
    "target_id": "Datageometry View",
    "target_labels": [
      "用户界面元素"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "ea1ffdee4e548f953b1726c614e2eca9",
    "source_labels": [
      "Document"
    ],
    "target_id": "Utilities",
    "target_labels": [
      "用户界面元素"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "ea1ffdee4e548f953b1726c614e2eca9",
    "source_labels": [
      "Document"
    ],
    "target_id": "Resultreporthelp",
    "target_labels": [
      "用户界面元素"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "ea1ffdee4e548f953b1726c614e2eca9",
    "source_labels": [
      "Document"
    ],
    "target_id": "Projectimports/Exports Data To/From Eta/Dynaform.Bse",
    "target_labels": [
      "功能_特性"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "ea1ffdee4e548f953b1726c614e2eca9",
    "source_labels": [
      "Document"
    ],
    "target_id": "Blank Size Engineering",
    "target_labels": [
      "模块"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "ea1ffdee4e548f953b1726c614e2eca9",
    "source_labels": [
      "Document"
    ],
    "target_id": "Die Face Design",
    "target_labels": [
      "模块"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "1ad1e13c282c91767ef1d3e72546f9e4",
    "source_labels": [
      "Document"
    ],
    "target_id": "Formability Simulation",
    "target_labels": [
      "模块"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "1ad1e13c282c91767ef1d3e72546f9e4",
    "source_labels": [
      "Document"
    ],
    "target_id": "Tube Forming",
    "target_labels": [
      "模块"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "a5d8624351dcbab678136807ba3c49a9",
    "source_labels": [
      "Document"
    ],
    "target_id": "Process_Module",
    "target_labels": [
      "模块"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "a5d8624351dcbab678136807ba3c49a9",
    "source_labels": [
      "Document"
    ],
    "target_id": "Data_Manager",
    "target_labels": [
      "模块"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "a5d8624351dcbab678136807ba3c49a9",
    "source_labels": [
      "Document"
    ],
    "target_id": "Geometry_Manager",
    "target_labels": [
      "模块"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "a5d8624351dcbab678136807ba3c49a9",
    "source_labels": [
      "Document"
    ],
    "target_id": "View",
    "target_labels": [
      "功能_特性"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "4562b3d74deb0089b00a742e67b170cb",
    "source_labels": [
      "Document"
    ],
    "target_id": "Utilities",
    "target_labels": [
      "功能_特性"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "4562b3d74deb0089b00a742e67b170cb",
    "source_labels": [
      "Document"
    ],
    "target_id": "Result",
    "target_labels": [
      "功能_特性"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "4562b3d74deb0089b00a742e67b170cb",
    "source_labels": [
      "Document"
    ],
    "target_id": "Report",
    "target_labels": [
      "功能_特性"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "4562b3d74deb0089b00a742e67b170cb",
    "source_labels": [
      "Document"
    ],
    "target_id": "Help",
    "target_labels": [
      "功能_特性"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "Icon_Bar",
    "source_labels": [
      "用户界面元素"
    ],
    "target_id": "New_Project",
    "target_labels": [
      "功能_特性"
    ],
    "type": "包含界面元素",
    "properties": {}
  },
  {
    "source_id": "Icon_Bar",
    "source_labels": [
      "用户界面元素"
    ],
    "target_id": "Open_Project",
    "target_labels": [
      "功能_特性"
    ],
    "type": "包含界面元素",
    "properties": {}
  },
  {
    "source_id": "Icon_Bar",
    "source_labels": [
      "用户界面元素"
    ],
    "target_id": "Save_Project",
    "target_labels": [
      "功能_特性"
    ],
    "type": "包含界面元素",
    "properties": {}
  },
  {
    "source_id": "Icon_Bar",
    "source_labels": [
      "用户界面元素"
    ],
    "target_id": "Save_Project_As",
    "target_labels": [
      "功能_特性"
    ],
    "type": "包含界面元素",
    "properties": {}
  },
  {
    "source_id": "Icon_Bar",
    "source_labels": [
      "用户界面元素"
    ],
    "target_id": "Reload_File",
    "target_labels": [
      "功能_特性"
    ],
    "type": "包含界面元素",
    "properties": {}
  },
  {
    "source_id": "13d350cd8a0585ecadc2b895969a249e",
    "source_labels": [
      "Document"
    ],
    "target_id": "Icon_Bar",
    "target_labels": [
      "用户界面元素"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "13d350cd8a0585ecadc2b895969a249e",
    "source_labels": [
      "Document"
    ],
    "target_id": "New_Project",
    "target_labels": [
      "功能_特性"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "13d350cd8a0585ecadc2b895969a249e",
    "source_labels": [
      "Document"
    ],
    "target_id": "Open_Project",
    "target_labels": [
      "功能_特性"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "13d350cd8a0585ecadc2b895969a249e",
    "source_labels": [
      "Document"
    ],
    "target_id": "Save_Project",
    "target_labels": [
      "功能_特性"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "13d350cd8a0585ecadc2b895969a249e",
    "source_labels": [
      "Document"
    ],
    "target_id": "Save_Project_As",
    "target_labels": [
      "功能_特性"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "13d350cd8a0585ecadc2b895969a249e",
    "source_labels": [
      "Document"
    ],
    "target_id": "Reload_File",
    "target_labels": [
      "功能_特性"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "2897150791aaa773a5e85ff1c273e003",
    "source_labels": [
      "Document"
    ],
    "target_id": "Display_Window",
    "target_labels": [
      "用户界面元素"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "2897150791aaa773a5e85ff1c273e003",
    "source_labels": [
      "Document"
    ],
    "target_id": "Display_Area",
    "target_labels": [
      "用户界面元素"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "2897150791aaa773a5e85ff1c273e003",
    "source_labels": [
      "Document"
    ],
    "target_id": "Menu_Bar",
    "target_labels": [
      "用户界面元素"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "2897150791aaa773a5e85ff1c273e003",
    "source_labels": [
      "Document"
    ],
    "target_id": "Icon_Bar",
    "target_labels": [
      "用户界面元素"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "2897150791aaa773a5e85ff1c273e003",
    "source_labels": [
      "Document"
    ],
    "target_id": "Task_Panel",
    "target_labels": [
      "用户界面元素"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "a2502167b93f85a26b45be670e16f39c",
    "source_labels": [
      "Document"
    ],
    "target_id": "Model_Tree",
    "target_labels": [
      "用户界面元素"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "a2502167b93f85a26b45be670e16f39c",
    "source_labels": [
      "Document"
    ],
    "target_id": "Message_Window",
    "target_labels": [
      "用户界面元素"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "705e816eed0c94cf5faf65943c1a959e",
    "source_labels": [
      "Document"
    ],
    "target_id": "Mouse_Functions",
    "target_labels": [
      "功能_特性"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "Catia",
    "source_labels": [
      "软件"
    ],
    "target_id": "Rotation",
    "target_labels": [
      "功能_特性"
    ],
    "type": "执行功能",
    "properties": {}
  },
  {
    "source_id": "Nx",
    "source_labels": [
      "软件"
    ],
    "target_id": "Rotation",
    "target_labels": [
      "功能_特性"
    ],
    "type": "执行功能",
    "properties": {}
  },
  {
    "source_id": "Solidworks",
    "source_labels": [
      "软件"
    ],
    "target_id": "Rotation",
    "target_labels": [
      "功能_特性"
    ],
    "type": "执行功能",
    "properties": {}
  },
  {
    "source_id": "48aa6925641532157e5be16fc11cd67a",
    "source_labels": [
      "Document"
    ],
    "target_id": "Control_Key",
    "target_labels": [
      "修饰键"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "48aa6925641532157e5be16fc11cd67a",
    "source_labels": [
      "Document"
    ],
    "target_id": "Alt_Key",
    "target_labels": [
      "修饰键"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "48aa6925641532157e5be16fc11cd67a",
    "source_labels": [
      "Document"
    ],
    "target_id": "Shift_Key",
    "target_labels": [
      "修饰键"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "48aa6925641532157e5be16fc11cd67a",
    "source_labels": [
      "Document"
    ],
    "target_id": "Rotation",
    "target_labels": [
      "功能_特性"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "48aa6925641532157e5be16fc11cd67a",
    "source_labels": [
      "Document"
    ],
    "target_id": "Translation",
    "target_labels": [
      "功能_特性"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "48aa6925641532157e5be16fc11cd67a",
    "source_labels": [
      "Document"
    ],
    "target_id": "Scaling",
    "target_labels": [
      "功能_特性"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "48aa6925641532157e5be16fc11cd67a",
    "source_labels": [
      "Document"
    ],
    "target_id": "Catia",
    "target_labels": [
      "软件"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "48aa6925641532157e5be16fc11cd67a",
    "source_labels": [
      "Document"
    ],
    "target_id": "Nx",
    "target_labels": [
      "软件"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "48aa6925641532157e5be16fc11cd67a",
    "source_labels": [
      "Document"
    ],
    "target_id": "Solidworks",
    "target_labels": [
      "软件"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "Eta/Dynaform",
    "source_labels": [
      "软件"
    ],
    "target_id": "Translation",
    "target_labels": [
      "功能_特性"
    ],
    "type": "使用鼠标操作样式",
    "properties": {}
  },
  {
    "source_id": "Eta/Dynaform",
    "source_labels": [
      "软件"
    ],
    "target_id": "Ctrl+Mmbscaling",
    "target_labels": [
      "功能_特性"
    ],
    "type": "使用鼠标操作样式",
    "properties": {}
  },
  {
    "source_id": "Eta/Dynaform",
    "source_labels": [
      "软件"
    ],
    "target_id": "Scroll Wheel",
    "target_labels": [
      "输入设备"
    ],
    "type": "使用鼠标操作样式",
    "properties": {}
  },
  {
    "source_id": "9ae7dce91a79bd680f68520975c802e7",
    "source_labels": [
      "Document"
    ],
    "target_id": "Translation",
    "target_labels": [
      "功能_特性"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "9ae7dce91a79bd680f68520975c802e7",
    "source_labels": [
      "Document"
    ],
    "target_id": "Ctrl+Mmbscaling",
    "target_labels": [
      "功能_特性"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "9ae7dce91a79bd680f68520975c802e7",
    "source_labels": [
      "Document"
    ],
    "target_id": "Scroll Wheel",
    "target_labels": [
      "输入设备"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "9ae7dce91a79bd680f68520975c802e7",
    "source_labels": [
      "Document"
    ],
    "target_id": "Eta/Dynaform",
    "target_labels": [
      "软件"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "d304911c77ef3bac3caa7ab3c2cf7bef",
    "source_labels": [
      "Document"
    ],
    "target_id": "1.5 Geometry Data",
    "target_labels": [
      "模块"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "41be9181779ac354132996cc037f2468",
    "source_labels": [
      "Document"
    ],
    "target_id": "Dynaform_Model_Files",
    "target_labels": [
      "文件格式"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "41be9181779ac354132996cc037f2468",
    "source_labels": [
      "Document"
    ],
    "target_id": "Cad_Files",
    "target_labels": [
      "文件格式"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "41be9181779ac354132996cc037f2468",
    "source_labels": [
      "Document"
    ],
    "target_id": "Cae_Solver_Files",
    "target_labels": [
      "文件格式"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "41be9181779ac354132996cc037f2468",
    "source_labels": [
      "Document"
    ],
    "target_id": "Acis_Files",
    "target_labels": [
      "文件格式"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "41be9181779ac354132996cc037f2468",
    "source_labels": [
      "Document"
    ],
    "target_id": "Nastran_Files",
    "target_labels": [
      "文件格式"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "0dcf31e37cf1d61c2548e1ea3aab1cb1",
    "source_labels": [
      "Document"
    ],
    "target_id": "Entity_Selections",
    "target_labels": [
      "功能_特性"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "0dcf31e37cf1d61c2548e1ea3aab1cb1",
    "source_labels": [
      "Document"
    ],
    "target_id": "Catia_V4_Model",
    "target_labels": [
      "文件格式"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "0dcf31e37cf1d61c2548e1ea3aab1cb1",
    "source_labels": [
      "Document"
    ],
    "target_id": "Dynain_Dynain",
    "target_labels": [
      "文件格式"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "0dcf31e37cf1d61c2548e1ea3aab1cb1",
    "source_labels": [
      "Document"
    ],
    "target_id": "Catia_V5_Catpart_Catproduct",
    "target_labels": [
      "文件格式"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "0dcf31e37cf1d61c2548e1ea3aab1cb1",
    "source_labels": [
      "Document"
    ],
    "target_id": "Inventor_Ipt_Iam",
    "target_labels": [
      "文件格式"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "0dcf31e37cf1d61c2548e1ea3aab1cb1",
    "source_labels": [
      "Document"
    ],
    "target_id": "Nx_Prt",
    "target_labels": [
      "文件格式"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "0dcf31e37cf1d61c2548e1ea3aab1cb1",
    "source_labels": [
      "Document"
    ],
    "target_id": "Parasolid_X_T_Xmt_Txt_X_B",
    "target_labels": [
      "文件格式"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "0dcf31e37cf1d61c2548e1ea3aab1cb1",
    "source_labels": [
      "Document"
    ],
    "target_id": "Pro_E_Creo_Xmt_Bin_Prt_Asm",
    "target_labels": [
      "文件格式"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "0dcf31e37cf1d61c2548e1ea3aab1cb1",
    "source_labels": [
      "Document"
    ],
    "target_id": "Solidworks_Sldprt_Sldasm",
    "target_labels": [
      "文件格式"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "0dcf31e37cf1d61c2548e1ea3aab1cb1",
    "source_labels": [
      "Document"
    ],
    "target_id": "Step_Stp_Step",
    "target_labels": [
      "文件格式"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "Project",
    "source_labels": [
      "用户界面元素"
    ],
    "target_id": "Option Center",
    "target_labels": [
      "用户界面元素"
    ],
    "type": "包含界面元素",
    "properties": {}
  },
  {
    "source_id": "Option Center",
    "source_labels": [
      "用户界面元素"
    ],
    "target_id": "Selection",
    "target_labels": [
      "用户界面元素"
    ],
    "type": "包含界面元素",
    "properties": {}
  },
  {
    "source_id": "Selection",
    "source_labels": [
      "用户界面元素"
    ],
    "target_id": "Yes",
    "target_labels": [
      "对话框按钮"
    ],
    "type": "具有按钮",
    "properties": {}
  },
  {
    "source_id": "Selection",
    "source_labels": [
      "用户界面元素"
    ],
    "target_id": "No",
    "target_labels": [
      "对话框按钮"
    ],
    "type": "具有按钮",
    "properties": {}
  },
  {
    "source_id": "6138a2f0211e922e223836d48ea7e2fc",
    "source_labels": [
      "Document"
    ],
    "target_id": "Project",
    "target_labels": [
      "用户界面元素"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "6138a2f0211e922e223836d48ea7e2fc",
    "source_labels": [
      "Document"
    ],
    "target_id": "Option Center",
    "target_labels": [
      "用户界面元素"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "6138a2f0211e922e223836d48ea7e2fc",
    "source_labels": [
      "Document"
    ],
    "target_id": "Selection",
    "target_labels": [
      "用户界面元素"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "6138a2f0211e922e223836d48ea7e2fc",
    "source_labels": [
      "Document"
    ],
    "target_id": "Yes",
    "target_labels": [
      "对话框按钮"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "6138a2f0211e922e223836d48ea7e2fc",
    "source_labels": [
      "Document"
    ],
    "target_id": "No",
    "target_labels": [
      "对话框按钮"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "6de47e50cb3cfed3eaefb4f98e8f7503",
    "source_labels": [
      "Document"
    ],
    "target_id": "Undo",
    "target_labels": [
      "对话框按钮"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "6de47e50cb3cfed3eaefb4f98e8f7503",
    "source_labels": [
      "Document"
    ],
    "target_id": "Redo",
    "target_labels": [
      "对话框按钮"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "6de47e50cb3cfed3eaefb4f98e8f7503",
    "source_labels": [
      "Document"
    ],
    "target_id": "Apply",
    "target_labels": [
      "对话框按钮"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "6de47e50cb3cfed3eaefb4f98e8f7503",
    "source_labels": [
      "Document"
    ],
    "target_id": "Ok",
    "target_labels": [
      "对话框按钮"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "6de47e50cb3cfed3eaefb4f98e8f7503",
    "source_labels": [
      "Document"
    ],
    "target_id": "Cancel",
    "target_labels": [
      "对话框按钮"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "6de47e50cb3cfed3eaefb4f98e8f7503",
    "source_labels": [
      "Document"
    ],
    "target_id": "Close",
    "target_labels": [
      "对话框按钮"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "6de47e50cb3cfed3eaefb4f98e8f7503",
    "source_labels": [
      "Document"
    ],
    "target_id": "Exit",
    "target_labels": [
      "对话框按钮"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "Select_Line_Mode",
    "source_labels": [
      "选择模式"
    ],
    "target_id": "Line_Selection_Dialog",
    "target_labels": [
      "用户界面元素"
    ],
    "type": "包含界面元素",
    "properties": {}
  },
  {
    "source_id": "15ec6c67885848d6ce4e68fdd01777fb",
    "source_labels": [
      "Document"
    ],
    "target_id": "Select_Line_Mode",
    "target_labels": [
      "选择模式"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "15ec6c67885848d6ce4e68fdd01777fb",
    "source_labels": [
      "Document"
    ],
    "target_id": "Line_Selection_Dialog",
    "target_labels": [
      "用户界面元素"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "50916c91fa200e5fed2aeee15a27e7c0",
    "source_labels": [
      "Document"
    ],
    "target_id": "Pick Line",
    "target_labels": [
      "选择模式"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "50916c91fa200e5fed2aeee15a27e7c0",
    "source_labels": [
      "Document"
    ],
    "target_id": "Polygon",
    "target_labels": [
      "选择模式"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "79e028c4726948aa474905e9e67210c8",
    "source_labels": [
      "Document"
    ],
    "target_id": "Circle",
    "target_labels": [
      "选择模式"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "79e028c4726948aa474905e9e67210c8",
    "source_labels": [
      "Document"
    ],
    "target_id": "Free Region",
    "target_labels": [
      "选择模式"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "79e028c4726948aa474905e9e67210c8",
    "source_labels": [
      "Document"
    ],
    "target_id": "Chain Line",
    "target_labels": [
      "选择模式"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "79e028c4726948aa474905e9e67210c8",
    "source_labels": [
      "Document"
    ],
    "target_id": "Trace",
    "target_labels": [
      "选择模式"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "79e028c4726948aa474905e9e67210c8",
    "source_labels": [
      "Document"
    ],
    "target_id": "Surface Boundary",
    "target_labels": [
      "选择模式"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "79e028c4726948aa474905e9e67210c8",
    "source_labels": [
      "Document"
    ],
    "target_id": "Exclude",
    "target_labels": [
      "选择模式"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "5cf262fd6e6375910e7b949440224dec",
    "source_labels": [
      "Document"
    ],
    "target_id": "By Layer",
    "target_labels": [
      "选择模式"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "5cf262fd6e6375910e7b949440224dec",
    "source_labels": [
      "Document"
    ],
    "target_id": "By Displayed",
    "target_labels": [
      "选择模式"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "5cf262fd6e6375910e7b949440224dec",
    "source_labels": [
      "Document"
    ],
    "target_id": "Inside Region",
    "target_labels": [
      "选择模式"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "5cf262fd6e6375910e7b949440224dec",
    "source_labels": [
      "Document"
    ],
    "target_id": "Outside Region",
    "target_labels": [
      "选择模式"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "5cf262fd6e6375910e7b949440224dec",
    "source_labels": [
      "Document"
    ],
    "target_id": "Crossing",
    "target_labels": [
      "选择模式"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "显示区域",
    "source_labels": [
      "用户界面元素"
    ],
    "target_id": "左键单击(Lmb)",
    "target_labels": [
      "输入设备"
    ],
    "type": "使用输入设备",
    "properties": {}
  },
  {
    "source_id": "显示区域",
    "source_labels": [
      "用户界面元素"
    ],
    "target_id": "左键拖动(Lmb Drag)",
    "target_labels": [
      "输入设备"
    ],
    "type": "使用输入设备",
    "properties": {}
  },
  {
    "source_id": "显示区域",
    "source_labels": [
      "用户界面元素"
    ],
    "target_id": "Ctrl+A",
    "target_labels": [
      "修饰键"
    ],
    "type": "与修饰键关联",
    "properties": {}
  },
  {
    "source_id": "显示区域",
    "source_labels": [
      "用户界面元素"
    ],
    "target_id": "Shift+Lmb",
    "target_labels": [
      "修饰键"
    ],
    "type": "与修饰键关联",
    "properties": {}
  },
  {
    "source_id": "189273b0a8b1511cb77657924d48e86e",
    "source_labels": [
      "Document"
    ],
    "target_id": "显示区域",
    "target_labels": [
      "用户界面元素"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "189273b0a8b1511cb77657924d48e86e",
    "source_labels": [
      "Document"
    ],
    "target_id": "左键单击(Lmb)",
    "target_labels": [
      "输入设备"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "189273b0a8b1511cb77657924d48e86e",
    "source_labels": [
      "Document"
    ],
    "target_id": "左键拖动(Lmb Drag)",
    "target_labels": [
      "输入设备"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "189273b0a8b1511cb77657924d48e86e",
    "source_labels": [
      "Document"
    ],
    "target_id": "Ctrl+A",
    "target_labels": [
      "修饰键"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "189273b0a8b1511cb77657924d48e86e",
    "source_labels": [
      "Document"
    ],
    "target_id": "Shift+Lmb",
    "target_labels": [
      "修饰键"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "c90a68fb8107ff715fc8d719c3ea8e1e",
    "source_labels": [
      "Document"
    ],
    "target_id": "Select_Surface_Mode",
    "target_labels": [
      "选择模式"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "e7860bb55cb54ab18a82e3ac03a21eb3",
    "source_labels": [
      "Document"
    ],
    "target_id": "Pick Surface",
    "target_labels": [
      "选择模式"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "e7860bb55cb54ab18a82e3ac03a21eb3",
    "source_labels": [
      "Document"
    ],
    "target_id": "Polygon",
    "target_labels": [
      "选择模式"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "e7860bb55cb54ab18a82e3ac03a21eb3",
    "source_labels": [
      "Document"
    ],
    "target_id": "Circle",
    "target_labels": [
      "选择模式"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "e7860bb55cb54ab18a82e3ac03a21eb3",
    "source_labels": [
      "Document"
    ],
    "target_id": "Free Region",
    "target_labels": [
      "选择模式"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "0cd61d214971b424aead42a1fd744e80",
    "source_labels": [
      "Document"
    ],
    "target_id": "Trace",
    "target_labels": [
      "功能_特性"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "0cd61d214971b424aead42a1fd744e80",
    "source_labels": [
      "Document"
    ],
    "target_id": "Tangent_Surfaces",
    "target_labels": [
      "功能_特性"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "0cd61d214971b424aead42a1fd744e80",
    "source_labels": [
      "Document"
    ],
    "target_id": "Spread",
    "target_labels": [
      "功能_特性"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "0cd61d214971b424aead42a1fd744e80",
    "source_labels": [
      "Document"
    ],
    "target_id": "Exclude",
    "target_labels": [
      "功能_特性"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "58f2f7f54e70de17dd124752e0838849",
    "source_labels": [
      "Document"
    ],
    "target_id": "By Layer",
    "target_labels": [
      "功能_特性"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "58f2f7f54e70de17dd124752e0838849",
    "source_labels": [
      "Document"
    ],
    "target_id": "By Displayed",
    "target_labels": [
      "功能_特性"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "58f2f7f54e70de17dd124752e0838849",
    "source_labels": [
      "Document"
    ],
    "target_id": "Inside Region",
    "target_labels": [
      "功能_特性"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "58f2f7f54e70de17dd124752e0838849",
    "source_labels": [
      "Document"
    ],
    "target_id": "Outside Region",
    "target_labels": [
      "功能_特性"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "58f2f7f54e70de17dd124752e0838849",
    "source_labels": [
      "Document"
    ],
    "target_id": "Crossing",
    "target_labels": [
      "功能_特性"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "17d461534c6122dfc308f8e88d87766b",
    "source_labels": [
      "Document"
    ],
    "target_id": "Click_Lmb",
    "target_labels": [
      "操作样式"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "17d461534c6122dfc308f8e88d87766b",
    "source_labels": [
      "Document"
    ],
    "target_id": "Drag_Lmb",
    "target_labels": [
      "操作样式"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "36674e7bcba20bd9582c2249d915dac8",
    "source_labels": [
      "Document"
    ],
    "target_id": "Select Element Mode",
    "target_labels": [
      "选择模式"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "f496ded2a663d34fbc7d022a78e6966f",
    "source_labels": [
      "Document"
    ],
    "target_id": "Pick Element",
    "target_labels": [
      "选择模式"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "f496ded2a663d34fbc7d022a78e6966f",
    "source_labels": [
      "Document"
    ],
    "target_id": "Polygon",
    "target_labels": [
      "选择模式"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "f496ded2a663d34fbc7d022a78e6966f",
    "source_labels": [
      "Document"
    ],
    "target_id": "Free Region",
    "target_labels": [
      "选择模式"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "6cee4187d604dbf3498e8bad085d613d",
    "source_labels": [
      "Document"
    ],
    "target_id": "Circle_Selection",
    "target_labels": [
      "选择模式"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "6cee4187d604dbf3498e8bad085d613d",
    "source_labels": [
      "Document"
    ],
    "target_id": "Line_Selection",
    "target_labels": [
      "选择模式"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "6cee4187d604dbf3498e8bad085d613d",
    "source_labels": [
      "Document"
    ],
    "target_id": "Spread_Selection",
    "target_labels": [
      "选择模式"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "f6ecd23173ac0da0d2ae2aebbcbe3f07",
    "source_labels": [
      "Document"
    ],
    "target_id": "User_Input_To_Adjust_Spread_Angle",
    "target_labels": [
      "功能_特性"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "f6ecd23173ac0da0d2ae2aebbcbe3f07",
    "source_labels": [
      "Document"
    ],
    "target_id": "Exclude_Option",
    "target_labels": [
      "功能_特性"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "f6ecd23173ac0da0d2ae2aebbcbe3f07",
    "source_labels": [
      "Document"
    ],
    "target_id": "By_Layer_Button",
    "target_labels": [
      "用户界面元素"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "94509bc482385fcf01b1e9e53985b5dc",
    "source_labels": [
      "Document"
    ],
    "target_id": "Displaybutton",
    "target_labels": [
      "对话框按钮"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "94509bc482385fcf01b1e9e53985b5dc",
    "source_labels": [
      "Document"
    ],
    "target_id": "Insideregionoption",
    "target_labels": [
      "对话框按钮"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "94509bc482385fcf01b1e9e53985b5dc",
    "source_labels": [
      "Document"
    ],
    "target_id": "Outsideregionoption",
    "target_labels": [
      "对话框按钮"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "94509bc482385fcf01b1e9e53985b5dc",
    "source_labels": [
      "Document"
    ],
    "target_id": "Crossingoption",
    "target_labels": [
      "对话框按钮"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "84df505bca6e41cf553317e66145541b",
    "source_labels": [
      "Document"
    ],
    "target_id": "Select Node Mode",
    "target_labels": [
      "选择模式"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "42d12d1248d5f9f348d71caea64a0199",
    "source_labels": [
      "Document"
    ],
    "target_id": "Pick Node",
    "target_labels": [
      "功能_特性"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "42d12d1248d5f9f348d71caea64a0199",
    "source_labels": [
      "Document"
    ],
    "target_id": "Polygon",
    "target_labels": [
      "功能_特性"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "babf04a0aeb4f9feff5f0b6282ebbaca",
    "source_labels": [
      "Document"
    ],
    "target_id": "Circle",
    "target_labels": [
      "选择模式"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "babf04a0aeb4f9feff5f0b6282ebbaca",
    "source_labels": [
      "Document"
    ],
    "target_id": "Freehand",
    "target_labels": [
      "选择模式"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "b109b6a4d8f33e0df68f1be86b7f378d",
    "source_labels": [
      "Document"
    ],
    "target_id": "Along_Edge",
    "target_labels": [
      "功能_特性"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "4cd4c2ea97b5f7e3707c32b36d60c37f",
    "source_labels": [
      "Document"
    ],
    "target_id": "Stop Angle",
    "target_labels": [
      "功能_特性"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "4cd4c2ea97b5f7e3707c32b36d60c37f",
    "source_labels": [
      "Document"
    ],
    "target_id": "Side Edge Node Selection",
    "target_labels": [
      "功能_特性"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "930ad40b9f28f13c56eef0f4af4cdbaa",
    "source_labels": [
      "Document"
    ],
    "target_id": "Along_Edge",
    "target_labels": [
      "功能_特性"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "930ad40b9f28f13c56eef0f4af4cdbaa",
    "source_labels": [
      "Document"
    ],
    "target_id": "Path",
    "target_labels": [
      "功能_特性"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "930ad40b9f28f13c56eef0f4af4cdbaa",
    "source_labels": [
      "Document"
    ],
    "target_id": "Trace",
    "target_labels": [
      "功能_特性"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "930ad40b9f28f13c56eef0f4af4cdbaa",
    "source_labels": [
      "Document"
    ],
    "target_id": "Front",
    "target_labels": [
      "功能_特性"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "9a96e1f9cb1b936132997eb642da7b1c",
    "source_labels": [
      "Document"
    ],
    "target_id": "Selectnodesbyangle",
    "target_labels": [
      "功能_特性"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "9a96e1f9cb1b936132997eb642da7b1c",
    "source_labels": [
      "Document"
    ],
    "target_id": "Toggleselectbyid",
    "target_labels": [
      "功能_特性"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "a8964e4d1ac23bc2ddf016cb1b851de3",
    "source_labels": [
      "Document"
    ],
    "target_id": "Inside",
    "target_labels": [
      "选择模式"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "a8964e4d1ac23bc2ddf016cb1b851de3",
    "source_labels": [
      "Document"
    ],
    "target_id": "Outside",
    "target_labels": [
      "选择模式"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "a8964e4d1ac23bc2ddf016cb1b851de3",
    "source_labels": [
      "Document"
    ],
    "target_id": "Crossing",
    "target_labels": [
      "选择模式"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "a8964e4d1ac23bc2ddf016cb1b851de3",
    "source_labels": [
      "Document"
    ],
    "target_id": "Select_Coordinate_Mode",
    "target_labels": [
      "选择模式"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "8ffaed0da2477a4431b459b318bc97bf",
    "source_labels": [
      "Document"
    ],
    "target_id": "By_Cursor",
    "target_labels": [
      "功能_特性"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "fae83c842b9797800c3e1730b7aa4e05",
    "source_labels": [
      "Document"
    ],
    "target_id": "Snap_On_Node",
    "target_labels": [
      "功能_特性"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "fae83c842b9797800c3e1730b7aa4e05",
    "source_labels": [
      "Document"
    ],
    "target_id": "Snap_On_Shape",
    "target_labels": [
      "功能_特性"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "Shading",
    "source_labels": [
      "选择模式"
    ],
    "target_id": "Snap_On_Surface",
    "target_labels": [
      "功能_特性"
    ],
    "type": "启用",
    "properties": {}
  },
  {
    "source_id": "Shading",
    "source_labels": [
      "选择模式"
    ],
    "target_id": "Snap_On_Line",
    "target_labels": [
      "功能_特性"
    ],
    "type": "启用",
    "properties": {}
  },
  {
    "source_id": "f7664453f70c4301d58c70c9d11cc529",
    "source_labels": [
      "Document"
    ],
    "target_id": "Shading",
    "target_labels": [
      "选择模式"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "f7664453f70c4301d58c70c9d11cc529",
    "source_labels": [
      "Document"
    ],
    "target_id": "Snap_On_Line",
    "target_labels": [
      "功能_特性"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "f7664453f70c4301d58c70c9d11cc529",
    "source_labels": [
      "Document"
    ],
    "target_id": "Snap_On_Surface",
    "target_labels": [
      "功能_特性"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "f908b20d638fd64a04013992f9480a31",
    "source_labels": [
      "Document"
    ],
    "target_id": "Snap On Endpoint",
    "target_labels": [
      "功能_特性"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "f908b20d638fd64a04013992f9480a31",
    "source_labels": [
      "Document"
    ],
    "target_id": "Snap On Middle Point",
    "target_labels": [
      "功能_特性"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "d9c942c2e89359c15ba2ec0d285a63b7",
    "source_labels": [
      "Document"
    ],
    "target_id": "Snap On Center",
    "target_labels": [
      "功能_特性"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "d9c942c2e89359c15ba2ec0d285a63b7",
    "source_labels": [
      "Document"
    ],
    "target_id": "Snap On Current Ref. Plane",
    "target_labels": [
      "功能_特性"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "d9c942c2e89359c15ba2ec0d285a63b7",
    "source_labels": [
      "Document"
    ],
    "target_id": "Current View Plane",
    "target_labels": [
      "功能_特性"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "d9c942c2e89359c15ba2ec0d285a63b7",
    "source_labels": [
      "Document"
    ],
    "target_id": "Show Grid/Snap Grid",
    "target_labels": [
      "功能_特性"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "74b832649a9d12ab7c971b64eff77103",
    "source_labels": [
      "Document"
    ],
    "target_id": "Displays_And_Snaps_Grid_On_Current_Work_Plane",
    "target_labels": [
      "功能_特性"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "Model Tree",
    "source_labels": [
      "用户界面元素"
    ],
    "target_id": "Geometry",
    "target_labels": [
      "模型树类型"
    ],
    "type": "管理",
    "properties": {}
  },
  {
    "source_id": "Geometry",
    "source_labels": [
      "模型树类型"
    ],
    "target_id": "Curve",
    "target_labels": [
      "模型树类型"
    ],
    "type": "包含界面元素",
    "properties": {}
  },
  {
    "source_id": "Geometry",
    "source_labels": [
      "模型树类型"
    ],
    "target_id": "Surface",
    "target_labels": [
      "模型树类型"
    ],
    "type": "包含界面元素",
    "properties": {}
  },
  {
    "source_id": "Geometry",
    "source_labels": [
      "模型树类型"
    ],
    "target_id": "Element",
    "target_labels": [
      "模型树类型"
    ],
    "type": "包含界面元素",
    "properties": {}
  },
  {
    "source_id": "5b9658e99de185edcc0d0e50b099a367",
    "source_labels": [
      "Document"
    ],
    "target_id": "Model Tree",
    "target_labels": [
      "用户界面元素"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "5b9658e99de185edcc0d0e50b099a367",
    "source_labels": [
      "Document"
    ],
    "target_id": "Geometry",
    "target_labels": [
      "模型树类型"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "5b9658e99de185edcc0d0e50b099a367",
    "source_labels": [
      "Document"
    ],
    "target_id": "Curve",
    "target_labels": [
      "模型树类型"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "5b9658e99de185edcc0d0e50b099a367",
    "source_labels": [
      "Document"
    ],
    "target_id": "Surface",
    "target_labels": [
      "模型树类型"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "5b9658e99de185edcc0d0e50b099a367",
    "source_labels": [
      "Document"
    ],
    "target_id": "Element",
    "target_labels": [
      "模型树类型"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "Model_Tree_For_Project",
    "source_labels": [
      "模型树类型"
    ],
    "target_id": "Bse_Projects",
    "target_labels": [
      "项目"
    ],
    "type": "管理",
    "properties": {}
  },
  {
    "source_id": "Model_Tree_For_Project",
    "source_labels": [
      "模型树类型"
    ],
    "target_id": "Fs_Projects",
    "target_labels": [
      "项目"
    ],
    "type": "管理",
    "properties": {}
  },
  {
    "source_id": "95ee12315ca97253d4bd4366eb9bd13a",
    "source_labels": [
      "Document"
    ],
    "target_id": "Model_Tree_For_Project",
    "target_labels": [
      "模型树类型"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "95ee12315ca97253d4bd4366eb9bd13a",
    "source_labels": [
      "Document"
    ],
    "target_id": "Bse_Projects",
    "target_labels": [
      "项目"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "95ee12315ca97253d4bd4366eb9bd13a",
    "source_labels": [
      "Document"
    ],
    "target_id": "Fs_Projects",
    "target_labels": [
      "项目"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "Model_Tree_For_Viewer",
    "source_labels": [
      "功能_特性"
    ],
    "target_id": "On/Off_Control",
    "target_labels": [
      "功能_特性"
    ],
    "type": "包含模块",
    "properties": {}
  },
  {
    "source_id": "c8648ec99658132bbd351913dd545361",
    "source_labels": [
      "Document"
    ],
    "target_id": "Model_Tree_For_Viewer",
    "target_labels": [
      "功能_特性"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "c8648ec99658132bbd351913dd545361",
    "source_labels": [
      "Document"
    ],
    "target_id": "On/Off_Control",
    "target_labels": [
      "功能_特性"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "Geom/Tool",
    "source_labels": [
      "功能_特性"
    ],
    "target_id": "Import Geometry",
    "target_labels": [
      "项目"
    ],
    "type": "管理",
    "properties": {}
  },
  {
    "source_id": "Geom/Tool",
    "source_labels": [
      "功能_特性"
    ],
    "target_id": "Sheet Forming",
    "target_labels": [
      "项目"
    ],
    "type": "管理",
    "properties": {}
  },
  {
    "source_id": "Geom/Tool",
    "source_labels": [
      "功能_特性"
    ],
    "target_id": "Bse",
    "target_labels": [
      "项目"
    ],
    "type": "管理",
    "properties": {}
  },
  {
    "source_id": "9863c06c971e77275ed0559483b06210",
    "source_labels": [
      "Document"
    ],
    "target_id": "Geom/Tool",
    "target_labels": [
      "功能_特性"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "9863c06c971e77275ed0559483b06210",
    "source_labels": [
      "Document"
    ],
    "target_id": "Import Geometry",
    "target_labels": [
      "项目"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "9863c06c971e77275ed0559483b06210",
    "source_labels": [
      "Document"
    ],
    "target_id": "Sheet Forming",
    "target_labels": [
      "项目"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "9863c06c971e77275ed0559483b06210",
    "source_labels": [
      "Document"
    ],
    "target_id": "Bse",
    "target_labels": [
      "项目"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "9863c06c971e77275ed0559483b06210",
    "source_labels": [
      "Document"
    ],
    "target_id": "Curve",
    "target_labels": [
      "功能_特性"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "c014195492adcc38ec48a97ef8b356a0",
    "source_labels": [
      "Document"
    ],
    "target_id": "Created Curves",
    "target_labels": [
      "功能_特性"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "c014195492adcc38ec48a97ef8b356a0",
    "source_labels": [
      "Document"
    ],
    "target_id": "Section Cut",
    "target_labels": [
      "功能_特性"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "c014195492adcc38ec48a97ef8b356a0",
    "source_labels": [
      "Document"
    ],
    "target_id": "Import Curves",
    "target_labels": [
      "功能_特性"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "c014195492adcc38ec48a97ef8b356a0",
    "source_labels": [
      "Document"
    ],
    "target_id": "Sheet Forming",
    "target_labels": [
      "功能_特性"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "c014195492adcc38ec48a97ef8b356a0",
    "source_labels": [
      "Document"
    ],
    "target_id": "Bse Curves",
    "target_labels": [
      "功能_特性"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "c014195492adcc38ec48a97ef8b356a0",
    "source_labels": [
      "Document"
    ],
    "target_id": "On/Off Control",
    "target_labels": [
      "功能_特性"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "c014195492adcc38ec48a97ef8b356a0",
    "source_labels": [
      "Document"
    ],
    "target_id": "Geom/Tool Curve",
    "target_labels": [
      "功能_特性"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "Help",
    "source_labels": [
      "模块"
    ],
    "target_id": "Online Help",
    "target_labels": [
      "功能_特性"
    ],
    "type": "具有特性",
    "properties": {}
  },
  {
    "source_id": "20e4391d9e751ee0e5e943021d318749",
    "source_labels": [
      "Document"
    ],
    "target_id": "Help",
    "target_labels": [
      "模块"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "20e4391d9e751ee0e5e943021d318749",
    "source_labels": [
      "Document"
    ],
    "target_id": "Online Help",
    "target_labels": [
      "功能_特性"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "Eta/Dynaform7.2",
    "source_labels": [
      "软件"
    ],
    "target_id": "在线帮助功能",
    "target_labels": [
      "功能_特性"
    ],
    "type": "执行功能",
    "properties": {}
  },
  {
    "source_id": "在线帮助功能",
    "source_labels": [
      "功能_特性"
    ],
    "target_id": "F1",
    "target_labels": [
      "修饰键"
    ],
    "type": "与修饰键关联",
    "properties": {}
  },
  {
    "source_id": "3fc313eb94863e06886d8e7ef65e3be3",
    "source_labels": [
      "Document"
    ],
    "target_id": "在线帮助功能",
    "target_labels": [
      "功能_特性"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "3fc313eb94863e06886d8e7ef65e3be3",
    "source_labels": [
      "Document"
    ],
    "target_id": "F1",
    "target_labels": [
      "修饰键"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "3fc313eb94863e06886d8e7ef65e3be3",
    "source_labels": [
      "Document"
    ],
    "target_id": "Eta/Dynaform7.2",
    "target_labels": [
      "软件"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "d392a495f2dfc32caaed6c11611afd47",
    "source_labels": [
      "Document"
    ],
    "target_id": "包业国",
    "target_labels": [
      "用户界面元素"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "d392a495f2dfc32caaed6c11611afd47",
    "source_labels": [
      "Document"
    ],
    "target_id": "Introduction",
    "target_labels": [
      "功能_特性"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "d392a495f2dfc32caaed6c11611afd47",
    "source_labels": [
      "Document"
    ],
    "target_id": "Structuraloverview",
    "target_labels": [
      "功能_特性"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "d392a495f2dfc32caaed6c11611afd47",
    "source_labels": [
      "Document"
    ],
    "target_id": "Getting_Started",
    "target_labels": [
      "功能_特性"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "d392a495f2dfc32caaed6c11611afd47",
    "source_labels": [
      "Document"
    ],
    "target_id": "View_Project",
    "target_labels": [
      "功能_特性"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "d392a495f2dfc32caaed6c11611afd47",
    "source_labels": [
      "Document"
    ],
    "target_id": "Geometrymanager",
    "target_labels": [
      "功能_特性"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "d392a495f2dfc32caaed6c11611afd47",
    "source_labels": [
      "Document"
    ],
    "target_id": "Ace_Engineering",
    "target_labels": [
      "功能_特性"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "d392a495f2dfc32caaed6c11611afd47",
    "source_labels": [
      "Document"
    ],
    "target_id": "Sheetforming",
    "target_labels": [
      "功能_特性"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "d392a495f2dfc32caaed6c11611afd47",
    "source_labels": [
      "Document"
    ],
    "target_id": "Tubeforming",
    "target_labels": [
      "功能_特性"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "Eta/Dynaform 7.1",
    "source_labels": [
      "软件"
    ],
    "target_id": "Index File Format",
    "target_labels": [
      "文件格式"
    ],
    "type": "支持文件格式",
    "properties": {}
  },
  {
    "source_id": "5f5d80fb3095a02ae6fb290a06f32c94",
    "source_labels": [
      "Document"
    ],
    "target_id": "Eta/Dynaform 7.1",
    "target_labels": [
      "软件"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "5f5d80fb3095a02ae6fb290a06f32c94",
    "source_labels": [
      "Document"
    ],
    "target_id": "Index File Format",
    "target_labels": [
      "文件格式"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "fc218e5f5dd6457a9f3d533a66257988",
    "source_labels": [
      "Document"
    ],
    "target_id": "License Roaming",
    "target_labels": [
      "功能_特性"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "a4c8ca433812c6b3309339607c9b7ad0",
    "source_labels": [
      "Document"
    ],
    "target_id": "Roam All",
    "target_labels": [
      "用户界面元素"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "a4c8ca433812c6b3309339607c9b7ad0",
    "source_labels": [
      "Document"
    ],
    "target_id": "Roaming Days",
    "target_labels": [
      "功能_特性"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "1a15b2868af7d0186c18cb5c97e7f5ca",
    "source_labels": [
      "Document"
    ],
    "target_id": "Df_Formability",
    "target_labels": [
      "许可"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "1a15b2868af7d0186c18cb5c97e7f5ca",
    "source_labels": [
      "Document"
    ],
    "target_id": "Df_Bse",
    "target_labels": [
      "许可"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "1a15b2868af7d0186c18cb5c97e7f5ca",
    "source_labels": [
      "Document"
    ],
    "target_id": "Df_Bse_Outline",
    "target_labels": [
      "许可"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "1a15b2868af7d0186c18cb5c97e7f5ca",
    "source_labels": [
      "Document"
    ],
    "target_id": "Df_Bse_Nesting",
    "target_labels": [
      "许可"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "1a15b2868af7d0186c18cb5c97e7f5ca",
    "source_labels": [
      "Document"
    ],
    "target_id": "Df_Bse_Unfold_Trimline",
    "target_labels": [
      "许可"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "1a15b2868af7d0186c18cb5c97e7f5ca",
    "source_labels": [
      "Document"
    ],
    "target_id": "Df_Trimlndev",
    "target_labels": [
      "许可"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "1a15b2868af7d0186c18cb5c97e7f5ca",
    "source_labels": [
      "Document"
    ],
    "target_id": "Df_Hotform",
    "target_labels": [
      "许可"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "1a15b2868af7d0186c18cb5c97e7f5ca",
    "source_labels": [
      "Document"
    ],
    "target_id": "Df_Tubebend",
    "target_labels": [
      "许可"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "1a15b2868af7d0186c18cb5c97e7f5ca",
    "source_labels": [
      "Document"
    ],
    "target_id": "Df_Optimization",
    "target_labels": [
      "许可"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "1a15b2868af7d0186c18cb5c97e7f5ca",
    "source_labels": [
      "Document"
    ],
    "target_id": "Df_Die_Face_Design",
    "target_labels": [
      "许可"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "1a15b2868af7d0186c18cb5c97e7f5ca",
    "source_labels": [
      "Document"
    ],
    "target_id": "Df_Die_Simulation",
    "target_labels": [
      "许可"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "1a15b2868af7d0186c18cb5c97e7f5ca",
    "source_labels": [
      "Document"
    ],
    "target_id": "Df_Ssr",
    "target_labels": [
      "许可"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "1a15b2868af7d0186c18cb5c97e7f5ca",
    "source_labels": [
      "Document"
    ],
    "target_id": "Df_Smth",
    "target_labels": [
      "许可"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "1a15b2868af7d0186c18cb5c97e7f5ca",
    "source_labels": [
      "Document"
    ],
    "target_id": "Df_Dsi",
    "target_labels": [
      "许可"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "1a15b2868af7d0186c18cb5c97e7f5ca",
    "source_labels": [
      "Document"
    ],
    "target_id": "Df_Sheet_Drop_Test",
    "target_labels": [
      "许可"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "1a15b2868af7d0186c18cb5c97e7f5ca",
    "source_labels": [
      "Document"
    ],
    "target_id": "Df_Assembly_Bse",
    "target_labels": [
      "许可"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "1a15b2868af7d0186c18cb5c97e7f5ca",
    "source_labels": [
      "Document"
    ],
    "target_id": "Io_Nx",
    "target_labels": [
      "许可"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "1a15b2868af7d0186c18cb5c97e7f5ca",
    "source_labels": [
      "Document"
    ],
    "target_id": "Reporter",
    "target_labels": [
      "许可"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "1a15b2868af7d0186c18cb5c97e7f5ca",
    "source_labels": [
      "Document"
    ],
    "target_id": "Roaming",
    "target_labels": [
      "许可"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "Return",
    "source_labels": [
      "对话框按钮"
    ],
    "target_id": "License",
    "target_labels": [
      "许可"
    ],
    "type": "归还至",
    "properties": {}
  },
  {
    "source_id": "Return All",
    "source_labels": [
      "对话框按钮"
    ],
    "target_id": "License",
    "target_labels": [
      "许可"
    ],
    "type": "归还至",
    "properties": {}
  },
  {
    "source_id": "d5f8866da38d84ad768ca01d410503f9",
    "source_labels": [
      "Document"
    ],
    "target_id": "License",
    "target_labels": [
      "许可"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "d5f8866da38d84ad768ca01d410503f9",
    "source_labels": [
      "Document"
    ],
    "target_id": "Return",
    "target_labels": [
      "对话框按钮"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "d5f8866da38d84ad768ca01d410503f9",
    "source_labels": [
      "Document"
    ],
    "target_id": "Return All",
    "target_labels": [
      "对话框按钮"
    ],
    "type": "MENTIONS",
    "properties": {}
  },
  {
    "source_id": "668694d683100c39654fcd9c0a49d7ed",
    "source_labels": [
      "Document"
    ],
    "target_id": "1.9.3 Version",
    "target_labels": [
      "功能_特性"
    ],
    "type": "MENTIONS",
    "properties": {}
  }
]

    # 创建节点
    for node_data in nodes_data:
        labels = ":".join(node_data["labels"])
        properties = node_data["properties"]

        # 使用参数化查询创建节点
        query = f"MERGE (n:['Document'] {id: $id}) SET n += $props"
        graph.query(query, {"id": properties["id"], "props": properties})
        print(f"创建节点: {properties['id']}")

    # 创建关系
    for rel_data in relationships_data:
        source_labels = ":".join(rel_data["source_labels"])
        target_labels = ":".join(rel_data["target_labels"])

        # 使用参数化查询创建关系
        query = f"""
        MATCH (a:['Document'] {id: $source_id})
        MATCH (b:['功能_特性'] {id: $target_id})
        MERGE (a)-[r:归还至]->(b)
        SET r += $props
        """

        graph.query(query, {
            "source_id": rel_data["source_id"],
            "target_id": rel_data["target_id"],
            "props": rel_data["properties"]
        })
        print(f"创建关系: {rel_data['source_id']} -> {rel_data['target_id']}")

    print("图数据导入完成！")

# 使用方法：
# import_graph_data(graph)
