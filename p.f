#include <iostream>
#include <fstream>
#include <string>
using namespace std;
//hurrainkhan9jhhggg
struct Book {
    int bookID;
    string title, author;
    int quantity;
};

Book books[100];
int bookCount = 0;
string fileName = "library_inventory.txt";

void loadInventory() {
    ifstream file(fileName);
    bookCount = 0;
    while (file >> books[bookCount].bookID) {
        file.ignore();
        getline(file, books[bookCount].title);
        getline(file, books[bookCount].author);
        file >> books[bookCount].quantity;
        file.ignore();
        bookCount++;
    }
}

void saveInventory() {
    ofstream file(fileName);
    for (int i = 0; i < bookCount; i++)
        file << books[i].bookID << '\n'
             << books[i].title << '\n'
             << books[i].author << '\n'
             << books[i].quantity << '\n';
    cout << "Inventory saved.\n";
}

void addBook() {
    if (bookCount >= 100) return;
    cout << "Book ID: "; cin >> books[bookCount].bookID; cin.ignore();
    cout << "Title: "; getline(cin, books[bookCount].title);
    cout << "Author: "; getline(cin, books[bookCount].author);
    cout << "Quantity: "; cin >> books[bookCount].quantity;
    bookCount++;
}

void displayBooks() {
    for (int i = 0; i < bookCount; i++)
        cout << books[i].bookID << ", " << books[i].title << ", "
             << books[i].author << ", " << books[i].quantity << '\n';
}

void searchBook() {
    string query;
    cout << "Search by title: "; cin.ignore(); getline(cin, query);
    for (int i = 0; i < bookCount; i++)
        if (books[i].title == query)
            cout << books[i].bookID << ", " << books[i].title << ", "
                 << books[i].author << ", " << books[i].quantity << '\n';
}

int main() {
    loadInventory();
    int choice;
    //xyzccc
    wesdrftghjkedrtfgyh
    do {
        cout << "\n1. Add Book 2. Display 3. Search 4. Save & Exit\n";
        cin >> choice;
        asdfghjkdfghjkl
        if (choice == 1) addBook();
        else if (choice == 2) displayBooks();
        else if (choice == 3) searchBook();
        asdfghjudfghjkl
    } while (choice != 4);
    saveInventory();
    return 0;
}