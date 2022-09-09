<%inherit file="layout.mako"/>

<h3>Event demo</h3>
<div class="content">
    <div id="result"></div>
</div>


<script>
    if(typeof(EventSource) !== "undefined") {
        var source = new EventSource("${request.route_url('events')}");

        source.onmessage = function(event) {
        document.getElementById("result").innerHTML += event.data + "<br>";
      };
} else {
    document.getElementById("result").innerHTML = "Sorry, your browser does not support server-sent events...";
}
</script>
