const menu = document.getElementById("menu_moder");
const rendercard = (Nama,JenisMakanan,MasaTahan,id) => {
    menu.innerHTML+=`<div class="card" style="width: 18rem; margin: 25px">
    <div class="card-body">
      <h5 class="card-title">${Nama}</h5>
      <h6 class="card-subtitle mb-2 text-muted">${JenisMakanan}</h6>
      <p class="card-text">Masa Tahan ${MasaTahan}</p>
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
                rendercard(e.Nama, e.JenisMakanan, e.MasaTahan, e.id);
            });
        }
    }
    xhr.open('GET','http://localhost/restApi/api/bahanMakanan', true);
    xhr.send();
}

tampilcard();