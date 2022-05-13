// import data from data.js

const tableData = data;

var tbody = d3.select("tbody");

function buildTable(data) {

    // clear out any existing data
    tbody.html("");

    // loop through each object and append 
    // row + cells for each value in the row
    data.forEach((dataRow) => {
        
        // append row to table body in html
        let row = tbody.append("tr");

        // Loop through each field in the dataRow and add
        // each value as a table cell (td)
        Object.values(dataRow).forEach((val) => {
            let cell = row.append("td");
            cell.text(val);

        });


    });

}
