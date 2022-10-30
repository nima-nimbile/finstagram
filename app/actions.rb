get '/' do
    file.read(file.join ('app/view', 'index.html'))
end
