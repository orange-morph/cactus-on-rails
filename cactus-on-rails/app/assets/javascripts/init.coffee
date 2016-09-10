$(document).bind 'turbolinks:load', ->
  Holder.run()
  $('#plants').DataTable(
    {
      "language": {
        "emptyTable": "No Plants have yet been added to your collection!",
        "lengthMenu": "Display _MENU_ Plants per page",
        "zeroRecords": "No plants match your filter",
        "info":           "Showing _START_ to _END_ of _TOTAL_ Plants in your Collection",
        "infoFiltered": "(filtered from _MAX_ total Plants in your Collection)",
        "loadingRecords": "Loading Plants...",
        "processing":     "Processing Plants...",
        "search":         "Search Plants:",
      }
    }
  )
