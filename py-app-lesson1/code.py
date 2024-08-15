def main():
    with open('/home/data.txt', 'r') as file:
        data = file.read()
    print(data)
if __name__ == "__main__":
    main()
