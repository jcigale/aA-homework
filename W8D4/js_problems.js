function title(name) {
    titled = "Mx. " + name + " Jingleheimer Schmidt";
}

function print(el) {
    return console_log(el);
}

function titleize(array, callback) {
    let titled = array.map(title(el));
    titled.forEach(callback(ele));
}

titleize(["Mary", "Brian", "Leo"], print)