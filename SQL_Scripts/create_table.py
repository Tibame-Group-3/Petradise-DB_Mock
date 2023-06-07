import glob
import os

# Get a list of all .sql files in the current directory
sql_files = glob.glob("*.sql")

# Create result folder
directory = "./result"
if not os.path.exists(directory):
    os.makedirs(directory)

# Name of the output combined SQL file
output_file = directory + "/combined_tables.sql"
init_file_name = "init.sql"
constraints_file_name = "constraints.sql"

# Open the output file in append mode
with open(output_file, "a", encoding="UTF-8") as outfile:
    # Clear output file first
    outfile.truncate(0)

    outfile.write("\n/* ---------- INIT ---------- */\n\n")
    # Open init file
    with open(init_file_name, "r", encoding="UTF-8") as init_file:
        init_content = init_file.read()
        outfile.write(init_content)
        outfile.write("\n\n")

    outfile.write("\n/* ---------- CREATE TABLE STATEMENTS ---------- */\n\n")
    # Loop through each SQL file
    for file_name in sql_files:

        if file_name == init_file_name or file_name == constraints_file_name or file_name == output_file:
            print("Skipped file name: " + file_name)
            continue
        table_name = file_name.replace(".sql", "")
        outfile.write(f"\n/* {table_name} */\n\n")
        # Open each SQL file in read mode
        with open(file_name, "r", encoding="UTF-8") as infile:
            # Read the content of the SQL file
            sql_content = infile.read()
            # Write the SQL content to the output file
            outfile.write(sql_content)
            # Add a newline separator between files
            outfile.write("\n\n")
    outfile.write("\n/* ---------- ADD CONSTRAINTS ---------- */\n\n")
    # Add constraints at last
    with open(constraints_file_name, "r", encoding="UTF-8") as constraints_file:
        constraints_content = constraints_file.read()
        outfile.write(constraints_content)
