import os
import subprocess

os.system("clear")       
os.system("clear && figlet Reverse Shell | lolcat")

def menu_principal():
    while True:
        print("\n[1] Configurar Reverse Shell para Windows")
        print("[2] Configurar Reverse Shell para Linux")
        print("[3] Iniciar Reverse Shell")
        print("[4] Salir")
        opcion = input("\033[1m\n[+] Ingrese una opción: \033[0m")
        if opcion == "":
            print("\n[+] Por favor ingrese una opción")
        elif opcion == "1":
            menu1()
        elif opcion == "2":
            menu2()
        elif opcion == "3":
            menu2()
        elif opcion == "4":
            # Salir del programa
            break
        else:
            print("Opción inválida")


def menu1():
        subprocess.run(["nano", "Scripts/shell.py"])  
        os.system("auto-py-to-exe")

def menu2():
        subprocess.run(["nano", "Scripts/shell.sh"])  

def menu3():
        subprocess.Popen(['xterm', '-e', 'bash', '-c', 'nc -lnvp 4444; exec bash'])

menu_principal()
