cd <%=@dockerCodePath %>

docker build -f <%=@dockerFile %> -t <%=@siteImage %> .

echo "Start docker app ... <%=@serverName %>"

docker container stop <%=@siteContainer %>

docker container rm <%=@siteContainer %>

docker run -d <%=@cmdPorts  %> -v <%=@dockerCodePath%>:/var/_localApp -v <%=@dockerDataPath%>:/var/_localData  --network network_easydocker --name <%=@siteContainer %>  <%=@siteImage %>
