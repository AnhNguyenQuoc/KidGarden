# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery ->
    $(document).on 'turbolinks:load', ->
        district = $("select[name='employment[district_id]']").html()
        $('#employment_province_id').change ->
            province = $('#employment_province_id :selected').text()
            options = $(district).filter("optgroup[label='#{province}']").html()
            if options
                $("select[name='employment[district_id]']").html(options)
                $("select[name='employment[district_id]']").parent().show()
            else
                $("select[name='employment[district_id]']").empty()
                $("select[name='employment[district_id]']").parent().hide()