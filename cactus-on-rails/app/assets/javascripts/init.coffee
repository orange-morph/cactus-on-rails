$(document).on 'ready', ->
  $('.best_in_place').best_in_place()

  # Set and store an updated image url data attribute whenever the pot type is changed
  $('.pot_type_selector').on 'change', (event, data, status, xhr) ->
    val = $('.pot_type_selector').data('bip-value')
    pot_type_images = {
        'Plastic - standard' : 'pot_plastic_standard.png',
        'Plastic - orchid' : 'pot_orchid.png',
        'Terracotta - unglazed' : 'pot1.png',
        'Terracotta - glazed' : 'pot_terracotta_glazed.png',
        'Ceramic' : 'pot_ceramic.png',
        'Organic' : 'pot_bio.png',
        'Metal' : 'pot_other.png',
        'Other' : 'pot_unknown.png'
    }
    $('.pot_type_selector').data('pot-type-url', pot_type_images[val])

  # Use the stored url data attribute whenever the pot type successfully updates, to update the pot image
  $('.pot_type_selector').on 'ajax:success', (event, data, status, xhr) ->
    url = $('.pot_type_selector').data('pot-type-url')
    $('.pot-image').html('<img class="right-float-img" src="/assets/'+url+'" alt="" width="50" height="50">')

$(document).on 'ajax:success', (event, data, status, xhr) ->
  $('.best_in_place').best_in_place()

$(document).on 'ready page:load', ->
  $('a.galleried-elements').fancybox(
    {
      'transitionIn'  :   'elastic',
      'transitionOut' :   'elastic',
      'speedIn'       :   600,
      'speedOut'      :   200,
      'overlayShow'   :   true,
      'autoDimensions':   false,
      'autoScale'     :   false
    }
  )
  $('.datepicker').datepicker({
    dateFormat: "yy-mm-dd",
    showOn: "both",
    buttonText: "choose date",
    buttonImage: "../assets/images/calendar-30.png"
  })
  $('button.ui-datepicker-trigger').addClass('btn btn-default btn-sm')

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

