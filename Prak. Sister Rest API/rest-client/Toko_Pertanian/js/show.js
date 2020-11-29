const menu = document.getElementById("menu_moder");
const rendercard = (NamaBarang,JenisBarang,HargaBarang,id) => {
    menu.innerHTML+=`<div class="card" style="width: 18rem; margin: 25px">
    <div class="card-body">
      <h5 class="card-title">${NamaBarang}</h5>
      <h6 class="card-subtitle mb-2 text-muted">${JenisBarang}</h6>
      <p class="card-text">Harga Rp. ${HargaBarang}</p>
      <button class="btn btn-primary" onclick="transisiupdate(${id})">Ubah</button>
      <button  class="btn btn-primary" onclick="hapus(${id})">Hapus</button>
    </div>
  </div>`;
}

const tampilcard = () => {
    const xhr= new XMLHttpRequest();
    xhr.onreadystatechange = () => {
        if (xhr.readyState == 4 && xhr.status == 200){
            const data = JSON.parse(xhr.responseText);
            data["data"].forEach((e) => {
                rendercard(e.NamaBarang, e.JenisBarang, e.HargaBarang, e.id);
            });
        }
    }
    xhr.open('GET','http://localhost/restApi1/api/Pertanian', true);
    xhr.send();
}

tampilcard();