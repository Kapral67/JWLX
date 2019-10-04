StringTemplate@"

<html>
<body>

<input type=\"range\" id=\"vrtx\" min=\"1\" max=\"10\" value=\"1\" class=\"slider\" oninput=\"refresh();\">

<div id='result'></div>


<script>
    


  let images =[
    `ims`
  ]

  let i = 0
  let src = \"\"

  function refresh(){
    document.querySelector(\"img\").setAttribute(\"src\", src)
    document.querySelector(\"#result\").innerHTML = output
  }

  let fig = document.createElement(\"figure\");// you can change html element here
  fig.setAttribute(\"id\",\"mysvg\")
  document.body.appendChild(fig)
  let img = document.createElement(\"IMG\")
  img.setAttribute(\"width\", \"50\") /* set desired item size otherwise full-size*/
  img.setAttribute(\"heigh\", \"50\")//* set desired item sizeotherwise full-size*/
  fig.appendChild(img);
  let range_slider = document.querySelector(\"input[type=range]\")
  range_slider.min = 1;
  range_slider.max = range_slider.value = images.length -1
  range_slider.step =range_slider.getAttribute(\"step\") ;
  let input = document.querySelector(\"#result\")
  let output = i + 1
  input.innerHTML = output


  document.addEventListener( 'DOMContentLoaded', (event) => {
    refresh()
    randomElement = false;//set to false to stop random
      if (randomElement == true) {
        document.querySelector(\"input[type=range]\").addEventListener('input', (event) => {
        let val= range_slider.value
          output = val
         let randomElement = images [Math.floor(Math.random() * images.length) ]
          for( i = 0; i < randomElement.length; i++){
            i
            refresh()
            src = randomElement
          }
        })
      }else{
        document.querySelector(\"input[type=range]\").addEventListener('input', (event) => {
          let value = range_slider.value
          console.log(value)
          output= value
          src=images[value]
        })
      }
});

</script>

</body>
</html>
"