@if($settings->_sms_service ==1)

<tr style="border:0px;">
	<td colspan="2" style="border:0px;">
		<table style="width: 100%;">
			<tr>
				<td style="border:0px;width:20%;"><label for="_send_sms">SMS Send </label></td>
				  <td style="border:0px;">
				    <select class="form-control" name="_send_sms" style="width:150px;">
				        <option value="no">No</option>
				        <option value="yes">Yes</option>
				      </select>
				  </td>
				  		<!-- <td style="border:0px;"><label for="_send_sms">Email Send </label></td>
					  <td style="border:0px;">
					    <select class="form-control" name="_send_email" style="width:150px;">
					        <option value="no">No</option>
					        <option value="yes">Yes</option>
					      </select>
					  </td> -->
				</tr>
		</table>
	</td> 
</tr>
@endif