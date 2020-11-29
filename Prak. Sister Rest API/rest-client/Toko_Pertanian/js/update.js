// let nama2 = document.getElementById("nama2");
// let harga2 = document.getElementById("harga2");
// let deskripsi2 = document.getElementById("deskripsi2");
// let gambar2 = document.getElementById("gambar2");
let save = document.getElementById("ganti");
let idx = document.getElementById("idx");
let identitas = 0;


let data2 = (id,NamaBarang, JenisBarang, HargaBarang) => {
    let row = {};
    row.id = id
    row.NamaBarang = NamaBarang,
    row.HargaBarang = JenisBarang,
    row.HargaBarang = HargaBarang
    return row;
}


const ubahdata = (data) => {
    const xhr= new XMLHttpRequest();
    xhr.open('PUT','http://localhost/restApi1/api/Pertanian', true);
    xhr.setRequestHeader("Content-Type","application/json");
    xhr.send(data);
}


const transisiupdate = (id) =>{
    localStorage.setItem("identitas",id);
    document.location.href="./ubah.html";
   
}


