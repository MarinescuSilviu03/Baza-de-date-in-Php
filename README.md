# README - Aplicație PHP pentru Gestionarea Studenților și Materiilor

## Descriere
Această aplicație PHP permite gestionarea unei baze de date MySQL care conține informații despre studenți și materiile asociate acestora. Aplicația implementează operațiunile CRUD (Creare, Citire, Actualizare, Ștergere) și oferă o interfață grafică ușor de utilizat.

## Tehnologii utilizate
- **PHP** - Limbaj de programare server-side pentru manipularea datelor
- **MySQL** - Sistem de gestiune a bazelor de date relaționale
- **Apache (XAMPP)** - Server web pentru rularea aplicației
- **HTML/CSS** - Crearea interfețelor utilizator

## Structura bazei de date
Baza de date include următoarele tabele:
1. **Students** - conține informații despre studenți
2. **Subjects** - conține informații despre materii
3. **Serie** - tabel intermediar pentru relația M:N între studenți și materii

## Funcționalități principale
- **Autentificare și conexiune la baza de date** - gestionată prin `database.php`
- **Vizualizarea datelor** - afișarea în tabele HTML cu opțiuni pentru editare și ștergere
- **Adăugare de înregistrări** - utilizând formulare HTML și interogări SQL
- **Editarea înregistrărilor** - printr-un formular prepopulat cu datele existente
- **Ștergerea înregistrărilor** - eliminarea unui student, materie sau serie printr-un buton dedicat
- **Gestionarea erorilor** - prevenirea erorilor de conversie și validarea datelor introduse

## Instalare și utilizare
1. **Descărcați și instalați XAMPP**
   - Link: [https://www.apachefriends.org](https://www.apachefriends.org)
2. **Importați baza de date**
   - Deschideți phpMyAdmin și importați fișierul SQL furnizat
3. **Configurați conexiunea la baza de date**
   - Editați `database.php` și actualizați datele de conectare
4. **Rulați serverul Apache și MySQL**
   - Accesați panoul de control XAMPP și porniți serviciile necesare
5. **Accesați aplicația**
   - Deschideți browserul și accesați `http://localhost/numele-aplicatiei`

## Contribuție
Dacă doriți să îmbunătățiți aplicația:
- Clonați repository-ul și creați un branch nou
- Implementați modificările și faceți un pull request
- Respectați standardele de codare și documentare

## Autor
**Marinescu Silviu-Andrei** - Facultatea de Electronică, Telecomunicații și Tehnologia Informației, Universitatea Națională de Știință și Tehnologie Politehnica București

## Licență
Acest proiect este distribuit sub licența MIT.

