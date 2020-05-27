using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplicationMateriales
{
    public partial class _Default : Page
    {

        //ver como hacer jalar grid por medio de dropdown list
        

        protected void Page_Load(object sender, EventArgs e)
        {
            srvEmpleados.IsrvEmpleadosClient objDeptos = new srvEmpleados.IsrvEmpleadosClient();
            ddDeptos.DataSource = objDeptos.ObtenerDepartamentos();
            ddDeptos.DataBind();

            srvEmpleados.IsrvEmpleadosClient objEmpleado = new srvEmpleados.IsrvEmpleadosClient();
            grvMateriales.DataSource = objEmpleado.ObtenerEmpleadosPorDeptoId(1);
            grvMateriales.DataBind();
        }

        public void ddDeptos_FilterDropdown(object sender, EventArgs e)
        {
            if(IsPostBack == false)
            {
                var numDepto = ddDeptos.SelectedItem.Value;
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('" + numDepto + "');", true);
            }
        }

    }
}