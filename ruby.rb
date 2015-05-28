# Delete link with confirmation
<%= link_to 'Delete',url_for(action: :delete,id: @user.id),method: :delete, data: {confirm: "Are you sure?"} %>
