$(document).ready ->
  $('input.autocomplete').autocomplete
    data:
      'Ruby on Rails': '/assets/rails.png'
      'Javascript': '/assets/javascript.png'
      'React': '/assets/react.png'
      'Python': '/assets/python.png'
      'Angular': '/assets/angular'
      'Java': '/assets/java'
    minLength: 0
  return
