$('.project_stakeholder_remove').live('click', function(event) {
  var stakeholder = $(this).parent('td').parent('tr');
  stakeholder.css('background', 'red');

  $('#project_stakeholder_ids').children('#'+stakeholder.attr('stakeholder_id')).removeAttr("selected");
});

//$('#stakeholder_organisation').live('change', function(event) {
//  var id = $("#"+$(this).attr("id")+" :selected").val();
//  $.get('/stakeholders/'+id+'/representatives.json', function(representatives) {
//    $.each(representatives, function(index, representative) {
//      $('#stakeholder_representatives').append("<option id='"+representative.id+"' value='"+representative.id+"'>"+representative.first_name+" "+representative.surname+"</option>");
//    });
//  });
//});

$('#project_stakeholders_add').live('click', function(event) {
  $("#stakeholder_organisation option:selected").each( function() {
    $(this).remove().appendTo('#project_stakeholder_ids');
  });
});
