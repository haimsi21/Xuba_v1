setwd("C:/Users/432/Documents/Xuba")
library(golem)
library(shinyanimate)
library(shinycssloaders)
library(shinydashboard)
library(shiny)
library(bslib)
library(DT)

custom_theme <- bs_theme(
  version = 5,
  #bg = "#000000",
  #fg = "#ffffff",
  #primary = "#39D0FF",
  #secondary = "#46FC1A",
  base_font = "Helvetica Neue"
  #font_scale = 1
)



# La interfaz de usuario se define con ui:
ui <- fluidPage(
  #theme = custom_theme,
  
  
  # Application title
  #favicon(ico = "www/favi.png"),
  #titlePanel(windowTitle = "Xuba  Consultoría",
   #          title = ""),
  
  #tags$head(tags$link(rel="shortcut")
  
  navbarPage(
    div(style = "display: block; margin-left: auto; margin-right: auto;", a(
      img(src = 'mini.png', height = '30px'), href = "xuba.mx"
    )),
    collapsible = TRUE,
    fluid = TRUE,
    tabPanel(
      "Inicio",
      
      mainPanel(
        width = 12,
        br(),
        br(),
        withAnim(),
        div(id = "shinyLogo", style = "width: 100%; height: 60%", align = "center",
          tags$img(src = "logi1.png", style = "width: inherit; height: inherit;")
        ),
        
        br(),
        br(),
        br(),
        br(),
        h1("está", align = "center"),
        hr(),
        h2("de vuelta", align = "center"),
        hr(),
        h2("Aquí:", align = "center"),
        hr(),
        h2(":)", align = "center"),
        br()
      )
      
    ),
    
    navbarMenu(
      "Consultoría",
      
      tabPanel("Economía", sidebarLayout(mainPanel(
        h1("Un reportre debe verse como un PDF")
      ),
      sidebarPanel(
        3,
        h1("siempresepuedeirmaslejoshijo")
      ))),
      
      tabPanel("Corporativa"),
      tabPanel("Tecnología",
               h1())
    ),
    
    
    tabPanel(
      "Quiénes somos",
      h1(
        "Equipo experto en economía, urbanismo, cartografía, finanzas, programación y diseño.|
Uso y explotación de múltiples fuentes de información del Sistema de Cuentas Nacionales, así como las encuestas y registros administrativos del sector de interés. |
Desempeño profesional con criterios internacionales datos, análisis e investigación.|
Ciencia de datos: manipulación y programación para generar reportes y tomar decisiones."
      ),
      br()
    ),
    
    tabPanel("Contacto",
             sidebarLayout(
               mainPanel(
                 h1("Mapa de Ubicación en la Alemán"),
                 br(),
                 br(),
                 br(),
                 br(),
                 br(),
                 br(),
                 hr(),
                 h3("logos de Whatsapp, un mail directo a mi celular ")
               ),
               sidebarPanel(
                 h1("¿Quieres saber más?", align = "center"),
                 br(),
                 hr(),
                 fluidRow(column(6,style=list("padding-right:10px;"),textInput("nom_con", "Nombre:")),
                          column(6,style=list("padding-left:10px;"),textInput("ape_con", "Apellido:"))),
                 fluidRow(column(6,style=list("padding-right:10px;"),textInput("cor_con", "Correo empresarial:", width = "100%")),
                          column(6,style=list("padding-left:10px;"),textInput("tel_con", "Teléfono:", value = "+52 ", width = "100%"))),
                 textInput("nom_con", "Empresa o Institución:"),
                 fluidRow(column(6,style=list("padding-right:10px;"),
                         selectInput("nemp_con","Número de empleados", c("1 a 9", "10 a 49", "50 a 149", "Más de 150", "Otro"))),
                         column(6,style=list("padding-left:10px;"),
                         textInput("otr_con", "Otro:")
                         
                 )
               ),
               checkboxGroupInput("check_con", "¿Qué servicios de interesan?", c("Economía", "Legal", "Sistemas digitales")),
               textInput("nom_con", "Empresa o Institución:"),
               )))))
             
  




#Server----


# el back-end o servidor procesa el trabajo que se muestra en ui

server <- function(input, output, session) {
  observe(addHoverAnim(session, 'shinyLogo', 'flash'))
}



# Run the application
shinyApp(ui = ui, server = server)
