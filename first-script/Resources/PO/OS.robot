*** Settings ***
Library  OperatingSystem


*** Variables ***
${output_directory} =  outputs
${directory_1} =  first directory
${directory_2} =  second directory
${file_1} =  first file.txt
${file_2} =  second file.txt
${file_3} =  third file.txt

*** Keywords ***

Create the base directory
    Create directory  ${output_directory}
    Should exist  ${output_directory}

Create directory 1
    ${directory_path} =  Join Path  ${output_directory}  ${directory_1}
    Create directory  ${directory_path}
    Should exist  ${directory_path}

Create directory 2
    ${directory_path} =  Join Path  ${output_directory}  ${directory_2}
    Create directory  ${directory_path}
    Should exist  ${directory_path}

Create file 1
    ${file_path} =  Join Path  ${output_directory}  ${directory_1}  ${file_1}
    Create file  ${file_path}  this is some text in file 1
    Should exist  ${file_path}

Create file 2
    ${file_path} =  Join Path  ${output_directory}  ${directory_2}  ${file_2}
    Create file  ${file_path}  this is some text in file 2
    Should exist  ${file_path}

Create file 3
    ${file_path} =  Join Path  ${output_directory}  ${directory_2}  ${file_3}
    Create file  ${file_path}  this is some text in file 3
    Should exist  ${file_path}

Move file 3 from directory 2 to directory 1
    ${source_path} =  Join Path  ${output_directory}  ${directory_2}  ${file_3}
    ${target_path} =  Join Path  ${output_directory}  ${directory_1}  ${file_3}
    Move file  ${source_path}  ${target_path}
    Should exist  ${target_path}
    Should not exist  ${source_path}
    ${dir_path} =  Join Path  ${output_directory}  ${directory_1}
    List Files in Directory  ${dir_path}