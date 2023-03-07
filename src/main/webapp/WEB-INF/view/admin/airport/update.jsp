 <%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@include file="/WEB-INF/view/common/admin/admin_header.jsp"%>
<div role="tabpanel" class="tab-pane active container" id="flights">
          <div class="col-lg-12">
            <section class="panel color2">
              <header class="panel-heading text-center">
               <h1> Update Airport</h1>
              </header>
                <div class="panel-body">
    <form id = "airportUpdate" action="/admin/airport/update" method="post">
        <div class="form-group">
            <label for="airport_code">Airport Code:</label>
            <input type="text" class="form-control" value="${airport.airport_code}" id="airport_code"  name="airport_code">
        </div>
        <div class="form-group">
            <label for="name">Airport Name:</label>
            <input type="text" class="form-control" value="${airport.name}" id="name"  name="name">
        </div>
        <div class="form-group">
            <label for="city">City:</label>
            <input type="text" class="form-control" value="${airport.city}" id="city"  name="city">
        </div>
        <div class="form-group">
            <label for="country">Country:</label>
            <input type="text" class="form-control" value="${airport.country}" id="country"  name="country">
        </div>
 	 <input type="hidden" name="id" value="${airport.id}"/><br/>
         <div class="container bg-light">
        <div class="col-md-12 text-center">
            <button type="submit" class="btn btn-primary">Update</button>

        </div>
    </div>

    </form>
</div> 
<%@include file="/WEB-INF/view/common/admin/admin_footer.jsp"%> 
 