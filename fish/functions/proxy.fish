function proxy --description 'Opens a proxy to my server on port 3128'
    ssh -D 3128 pavel@(hostname)
end
