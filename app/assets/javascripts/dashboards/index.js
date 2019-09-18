$(function() {
    var reordered = function ($elements) {
        data = [];

        for (let i = 0; i < $elements.length; i++) {
            data.push({id: $elements[i].id.split('-').pop(), order: i})
        }

        return $.ajax({
            url: 'dashboards/reorder',
            type: 'PUT',
            contentType: 'application/json',
            data: JSON.stringify({dashboards: data}),
            success: function (result) {
                console.log(result);
            }
        })
    };

    $('.gridly').gridly({
        base: 60, // px
        gutter: 20, // px
        columns: 18,
        callbacks: {
            reordered: reordered
        }
    });
});