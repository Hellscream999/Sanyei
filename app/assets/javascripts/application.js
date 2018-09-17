// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require turbolinks
//= require jquery
//= require datatables
//= require bootstrap-sprockets
//= require_tree .

jQuery(document).ready(function() {
  $('#handymen-datatable').dataTable({
    "processing": true,
    "serverSide": true,
    "ajax": $('#handymen-datatable').data('source'),
    "pagingType": "full_numbers",
    "columns": [
      {"data": "id"},
      {"data": "profession"},
    ]
    // pagingType is optional, if you want full pagination controls.
    // Check dataTables documentation to learn more about
    // available options.
  });
  $('#users-datatable').dataTable({
     "processing": true,
     "serverSide": true,
     "ajax": $('#users-datatable').data('source'),
     "pagingType": "full_numbers",
     "columns": [
       {"data": "id"},
       {"data": "first_name"},
       {"data": "last_name"},
       {"data": "email"}
     ]
     // pagingType is optional, if you want full pagination controls.
     // Check dataTables documentation to learn more about
     // available options.
   });
}
);
