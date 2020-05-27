using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplicationMateriales
{
    public partial class _NuevoEmpleado : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            srvEmpleados.IsrvEmpleadosClient objDeptos = new srvEmpleados.IsrvEmpleadosClient();
            ddDepto.DataSource = objDeptos.ObtenerDepartamentos();
            ddDepto.DataBind();
        }
    }
}