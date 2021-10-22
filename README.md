# Circuitos Digitales II IE-0523
## Proyecto 1: Diseño de la capa PHY de la interfaz PCle
*Ultima versión: 21 octubre 2021*


A la fecha de la última versión, se incluye el proyecto final del diseño de la _capa PHY de la interfaz PCle_, el diseño fue realizado empleando una descripción conductual en el lenguaje Verilog de las distintas etapas, que a su vez cumple la función de ser un verificador automático y además, una descripción estructural generada a partir del sintetizado Yosys. Lo anterior con el fin de simular el comportamiento de la capa PHY por medio de la comunicación entre la capa que transmite los datos y la capa los recibe. El proyecto se creó por medio de distintos módulos, desde los más simples como el generador de relojes, la lógica 32b/8b y 8b/32b por medio del uso de cases los cuales tienen de fondo la misma lógica que los multiplexores. Luego, los módulos serial-paralelo y paralelo-serial, hasta crear por medio de estos el módulo que recibe los datos phy\_rx y el que los transmite phy\_tx. Al final, con estos dos módulos se forma la capa final correspondiente a la capa PHY.  
