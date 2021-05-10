let i = document.querySelector('#weighing');
if (i) {
    i.addEventListener('click', t);
}

let doc = document.querySelector('#doc');
if (doc) {
    doc.addEventListener('blur', showDoc);
}

let weight = document.querySelector('[id$=_weight]');
let weightBooked = document.querySelector('[id$=_weightBooked]');
if (weight) {
    weightBooked.addEventListener('input', calcShort);
}

if (weightBooked) {
    weightBooked.addEventListener('input', calcShort);
}

function calcShort() {
    let short = document.querySelector('[id$=_short]');
    let w = weight.value;
    let b = weightBooked.value;
    short.value = (w * 100 - b * 100) / 100;
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
                fetch(location.origin + '/api/children?sn=' + doc.value)
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
                    })
            }
        });
}

function t() {
    console.log(i);
    let w = document.querySelector('[id$=_weight]');
    w.value = +(1 + Math.random()).toFixed(2);
}

let path = window.location.pathname
let as= document.querySelectorAll('#menu li ul li a');
for (const a of as) {
    console.log(a.pathname);
    if (path == a.pathname) {
        a.classList.add('active');
        a.parentElement.classList.add('active');
        a.parentElement.parentElement.classList.add('in');
        a.parentElement.parentElement.parentElement.classList.add('active');
    }
}

// addEventListener to #exportbtn
var expbtn = document.getElementById('export');
if(expbtn) expbtn.addEventListener("click", tbl2xlsx);

function tbl2xlsx(){
    var tbl = document.querySelector('table');
    let filename = document.querySelector('.container-fluid h1').innerText;

    // write workbook
    //var wb = XLSX.utils.table_to_book(tbl, {sheet: sheetname});
    var wb = XLSX.utils.table_to_book(tbl);

    /*
    if (filename == '统计汇总') {
        // rename first sheet's name. don't know how to rename, so clone a new element
        var sheetname = tbl.firstElementChild.firstElementChild.firstElementChild.innerText;
        wb.Sheets[sheetname] = wb.Sheets[wb.SheetNames[0]];
        wb.SheetNames[0] = sheetname;

        while (tbl){
            tbl.id="";
            tbl = document.getElementById('report_table');
            if (tbl){
                // append a sheet to workbook
                var ws = XLSX.utils.table_to_sheet(tbl);
                sheetname = tbl.firstElementChild.firstElementChild.firstElementChild.innerText;
                XLSX.utils.book_append_sheet(wb, ws, sheetname);
            }
        }
    }
    */

    var t = new Date();
    var date = '';
    date += t.getFullYear()
        + ('0' + (t.getMonth() + 1)).slice(-2)
        + ('0' + t.getDate()).slice(-2)
        + ('0' + t.getHours()).slice(-2)
        + ('0' + t.getMinutes()).slice(-2)
        + ('0' + t.getSeconds()).slice(-2);
    filename += '_' + date + '.xlsx' ;

    XLSX.writeFile(wb, filename ,{bookType: "xlsx"});
}
