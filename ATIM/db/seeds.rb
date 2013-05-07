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
                                     :citation => "Stiglitz, Joseph, The Price of Inequality: How Today's Divided Society Endangers Our Future," <<
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
                                     :citation => "Gale, Kirk, Pure exchange equilibrium of dynamic economic models. " <<
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

  some_meetings    = Meeting.create([ {:title => "Reunion inicial",           :thesis_id =>  1, :fecha => "02/01/2013 8:30:00.0"},
                                      {:title => "Reunion de seguimiento 1",  :thesis_id =>  1, :fecha => "03/02/2013 9:30:00.0"},
                                      {:title => "Reunion de seguimiento 2",  :thesis_id =>  1, :fecha => "02/03/2013 9:30:00.0"},
                                      {:title => "Reunion inicial",           :thesis_id =>  2, :fecha => "02/01/2013 8:30:00.0"},
                                      {:title => "Reunion de seguimiento 1",  :thesis_id =>  2, :fecha => "03/02/2013 9:30:00.0"},
                                      {:title => "Reunion de seguimiento 2",  :thesis_id =>  2, :fecha => "02/03/2013 9:30:00.0"},
                                      {:title => "Reunion inicial",           :thesis_id =>  3, :fecha => "02/01/2013 8:30:00.0"},
                                      {:title => "Reunion de seguimiento 1",  :thesis_id =>  3, :fecha => "03/02/2013 9:30:00.0"},
                                      {:title => "Reunion de seguimiento 2",  :thesis_id =>  3, :fecha => "02/03/2013 9:30:00.0"} ])

  some_meeting_resources = MeetingResource.create([ { :thesis_id => 1, :meeting_id => 7, :description => "reunion 1, recurso 1", :file_name => "seguridad, the inevitability of failure.pdf"},
                                                    { :thesis_id => 1, :meeting_id => 7, :description => "reunion 1, recurso 2", :file_name => "Tulips.jpg"}
                                                  ])

  some_notes       = MeetingNote.create([ { :note       => "El cronograma del proyecto va atrasado en un 10%",
                                            :thesis_id  => 1,
                                            :meeting_id => 1
                                          },
                                          { :note       => "Se sugiere la practica del metodo de optimizacion de Newton",
                                            :thesis_id  => 1,
                                            :meeting_id => 2
                                          },
                                          { :note       => "Se sugiere el estudio del equilibrio dinamico de Walras\n" <<
                                                           "Se sugiere disenar una estrategia para reducir el atraso del cronograma",
                                            :thesis_id  => 1,
                                            :meeting_id => 3
                                          },
                                          { :note       => "Se examino y aprobo el enfoque de investigacion\n" <<
                                                           "Se identificaron los entregables de la primera etapa de la tesis"  ,
                                            :thesis_id  => 2,
                                            :meeting_id => 1
                                         },
                                          { :note       => "Se sugiere el estudio del trabajo de Hobbes",
                                            :thesis_id  => 2,
                                            :meeting_id => 2
                                          },
                                          { :note       => "Se examino el capitulo 1 presentado",
                                            :thesis_id  => 2,
                                            :meeting_id => 3
                                          },
                                          { :note       => "Se recomendo la lectura de Stigitz",
                                            :thesis_id  => 3,
                                            :meeting_id => 1
                                          },
                                          { :note       => "Se recomendo la lectura de la normatividad colombiana",
                                            :thesis_id  => 3,
                                            :meeting_id => 2
                                          },
                                          { :note       => "Se examino el problema de la crisis de 1998 y sus lecciones aprendidas",
                                            :thesis_id  => 3,
                                            :meeting_id => 3
                                          }
                                       ])


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

some_teachers =   Teacher.create([ { :name =>"Dario Correal",    :email =>"dCorreal@uniandes.edu.co"},
                                   { :name =>"Jorge Villalobos", :email =>"jVillalobos@uniandes.edu.co"},
                                   { :name =>"Yezid Donoso",     :email =>"yDonoso@uniandes.edu.co"},
                                   { :name =>"Ruby Casallas",    :email =>"rCasallas@uniandes.edu.co"}
                                ])

some_students =   Student.create([ { :name =>"Jaime Romero",    :email =>"ja.romero940@uniandes.edu.co", :thesis_id=>  1},
                                   { :name =>"Andres Castillo", :email =>"a.castillo12@uniandes.edu.co", :thesis_id=>  2},
                                   { :name =>"Yezid Ramirez",   :email =>"ye.ramirez26@uniandes.edu.co", :thesis_id=>  3},
                                   { :name =>"Alvaro Lopez",    :email =>"ah.lopez10@uniandes.edu.co",   :thesis_id=>  3}
                                ])

