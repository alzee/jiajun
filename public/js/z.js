let i = document.querySelector('#weighing');
if (i) {
    i.addEventListener('click', t);
}

let doc = document.querySelector('#doc');
if (doc) {
    doc.addEventListener('blur', showDoc);
}

function showDoc() {
    let docTable = document.querySelector('#docTable');
    let saveBtn = document.querySelector('#saveBtn');
    fetch(location.origin + '/api/mains?sn=' + doc.value)
    .then(response => response.json())
    .then(data => {
        if (data.length > 0) {
            console.log(data);
            let sn = document.querySelector('#sn');
            let date = document.querySelector('#date');
            let dueDate = document.querySelector('#dueDate');
            let countPiece = document.querySelector('#countPiece');
            let countChild = document.querySelector('#countChild');
            let perWeight = document.querySelector('#perWeight');
            let totalWeight = document.querySelector('#totalWeight');
            let note = document.querySelector('#note');
            sn.innerText = data[0].sn;
            date.innerText = data[0].date;
            dueDate.innerText = data[0].dueDate;
            countPiece.innerText = data[0].countPiece;
            countChild.innerText = data[0].countChild;
            perWeight.innerText = data[0].perWeight;
            totalWeight.innerText = data[0].totalWeight;
            note.innerText = data[0].note;
            docTable.classList.remove('d-none');
            saveBtn.disabled = false;
        }
        else {
            docTable.classList.add('d-none');
            saveBtn.disabled = true;
        }
    }
    );
}

function t() {
    console.log(i);
    let w = document.querySelector('[id$=_weight]');
    w.value = +(1 + Math.random()).toFixed(2);
}
