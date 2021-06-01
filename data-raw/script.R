
# Now we are all set to create the report:

# create an histogram and save it as a png file:
png(filename="histogram.png", width = 6, height = 6, units = 'in', res = 300)
hist(mtcars$wt)
dev.off()

# create a new document object
create_docx()

# add the report title and an empty line
docx_add_title()


docx_add_subtitle("narrow table",20)
docx_add_table(tbl = mtcars)

docx_page_break()

# add the histogram with an apropriate title
docx_add_title("Histogram - portrait")
docx_add_image("histogram.png")

# set the orientation to lndscape
docx_start_landscape()
