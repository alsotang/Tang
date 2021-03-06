print = console.log
get '/hello', ()=
                'Hello World'



append(location, data)=
  path= Pathname(location)
  throw Error("Location does not exist") if not path.exists()

  File.open path, 'a', (file)=
                         file.console.log YAML.dump data
  data

# Rubinius' File.open implementation
File.open(path, mode, block)=
  io= File(path, mode)
  return io if not block

  try
    block io
  finally
    io.close() if not io.closed()

# Rails' respond_to
index()=
  people= Person.find 'all'
  
  respond_to (format)=
               format.html()
               format.xml ()= render {xml:people.xml()}


synchronize(block)=
  lock()
  try block() finally unlock()
