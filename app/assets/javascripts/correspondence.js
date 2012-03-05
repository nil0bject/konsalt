
$('#correspondence_project_id').live('change', function(event) { 
  $('#correspondence_stakeholder_id').empty().append("<option>Please select</option>");
  $('#correspondence_representative_id').empty();
  var id = $("#"+$(this).attr("id")+" :selected").val();
  if (id == "") {
    $('#correspondence_stakeholder_id').attr('disabled', 'disabled');
    $('#correspondence_representative_id').attr('disabled', 'disabled');
  } else {
    $.get('/projects/'+id+'/stakeholders.json', function(stakeholders) {
      $.each(stakeholders, function(index, stakeholder) {
        $('#correspondence_stakeholder_id').append("<option id='"+stakeholder.id+"' value='"+stakeholder.id+"'>"+stakeholder.organisation+"</option>");
        $('#correspondence_stakeholder_id').removeAttr('disabled');
      });
    });
  }
});

$('#correspondence_stakeholder_id').live('change', function(event) {
  $('#correspondence_representative_id').empty().append("<option>Please select</option>");
  var id = $("#"+$(this).attr("id")+" :selected").val();
  if (id == "") {
    $('#correspondence_representative_id').attr('disabled', 'disabled');
  } else {
    $('#correspondence_representative_id').attr('disabled', 'disabled');
    $.get('/stakeholders/'+id+'/representatives.json', function(representatives) {
      $.each(representatives, function(index, representative) {
        $('#correspondence_representative_id').append("<option id='"+representative.id+"' value='"+representative.id+"'>"+representative.first_name+" "+representative.surname+"</option>");          $('#correspondence_representative_id').removeAttr('disabled');
      });
    });
  }
});