import os

# 
def process_file(file_path):
    with open(file_path, 'r') as file:
        lines = file.readlines()

    modified_lines = []

    for line in lines:
        
        if line.strip() and line.strip()[0] == '+':
            modified_lines[-1] = modified_lines[-1].rstrip() + ' ' + line.lstrip('+')
        else:
            modified_lines.append(line)

    # 
    with open(file_path, 'w') as file:
        file.writelines(modified_lines)

# 
def process_folder(folder_path):
    for root, _, files in os.walk(folder_path):
        for file in files:
            if file.endswith('.sp'):
                file_path = os.path.join(root, file)
                process_file(file_path)

# 
folder_path = 'benchmark'
process_folder(folder_path)
