cd <%=@dockerPath %>

echo "Start docker app ... <%=@serverName %>"

docker container stop <%=@siteContainer %>

docker container rm <%=@siteContainer %>
