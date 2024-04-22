<!DOCTYPE html>
<html lang="en">
<head>
    <title>Results</title>
    <script src="https://www.kryogenix.org/code/browser/sorttable/sorttable.js"></script>
</head>
<body>
    <style>
       table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: rgba(0, 4, 255, 0.182);
}
table.sortable thead {
    background-color:rgb(0, 0, 0);
    color:#ffffff;
    font-weight: bold;
    
}
table.sortable th:not(.sorttable_sorted)
:not(.sorttable_sorted_reverse)
:not(.sorttable_nosort)

:after { 
    content: " \25B4\25BE" 
}
table.sortable tbody {
    counter-reset: sortabletablescope;
}
table.sortable thead tr::before {
    content: "";
    display: table-cell;
}
table.sortable tbody tr::before {
    content: counter(sortabletablescope);
    counter-increment: sortabletablescope;
    display: table-cell;
}

    </style>

    <h2>Results from Order</h2>
    %invoke SendOrdersCompanyTwo.SendOrderToJMS:PublishJMSAndJDBC%
    <p>Order Id: %value JMSMessage/body/data/SchemaOrder/OrderID%</p>
    <p>reference: %value JMSMessage/body/data/SchemaOrder/Reference%</p>
    <p>HDD: %value JMSMessage/body/data/SchemaOrder/HDD%</p>
    <p>ram: %value JMSMessage/body/data/SchemaOrder/RAM%</p>
    <p>accesories: %value JMSMessage/body/data/SchemaOrder/Accesories%</p>
    <p>status: %value ConectionToOrderOnDBInput/status%</p>
    %end%  
    <button onclick="window.location.href='./Send.html'">Continue</button> <BR></BR>


    

    %invoke SendOrdersCompanyTwo.verOrdersDSP:VerifiedOrdersDSP%
    <table class="sortable">
        <tr>
            <th>Reference</th>
            <th>HDD</th>
            <th>RAM</th>
            <th>Aditionals</th>
            <th>Status</th>
            <th>ID order</th>
        </tr>
        %loop SearchOrderStatusDSPOutput/results%
       <tr class="item">
         %loop -struct%
         <td>%value%</td>
         %end%
        </tr>
        %end%
    </table>
    %end%




  
<!--erros-->

    

</body>
</html>