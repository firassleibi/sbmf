$(function() {            
            // Static Data
            $("#jsGrid-static").jsGrid({
                height: "70%",
                width: "100%",
                sorting: true,
                paging: true,
                fields: [
                    { name: "Name", type: "text", width: 150 },
                    { name: "Age", type: "number", width: 50 },
                    { name: "Address", type: "text", width: 200 },
                    { name: "Country", type: "select", items: db.countries, valueField: "Id", textField: "Name" },
                    { name: "Married", type: "checkbox", title: "Is Married" }
                ],
                data: db.clients
            });
            // Basic Data
            $("#jsGrid-basic").jsGrid({
                height: "70%",
                width: "100%",
                filtering: true,
                editing: true,
                sorting: true,
                paging: true,
                autoload: true,
                pageSize: 15,
                pageButtonCount: 5,
                deleteConfirm: "Do you really want to delete the client?",
                controller: db,
                fields: [
                    { name: "Name", type: "text", width: 150 },
                    { name: "Age", type: "number", width: 50 },
                    { name: "Address", type: "text", width: 200 },
                    { name: "Country", type: "select", items: db.countries, valueField: "Id", textField: "Name" },
                    { name: "Married", type: "checkbox", title: "Is Married", sorting: false },
                    { type: "control" }
                ]
            });
            // OData Service
            $("#jsGrid-odata").jsGrid({
                height: "auto",
                width: "100%",
                sorting: true,
                paging: false,
                autoload: true,
                controller: {
                    loadData: function() {
                        var d = $.Deferred();
                        $.ajax({
                            url: "http://services.odata.org/V3/(S(3mnweai3qldmghnzfshavfok))/OData/OData.svc/Products",
                            dataType: "json"
                        }).done(function(response) {
                            d.resolve(response.value);
                        });

                        return d.promise();
                    }
                },
                fields: [
                    { name: "Name", type: "text" },
                    { name: "Description", type: "textarea", width: 150 },
                    { name: "Rating", type: "number", width: 50, align: "center",
                        itemTemplate: function(value) {
                            return $("<div>").addClass("rating").append(Array(value + 1).join("&#9733;"));
                        }
                    },
                    { name: "Price", type: "number", width: 50,
                        itemTemplate: function(value) {
                            return value.toFixed(2) + "$"; }
                    }
                ]
            });
            
            // Sorting
            $("#jsGrid-sorting").jsGrid({
                height: "80%",
                width: "100%",
         
                autoload: true,
                selecting: false,
         
                controller: db,
         
                fields: [
                    { name: "Name", type: "text", width: 150 },
                    { name: "Age", type: "number", width: 50 },
                    { name: "Address", type: "text", width: 200 },
                    { name: "Country", type: "select", items: db.countries, valueField: "Id", textField: "Name" },
                    { name: "Married", type: "checkbox", title: "Is Married" }
                ]
            });
         
         
            $("#sortingField").change(function() {
                var field = $(this).val();
                $("#jsGrid-sorting").jsGrid("sort", field);
            });
            
            $("#jsGrid-page").jsGrid({
                height: "70%",
                width: "100%",
                autoload: true,
                paging: true,
                pageLoading: true,
                pageSize: 15,
                pageIndex: 2,
                controller: {
                    loadData: function(filter) {
                        var startIndex = (filter.pageIndex - 1) * filter.pageSize;
                        return {
                            data: db.clients.slice(startIndex, startIndex + filter.pageSize),
                            itemsCount: db.clients.length
                        };
                    }
                },
                fields: [
                    { name: "Name", type: "text", width: 150 },
                    { name: "Age", type: "number", width: 50 },
                    { name: "Address", type: "text", width: 200 },
                    { name: "Country", type: "select", items: db.countries, valueField: "Id", textField: "Name" },
                    { name: "Married", type: "checkbox", title: "Is Married" }
                ]
            });

            $("#pager").on("change", function() {
                var page = parseInt($(this).val(), 10);
                $("#jsGrid-page").jsGrid("openPage", page);
            });
            // Custom View
			$('#spec').on('change', function() {
				selected=this;							 
			  $("#jsGrid-custom").jsGrid({
                height: "70%",
                width: "100%",
                filtering: true,
                editing: false,
                sorting: true,
                paging: true,
                autoload: true,
                pageSize: 15,
                pageButtonCount: 5,
                controller: {
                    loadData: function(filter) {
                        var d = $.Deferred();

                        $.get('api/budget/'+selected.value, {"filter":filter}).done(function(response) {
                            console.log(response);
                            d.resolve(response);
                        });
                        return d.promise();
                    }
                },
                fields: [
                    { name: "programName", type: "text", title: ""},
                    { name: "scopeName", type: "text", title: ""},
                    { name: "projectPercent", type: "text", title: "" },
                    { name: "programPercent", width: "110px", type: "text", title: "" },
                    { name: "scopePercent", type: "text", title: "" },
                    { name: "projectBudget", type: "text", title: "" },
                    { name: "programBudget", width: "110px", type: "text", title: "" },
                    { name: "scopeBudget", type: "text", title: "" },
                    { name: "total", type: "text", title: "" },
                    { name: "m1", type: "text", title: "" },
                    { name: "m2", type: "text", title: "" },
                    { name: "m3", type: "text", title: "" },
                    { name: "m4", type: "text", title: "" },
                    { name: "m5", type: "text", title: "" },
                    { name: "m6", type: "text", title: "" },
                    { name: "m7", type: "text", title: "" },
                    { name: "m8", type: "text", title: "" },
                    { name: "m9", type: "text", title: "" },
                    { name: "m10", type: "text", title: "" },
                    { name: "m11", type: "text", title: "" },
                    { name: "m12", type: "text", title: "" },
                    { name: "Q1", type: "text", title: "" },
                    { name: "Q2", type: "text", title: "" },
                    { name: "Q3", type: "text", title: "" },
                    { name: "Q4", type: "text", title: "" },
                    { name: "projectSpend", type: "text", title: "" },
                    { name: "projectRemain", type: "text", title: "" },
                    { name: "scopeSpend", type: "text", title: "" },
                    { name: "programSpend", type: "text", title: "" },
                    { name: "Sch_M1", type: "text", title: "" },
                    { name: "Sch_M2", type: "text", title: "" },
                    { name: "Sch_M3", type: "text", title: "" }, 
                    { name: "Sch_M4", type: "text", title: "" },
                    { name: "Sch_M5", type: "text", title: "" },
                    { name: "Sch_M6", type: "text", title: "" },
                    { name: "Sch_M7", type: "text", title: "" },
                    { name: "Sch_M8", type: "text", title: "" },
                    { name: "Sch_M9", type: "text", title: "" },
                    { name: "Sch_M10", type: "text", title: "" },
                    { name: "Sch_M11", type: "text", title: "" },
                    { name: "Sch_M12", type: "text", title: "" },
                    { name: "Sch_Total", type: "text", title: "" },
                    { name: "Sch_Q1", type: "text", title: "" },
                    { name: "Sch_Q2", type: "text", title: "" },
                    { name: "Sch_Q3", type: "text", title: "" },
                    { name: "Sch_Q4", type: "text", title: "" },

                ]
            });
			})
		
            $("#jsGrid-custom").jsGrid({
                height: "70%",
                width: "100%",
                filtering: true,
                editing: false,
                sorting: true,
                paging: true,
                autoload: true,
                pageSize: 15,
                pageButtonCount: 5,
                controller: {
                    loadData: function(filter) {
						
                        var d = $.Deferred();

                        $.get('api/budget', {"filter":filter}).done(function(response) {
                            console.log(response);
                            d.resolve(response);
                        });
                        return d.promise();
                    }
                },
                fields: [
                    { name: "programName", type: "text", title: ""},
                    { name: "scopeName", type: "text", title: ""},
                    { name: "projectPercent", type: "text", title: "" },
                    { name: "programPercent", width: "110px", type: "text", title: "" },
                    { name: "scopePercent", type: "text", title: "" },
                    { name: "projectBudget", type: "text", title: "" },
                    { name: "programBudget", width: "110px", type: "text", title: "" },
                    { name: "scopeBudget", type: "text", title: "" },
                    { name: "total", type: "text", title: "" },
                    { name: "m1", type: "text", title: "" },
                    { name: "m2", type: "text", title: "" },
                    { name: "m3", type: "text", title: "" },
                    { name: "m4", type: "text", title: "" },
                    { name: "m5", type: "text", title: "" },
                    { name: "m6", type: "text", title: "" },
                    { name: "m7", type: "text", title: "" },
                    { name: "m8", type: "text", title: "" },
                    { name: "m9", type: "text", title: "" },
                    { name: "m10", type: "text", title: "" },
                    { name: "m11", type: "text", title: "" },
                    { name: "m12", type: "text", title: "" },
                    { name: "Q1", type: "text", title: "" },
                    { name: "Q2", type: "text", title: "" },
                    { name: "Q3", type: "text", title: "" },
                    { name: "Q4", type: "text", title: "" },
                    { name: "projectSpend", type: "text", title: "" },
                    { name: "projectRemain", type: "text", title: "" },
                    { name: "scopeSpend", type: "text", title: "" },
                    { name: "programSpend", type: "text", title: "" },
                    { name: "Sch_M1", type: "text", title: "" },
                    { name: "Sch_M2", type: "text", title: "" },
                    { name: "Sch_M3", type: "text", title: "" }, 
                    { name: "Sch_M4", type: "text", title: "" },
                    { name: "Sch_M5", type: "text", title: "" },
                    { name: "Sch_M6", type: "text", title: "" },
                    { name: "Sch_M7", type: "text", title: "" },
                    { name: "Sch_M8", type: "text", title: "" },
                    { name: "Sch_M9", type: "text", title: "" },
                    { name: "Sch_M10", type: "text", title: "" },
                    { name: "Sch_M11", type: "text", title: "" },
                    { name: "Sch_M12", type: "text", title: "" },
                    { name: "Sch_Total", type: "text", title: "" },
                    { name: "Sch_Q1", type: "text", title: "" },
                    { name: "Sch_Q2", type: "text", title: "" },
                    { name: "Sch_Q3", type: "text", title: "" },
                    { name: "Sch_Q4", type: "text", title: "" },

                ]
            });
            $("#jsGrid-custom1").jsGrid({
                height: "70%",
                width: "100%",
                filtering: true,
                editing: true,
                sorting: true,
                paging: true,
                autoload: true,
                pageSize: 15,
                pageButtonCount: 5,
                controller: {
                    loadData: function(filter) {
                        var d = $.Deferred();

                        $.get('api/payment', {"filter":filter}).done(function(response) {
                            console.log(response);
                            d.resolve(response);
                        });
                        return d.promise();
                    }
                },
                fields: [
                    { type: "control", deleteButton: false },
                    { name: "paymentOrder", type: "checkbox", title: "Is Order"},
                    { name: "id", type: "text",  title: ""},
                    { name: "Code", type: "text",  title: ""},
                    { name: "PaymentNo", type: "text",  title: ""},
                    { name: "PayeeName", type: "text",  title: ""},
                    { name: "ProjectName", type: "text",  title: ""},
                    { name: "ProgramName", type: "text",  title: ""},
                    { name: "ScopeName", type: "text",  title: ""},
                    { name: "Area", type: "text",  title: ""},
                    { name: "City", type: "text",  title: ""},
                    { name: "Amount", type: "text",  title: ""},
                    { name: "Currency", type: "text",  title: ""},
                    { name: "ToOrder", type: "text",  title: ""},
                    { name: "PayTo", type: "text",  title: ""},
                    { name: "PaymentMethod", width: "120px", type: "text",  title: ""},
                    { name: "Date", type: "text",  title: ""},
                    { name: "Approver1", type: "text",  title: ""},
                    { name: "Approver2", type: "text",  title: ""},
                    { name: "Approver3", type: "text",  title: ""},
                    { name: "Approver4", type: "text",  title: ""},
                    { name: "Approver5", type: "text",  title: ""},
                    { name: "ApprovementNote1", width: "150px", type: "text",  title: ""},
                    { name: "ApprovementNote2", width: "150px", type: "text",  title: ""},
                    { name: "ApprovementNote3", width: "150px", type: "text",  title: ""},
                    { name: "ApprovementNote4", width: "150px", type: "text",  title: ""},
                    { name: "Aim", type: "text",  title: ""},
                    { name: "AmountText", type: "text",  title: ""},
                    { name: "BankDetails", type: "text",  title: ""},
                    { name: "IsNotifySendToPayee", width: "150px", type: "text",  title: ""},
                    { name: "AmountDescription", width: "120px", type: "text",  title: ""},

                ]
            });
            $(".config-panel input[type=checkbox]").on("click", function() {
																		 
                var $cb = $(this);
                $("#jsGrid-custom").jsGrid("option", $cb.attr("id"), $cb.is(":checked"));
            });
            
            // Custom Row Renderer
            
            $("#jsGrid-custom-row").jsGrid({
                height: "90%",
                width: "100%",
         
                autoload: true,
                paging: true,
         
                controller: {
                    loadData: function() {
                        var deferred = $.Deferred();
         
                        $.ajax({
                            url: 'http://api.randomuser.me/?results=40',
                            dataType: 'json',
                            success: function(data){
                                deferred.resolve(data.results);
                            }
                        });
         
                        return deferred.promise();
                    }
                },
         
                rowRenderer: function(item) {
                    var user = item.user;
                    var $photo = $("<div>").addClass("client-photo").append($("<img>").attr("src", user.picture.medium));
                    var $info = $("<div>").addClass("client-info")
                        .append($("<p>").append($("<strong>").text(user.name.first.capitalize() + " " + user.name.last.capitalize())))
                        .append($("<p>").text("Location: " + user.location.city.capitalize() + ", " + user.location.street))
                        .append($("<p>").text("Email: " + user.email))
                        .append($("<p>").text("Phone: " + user.phone))
                        .append($("<p>").text("Cell: " + user.cell));
         
                    return $("<tr>").append($("<td>").append($photo).append($info));
                },
         
                fields: [
                    { title: "Clients" }
                ]
            });
         
         
            String.prototype.capitalize = function() {
                return this.charAt(0).toUpperCase() + this.slice(1);
            };
});

