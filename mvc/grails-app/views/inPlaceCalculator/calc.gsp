<html>
<head>
  <meta name="layout" content="form"/>
  <title>
    In-Place Calculator
  </title>
  <script>
  function validate(input) {
    if(input.value < 1) {
      alert(input.name + ' value needs to be at least 1.0');
      input.setAttribute('class', 'error');
    }
  }
</script>
</head>

<body>

<form action="/inPlaceCalculator/calc" method="get">
  <fieldset class="form padded">

    <tmpl:form_row name="en"   label="En"   model="${calculatorInstance}" />

    <tmpl:form_row name="exam" label="Exam" model="${calculatorInstance}" />

    <div>
      <label>&nbsp;</label>
      <input type="submit" value="Calculate"/>
    </div>
  </fieldset>
</form>


<div class="padded">
  <label>Result</label>
  <mvc:decorate grade="${calculatorInstance.result}">
    <output>${calculatorInstance.result}</output>
  </mvc:decorate>
</div>


</body>
</html>

