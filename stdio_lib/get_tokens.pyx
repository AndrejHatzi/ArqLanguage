keywords : dict = {
  "print":'print',
  "comment":'#',
  "variable":'=',
  "start":'start',
  "start_db" : 'database',
  "init_table" : 'table',
  "add_toTable" : 'add',
  "add_Unique" : 'uadd',
  "remove_fromTable" : 'remove',
  "local_db" : 'local',
  "update" : 'update',
}

# cdef list x_array
cdef list tokenizer():
    with open('Basic_tests.arql' , 'r') as f:
        cdef line : str
        for line in f:
            cObject : list = line.split(' ')
            if cObject[0] == keywords["print"]:
                print('print_found')
            if cObject[0] == keywords["start_db"]:
                print('database_stmt_found')
