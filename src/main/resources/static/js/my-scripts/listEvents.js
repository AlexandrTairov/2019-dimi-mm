_.templateSettings.variable = 'item';

var template = _.template(
    $('script.template').html()
);

fetch(`/api/events/`, {
    method: 'GET',
    headers: {
        'Content-Type': 'application/json;charset=utf-8'
    }
})
    .then(res => res.json())
    .then(res => {
        res.forEach(function (element) {
            console.log(element);
            $('.js-events').append(template(element));
        })
    })
    .catch(error => alert(error));

const tdStr = "сегодня";
const tmrStr = "завтра";
const datStr = "послезавтра";

function dateWrite(varDate) {
    var itemDate = moment(varDate);
    itemDate.lang('ru');
    var date = itemDate.format('DD-MM-YYYY');
    var nowMoment = moment().format('DD-MM-YYYY');
    var tom = moment().add('days', 1).format('DD-MM-YYYY');
    var dAT = moment().add('days', 2).format('DD-MM-YYYY');
    if (date === nowMoment) {
        return tdStr + " в " + itemDate.format('HH:mm');
    } else if (date === tom) {
        return tmrStr + " в " + itemDate.format('HH:mm');
    } else if (date === dAT) {
        return datStr + " в " + itemDate.format('HH:mm');
    }
    return date + " в " + itemDate.format('HH:mm');
}
