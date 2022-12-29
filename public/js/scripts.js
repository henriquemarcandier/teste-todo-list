function abreFecha(id){
    if (document.getElementById(id).style.display == ""){
        document.getElementById(id).style.display = "none";
    }
    else{
        document.getElementById(id).style.display = "";
    }
}

function fecha(id){
    document.getElementById(id).style.display = "none";
}

function filtro(url){
    location.href=url+"/"+$("#dataFiltro").val();
}