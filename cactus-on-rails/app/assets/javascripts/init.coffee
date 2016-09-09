$(document).bind 'turbolinks:load', ->
  Holder.run()
  $('#plants').DataTable()