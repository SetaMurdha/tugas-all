let Nama = document.getElementById("Nama");
let JenisMakanan = document.getElementById("JenisMakanan");
let MasaTahan = document.getElementById("MasaTahan");
let submit = document.getElementById("baru");

let data = (Nama, JenisMakanan, MasaTahan) => {
    let row = {};
    row.Nama = Nama,
    row.JenisMakanan = JenisMakanan,
    row.MasaTahan = MasaTahan
    return row;
}

const tambahdata = (data) => {
    const xhr= new XMLHttpRequest();
    xhr.open('POST','http://localhost/restApi/api/bahanMakanan', true);
    xhr.setRequestHeader("Content-Type","application/json");
    xhr.send(data);
}

submit.addEventListener ("click", () =>{
    if(Nama.value=="" || JenisMakanan.value=="" || MasaTahan.value==""){
        alert("Data Tidak Boleh Kosong");
    }else {
        tambahdata(JSON.stringify(data(Nama.value,JenisMakanan.value,MasaTahan.value)));
        alert("Berhasil Tambah Data");
        document.location.href="./bahanMentah.html";
    }
})