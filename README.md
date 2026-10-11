# Library manager

## Описание

Консольное приложение. Инструмент управления библиотекой (авторы, книги, жанры, клиенты, прокат).

## Техническое задание

### Add author

Call:
```bash
libman insert author "Ivan Ivanovich"
```
Output (success):
```text
success
name: Ivan Ivanovich, index: 1
```
Output (failure):
```text
failure
{reason}
```

### Find author

```bash
libman select author -n "Ivan Ivanovich"
```
or
```bash
libman select author -i 1
```
Output (success):
```text
success
name: Ivan Ivanovich, index: 1
```
Output (failure):
```text
failure
Didn't found
```

### Modify author

```bash
libman update author -i 1 -n "Ivan Olegovich"
```
Output (success):
```text
success
name: Ivan Ivanovich --> Ivan Olegovich, index: 1
```
Output (failure):
```text
failure
Didn't found
```

### Delete author

```bash
libman drop author 1
```
Output (success):
```text
success
name: Ivan Ivanovich, index: 1
```
Output (failure):
```text
failure
This author has books in the database
```

### Add book

### Find book

### Modify book

### Delete book

### Add genre

### Find genre

### Modify genre

### Delete genre

### Add client

### Find client

### Modify client

### Delete client

### Add rent

### Find rent

### Modify rent

### Delete rent

## Особые условия

* Использовать только стандартную библиотеку C++
* Не использовать сложного оформления
* Хранить данные в формате JSON