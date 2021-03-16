
<!-- PROJECT SHIELDS -->
<!--
*** I'm using markdown "reference style" links for readability.
*** Reference links are enclosed in brackets [ ] instead of parentheses ( ).
*** See the bottom of this document for the declaration of the reference variables
*** for contributors-url, forks-url, etc. This is an optional, concise syntax you may use.
*** https://www.markdownguide.org/basic-syntax/#reference-style-links
-->
[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]
[![LinkedIn][linkedin-shield]][linkedin-url]



<!-- PROJECT LOGO -->
<br />
<p align="center">
  <a href="https://github.com/OskarsEzerins/rails_picture">
    <img src="images/logo.png" alt="Logo" width="80" height="80">
  </a>

  <h3 align="center">rails_picture</h3>

  <p align="center">
    Simple picture_tag helper, which can show various image formats based on browser support
    ·
    <a href="https://github.com/OskarsEzerins/rails_picture/issues">Report Bug</a>
    ·
    <a href="https://github.com/OskarsEzerins/rails_picture/issues">Request Feature</a>
  </p>
</p>



<!-- TABLE OF CONTENTS -->
<details open="open">
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#roadmap">Roadmap</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
    <li><a href="#acknowledgements">Acknowledgements</a></li>
  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## About The Project

Provide a new helper method to Rails views - picture_tag
It generates a picture HTML tag with base HTML tag and any other available image formats within it

<!-- TOOD: add image example here of generated HTML -->

It internally uses Rails built-in method image_tag.

### Installation

Add this line to your application's Gemfile:

```ruby
gem 'rails_picture'
```

And then execute:

    $ bundle install


<!-- USAGE EXAMPLES -->
## Usage

Similarly to Rails built in image_tag:
picture_tag(filename, **options)

*note - do not input file extension in filename

<!-- _For more examples, please refer to the [Documentation](https://example.com)_ -->



<!-- ROADMAP -->
## Roadmap

See the [open issues](https://github.com/OskarsEzerins/rails_picture/issues) for a list of proposed features (and known issues).



<!-- CONTRIBUTING -->
## Contributing

Contributions are what make the open source community such an amazing place to be learn, inspire, and create. Any contributions you make are **greatly appreciated**.

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

# Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

<!-- LICENSE -->
## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).


<!-- CONTACT -->
## Contact

Project Link: [https://github.com/OskarsEzerins/rails_picture](https://github.com/OskarsEzerins/rails_picture)

Everyone interacting in the RailsPicture project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/rails_picture/blob/master/CODE_OF_CONDUCT.md).



<!-- ACKNOWLEDGEMENTS -->
<!-- ## Acknowledgements -->




<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/othneildrew/Best-README-Template.svg?style=for-the-badge
[contributors-url]: https://github.com/OskarsEzerins/rails_picture/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/othneildrew/Best-README-Template.svg?style=for-the-badge
[forks-url]: https://github.com/OskarsEzerins/rails_picture/network/members
[stars-shield]: https://img.shields.io/github/stars/othneildrew/Best-README-Template.svg?style=for-the-badge
[stars-url]: https://github.com/OskarsEzerins/rails_picture/stargazers
[issues-shield]: https://img.shields.io/github/issues/othneildrew/Best-README-Template.svg?style=for-the-badge
[issues-url]: https://github.com/OskarsEzerins/rails_picture/issues
[license-shield]: https://img.shields.io/github/license/othneildrew/Best-README-Template.svg?style=for-the-badge
[license-url]: https://github.com/OskarsEzerins/rails_picture/blob/master/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://linkedin.com/in/othneildrew
[product-screenshot]: images/screenshot.png


