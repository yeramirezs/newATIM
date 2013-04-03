# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

  some_sources     = Source.create([
                                    {:thesis_id =>  1,
                                     :title    => "Stiglitz2012",
                                     :citation => "The Price of Inequality: How Today's Divided Society Endangers Our Future," <<
                                                  " W. W. Norton & Company.El precio de la desigualdad, Taurus, ISBN 978-84-30600694.",
                                     :url      => "http://books.wwnorton.com/books/The-Price-of-Inequality",
                                     :analysis => ""
                                    },
                                    {:thesis_id =>  1,
                                     :title    => "Walras1896",
                                     :citation => "Walras, Leon (1896): Estudios de Economia Social, Segunda Seccion: " <<
                                                  "Vuotto, Mirta (compiladora) Economia Social," <<
                                                  "Precisiones Conceptuales y Algunas Experiencias Historicas: 17-36." <<
                                                  "Buenos Aires: Editorial Altamira, 2003.",
                                     :url      => "",
                                     :analysis => ""
                                    },
                                    {:thesis_id =>  1,
                                     :title    => "Gale1972",
                                     :citation => "Pure exchange equilibrium of dynamic economic models. " <<
                                                  "Department of Industrial Engineering, Operations Research" <<
                                                  "University of California, Berkeley, 1972",
                                     :url      => "http://www.karlshell.com/www/pdfs/gale73.pdf",
                                     :analysis => ""
                                    },
                                    {:thesis_id =>  2,
                                     :title    => "Debreu1959",
                                     :citation => "Theory of Value: An Axiomatic Analysis of Economic Equilibrium" <<
                                         " formal analysis of producer behavior, consumer behavior, general equilibrium," <<
                                         " and the optimality of the market mechanism for resource allocation" <<
                                         "University of Yale, New Haven, 1959",
                                     :url      => "http://books.google.com",
                                     :analysis => ""
                                    } ,
                                    {:thesis_id =>  3,
                                     :title    => "Stiglitz1981",
                                     :citation => "Theory of Commodity Price Stabilization" <<
                                          " by David M.G. Newbery and Joseph E. Stiglitz ISBN 0198284179 ISBN 978-0198284178,  " <<
                                          " Oxford University Press [Hardcover: 512 pages]",
                                     :url      => "",
                                     :analysis => ""
                                    }
                                  ])

  some_meetings    = Meeting.create([ {:title => "primera reunion", :fecha => "02/01/2013 8:30:00.0"},
                                      {:title => "segunda reunion", :fecha => "03/02/2013 9:30:00.0"},
                                      {:title => "tercera reunion", :fecha => "02/03/2013 9:30:00.0"} ])

  some_commitments = Commitment.create([
                                       {
                                        :title  => "Revision del trabajo de Hobbes",
                                        :description  => "Revision del trabajo de Hobbes y la naturaleza de formacion de la riqueza",
                                        :thesis_id  => "1",
                                        :meeting_id  => "1",
                                        :due_date  => "2013-03-10 09:30:00.0",
                                        :done  => false },

                                       {
                                        :title  => "Revision de Smith",
                                        :description  => "Revision del trabajo de A Smith y el libre mercado",
                                        :thesis_id  => "1",
                                        :meeting_id  => "1",
                                        :due_date  => "2013-03-17 09:00:00.0",
                                        :done  => true },

                                       {
                                        :title  => "Revision de tesis anteriores",
                                        :description  => "Revision de las tesis de grado anteriores relacionadas con el equilibrio economico",
                                        :thesis_id  => "1",
                                        :meeting_id  => "1",
                                        :due_date  => "2013-02-05 14:30:00.0",
                                        :done  => false },

                                       {
                                        :title  => "Estudio de institucionalidad colombiana",
                                        :description  => "Revision de la normatividad economica y fiscal colombiana",
                                        :thesis_id  => "1",
                                        :meeting_id  => "1",
                                        :due_date  => "2013-03-31 14:30:00.0",
                                        :done  => false },

                                       {
                                        :title  => "Estudio de la crisis del 98",
                                        :description  => "Revision de la crisis economica de 1998 y las medidas adoptadas para conjurarla",
                                        :thesis_id  => "1",
                                        :meeting_id  => "1",
                                        :due_date  => "2013-04-25 14:30:00.0",
                                        :done  => false },

                                       {
                                        :title  => "Identificacion de alternativas de modelos dinamicos",
                                        :description  => "Identificacion de alternativas de modelos dinamicos, ventajas y desventajas",
                                        :thesis_id  => "1",
                                        :meeting_id  => "2",
                                        :due_date  => "2013-02-10 14:30:00.0",
                                        :done  => false },

                                       {
                                        :title  => "Estudio del equilibrio economico de Walras",
                                        :description  => "Analisis de la economia de Walras",
                                        :thesis_id  => "1",
                                        :meeting_id  => "2",
                                        :due_date  => "2013-03-02 09:00:00.0",
                                        :done  => true },

                                       {
                                        :title  => "Estudio de calculos numericos del equilibrio",
                                        :description  => "Algoritmos para la computacion del equilibrio de Walras",
                                        :thesis_id  => "1",
                                        :meeting_id  => "3",
                                        :due_date  => "2013-03-10 14:30:00.0",
                                        :done  => false },

                                       {
                                        :title  => "Entendimiento de convergencia y precision del modelo",
                                        :description  => "Perdida de fidelidad y convergencia del Newton Ralphson",
                                        :thesis_id  => "1",
                                        :meeting_id  => "3",
                                        :due_date  => "2013-03-11 08:30:00.0",
                                        :done  => false },

                                       {
                                        :title  => "Analisis de creacion y destruccion de riqueza",
                                        :description  => "Analisis de la economia de Stiglitz",
                                        :thesis_id  => "2",
                                        :meeting_id  => "1",
                                        :due_date  => "2013-01-11 08:30:00.0",
                                        :done  => false },

                                       {
                                        :title  => "Analisis de Regulacion de mercados",
                                        :description  => "Maximizacion de creacion de riqueza con mercados des-regulados segun Friedman",
                                        :thesis_id  => "2",
                                        :meeting_id  => "2",
                                        :due_date  => "2013-02-11 14:30:00.0",
                                        :done  => false },

                                       {
                                        :title  => "Analisis de desigualdades del mercado",
                                        :description  => "Maximizacion de desigualdades en mercados no regulados, segun Stiglitz",
                                        :thesis_id  => "2",
                                        :meeting_id  => "2",
                                        :due_date  => "2013-03-01 08:30:00.0",
                                        :done  => false },

                                       {
                                        :title  => "Analisis de la intervencion del estado",
                                        :description  => "Intervencion del estado y estabilidad economica",
                                        :thesis_id  => "3",
                                        :meeting_id  => "1",
                                        :due_date  => "2013-03-19 08:30:00.0",
                                        :done  => false },

                                       {
                                        :title  => "Analisis de la superintendencia financiera",
                                        :description  => "Funciones de la superintendencia financiera y la contraloria",
                                        :thesis_id  => "3",
                                        :meeting_id  => "2",
                                        :due_date  => "2013-03-11 08:30:00.0",
                                        :done  => false },

                                       {
                                        :title  => "Analisis del flujo de circulante",
                                        :description  => "Funciones del banco de la republica y la disponibilidad de dinero",
                                        :thesis_id  => "3",
                                        :meeting_id  => "2",
                                        :due_date  => "2013-03-03 14:30:00.0",
                                        :done  => false },

                                       {
                                        :title  => "Analisis de las tasas de interes",
                                        :description  => "El efecto de las tasas de interes sobre la creacion de empleo",
                                        :thesis_id  => "3",
                                        :meeting_id  => "2",
                                        :due_date  => "2013-03-07 08:30:00.0",
                                        :done  => false },

                                       {
                                        :title  => "Analisis de importaciones y exportaciones",
                                        :description  => "Analisis de la balanza comercial del pais y la formacion de capital",
                                        :thesis_id  => "3",
                                        :meeting_id  => "2",
                                        :due_date  => "2013-03-09 08:30:00.0",
                                        :done  => false }

                    ])

some_teachers =   Teacher.create([ { :name =>"ahl", :email =>"ahl@uniandes.edu.co", :created_at =>"01/04/2012", :updated_at =>"01/05/2012"}])

some_thesis =    Thesis.create([{ :title =>"El equilibrio economico dinamico",
                                  :description => "Analisis del equilibrio economico desde Walras hasta los economistas actuales",
                                  :teacher_id  => 1},

                                { :title =>"Los mercados no regulados y la destrucion del tejido social",
                                  :description => "Estudio sobre el efecto de la desregulacion de mercados y el aumento de la pobreza, segun Steinberg",
                                  :teacher_id  => 1},

                                { :title =>"Reactivacion economica post depresion",
                                    :description => "La influencia del estado durante la crisis economica y su estabilizacion posterior",
                                    :teacher_id  => 1}

                               ])



