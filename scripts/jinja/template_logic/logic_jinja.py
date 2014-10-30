import jinja2
import os

templateLoader = jinja2.FileSystemLoader( searchpath="/" )
templateEnv = jinja2.Environment( loader=templateLoader )

CURRENT_DIRECTORY= os.getcwd()
TEMPLATE_FILE = CURRENT_DIRECTORY + "/example2.jinja"
template = templateEnv.get_template( TEMPLATE_FILE )

# Here we add a new input variable containing a list.
# Its contents will be expanded in the HTML as a unordered list.
FAVORITES = [ "chocolates", "lunar eclipses", "rabbits" ]

templateVars = { "title" : "Test Example",
                 "description" : "A simple inquiry of function.",
                 "favorites" : FAVORITES
               }

outputText = template.render( templateVars )

#show the final output result
print outputText
