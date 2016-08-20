// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require jquery-ui
//= require moment
//= require bootstrap-datetimepicker
//= require wice_grid
//= require turbolinks
//= require_tree .
$(document).ready(function() {
  $.fn.datetimepicker.dates = {
      ja: {
        days: ["日曜", "月曜", "火曜", "水曜", "木曜", "金曜", "土曜", "日曜"],
        daysShort: ["日", "月", "火", "水", "木", "金", "土", "日"],
        daysMin: ["日", "月", "火", "水", "木", "金", "土", "日"],
        months: ["1月", "2月", "3月", "4月", "5月", "6月", "7月", "8月", "9月", "10月", "11月", "12月"],
        monthsShort: ["1月", "2月", "3月", "4月", "5月", "6月", "7月", "8月", "9月", "10月", "11月", "12月"]
      }
  };
  $('input[type=date]').datetimepicker({
    format: 'YYYY-MM-DD',
    language: 'ja',
    autoclose: 'true',
    pickTime: false,
  });
  $('input[type=time]').datetimepicker({
    format: "HH:mm",
    language: 'ja',
    autoclose: 'true',
    minuteStepping:10,
    pickDate: false,
  });
});