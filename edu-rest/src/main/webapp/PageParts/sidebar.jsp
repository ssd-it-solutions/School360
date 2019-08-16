<%  String applicationURL =  request.getAttribute("applicationURL").toString(); %>
<div id="sidebar"><a href="" class="visible-phone"><i class="icon icon-home"></i> Dashboard</a>

  <ul>
    	<li class="active"><a href="<%=applicationURL%>/school360"><i class="icon icon-home"></i> <span>Dashboard</span></a> </li>
      <c:if test="${pageContext.request.isUserInRole('ROLE_ADMIN')}">
		<li><a href="<%=applicationURL%>/admin/students"><i class="icon icon-user"></i><span>Student</span></a></li>
		<li><a href="<%=applicationURL%>/admin/staff"><i class="icon icon-user"></i><span>Teacher</span></a></li>
	
		<li class="submenu"> <a href="#"><i class="icon icon-th-list"></i> <span>Store Management</span> <span class="label label-important"></span></a>
      		<ul>
      			<li><a href="<%=applicationURL%>/admin/vendors">Vendors</a></li>
        		<li><a href="<%=applicationURL%>/admin/stocks">Purchase</a></li>
				<li><a href="/vouchers">Voucher</a></li>
				<li><a href="<%=applicationURL%>/admin/consumptions">Consumption</a></li>
				<li><a href="<%=applicationURL%>/admin/expenses">Other Expenses</a></li>
      		</ul>
   		</li>    
   
    	<li><a href="<%=applicationURL%>/admin/visitor"><i class="icon icon-th-list"></i> <span>Visitors</span></a></li>
    
    	<li class="submenu"> <a href="#"><i class="icon icon-th-list"></i> <span>Forms</span> <span class="label label-important"></span></a>
      		<ul>
      			<li><a href="<%=applicationURL%>/admin/visitorList">Form No - 05</a></li>
      			<li><a href="<%=applicationURL%>/admin/hostelAvgAttendance">Form No - 06</a></li>
      			<li><a href="<%=applicationURL%>/admin/residenceStudAvg">Form No - 07 </a></li>
      			<li><a href="<%=applicationURL%>/admin/staffRecognitionList">Form No - 08</a></li>
      			<li><a href="<%=applicationURL%>/admin/staffSalaryList">Form No - 09</a></li>
      			<li><a href="<%=applicationURL%>/admin/salaryListOfAllEmployees">Form No - 10</a></li>
      			<li><a href="<%=applicationURL%>/admin/viewform12Details">Form No - 12</a></li>
      			<li><a href="<%=applicationURL%>/admin/viewSchoolStaffSalaryDetails">Form No - 11</a></li>
      			<li><a href="<%=applicationURL%>/admin/viewStockDetails">Form No - 13</a></li>
      			<li><a href="<%=applicationURL%>/admin/viewHostelStaffDetails">Form No - 14</a></li>	
      			<li><a href="/viewEmployeePayScaleDetails">Form No - 16</a></li>
      			<li><a href="<%=applicationURL%>/admin/viewPayScaleDetails">Form No - 17</a></li>
      			<li><a href="<%=applicationURL%>/admin/viewform18Details">Form No - 18</a></li>
      			<li><a href="<%=applicationURL%>/admin/viewform19Details">Form No - 19</a></li>
      			<li><a href="<%=applicationURL%>/admin/listViewForm">Form No - 20</a></li>
      			<li><a href="<%=applicationURL%>/admin/viewStudentAttendance">Form No - 21</a></li>
      			<li><a href="<%=applicationURL%>/admin/viewFoodExpenseDetails">Form No - 22</a></li>
      			<li><a href="<%=applicationURL%>/admin/viewBalanceStockDetails">Form No - 23</a></li>
      			<li><a href="<%=applicationURL%>/admin/viewLastDonation">Form No - 23A</a></li>
     			<li><a href="<%=applicationURL%>/admin/viewBalanceStock">Form No - 23B</a></li>
      			
      			<li><a href="<%=applicationURL%>/admin/studentAdharCardList">Student Adhar Card List</a></li>
       		</ul>
     </li>
     <li><a href="<%=applicationURL%>/admin/generateSalary">Generate Salary</a></li>
     <li> <a href="../admin/settings"><i class="icon icon-cog"></i><span>Settings</span></a></li>
     </c:if>
     <c:if test="${pageContext.request.isUserInRole('ROLE_USER')}">
     	<li><a href="<%=applicationURL%>/staff/students"><i class="icon icon-user"></i><span>Student</span></a></li>
     	<li><a href="<%=applicationURL%>/staff/profile"><i class="icon icon-user"></i><span>Profile</span></a></li>
     	<li><a href="<%=applicationURL%>/staff/updateProfile"><i class="icon icon-user"></i><span>Update Profile</span></a></li>
		<li class="submenu"> <a href="#"><i class="icon icon-th-list"></i> <span>Exams Management</span> <span class="label label-important"></span></a>
    		<ul>
    			<li><a href="../admin/exams">Unit Test</a></li>
    			<li><a href="#">Annual Exam</a></li>
    			<li><a href="#">Online Exam</a></li>
    		</ul>
    	</li>
     </c:if>
  </ul>
</div>