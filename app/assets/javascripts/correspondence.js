$('#correspondence_project_id').live('change', function(event) { 
  $('#correspondence_representative_id').find('option').remove();
  var id = $("#"+$(this).attr("id")+" :selected").val();
  if (id == "") {
    $('#correspondence_representative_id').attr('disabled', 'disabled');
  } else {
    $.get('/projects/'+id+'/representatives.json', function(representatives) {
      $.each(representatives, function(index, representative) {
        $('#correspondence_representative_id').append("<option id='"+representative.id+"' value='"+representative.id+"'>"+representative.first_name+" "+representative.surname+"</option>");
        $('#correspondence_representative_id').removeAttr('disabled');
      });
    });
  }
});