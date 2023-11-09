import json
# i = 0
with open("books_large_p2.txt","r",encoding="utf-8") as f:
    with open("gpt-jsons", 'w') as write_f:
        for line in f.readlines():
            line = line.strip()
            # print(line)
            input_data = json.dumps({"text":line})
            write_f.write(input_data+"\r\n")
            # i += 1
            # if i == 2:
            #     break

# with open("gpt-jsons", 'r') as read_f:
#     for line in read_f.readlines():
#         line = line.strip()
#         data = json.loads(line)
#         print(data["text"])

