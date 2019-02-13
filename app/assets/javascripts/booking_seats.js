$(document).on('turbolinks:load', function() {
  $('#select_cinema').on('change', function(){
    $('#locationp').text($("#select_cinema option:selected").text());
    $.ajax({
      url: 'filter_auditoria',
      type: "GET",
      data: {cinema_id: $(this).val()}
    }).done(function(response){
      var auditoria = response["auditoria"];
      $('#select_auditorium').children().remove();
      for(var i=0; i< auditoria.length; i++){
        $("#select_auditorium").append('<option value="' + auditoria[i]["id"] + '">' + auditoria[i]["name"] + '</option>');
      }
    })
  });
  $('#select_auditorium').on('change', function(){
    $('#auditoriump').text($("#select_auditorium option:selected").text());
    $.ajax({
      url: 'get_schedules',
      type: "GET",
      data: {auditorium_id: $(this).val()}
    }).done(function(response){
      var schedules = response["schedules"];
      console.log(response['schedules']);
      for(var i=0; i< schedules.length; i++){
        $('.order-date').append('<li><a href="javascript:;"><i>' + schedules[i]['start_time'] + '</i></a></li>');
      }
    })
  })

});
