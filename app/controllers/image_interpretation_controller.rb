class ImageInterpretationController < ApplicationController
  def index
    @image = Image.all
  end
  
  def show
    @selectedImage = Image.find(params[:id])
  end
=begin
image = Image.new(title: "Heights-Various", description: "Depicting the heights of people", source: "http://images.library.pitt.edu/cgi-bin/i/image/getimage-idx?cc=visuals;entryid=x-heightsvarious;viewid=HEIGHTS-VARIOUS.TIF;quality=m800;view=image", copyright: "Copyright © 2004 University of Pittsburgh, all rights reserved. Permission is granted for educational use only, provided the University of Pittsburgh copyright is acknowledged on every image used. Any other use of these images without express written consent is prohibited. Email: visuals@library.pitt.edu")
image.save()

image = Image.new(title: "Icebergs-At-Night", description: "Scenary overlooking icebergs at night", source: "http://images.library.pitt.edu/cgi-bin/i/image/getimage-idx?cc=visuals;entryid=x-overlookicebergsatnight;viewid=OVERLOOK-ICEBERGS_AT_NIGHT.TIF;quality=m800;view=image", copyright: "Copyright © 2004 University of Pittsburgh, all rights reserved. Permission is granted for educational use only, provided the University of Pittsburgh copyright is acknowledged on every image used. Any other use of these images without express written consent is prohibited. Email: visuals@library.pitt.edu")
image.save()

image = Image.new(title: "Mechanic", description: "A female mechanic is working on a car", source: "http://images.library.pitt.edu/cgi-bin/i/image/getimage-idx?cc=visuals;entryid=x-mechanic;viewid=MECHANIC.TIF;quality=m800;view=image", copyright: "Copyright © 2004 University of Pittsburgh, all rights reserved. Permission is granted for educational use only, provided the University of Pittsburgh copyright is acknowledged on every image used. Any other use of these images without express written consent is prohibited. Email: visuals@library.pitt.edu")
image.save()

image = Image.new(title: "Waitress", description: "A waitress is servicing a customer at his table", source: "http://images.library.pitt.edu/cgi-bin/i/image/getimage-idx?cc=visuals;entryid=x-waitress;viewid=WAITRESS.TIF;quality=m800;view=image", copyright: "Copyright © 2004 University of Pittsburgh, all rights reserved. Permission is granted for educational use only, provided the University of Pittsburgh copyright is acknowledged on every image used. Any other use of these images without express written consent is prohibited. Email: visuals@library.pitt.edu")
image.save()

image = Image.new(title: "Coming-Home", description: "A man is coming home from work and entering his house", source: "http://images.library.pitt.edu/cgi-bin/i/image/getimage-idx?cc=visuals;entryid=x-moviescene01;viewid=MOVIE-SCENE_01.TIF;quality=m800;view=image", copyright: "Copyright © 2004 University of Pittsburgh, all rights reserved. Permission is granted for educational use only, provided the University of Pittsburgh copyright is acknowledged on every image used. Any other use of these images without express written consent is prohibited. Email: visuals@library.pitt.edu")
image.save()

image = Image.new(title: "", description: "", source: "", copyright: "Copyright © 2004 University of Pittsburgh, all rights reserved. Permission is granted for educational use only, provided the University of Pittsburgh copyright is acknowledged on every image used. Any other use of these images without express written consent is prohibited. Email: visuals@library.pitt.edu")
image.save()

image = Image.new(title: "", description: "", source: "", copyright: "Copyright © 2004 University of Pittsburgh, all rights reserved. Permission is granted for educational use only, provided the University of Pittsburgh copyright is acknowledged on every image used. Any other use of these images without express written consent is prohibited. Email: visuals@library.pitt.edu")
image.save()

image = Image.new(title: "", description: "", source: "", copyright: "Copyright © 2004 University of Pittsburgh, all rights reserved. Permission is granted for educational use only, provided the University of Pittsburgh copyright is acknowledged on every image used. Any other use of these images without express written consent is prohibited. Email: visuals@library.pitt.edu")
image.save()
=end
end
