$(() => {
  tabla(0);
  /*$('#confirmarModal').on('show.bs.modal', function(event) {
        var button = $(event.relatedTarget) // Botón que activó el modal
        var recipient = button.data('whatever') // Extrer datos from data-* attributes
            // Si es necesario, puede iniciar una solicitud AJAX aquí (y luego realizar la actualización en una devolución de llamado).
            // Actualizar el contenido modal. Usaremos jQuery aquí, pero podría usar una biblioteca de enlace de datos u otros métodos en su lugar.
        const modal = $(this)
        modal.find('.modal-title').text('New message to ' + recipient)
        modal.find('.modal-body input').val(recipient)
    })*/
});

const Toast = Swal.mixin({
  toast: true,
  position: "center",
  showCloseButton: true,
  showConfirmButton: false,
  timerProgressBar: true,
  didOpen: (toast) => {
    toast.addEventListener("mouseenter", Swal.stopTimer);
    toast.addEventListener("mouseleave", Swal.resumeTimer);
  },
});

function tabla(todos) {
  return new Promise((resolve, reject) => {
    let usa_rango = 0;
    const data = new FormData();
    if (todos) {
      $("#valor-th").show();
      if ($("#txt-inicio").val() != "" && $("#txt-final").val() != "") {
        usa_rango = 1;
        console.log($("#txt-inicio").val());
        console.log($("#txt-final").val());
        data.append(
          "inicio",
          moment(
            $("#txt-inicio").val(),
            moment.HTML5_FMT.DATETIME_LOCAL
          ).format("YYYY-MM-DD HH:mm:ss")
        );
        data.append(
          "final",
          moment($("#txt-final").val(), 
          moment.HTML5_FMT.DATETIME_LOCAL
          ).format(
            "YYYY-MM-DD HH:mm:ss"
          )
        );
      }
    }
    let url = "procesar.php";

    data.append("accion", 1); //Case 1
    data.append("todos", todos);
    data.append("usa_rango", usa_rango);
    fetch(url, {
      method: "POST", // or 'PUT'
      body: data,
    })
      .then((res) => res.text())
      .then((html) => {
        document.getElementById("tabla-parqueo").innerHTML = html;
        resolve();
      })
      .catch((error) => console.error("Error:", error));
  });
}

document.addEventListener(
  "submit",
  function (event) {
    event.preventDefault();

    //revisar las validaciones html
    let ele = document.getElementById("form-parqueo");
    let chk_status = ele.checkValidity();
    ele.reportValidity();

    if (chk_status) {
      let url = "procesar.php";
      const data = new FormData(document.getElementById("form-parqueo"));
      data.append("accion", 2); //Case 2
      data.append("ignorar", "no");
      fetch(url, {
        method: "POST",
        body: data,
      })
        .then((res) => {
          tabla(0);
          return res.json();
        })
        .then((resultado) => {
          // chequearParqueo(data.get('numparqueo'));
          if (resultado.estado_placa == "repetida") {
            Swal.fire({
              title: 'Placa "<i>' + data.get("placa") + '</i>" repetida',
              text: "¿Desea continuar?",
              icon: "warning",
              showCancelButton: true,
              confirmButtonColor: "#3085d6",
              cancelButtonColor: "#d33",
              confirmButtonText: "Continuar",
              cancelButtonText: "Cancelar",
            }).then((result) => {
              if (result.isConfirmed) {
                data.set("ignorar", "si");
                fetch(url, {
                  method: "POST",
                  body: data,
                })
                  .then((res) => {
                    tabla(0);
                    return res.json();
                  })
                  .then((respuesta) => {
                    $("#form-parqueo")[0].reset();
                    console.log(respuesta);
                    if (respuesta.placa !== null) {
                      if (respuesta.placa.valor == 0) {
                        Toast.fire({
                          icon: "success",
                          title:
                            "Placa: " +
                            data.get("placa") +
                            " ya ha ingresado hoy, se acumulará el tiempo.",
                        });
                      }
                    }
                  })
                  .catch((error) => console.error("Error:", error));
              }
            });
          } else {
            $("#form-parqueo")[0].reset();
            console.log(resultado);
            if (resultado.placa !== null) {
              if (resultado.placa.valor == 0) {
                Toast.fire({
                  icon: "success",
                  title:
                    "Placa: " +
                    data.get("placa") +
                    " ya ha ingresado hoy, se acumulará el tiempo.",
                });
              }
            }
          }
        })
        .catch((error) => console.error("Error:", error));
    }
  },
  true
);

const verFila = (id, fechaentrada) => {
  //Constante para visualizar datos ingresados
  let url = "procesar.php";
  const data = new FormData();
  data.append("accion", 3); //Case 3
  data.append("id", id);
  data.append("fechaentrada", fechaentrada);
  fetch(url, {
    method: "POST", // or 'PUT'
    body: data,
  })
    .then((res) => res.text())
    .then((html) => {
      document.getElementById("info-fila").innerHTML = html;
    })
    .catch((error) => console.error("Error:", error));
};
const verTicket = (id) => {
  //Constante para visualizar datos ingresados
  let url = "procesar.php";
  const data = new FormData();
  data.append("accion", 6); //Case 6
  data.append("id", id);
  fetch(url, {
    method: "POST", // or 'PUT'
    body: data,
  })
    .then((res) => res.text())
    .then((html) => {
      document.getElementById("ticket-fila").innerHTML = html;
    })
    .catch((error) => console.error("Error:", error));
};

