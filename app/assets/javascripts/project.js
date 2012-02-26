$('.project_representative_remove').live('click', function(event) {

  var representative = $(this).parent('td').parent('tr');
  representative.css('background', 'red');

  $('#project_representative_ids').children('#'+representative.attr('representative_id')).removeAttr("selected");
});

$('#stakeholder_organisation').live('change', function(event) {
  var id = $("#"+$(this).attr("id")+" :selected").val();
  $.get('/stakeholders/'+id+'/representatives.json', function(representatives) {
    $.each(representatives, function(index, representative) {
      $('#stakeholder_representatives').append("<option id='"+representative.id+"' value='"+representative.id+"'>"+representative.first_name+" "+representative.surname+"</option>");
    });
  });
});

$('#project_representatives_add').live('click', function(event) {
  $("#stakeholder_representatives option:selected").each( function() {
    $(this).remove().appendTo('#project_representative_ids');
  });
});
