# \# 🎓 CSI – Centralized Student Interface

# 

# \*\*CSI\*\* stands for \*\*Centralized Student Interface\*\* — a role-based academic portal designed using \*\*Java (Servlets \& JSP)\*\* and \*\*Traditional MVC Architecture\*\*. The platform enables seamless communication between Students, Faculty, HOD, and Admin through personalized access and session-based interaction.

# 

# ---

# 

# \## 🚀 Key Features

# 

# \### 👤 Role-Based Access Control:

# Implemented via session management with four major roles:

# \- \*\*Admin\*\*: Full access to manage users and data.

# \- \*\*Student\*\*:

# &nbsp; - View notifications from faculty/HOD

# &nbsp; - File complaints to faculty/HOD

# &nbsp; - View and update personal profile

# \- \*\*Faculty\*\*:

# &nbsp; - View student complaints

# &nbsp; - Send notifications to students

# &nbsp; - File complaints to HOD

# &nbsp; - View and update profile

# \- \*\*HOD\*\*:

# &nbsp; - View complaints from students and faculty

# &nbsp; - Send notifications to both

# &nbsp; - View and update profile

# 

# ---

# 

# \## 🧱 Architecture

# 

# The application follows a \*\*Traditional Java MVC Structure\*\*:

# ```

# Model       → Business logic classes

# View        → JSP pages + CSS (UI)

# Controller  → Servlets managing requests/responses

# DAO         → Database operations

# DTO         → Data transfer objects

# DB          → Database connector layer

# ```

# 

# \### 🗂️ Project Structure:

# | Layer       | Examples                             |

# |-------------|--------------------------------------|

# | Controller  | `AddComplaintServlet.java`, `LoginCheckerServlet.java` |

# | Model       | `AddStudent.java`, `LoginAuthenticator.java` |

# | DAO         | `StudentDAO.java`, `ComplaintDAO.java` |

# | DTO         | `StudentDTO.java`, `ComplaintDTO.java` |

# | DB Layer    | `DBConnector.java` |

# | View        | `JSP files (adminHome.jsp, studentProfile.jsp, etc.)` |

# 

# ---

# 

# \## 🛠️ Tech Stack

# 

# | Area        | Technology Used         |

# |-------------|--------------------------|

# | Language    | Java (JDK 8+)            |

# | Web         | JSP, HTML, CSS           |

# | Framework   | Servlets (MVC pattern)   |

# | Database    | MySQL                    |

# | Server      | Apache Tomcat            |

# | IDE         | NetBeans                 |

# | Connector   | MySQL JDBC Driver        |

# 

# ---

# 

# \## ⚙️ Setup Instructions

# 

# 1\. \*\*Clone the Repository\*\*:

# &nbsp;  ```bash

# &nbsp;  git clone https://github.com/your-username/CSI-Centralized\_Student\_Interface.git

# &nbsp;  cd CSI-Centralized\_Student\_Interface

# &nbsp;  ```

# 

# 2\. \*\*Open Project in NetBeans\*\*:

# &nbsp;  - File → Open Project → Select the CSI folder

# 

# 3\. \*\*Configure Database\*\*:

# &nbsp;  - Import the schema in MySQL

# &nbsp;  - Update DB credentials in `DBConnector.java`

# 

# 4\. \*\*Add MySQL JDBC Driver\*\*:

# &nbsp;  - Right-click on project → Properties → Libraries → Add JAR/Folder → Select `mysql-connector-j-8.4.0.jar`

# 

# 5\. \*\*Run on Apache Tomcat\*\*:

# &nbsp;  - Right-click project → Run

# &nbsp;  - Visit: `http://localhost:8080/CSI/`

# 

# ---

# 

# \## 📂 Modules Overview

# 

# \- `src/java/controller/` → Servlet classes for each action (add/update/login/etc.)

# \- `src/java/dao/` → DAO classes for DB interaction

# \- `src/java/dto/` → Data model classes

# \- `src/java/model/` → Business logic handlers

# \- `web/` → JSP and static web files (frontend views)

# 

# ---

# 

# \## 🔐 Security

# 

# \- Session-based login system

# \- Role-based access control (Admin, Student, Faculty, HOD)

# \- Logout \& session invalidation via `signout.jsp`

# 

# ---

# 

# \## 👨‍💻 Developer

# 

# Created by \*\*Yash Jain\*\*  

# 3rd-year B.Tech CSE Student  

# Passionate about Java backend development and full-stack project architecture.

# 

# ---

# 

# \## 📜 License

# 

# This project is for academic and demonstration purposes only.  

# Feel free to fork, explore, and build upon it!