const verConsulta = (id, fechaentrada) => {
  //Constante para visualizar datos ingresados
  let url = "procesar.php";
  const data = new FormData();
  data.append("accion", 8); //Case 8
  data.append("id", id);
  data.append("fechaentrada", fechaentrada);
  fetch(url, {
    method: "POST", // or 'PUT'
    body: data,
  })
    .then((res) => res.text())
    .then((html) => {
      document.getElementById("info-consulta").innerHTML = html;
    })
    .catch((error) => console.error("Error:", error));
};

const guardarPago = (id, final, valor) => {
  //Constante para guardar pago
  let url = "procesar.php";
  const data = new FormData();
  data.append("accion", 4); //Case 4
  data.append("id", id);
  data.append("fechasalida", final);
  data.append("valor", valor);
  fetch(url, {
    method: "POST", // or 'PUT'
    body: data,
  })
    .then((res) => {
      $("#confirmarModal").modal("hide");
      $("body").removeClass("modal-open");
      $(".modal-backdrop").remove();
      tabla(0);
      return res.text();
    })
    .then((html) => {
      console.log(html);
    })
    .catch((error) => console.error("Error:", error));
};
/*
async function ExportToExcel(type, fn, dl) { //Función para exportar registros guardados a la hoja de cálculo
  await tabla(1);
  var elt = document.getElementById('parkingTable');
  var wb = XLSX.utils.table_to_book(elt, { sheet: "Hoja1"});
  $("#valor-th").hide();
  tabla(0);
  return dl ?
      XLSX.write(wb, { bookType: type, bookSST: true, type: 'base64' }) :
      XLSX.writeFile(wb, fn || (`Reporte Parqueo Provenzal.${type || 'xlsx'}`));
}
*/
async function ExportToExcel(obj) {
  await tabla(1);
  var tab_text = 
  "<meta http-equiv='Content-Type' content='text/html; charset=utf-8' /><meta charset='utf-8'/><table border='1px'><thead> <tr style='color: #fff; background: #283542;'>";
  var j = 0;
  tab = document.getElementById("parkingTable")
  $("#valor-th").hide();
  tabla(0);


  for (j = 0; j < tab.rows.length; j++) {
    tab_text = tab_text + tab.rows[j].innerHTML + "</tr>";
    //tab_text=tab_text+"</tr>";
  }

  tab_text = tab_text + "</table><thead>";
  tab_text = tab_text.replace(/<A[^>]*>|<\/A>/g, ""); //remove if u want links in your table
  tab_text = tab_text.replace(/<img[^>]*>/gi, ""); // remove if u want images in your table
  tab_text = tab_text.replace(/<input[^>]*>|<\/input>/gi, ""); // reomves input params

  var uri = 'data:application/vnd.ms-excel;charset=UTF-8,'+ encodeURIComponent(tab_text);

  var downloadLink = document.createElement("a");
  downloadLink.href = uri;
  downloadLink.download = "Reporte Parqueo Provenzal.xls";
  
  document.body.appendChild(downloadLink);
  downloadLink.click();
  document.body.removeChild(downloadLink);


}


function printDiv() {
  //Función para imprimir modal
  window.print();
}

const chequearParqueo = (numParqueo) => {
  //Chequear parqueo
  console.log(numParqueo);
  if (numParqueo != "") {
    let url = "procesar.php";
    const data = new FormData();
    data.append("accion", 5); //Case 5
    data.append("parqueo", numParqueo);
    fetch(url, {
      method: "POST", // or 'PUT'
      body: data,
    })
      .then((res) => res.json())
      .then((result) => {
        console.log(result);
        if (result.resultado == "ocupado") {
          $("#btn-submit").prop("disabled", true);
          $("#alerta").text(result.mensaje);
          $("#alerta").removeClass("d-none");
        } else {
          if (result.resultado == "libre") {
            $("#alerta").addClass("d-none");
            $("#btn-submit").prop("disabled", false);
          } else {
            $("#btn-submit").prop("disabled", true);
            alert(result.mensaje);
          }
        }
      })
      .catch((error) => console.error("Error:", error));
  } else {
    $("#btn-submit").prop("disabled", true);
  }
};

const eliminarFila = (numParqueo, visitante) => {
  Swal.fire({
    title: "Eliminar registro",
    text: "¿Estás seguro de eliminar el visitante " + visitante + "?",
    icon: "warning",
    showCancelButton: true,
    confirmButtonColor: "#3085d6",
    cancelButtonColor: "#d33",
    confirmButtonText: "¡Sí, borrarlo!",
    cancelButtonText: "No",
  }).then((result) => {
    if (result.isConfirmed) {
      let url = "procesar.php";
      const data = new FormData();
      data.append("accion", 7); //Case 7
      data.append("id", numParqueo);
      fetch(url, {
        method: "POST", // or 'PUT'
        body: data,
      })
        .then((res) => {
          tabla(0);
          return res.text();
        })
        .then((html) => {
          console.log(html);
          Swal.fire(
            "Borrado!",
            "Visitante " + visitante + " ha sido borrado.",
            "success"
          );
        })
        .catch((error) => console.error("Error:", error));
    }
  });
};
