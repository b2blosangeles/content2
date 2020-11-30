cd <%=@dockerPath %>
docker build -f <%=dockerFile %> -t <%=@siteImage %> .
echo "Start docker app ..<%=serverName %>"
docker container stop <%=siteContainer %>
docker container rm <%=siteContainer %>
docker run -d <%=cmdPorts  %> -v <%=sitePath%>:/var/_localApp  --network network_easydocker --name <%=siteContainer %>  + <%=@siteImage %> 