some_thesis =    Thesis.create([{ :title       => "El equilibrio economico dinamico",
                                  :description => "Analisis del equilibrio economico desde Walras hasta los economistas actuales",
                                  :teacher_id  => 1
                                  :state => "Inactiva"
                                },
                                { :title       => "Los mercados no regulados y la destrucion del tejido social",
                                  :description => "Estudio sobre el efecto de la desregulacion de mercados y el aumento de la pobreza, segun Steinberg",
                                  :teacher_id  => 2
                                  :state => "Inactiva"
                                },
                                { :title       => "Reactivacion economica post depresion",
                                  :description => "La influencia del estado durante la crisis economica y su estabilizacion posterior",
                                  :teacher_id  => 3
                                  :state => "Inactiva"
                                }
                               ])

some_deliverables = Deliverable.create ([
                                  { :title       => "Capitulo 1. El problema a resolver",
                                    :thesis_id   => 1,
                                    :description => "Descripcion del problema de equilibrio y de las diferentes alternativas para estudiarlo",
                                    :file_name   => "t1-01, definicion del problema.doc"
                                  },
                                  { :title       => "Capitulo 2. Descripcion de una economia en equilibrio dinamico",
                                    :thesis_id   => 1,
                                    :description => "Estudio sobre el efecto de la desregulacion de mercados y el aumento de la pobreza, segun Steinberg",
                                    :file_name   => "t1-02, equilibrio dinamico, perspectiva historica.doc"
                                  },
                                  { :title       => "Capitulo 3. Modelo de equilibrio propuesto",
                                    :thesis_id   => 1,
                                    :description => "Modelo de equilibrio, convergencia de oferta y demanda bajo precios inestables",
                                    :file_name   => "t1-03, Modelo de equilibrio dinamico y su estabilidad.doc"
                                  },
                                  { :title       => "Capitulo 4. Controlabilidad del modelo",
                                    :thesis_id   => 1,
                                    :description => "Controlabilidad del modelo ante diferentes escenarios de parametros de entrada y situacion inicial",
                                    :file_name   => "t1-04, El modelo y su controlabilidad. Los parametros de control.doc"
                                  },
                                  { :title       => "Capitulo 1. Informacion requerida para tomar decisiones microeconomicas",
                                    :thesis_id   => 2,
                                    :description => "La informacion para tomar decisiones y su disponibilidad",
                                    :file_name   => "t2-01, las decisiones se toman con informacion, quien la tiene.doc"
                                  },
                                  { :title       => "Capitulo 2. Los efectos perversos de las asimetrias de informacion",
                                    :thesis_id   => 2,
                                    :description => "Efecto de la asimetria de informacion sobre la distribucion de riqueza",
                                    :file_name   => "t2-02, acceso a la informacion, efectos de la asimetria.doc"
                                  },
                                  { :title       => "Capitulo 3. Impacto sobre la sociedad de la asimetria de informacion",
                                    :thesis_id   => 2,
                                    :description => "Los efectos visibles de la asimetria de informacion",
                                    :file_name   => "t2-03, La concentracion de riqueza por efecto de la asimetria de informacion.doc"
                                  },
                                  { :title       => "Capitulo 4. Accion del estado",
                                    :thesis_id   => 2,
                                    :description => "Necesidades de intervencion del estado para corregir las asimetrias de informacion",
                                    :file_name   => "t2-04, La correccion de las asimetrias de infomacion.doc"
                                  },
                                  { :title       => "Capitulo 1. Efectos de la recesion economica",
                                    :thesis_id   => 3,
                                    :description => "Efectos de la depresion economica sobre la generacion de empleo y atencion de servicios sociales",
                                    :file_name   => "t3-01, dimensionamiento del dano de la depresion economica.doc"
                                  },
                                  { :title       => "Capitulo 2. Medidas necesarias para reactivar la economia",
                                    :thesis_id   => 3,
                                    :description => "Identificacion de las alternativas para reactivar la economia",
                                    :file_name   => "t3-02, alternativas para reactivacion de la economia.doc"
                                  }
                                ])

some_recomendations = Recommendation.create ([
                                  { :recommendation => "Debe profundizar en los metodos numericos requeridos para la solucion del problema de equilibrio",
                                    :thesis_id      => 1,
                                    :created        => "01/04/2013"
                                  },
                                  { :recommendation => "Debe explicar mejor por que las asimetrias de informacion generan polarizacion social",
                                    :thesis_id      => 2,
                                    :created        => "02/04/2013"
                                  },
                                  { :recommendation => "Debe explicar mejor los posibles beneficios y costos de cada accion propuesta para la reactivacion de la economia",
                                    :thesis_id      => 3,
                                    :created        => "02/04/2013"
                                  }
                                 ])

some_books =   Book.create([ { :author =>"Stiglitz, Joseph", :name =>"The Price of Inequality: How Today's Divided Society Endangers Our Future"},
                             { :author =>"Walras Leon",      :name =>"Estudios de Economia Social, Segunda Seccion, dinamica del equilibrio economico"},
                             { :author =>"Gale, Kirk",       :name =>"Pure exchange equilibrium of dynamic economic models"},
                             { :author =>"Debreau, Jack",    :name =>"Theory of Value: An Axiomatic Analysis of Economic Equilibrium"}
                          ])













