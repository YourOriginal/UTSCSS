var sortedCities = cityGrowths.sort((a, b) =>
    a.Increase_from_2016 - b.Increase_from_2016).reverse();

var topFiveCities = sortedCities.slice(0, 5);

var topFiveCitiesNames = cityGrowths.map(city => city.City);

var topFiveCitiesGrowth = cityGrowths.map(city => parseInt(city.Increase_from_2016));

var trace = {
    x: topFiveCityNames,
    y: topFiveCityGrowths,
    type: "bar"
};
var data = [trace];
var layout = {
    title: "Most Rapidly Growing Cities",
    xaxis: {
        title: "City"
    },
    yaxis: {
        title: "Population Growth, 2016-2017"
    }
};
Plotly.newPlot("bar-plot", data, layout);