package practica_13

import com.google.gson.Gson
import grails.converters.JSON


class RestAPIController {
    def sessionFactory

    def index(){

        def session = sessionFactory.getCurrentSession()
        def series = new ArrayList()

        def papazon = session.createSQLQuery('SELECT  DEPARTAMENTO_ID departamento, COUNT(*) cantidad FROM CONTACTO_DEPARTAMENTOS CD GROUP BY DEPARTAMENTO_ID').list()
        for(Object o: papazon){
            def departamento = Departamento.findById((Integer)o[0])
            def serie =  new Serie()
            serie.setLabel(departamento.nombre)
            serie.setData((Integer)o[1])
            series.add(serie)
        }
        Gson gson = new Gson()
        print gson.toJson(series)
        render(gson.toJson(series))
    }

    def contactosCategoria(){

        def session = sessionFactory.getCurrentSession()
        def series = new ArrayList()
        def papazon = Contacto.withCriteria {
            projections{
                count()
                groupProperty('categoria')
            }
        }
        for(Object o: papazon){

            def serie =  new Serie()
            serie.setLabel(o[1].toString())
            serie.setData((Integer)o[0])
            series.add(serie)
        }
        Gson gson = new Gson()
        print gson.toJson(series)
        render(gson.toJson(series))

    }



    private class Serie{
        public String label
        public Integer data
        public Serie(){

        }

        String getLabel() {
            return label
        }

        void setLabel(String label) {
            this.label = label
        }

        Integer getData() {
            return data
        }

        void setData(Integer data) {
            this.data = data
        }
    }
}
