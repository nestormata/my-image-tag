My Image Tag
============

A [Liquid](http://www.liquidmarkup.org/) filter to generate an HTML img tag in Jekyll.

## Installation

All you need to do is to add the `my\_image\_tag.rb` file into your site `\_pluggins` directory.

## Usage

* my\_image\_tag

  This function uses the site.url configuration to be appended to the source attribute of the image.  
  It allow setting class names, ID, alternate text and enclose the image in a div tag (by default).

        {{ '/images/my-image.png' | img_tag: 'class names here' }} => Will render <div class="class names here"><img src="http://www.mysite.com/images/my-image.png" /></div>
        {{ '/images/my-image.png' | img_tag: 'class names here', 'image-id' }} => Will render <div class="class names here" id="image-id"><img src="http://www.mysite.com/images/my-image.png" /></div>
        {{ '/images/my-image.png' | img_tag: 'classname', 'image-id', 'Very cool' }} => Will render <div class="classname" id="image-id"><img src="http://www.mysite.com/images/my-image.png" alt="Very cool" /></div>
        {{ '/images/my-image.png' | img_tag: 'classname', 'image-id', 'Very cool', false }} => Will render <img src="http://www.mysite.com/images/my-image.png" class="classname" id="image-id" alt="Very cool" />

## Contact

E-mail [Nestor Mata Cuthbert](mailto:nestor@profesional.co.cr) for any inquiries

Repository on [GitHub](https://github.com/nestormata/my-image-tag). 
