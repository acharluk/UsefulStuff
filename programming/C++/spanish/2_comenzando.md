# Comenzando nuestro primer proyecto

Después de haber configurado VSC para desarrollar C++, solo necesitamos crear un nuevo proyecto! Esto se hace en unos pocos pasos:


## Creando una carpeta para el proyecto

Para crear la carpeta del proyecto, ve a File > Open folder (o usa el atajo [Ctrl+K Ctrl+O]), una ventana aparecerá para seleccionar la carpeta deseada:
![](/programming/C++/images/2/1_opening_working_folder.png)

Crea una nueva carpeta y pulsa "Select folder", la ventana de diálogo se cerrará y VSC se recargará para abrir la nueva carpeta que acabamos de crear.

---

## Creando un proyecto C++

Pulsa F1, una pequeña ventana aparecerá con distintos comandos, busca "c++" y haz click en "Create new C++ project":
![](/programming/C++/images/2/2_creating_cpp_project.png)

Ahora nos preguntará qué compilador queremos usar, lee la página de la extensión Easy C++ para más información sobre como configurar un compilador para tu sistema operativo. Yo usaré Windows Subsystem for Linux
![](/programming/C++/images/2/3_creating_cpp_project_2.png)

![](/programming/C++/images/2/4_compiler_setup.png)

---

## Código!

Al finalizar la configuración del proyecto, VSC generará la estructura del proyecto por nosotros, y abrirá el archivo `main.cpp` con código de ejemplo:
![](/programming/C++/images/2/5_main_cpp.png)

Para probar que el proyecto funciona, pulsa el botton `Build & Run` que hay en la barra de estado, una terminal se abrirá, compilará el proyecto y ejecutará nuestro programa por primera vez!
![](/programming/C++/images/2/6_first_run.png)