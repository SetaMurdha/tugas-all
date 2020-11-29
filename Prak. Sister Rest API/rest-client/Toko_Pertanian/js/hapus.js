const hapus = (id) => {
    const xhr= new XMLHttpRequest()
    xhr.onreadystatechange=() =>{
        if (xhr.readyState == 4 && xhr.status==200){
            alert("Data Berhasil Dihapus");
            menu.innerHTML="";
            tampilcard();
        }
    }
    xhr.open('DELETE','http://localhost/restApi1/api/Pertanian', true);
    xhr.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
    xhr.send(`id=${id}`);
}