$(function(){
    $grid = $('.jsgrid');
    var timeoutHnd;
    $grid.find(".jsgrid-filter-row input[type=text]").keyup(function (e) {
        var  input = $(this);
        if (timeoutHnd) { clearTimeout(timeoutHnd); timeoutHnd = 0;}
        timeoutHnd = setTimeout(function () {
            var e = jQuery.Event("keypress");
            e.which = 13; // Enter
            input.trigger(e);
            timeoutHnd = 0;
        }, );
    });
             $('.q').click(function(){
              if($(this).is(":checked ")){
                  $('.jsgrid-table').find('th:nth-child(22)').show();
                  $('.jsgrid-table').find('th:nth-child(23)').show();
                  $('.jsgrid-table').find('th:nth-child(24)').show();
                  $('.jsgrid-table').find('th:nth-child(25)').show();
                  $('.jsgrid-table').find('tr').each(function(){
                  $(this).find('td:nth-child(22)').show();
                  $(this).find('td:nth-child(23)').show();
                  $(this).find('td:nth-child(24)').show();
                  $(this).find('td:nth-child(25)').show();
                })
              }
              else{
                $('.jsgrid-table').find('th:nth-child(22)').hide();
                  $('.jsgrid-table').find('th:nth-child(23)').hide();
                  $('.jsgrid-table').find('th:nth-child(24)').hide();
                  $('.jsgrid-table').find('th:nth-child(25)').hide();
                $('.jsgrid-table').find('tr').each(function(){
                  $(this).find('td:nth-child(22)').hide();
                  $(this).find('td:nth-child(23)').hide();
                  $(this).find('td:nth-child(24)').hide();
                  $(this).find('td:nth-child(25)').hide();
                })
              }
          })
          $('.m').click(function(){
              if($(this).is(":checked ")){
                $('.jsgrid-table').find('th:nth-child(10)').show();
                $('.jsgrid-table').find('th:nth-child(11)').show();
                $('.jsgrid-table').find('th:nth-child(12)').show();
                $('.jsgrid-table').find('th:nth-child(13)').show();
                $('.jsgrid-table').find('th:nth-child(14)').show();
                $('.jsgrid-table').find('th:nth-child(15)').show();
                $('.jsgrid-table').find('th:nth-child(16)').show();
                $('.jsgrid-table').find('th:nth-child(17)').show();
                $('.jsgrid-table').find('th:nth-child(18)').show();
                $('.jsgrid-table').find('th:nth-child(19)').show();
                $('.jsgrid-table').find('th:nth-child(20)').show();
                $('.jsgrid-table').find('th:nth-child(21)').show();
                  $('.jsgrid-table').find('tr').each(function(){
                  $(this).find('td:nth-child(10)').show();
                  $(this).find('td:nth-child(11)').show();
                  $(this).find('td:nth-child(12)').show();
                  $(this).find('td:nth-child(13)').show();
                  $(this).find('td:nth-child(14)').show();
                  $(this).find('td:nth-child(15)').show();
                  $(this).find('td:nth-child(16)').show();
                  $(this).find('td:nth-child(17)').show();
                  $(this).find('td:nth-child(18)').show();
                  $(this).find('td:nth-child(19)').show();
                  $(this).find('td:nth-child(20)').show();
                  $(this).find('td:nth-child(21)').show();
                })
              }
              else{
                $('.jsgrid-table').find('th:nth-child(10)').hide();
                $('.jsgrid-table').find('th:nth-child(11)').hide();
                $('.jsgrid-table').find('th:nth-child(12)').hide();
                $('.jsgrid-table').find('th:nth-child(13)').hide();
                $('.jsgrid-table').find('th:nth-child(14)').hide();
                $('.jsgrid-table').find('th:nth-child(15)').hide();
                $('.jsgrid-table').find('th:nth-child(16)').hide();
                $('.jsgrid-table').find('th:nth-child(17)').hide();
                $('.jsgrid-table').find('th:nth-child(18)').hide();
                $('.jsgrid-table').find('th:nth-child(19)').hide();
                $('.jsgrid-table').find('th:nth-child(20)').hide();
                $('.jsgrid-table').find('th:nth-child(21)').hide();
                $('.jsgrid-table').find('tr').each(function(){
                  $(this).find('td:nth-child(10)').hide();
                  $(this).find('td:nth-child(11)').hide();
                  $(this).find('td:nth-child(12)').hide();
                  $(this).find('td:nth-child(13)').hide();
                  $(this).find('td:nth-child(14)').hide();
                  $(this).find('td:nth-child(15)').hide();
                  $(this).find('td:nth-child(16)').hide();
                  $(this).find('td:nth-child(17)').hide();
                  $(this).find('td:nth-child(18)').hide();
                  $(this).find('td:nth-child(19)').hide();
                  $(this).find('td:nth-child(20)').hide();
                  $(this).find('td:nth-child(21)').hide();
                })
              }
          })
          $('.sch').click(function(){

              if($(this).is(":checked ")){        
                  $('.jsgrid-table').find('th:nth-child(30)').show();
                  $('.jsgrid-table').find('th:nth-child(31)').show();
                  $('.jsgrid-table').find('th:nth-child(32)').show();
                  $('.jsgrid-table').find('th:nth-child(33)').show();
                  $('.jsgrid-table').find('th:nth-child(34)').show();
                  $('.jsgrid-table').find('th:nth-child(35)').show();
                  $('.jsgrid-table').find('th:nth-child(36)').show();
                  $('.jsgrid-table').find('th:nth-child(37)').show();
                  $('.jsgrid-table').find('th:nth-child(38)').show();
                  $('.jsgrid-table').find('th:nth-child(39)').show();
                  $('.jsgrid-table').find('th:nth-child(40)').show();
                  $('.jsgrid-table').find('th:nth-child(41)').show();
                  $('.jsgrid-table').find('tr').each(function(){
                  $(this).find('td:nth-child(30)').show();
                  $(this).find('td:nth-child(31)').show();
                  $(this).find('td:nth-child(32)').show();
                  $(this).find('td:nth-child(33)').show();
                  $(this).find('td:nth-child(34)').show();
                  $(this).find('td:nth-child(35)').show();
                  $(this).find('td:nth-child(36)').show();
                  $(this).find('td:nth-child(37)').show();
                  $(this).find('td:nth-child(38)').show();
                  $(this).find('td:nth-child(39)').show();
                  $(this).find('td:nth-child(40)').show();
                  $(this).find('td:nth-child(41)').show();
                })
              }
              else{
                  $('.jsgrid-table').find('th:nth-child(30)').hide();
                  $('.jsgrid-table').find('th:nth-child(31)').hide();
                  $('.jsgrid-table').find('th:nth-child(32)').hide();
                  $('.jsgrid-table').find('th:nth-child(33)').hide();
                  $('.jsgrid-table').find('th:nth-child(34)').hide();
                  $('.jsgrid-table').find('th:nth-child(35)').hide();
                  $('.jsgrid-table').find('th:nth-child(36)').hide();
                  $('.jsgrid-table').find('th:nth-child(37)').hide();
                  $('.jsgrid-table').find('th:nth-child(38)').hide();
                  $('.jsgrid-table').find('th:nth-child(39)').hide();
                  $('.jsgrid-table').find('th:nth-child(40)').hide();
                  $('.jsgrid-table').find('th:nth-child(41)').hide();
                $('.jsgrid-table').find('tr').each(function(){
                  $(this).find('td:nth-child(30)').hide();
                  $(this).find('td:nth-child(31)').hide();
                  $(this).find('td:nth-child(32)').hide();
                  $(this).find('td:nth-child(33)').hide();
                  $(this).find('td:nth-child(34)').hide();
                  $(this).find('td:nth-child(35)').hide();
                  $(this).find('td:nth-child(36)').hide();
                  $(this).find('td:nth-child(37)').hide();
                  $(this).find('td:nth-child(38)').hide();
                  $(this).find('td:nth-child(39)').hide();
                  $(this).find('td:nth-child(40)').hide();
                  $(this).find('td:nth-child(41)').hide();
                })
              }
          })
            $('.sch-q').click(function(){
              if($(this).is(":checked ")){
                  $('.jsgrid-table').find('th:nth-child(43)').show();
                  $('.jsgrid-table').find('th:nth-child(44)').show();
                  $('.jsgrid-table').find('th:nth-child(45)').show();
                  $('.jsgrid-table').find('th:nth-child(46)').show();
                  $('.jsgrid-table').find('tr').each(function(){
                  $(this).find('td:nth-child(43)').show();
                  $(this).find('td:nth-child(44)').show();
                  $(this).find('td:nth-child(45)').show();
                  $(this).find('td:nth-child(46)').show();
                })
              }
              else{
                $('.jsgrid-table').find('th:nth-child(43)').hide();
                  $('.jsgrid-table').find('th:nth-child(44)').hide();
                  $('.jsgrid-table').find('th:nth-child(45)').hide();
                  $('.jsgrid-table').find('th:nth-child(46)').hide();
                $('.jsgrid-table').find('tr').each(function(){
                  $(this).find('td:nth-child(43)').hide();
                  $(this).find('td:nth-child(44)').hide();
                  $(this).find('td:nth-child(45)').hide();
                  $(this).find('td:nth-child(46)').hide();
                })
              }
          })
  
})
