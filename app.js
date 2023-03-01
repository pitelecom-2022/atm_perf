    $(document).ready(function () {
	$("#send").show();
	$("#reset").hide();
        $(".output").hide();
        $(".batch").hide();

	    $("#aircrafts").val(0);
	    $("#waypoints").val(0);
    
        let input = document.querySelector("input"),
        inputText = document.querySelector("#inputText"),
        waypoints = document.querySelector(".waypoints"),
        route = [],
        aircraft=""
	
	    $(".single_switch").click(function() {
		    if( $(this).hasClass("w3-grey") ) {
			    $(".batch").hide();
			    $(".single").show();
			    $(".batch_switch").toggleClass("w3-grey");
			    $(this).toggleClass("w3-grey")
		    }

	    })
		
	    $(".batch_switch").click(function() {
		    if( $(this).hasClass("w3-grey") ) {
			    $(".batch").show();
			    $(".single").hide();
			    $(".single_switch").toggleClass("w3-grey");
			    $(this).toggleClass("w3-grey")
		    }

	    })
		
		$("label").css(
		{
			"text-transform":"uppercase"
		})

        $(".aircrafts").on("change", function (evt) {
            aircraft=evt.target.value
        })
   		
		$(".w3-badge").hide()
		
        function create_wp_div(wp,route) {
            let wp_div = document.createElement("div");
            wp_div.classList.add("w3-tag","w3-margin-right","wp");
            wp_div.dataset.wp = wp;
            wp_div.innerHTML  = wp;
            wp_div.innerHTML  += "<button class='delete_btn' id='"+ wp + "'>&times;</button>";
            inputText.appendChild(wp_div);

            $("button#"+wp+".delete_btn").click(function(evt){
                console.log(route)
                $(this).parent().hide()
                route.pop(wp)
                console.log(route)
            })
        }
    
        waypoints.addEventListener("change", (e) => {
            value = e.target.value;
            
            if (value == "wgs-84") {
                input_wgs84 = document.createElement("input");
                input_wgs84.placeholder='Entrer le point sous forme WGS-84'
                input_wgs84.classList.add("w3-input", "w3-grey");
                document.querySelector(".wgs_84Class").appendChild(input_wgs84);
                input_wgs84.addEventListener("change", (e) => {
                    let wp = e.target.value
                    route.push(wp)
                    create_wp_div(wp,route)
                    input_wgs84.style.display='none'
                });
        } else {
                route.push(value);
                create_wp_div(value,route)
            }
            });
            

        
        $("#send").click(function() {
            if (route.length>0) {
	  	$("#id01").show();
                console.log(route)
		$(".loading").show();
                $.get("./process.php", {"waypoints":route, "aircraft": aircraft},function(data,status) {
                //$("#inputText").html("");
			//
			//
		console.log(status);
		if(status=="success") {
			route=[]
//		$(".loading").hide();
		$(".waypoints").val(0)
		$(".aircrafts").val(0)
                $(".result").html(data);
		$(".loading").hide();
		// $("#reset").show();
		$("#inputText").html("")
		}
            })
	    }
		else {
		    console.log("Nothing to do!");
            }
	})

	$("#reset").click(function(){
		$(".output").hide();
		$("#inputText").html("");
		$("#send").show();
		$(".waypoints").val(0);
		$(".aircrafts").val(0);
		$(this).hide();
        })
   }) 

   
    
    
