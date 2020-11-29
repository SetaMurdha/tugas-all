let NamaBarang = document.getElementById("NamaBarang");
let JenisBarang = document.getElementById("JenisBarang");
let HargaBarang = document.getElementById("HargaBarang");
let submit = document.getElementById("baru");

let data = (NamaBarang, JenisBarang, HargaBarang) => {
    let row = {};
    row.NamaBarang = NamaBarang,
    row.JenisBarang = JenisBarang,
    row.HargaBarang = HargaBarang
    return row;
}

const tambahdata = (data) => {
    const xhr= new XMLHttpRequest();
    xhr.open('POST','http://localhost/restApi1/api/Pertanian', true);
    xhr.setRequestHeader("Content-Type","application/json");
    xhr.send(data);
}

submit.addEventListener ("click", () =>{
    if(NamaBarang.value=="" || JenisBarang.value=="" || HargaBarang.value==""){
        alert("Data Tidak Boleh Kosong");
    }else {
        tambahdata(JSON.stringify(data(NamaBarang.value,JenisBarang.value,HargaBarang.value)));
        alert("Berhasil Tambah Data");
        document.location.href="./toko.html";
    }
})