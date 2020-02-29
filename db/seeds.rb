Post.destroy_all
Paragraph.destroy_all
Project.destroy_all

project_one=Project.create(title: "Plan a Garden", description: "This is an application designed to help users imagine the kind of garden that they would like to create and then start to plan it. The idea for it came from the avid gardening I did last summer and from my appreciation of the community gardens all over New York City." , video: "PlanAGardenVideo", image: "./Images/Azaleas.jpg")

project_two=Project.create(title: "Book and Movie Memory Bank", description: "The Book and Movie Memory Bank was inspired by some of my experiences planning courses when I was a Philosophy instructor and writing essays as a student. Occasionally, I would end up mining my memory when deciding what to teach, trying to remember the name of a film I saw years ago that would be especially relevant for a particular class. Or, as I was writing I would be reminded of an idea from an essay or book and would rack my brain or have to rummage through my notes trying to find the title of it. The Book and Movie Memory Log is a place to store information about films or books that have made an impact on you, that you know you want to remember and may want to return to for various purposes later on." , video: "BookandMovieMemoryBankVideo", image: "./Images/Book_and_Movie_Memory_Bank.jpg")

project_three=Project.create(title:  "National Park Trip Planner", description: "National Parks Trip Planner provides information about national parks in the United States, fetching from the National Park Service API and also linking to the National Park Service website. Users can save parks that they would like to go to or learn more about and take notes on saved parks as they plan a trip. The idea for this application came from my eagerness to get outdoors. I like that National Parks are low-cost and offer educational opportunities about both history and nature.", video: "NationalParksDemo", image: "./Images/United_States.jpg")


post_six=Post.create(title: "Local Storage in a National Park Trip Planner")


par_one_for_six=Paragraph.create(post_id: post_six.id, description: "While working on my final project for Access Labs, I have been learning how to use localStorage so that users can navigate away from an app when they click on an external link and then return without having to log back in or refresh the page. This blog post is about what I have learned so far, particularly about storage that is not as permanent as saving something to the database but not as fleeting as saving something to state and not persisting it. It is a middle ground for keeping things around when you go away for a short while and want them to still be there when you come back. And if you never log out they may stay there for longer than you imagined they would.")

par_two_for_six=Paragraph.create(post_id: post_six.id, description: "In the last module, we worked on saving the token and user id to localStorage, but I wanted to practice adding more to it. I started with the username, because my greeting to the user was turning into this after they navigated away from the app and returned to it, until I put it in localStorage:")

par_three_for_six=Paragraph.create(post_id: post_six.id, description: " ADD SCREENSHOT HERE")

par_four_for_six=Paragraph.create(post_id: post_six.id, description: "While that kind of greeting may raise interesting existential questions, it is not very friendly.")

par_five_for_six=Paragraph.create(post_id: post_six.id, description: "National Parks Trip Planning App /heading")

an_extra_par_for_six=Paragraph.create(post_id: post_six.id, description: "The app I am making fetches from the National Park Services API on a Ruby on Rails backend in order to display a list of different parks using React on the frontend. Users can expand any of the parks on the list to get more information about them. They can click on a link to go to a National Park Services show-page or to get directions. There is a button for adding a park to your collection to help you track places you might like to go to. I am thinking of adding a feature to organize a user's park collection into long, middle, and short-term goals, places you might want to go to sooner rather than later and other places that it might take you awhile to make the time to visit. And I would like to have a text-box for each park in a user's collection for note-taking purposes.")

par_six_for_six=Paragraph.create(post_id: post_six.id, description: "While it hasn't been scientifically proven that adding a park to your collection effectively motivates you to go there, it doesn't hurt to try. For example, maybe I will eventually go here:")

par_seven_for_six=Paragraph.create(post_id: post_six.id, description: " ADD SCREENSHOT HERE")

par_eight_for_six=Paragraph.create(post_id: post_six.id, description: "ADD SCREENSHOT HERE")

par_nine_for_six=Paragraph.create(post_id: post_six.id, description: "In addition to lectures from the last module I was in  and work that I did with with Guligena Aierken for a group project, I also got help from a couple of sources on the internet when I was trying to understand how local storage works:")

extra_par_forsix=Paragraph.create(post_id: post_six.id, description: "https://github.com/learn-co-students/nyc-dumbo-web-100719/tree/master/43-jwt-auth/ /anchor")

another_extra_par_forsix=Paragraph.create(post_id: post_six.id, description: "https://github.com/GAierken/Flatiron-Shopping-Frontend /anchor")

par_ten_for_six=Paragraph.create(post_id: post_six.id, description: " ADD VIDEO HERE")

par_eleven_for_six=Paragraph.create(post_id: post_six.id, description: "ComponentDidMount
The first time that localStorage comes into play in my app is when the component mounts. A fetch happens to load the parks from the API, and the user id, username, park collection, and token are all set to the values that are stored in local storage. That is so that if you leave the app, when you come back and the page reloads everything that was set when you logged in is not lost. The park collection is parsed when it is retrieved from storage, because localStorage only stores strings, and parsing it turns it back into an array. This is important, because it makes the data easier to iterate over for different purposes later on (for example to map and filter information).")

par_twelve_for_six=Paragraph.create(post_id: post_six.id, description: "
class App extends React.Component { /n

    state={ /n

    parks: [], /n

    parkClickedOn: [], /n

    isAParkExpanded: false, /n

    parkCollection: [], /n

    userId: null, /n

    username: "", /n

    token: null /n

    } /n
    componentDidMount=()=>{ /n
    fetch('http://localhost:3000/parks') /n
    .then(r => r.json()) /n
    .then(parks => { /n
    let parkCollectionParsed= /n 
    JSON.parse(localStorage.getItem('theParkCollection')) /n
    this.setState({ /n
    parks: parks.data, /n
    token: localStorage.token, /n
    userId: localStorage.userId, /n
    username: localStorage.username, /n
    parkCollection: parkCollectionParsed /n
    }) /n
    }) /n
    }")

par_thirteen_for_six=Paragraph.create(post_id: post_six.id, description: "Logging In /heading")
another_extra_par_for_six=Paragraph.create(post_id: post_six.id, description:"The second time localStorage is set is when the user logs in. Here state is also set so that the DOM changes, and values are stored in localStorage so that if you leave the page they will still be there (otherwise whatever the values are that are set in componentDidMount will be there instead). These are values that you do not have access to until login, so that is why they are not set in componentDidMount - parts of the app can be accessed without logging in (such as the list of parks). After the page re-renders due to a change of state whatever values you are setting at the time of login are lost until you log out and log back in again. Unless you save to localStorage! Then there are less hoops to jump through to get what you want. Depending how much excitement you like in your life or how unnecessarily difficult you prefer for things to be, that may be a good thing.")

par_fourteen_for_six=Paragraph.create(post_id: post_six.id, description: "
    setToken = (token, id) => { /n
    localStorage.token = token; /n
    localStorage.userId = id; /n
    fetch(`http://localhost:3000/users/${id}`, { /n
    headers: { /n
    'Authorization': token /n
    } /n
    }) /n
    .then(r => r.json()) /n
    .then(user => { /n
    this.setState({ /n
    username: user.username, /n
    token: token, /n
    userId: id, /n
    parkCollection: user.park_collections /n
    }) /n
    localStorage.setItem('theParkCollection', /n
    JSON.stringify(user.park_collections)) /n
    let the_username= user.username /n
    localStorage.setItem('username', the_username) /n
    })
    }")

    par_fifteen_for_six=Paragraph.create(post_id: post_six.id, description: "When using localStorage.setItem(), the first argument is a name for what you are storing - it is like naming a variable. The second argument is the value for it. Then, when you are using localStorage.getItem(), the argument in parentheses is the name it was given before.")

    par_sixteen_for_six=Paragraph.create(post_id: post_six.id, description: "Logging Out /heading")
    another_extra_paragraph_for_six=Paragraph.create(post_id: post_six.id, description:"LocalStorage has to be cleared when a user logs out if you don't want information such as the username and a user's collection of National Parks to linger. The MDN documentation says that localStorage can be cleared with localStorage.clear(), but below I used .removeItem() for each piece of information.")

    par_seventeen_for_six=Paragraph.create(post_id: post_six.id, description: "
        logOut=()=>{ /n
        localStorage.removeItem('userId') /n
        localStorage.removeItem('token') /n
        localStorage.removeItem('username') /n
        localStorage.removeItem('theParkCollection') /n
        localStorage.removeItem('parkCollectionForDisplay') /n
        this.setState({ /n
        userId: null, /n
        token: null, /n
        username: '', /n
        parkCollection: [], /n
        })
        }")

    par_eighteen_for_six=Paragraph.create(post_id: post_six.id, description: "Everything Between the Beginning and the End /heading")
    an_extra_paragraph_for_six=Paragraph.create(post_id: post_six.id, description: "In between logging in and logging out, a lot of things can happen! Or, at least a couple things!")

    par_nineteen_for_six=Paragraph.create(post_id: post_six.id, description: " ADD VIDEO HERE")

    par_twenty_for_six=Paragraph.create(post_id: post_six.id, description: "Users can add or delete a park from their collection, and storage and state are set when that happens, in addition to the data being posted to the back end. LocalStorage has to be reset to make sure that if users leave the application without logging out their collection will reflect the changes they made when they come back.")

    par_twentyone_for_six=Paragraph.create(post_id: post_six.id, description: "
        addToParkCollection=(park)=> { /n
        fetch('http://localhost:3000/park_collections', { /n
        method: 'POST', /n
        headers: { /n
        'Content-type': 'application/json', /n
        'Accepts': 'application/json' /n
        }, /n
        body: JSON.stringify({ /n
        user_id: this.state.userId, /n
        park_id: park.id /n
        }) /n
        }) /n
        .then(r=>r.json()) /n
        .then(theParkCollection => { /n
        let thisParkCollection= /n
        [...this.state.parkCollection, theParkCollection] /n
        localStorage.setItem('theParkCollection', /n
        JSON.stringify(thisParkCollection)) /n
        this.setState({ /n
        parkCollection: thisParkCollection /n
        }) /n
        })
        }")

    par_twentytwo_for_six=Paragraph.create(post_id: post_six.id, description: "Something similar happens when the delete button is pushed. Here I filter to return a new array without the deleted park in it for the purpose of re-setting state. ParkCollection is an array of collections that are basically instances of a user having a park. They have an id, the user_id, and the park_id as attributes. A user has_many park_collections on the backend, and a park_collection belongs to one user. On the frontend, the array of collections is what will display as one collection of parks. Since only the park_id (not the park's name or description, for example) are stored in the park_collection, work has to be done to iterate through the array of parks that are fetched from the backend to pull out more information about the parks that belong to a user. Below, when I am using the .find() method, I am dealing with making a conversion between the park that is passed in as an argument to the deleteFromCollection function (which has information such as the name, description, url, id, etc. of the park) and the park_collections in parkCollection, which only have the id of the collection, the park_id, and the user_id. I need the id of the collection for specifying the url where the delete fetch has to be sent to effectively destroy my association with any given park.")

    par_twentythree_for_six=Paragraph.create(post_id: post_six.id, description: "
        deleteFromCollection=(park)=>{ /n
        let newParkCollectionArray= /n
        this.state.parkCollection.filter(the_park=>{ /n
        return the_park.park_id !== park.id /n
        }) /n
        let thisParkCollection= /n
        this.state.parkCollection.find(this_park_collection=>{ /n
        return this_park_collection.park_id === park.id /n
        }) /n
        let parkCollectionsId= thisParkCollection.id /n
        fetch(`http://localhost:3000/park_collections/${parkCollectionsId}`, { /n
        method: 'DELETE'}) /n
        .then(r=>r.json()) /n
        .then(parkCollections =>{ /n
        this.setState({ /n
        parkCollection: newParkCollectionArray /n
        }) /n
        localStorage.setItem('theParkCollection', /n
        JSON.stringify(newParkCollectionArray)) /n
        })
        }")

    par_twentyfour_for_six=Paragraph.create(post_id: post_six.id, description: "But don't worry, all you have to do is click a button to add the park again if you are having any regrets when it comes to your park planning preferences.")
    
    post_five=Post.create(title: "Plan a Garden Application")

    par_one_for_five=Paragraph.create(post_id: post_five.id, description: "I have been working on an app for garden planning to help practice using React on the front end with a Ruby on Rails API on the backend. One of the main issues I tackled while doing this project was handling an application that had multiple sources of truth on the front-end, and I got practice using ternary expressions and doing conditional rendering to help deal with this issue.")
    par_two_for_five=Paragraph.create(post_id: post_five.id, description: "Users can currently view the plants that are stored in the database, log a new plant that will post to the backend and render on the frontend, delete a plant from the frontend and backend, add a plant to their garden, remove a plant from their garden, select a plant to be featured (which displays an enlarged image of the plant along with information about it toward the top of the page under the Featured Plant heading), and edit the featured plant. AND they can turn the images of plants into a picture of a cat (Just for fun and to practice creating a toggle button, and because that is what I was asked by my instructors to do during my project review)!")
    par_three_for_five=Paragraph.create(post_id: post_five.id, description: "Below are a few images of the main page of the application:")
    par_four_for_five=Paragraph.create(post_id: post_five.id, description: "INSERT SCREEN SHOT")
    par_five_for_five=Paragraph.create(post_id: post_five.id, description: "INSERT SCREEN SHOT")
    par_six_for_five=Paragraph.create(post_id: post_five.id, description: "Something that was enjoyable about building this app at the beginning was creating my own API for the first time with images of plants and information about them from places that I like including seedsavers.org, the Brooklyn Botanic Garden, the New York Botanical Garden, and Golden Earthworm Organic Farm. The Farmer's Almanac on-line also helped me to fill in some of the gaps, and a few of the quotes that I used as plant information are from the on-line version of the Oxford English Dictionary, with access provided by the New York Public Library. I would also like to give a shout out to Ruben Vallejo for explaining some of the fundamentals of CSS to me and to Gene Grady for helping me to understand how to set up routes for the application.")
    extra_par_for_five=Paragraph.create(post_id: post_five.id, description: "https://medium.com/@rv.results /anchor")
    extra_par_for_five=Paragraph.create(post_id: post_five.id, description: "https://medium.com/@grady.gene.thomas /anchor")
    par_seven_for_five=Paragraph.create(post_id: post_five.id, description: "INSERT SCREEN SHOT")
    par_eight_for_five=Paragraph.create(post_id: post_five.id, description: "In order to display pictures under Featured Plant I added an array to the state on the parent App.js component called pictureClickedOn, and to display photographs of plants in Your Garden I added the array selectedPlants. Below is the code for setting the state on the initial page load, with the plants being fetched from the backend in the componentDidMount method. The selectedPlants and pictureClickedOn arrays are empty until a user selects a plant to be featured or added to their garden.")
    par_nine_for_five=Paragraph.create(post_id: post_five.id, description: 

        "constructor(){ /n
        super(); /n
        this.state = { /n
        plants: [], /n
        selectedPlants: [], /n
        pictureClickedOn: [], /n
        catButtonClicked: false /n
        } /n
        } /n
        
        componentDidMount= () => { /n
        fetch('http://localhost:3000/plants') /n
        .then(r => r.json()) /n
        .then(plantsArray => { /n
        this.setState({ /n
        plants: plantsArray, /n
        }) /n
        }) /n
        }
        ")

    par_ten_for_five=Paragraph.create(post_id: post_five.id, description: "Adding arrays for the selectedPlants and pictureClickedOn allowed me to grab one plant from the plant selection to be featured and several plants from the choice of plants to be added to a garden. In the current state of the application, Your Garden and the featured plant do not persist, but that is something that eventually I would like to change.")
    par_eleven_for_five=Paragraph.create(post_id: post_five.id, description: "Since pictures can appear in three places on the page, I was running into issues when a plant was edited or deleted. The problem I had was that though doing a fetch to edit or delete a plant allowed me to update the plants array on the backend and front end, the selectedPlants and pictureClickedOn arrays were not automatically updating along with it. In order to fix this, I had to set the state for all of the arrays. This is the way I handled the delete action.")
    par_twelve_for_five=Paragraph.create(post_id: post_five.id, description: "
        deleteOnClick= (plant) => { /n
        const theUpdatedGarden= /n
        this.state.selectedPlants.filter(the_clicked_plant => { /n
            the_clicked_plant.id !== plant.id}); /n
        const plantsId= this.state.pictureClickedOn.id /n
        const theUpdatedFeaturedPlant= /n
        plantsId === plant.id ? [] : /n
        this.state.pictureClickedOn; /n
        fetch(`http://localhost:3000/plants/${plant.id}`, { /n
        method: 'DELETE' /n
        }) /n
        .then(r => r.json()) /n
        .then((newArray) => { /n
        this.setState({ /n
        plants: newArray,
        pictureClickedOn: theUpdatedFeaturedPlant, /n
        selectedPlants: theUpdatedGarden /n
        }) /n
        })
        }")
    par_thirteen_for_five=Paragraph.create(post_id: post_five.id, description: "The deleteOnClick method was passed down as props from App.js to the great-grandchild component that was rendering the plant image and name to the page under the Plant Selection heading along with the two buttons to delete a plant or add it to your garden. The plant being passed in as an argument in deleteOnClick= (plant) on App.js was being passed up from the great grand-child component in a callback function to let App.js know which plant's delete button had been clicked on. Plant is the instance of a plant, and I narrowed it down to plant.id to identify it for removal from the arrays.")
    par_fouteen_for_five=Paragraph.create(post_id: post_five.id, description: "The filter method in theUpdatedGarden constant allowed me to remove the plant that had been deleted from the selectedPlants array. Filter is a method that when called on an array creates a new array of items for which whatever condition that is specified is true. In this case, any plant that did not have the id of the plant passed as an argument in deleteOnClick was put into this new array, and that is the value that I set selectedPlants to when I set state. So, when a plant is deleted from Plant Selection, it is also removed from Your Garden, while the other plants currently in the garden remain there.")
    par_fifteen_for_five=Paragraph.create(post_id: post_five.id, description: "INSERT LINK")
    par_sixteen_for_five=Paragraph.create(post_id: post_five.id, description: "The updatedFeaturedPlant constant is set equal to the return value of a ternary expression. The first condition of the ternary is indicating that if the id of the instance of the plant that has been passed up is equal to the id of the plant in the pictureClickedOn array (in other words if the plant being deleted is the plant also currently being featured), then the pictureClickedOn array should now be empty (and nothing should display to the page in the section under the Featured Plant heading). Otherwise, if the featured plant is not the one being deleted it should remain where it is and be unaffected.")
    par_seventeen_for_five=Paragraph.create(post_id: post_five.id, description: "INSERT LINK")
    par_eighteen_for_five=Paragraph.create(post_id: post_five.id, description: "The updateSubmit function was similar, but it required me to remove the plant that was being updated from the selectedPlants array before then using a spread operator to add the altered plant back into the array. The result was that I could alter the plant in Your Garden without duplication and without affecting the other plants in the garden. Below is my updateSubmit function, which runs when the submit button for the edit featured plant form is clicked on.")
    par_nineteen_for_five=Paragraph.create(post_id: post_five.id, description: "
        updateSubmit= (plant) => { /n
        const theUpdatedName= plant.name /n
        const theUpdatedImg= plant.img /n
        const theUpdatedPlantInformation= plant.plant_information /n
        const thePlants= /n
        this.state.selectedPlants.filter(the_plant => { /n
        the_plant.id !== plant.id}) /n
        const gardenPlants= /n
        this.state.selectedPlants.map(plant => { /n
        return plant.id /n
        }) /n
        const gardenUpdate=  /n
        gardenPlants.includes(plant.id) ? /n
        [...thePlants, plant] : /n
        this.state.selectedPlants /n
        fetch(`http://localhost:3000/plants/${this.state.pictureClickedOn.id}`, { /n
        method: 'PATCH', /n
        headers: { /n
        'Content-Type': 'application/json', /n
        'Accept': 'application/json' /n
        }, /n
        body: JSON.stringify({ /n
        name: theUpdatedName, /n
        img: theUpdatedImg, /n
        plant_information: theUpdatedPlantInformation /n
        }) /n
        }) /n
        .then(r => r.json()) /n
        .then((updatedPlants) => { /n
        this.setState({ /n
        plants: updatedPlants, /n
        selectedPlants: gardenUpdate, /n
        pictureClickedOn: plant /n
        }) /n
        }) 
        }")
    par_twenty_for_five=Paragraph.create(post_id: post_five.id, description: "I like this example of the spread operator from MDN:")
    par_twentyone_for_five=Paragraph.create(post_id: post_five.id, description: "INSERT SCREEN SHOT")
    par_twentytwo_for_five=Paragraph.create(post_id: post_five.id, description: "INSERT LINK")
    par_twentythree_for_five=Paragraph.create(post_id: post_five.id, description: "Lastly, the Turn Plants into Cats button on the navigation bar at the top of the page gave me a chance to practice toggling with a button. When a user clicks on the Turn Plants into Cats button, the pictures transform, and the text on the button itself changes from saying Turn Plants into Cats into saying Turn Cats into Plants. If there are any plants in Your Garden, they will also turn into cats.")
    par_twentyfour_for_five=Paragraph.create(post_id: post_five.id, description: "INSERT SCREEN SHOT")
    par_twentyfive_for_five=Paragraph.create(post_id: post_five.id, description: "INSERT SCREEN SHOT")
    par_twentysix_for_five=Paragraph.create(post_id: post_five.id, description: "INSERT SCREEN SHOT")
    par_twentyseven_for_five=Paragraph.create(post_id: post_five.id, description: "INSERT SCREEN SHOT")
    par_twentyeight_for_five=Paragraph.create(post_id: post_five.id, description: "insert PHOTO")
    par_twentynine_for_five=Paragraph.create(post_id: post_five.id, description: "I was happy to have them as visitors, but I didn't want them to dominate the garden for too long.* So, I created two functions, one for replacing the plant image url with a cat image url by setting state (but not persisting this change to the backend, so that another way of chasing the cats away would be to just refresh the page) and another for fetching the plant information from the backend again, just as I did in componentDidMount, and setting state so that the plant images would once again be displayed. A third function toggles between these two functions depending on whether the catButtonClicked array in state is true or false.")
    par_thirty_for_five=Paragraph.create(post_id: post_five.id, description: "
        changeToCats= () => { /n
        const toCats= this.state.plants.map(plant => { /n
        return {name: plant.name, /n
        img: 'https://scontent-lga3-1.xx.fbcdn.net/v/t31.0-8/774947_4327147871108_384379713_o.jpg?_nc_cat=103&_nc_ohc=19SjhUaMwJoAQnyA2-BXh_BOEWRN-KbtBT43IaYClPcG3JBIqlk26jkxg&_nc_ht=scontent-lga3-1.xx&oh=f24756f6eb4fe6328d41df13de4d4f6e&oe=5E98E72A', /n
        plant_information: plant.plant_information, /n
        id: plant.id} /n
        }) /n
        const gardenCats= /n
        this.state.selectedPlants.map(plant => { /n
        return {name: plant.name, /n
        img: 'https://scontent-lga3-1.xx.fbcdn.net/v/t31.0-8/774947_4327147871108_384379713_o.jpg?_nc_cat=103&_nc_ohc=19SjhUaMwJoAQnyA2-BXh_BOEWRN-KbtBT43IaYClPcG3JBIqlk26jkxg&_nc_ht=scontent-lga3-1.xx&oh=f24756f6eb4fe6328d41df13de4d4f6e&oe=5E98E72A', /n
        plant_information: plant.plant_information, /n
        id: plant.id} /n
        }) /n
        this.setState({ /n
        plants: toCats, /n
        selectedPlants: gardenCats, /n
        pictureClickedOn: [], /n
        catButtonClicked: true /n
        }) /n
        } /n
        changeBacktoPlants= () => { /n
        fetch('http://localhost:3000/plants') /n
        .then(r => r.json()) /n
        .then(plantsArray => { /n
        this.setState({ /n
        plants: plantsArray, /n
        selectedPlants: [], /n
        catButtonClicked: false /n
        }) /n
        }) /n
        } /n
        toggleCatButton= () => { /n
        return !this.state.catButtonClicked ? /n
        this.changeToCats() : this.changeBacktoPlants() /n
        }")
    par_thirtyone_for_five=Paragraph.create(post_id: post_five.id, description: "The toggleCatButton function was passed down as props to the NavBar.js component and is triggered as an onClick function when the button is pressed. This is in the render at the bottom of the component.")
    par_thirtytwo_for_five=Paragraph.create(post_id: post_five.id, description: "
    {this.props.catButtonClicked ? /n
    <button className='change-to-cats-button' onClick={this.props.toggleCatButton}>Turn Cats into Plants</button> /n
    : <button className='change-to-cats-button' onClick={this.props.toggleCatButton}>Turn Plants into Cats</button>}")
    par_thirtythree_for_five=Paragraph.create(post_id: post_five.id, description: "There is a ternary expression to indicate which button should display, one of them with the text being Turn Cats into Plants, the other Turn Plants into Cats. The inner text on the button is the only difference between the two. They are governed by the same function.")
    par_thirtyfour_for_five=Paragraph.create(post_id: post_five.id, description: "INSERT LINK")
    par_thirtyfive_for_five=Paragraph.create(post_id: post_five.id, description: "The only drawbacks are that currently when you change the cats back into plants, the plants that were in your garden will be gone. There will also no longer be a featured plant. When I finish working on the application so that users are authenticated and can log in, I will be able to get plants to persist to a user's garden on the backend. Then, less will be lost in the bibbidi bobbidi boo of the cat button magic. But until then, one can go ahead and recreate their garden using the buttons I have provided after the cats have wrecked their havoc.")
    par_thirtysix_for_five=Paragraph.create(post_id: post_five.id, description: "INSERT VIDEO")
    par_thirtyseven_for_five=Paragraph.create(post_id: post_five.id, description: "*The cat pictures are of my cat James who died last year, so I actually wouldn't want to chase him from the garden!")

    post_four=Post.create(title: "Getting the Monsters Under Control in a Single-Page Application")

    par_one_for_four=Paragraph.create(post_id: post_four.id, description: "Last week I learned a lot while working on the Monsters Lab on learn.co. While I am still figuring out how to meet some of the deliverables, I thought I would post about the things I have managed to do with it so far.")
    par_two_for_four=Paragraph.create(post_id: post_four.id, description: "https://learn.co/tracks/web-development-immersive-3-1-module-three/classroom-materials/additional-practice/monsters /anchor")
    par_three_for_four=Paragraph.create(post_id: post_four.id, description: "The lab asks us to fetch from a json file to display information about the first fifty monsters in the database on the first page. There is a backwards and forwards arrow at the bottom of the page, and when a user clicks the forward button the next fifty monsters should be displayed. A user should be able to scroll backwards and forwards through the large set of monsters this way. (It would also be helpful for the person testing the code to not have to scroll all the way to the bottom of the page to see what is being displayed. That is a lot of monsters to wade through!) We are also asked to include a form so that users can generate their own monsters (sometimes we are our own worst enemy).")
    par_four_for_four=Paragraph.create(post_id: post_four.id, description: "INSERT GIF")
    par_five_for_four=Paragraph.create(post_id: post_four.id, description: "INSERT GIF")
    par_six_for_four=Paragraph.create(post_id: post_four.id, description: "In addition to the above, in order to practice CRUD (create, read, update, delete), I made a delete and update function. Users can delete monsters with the click of a button (if only it were that easy in real life!). Or they can update a monster's name, age, or biography to essentially transform its identity, at least as it exists in the database and on the page. It is important to try to keep your monsters under control in whatever way you can. This is what the beginning of the page looks like. I did not write the bios, but I love them.")
    par_seven_for_four=Paragraph.create(post_id: post_four.id, description: "INSERT SCREEN SHOT")
    par_eight_for_four=Paragraph.create(post_id: post_four.id, description: "When a user clicks on the Update this Monster button a form is generated like so, and when it is submitted the monster is updated in the database and on the page.")
    par_nine_for_four=Paragraph.create(post_id: post_four.id, description: "INSERT SCREEN SHOT")
    par_ten_for_four=Paragraph.create(post_id: post_four.id, description: "
    fetch('http://localhost:3000/monsters') /n
    .then(r => r.json()) /n
    .then(monstersArray => { /n
    const theMonstersArray= monstersArray /n
    let i=0 /n
    let monsterSet= theMonstersArray.slice(i, i+50) /n
    let firstSet= monsterSet.forEach(showAllMonsters) /n
    })")
    par_eleven_for_four=Paragraph.create(post_id: post_four.id, description: "This makes it so that only the first fifty monsters are displayed when the DOM content loads. A slice takes two arguments, the index number of where the slice should start and the index number of where the slice should end. The second argument is not inclusive, and index numbers begin at zero for the first element in an array.")
    par_twelve_for_four=Paragraph.create(post_id: post_four.id, description: "INSERT LINK")
    par_thirteen_for_four=Paragraph.create(post_id: post_four.id, description: "To make the forward button at the bottom of the page functional, the following worked (to an extent!):")
    par_fouteen_for_four=Paragraph.create(post_id: post_four.id, description: "
    let forwardButton= document.getElementById('forward') /n
    forwardButton.addEventListener('click', (event) => { /n
    i+=50 /n
    let nextFifty= monstersArray.slice(i, i+50) /n
    nextFifty.forEach(showAllMonsters) /n
    })
    ")
    par_fifteen_for_four=Paragraph.create(post_id: post_four.id, description: "I added an event listener to the forward button so that when it is clicked, the next slice in the monstersArray is displayed. However, the issue is that the previous fifty monsters are still on the page…and that is too many monsters! I can't fight them all at once. It is too much. I also haven't worked on the backward arrow yet, so unfortunately there is no going back. Unless you refresh the page! Then you will be down to the first fifty again until you become overzealous enough to click the forward button. But this is a single-page application, so I wouldn't advice you to refresh the page to save your life.")
    par_sixteen_for_four=Paragraph.create(post_id: post_four.id, description: "I will keep working on the arrow buttons and will write an update when I manage to make them work the way they are supposed to. In the meantime, I will backtrack a little to explain some of the code that I glossed over above.")
    par_seventeen_for_four=Paragraph.create(post_id: post_four.id, description: "The showAllMonsters function loops through the array of monsters in the database to display the information there in an organized way on the page. Our instructor Eric warned us that using innerHTML could make us unnecessarily over-exposed to harm by all the dangerous people out there on the internet, so I got practice writing things line by line. This is the beginning of that function. We were learning JavaScript, so that is one of the reasons we were not editing the HTML file directly and instead were adding elements to the HTML through a JavaScript file.")
    par_eighteen_for_four=Paragraph.create(post_id: post_four.id, description: "
        function showAllMonsters(monsterObj){ /n
        let aMonsterSpan= document.createElement('span') /n
        let aMonsterName= document.createElement('h2') /n
        aMonsterName.innerText= monsterObj.name /n
        let aMonsterAge= document.createElement('li') /n
        aMonsterAge.innerText= `${monsterObj.age} years old` /n
        let aMonsterBio= document.createElement('p') /n
        aMonsterBio.innerText= `Bio: ${monsterObj.description}` /n
        let deleteMonsterButton= document.createElement('button') /n
        deleteMonsterButton.innerText='Delete this monster' /n
        let updateMonsterButton= document.createElement('button') /n
        updateMonsterButton.innerText= 'Update this Monster' /n
        aMonsterSpan.append(aMonsterName, aMonsterAge, /n 
        aMonsterBio, deleteMonsterButton, updateMonsterButton) /n
        theMonsterContainer.append(aMonsterSpan)}")
    par_nineteen_for_four=Paragraph.create(post_id: post_four.id, description: "theMonsterContainer is a div already written in the HTML we were given, and I captured it in a constant earlier on.")
    par_twenty_for_four=Paragraph.create(post_id: post_four.id, description: "const theMonsterContainer= document.getElementById('monster-container')")
    par_twentyone_for_four=Paragraph.create(post_id: post_four.id, description: "This was one of the first times I had to perform the gymnastics of appending some elements to a span before appending that span to a div. This was good practice for our code challenge later in the week, when the nesting of elements in the HTML was more complex and required more careful planning.")
    par_twentytwo_for_four=Paragraph.create(post_id: post_four.id, description: "After that, I made the forms and event listeners for creating and updating a monster. But I won't include the code for all that, because sometimes you have to fight your own battles.")
    par_twentythree_for_four=Paragraph.create(post_id: post_four.id, description: "INSERT VIDEO")

    post_three=Post.create(title: "Time and Greetings in a JavaScript Function")
    
    par_one_for_three=Paragraph.create(post_id: post_three.id, description: "This post is about one of my first experiences handling time in JavaScript while completing the Fns as First Class Data: Do Behavior lab on Learn.co. One of the directives of the lab was to create a function that, given a time entered by a user in 24-hour format, will return a greeting appropriate for the time of day.")
    par_two_for_three=Paragraph.create(post_id: post_three.id, description: "INSERT SCREEN SHOT")
    par_three_for_three=Paragraph.create(post_id: post_three.id, description: "The lab also gives us a hint to use the .split() method and parseInt() to process the time entered:")
    par_four_for_three=Paragraph.create(post_id: post_three.id, description: "INSERT SCREEN SHOT")
    par_five_for_three=Paragraph.create(post_id: post_three.id, description: "I am going to focus just on the greet function in this blog, as it gave me plenty to think about and work on. In the words of Miracle Legion, 'Just say hello. It means a lot to me.'")
    par_six_for_three=Paragraph.create(post_id: post_three.id, description: "INSERT VIDEO")
    par_seven_for_three=Paragraph.create(post_id: post_three.id, description: "The Solution I Arrived At /heading")
    par_eight_for_three=Paragraph.create(post_id: post_three.id, description: "First, here are two solutions that I eventually arrived at (with some code that I will discuss later commented out):")
    par_nine_for_three=Paragraph.create(post_id: post_three.id, description: "INSERT SCREEN SHOT")
    par_ten_for_three=Paragraph.create(post_id: post_three.id, description: "INSERT SCREEN SHOT")
    par_eleven_for_three=Paragraph.create(post_id: post_three.id, description: "The first solution should work if I do not need an else statement returning something like TEST to signal an error.")
    par_twelve_for_three=Paragraph.create(post_id: post_three.id, description: "Before I came to the first solution, I worked on the second one, so the following explains my thought process for that.The parameter the_time would be replaced by an argument like 09:17 or 18:42 (6:42 p.m.) when a user enters the time of day, and this has to be split to remove the colon. It also has to be changed from a string into a number so the if and else statements can be formed with <, >, ≥, etc. operators to indicate what the returned greeting should be for different ranges of time. That is because these operators only work with numbers as far as I know.")
    par_thirteen_for_three=Paragraph.create(post_id: post_three.id, description: "The purpose of the split method is to remove the colon, but it also breaks the argument into two separate strings that are put into an array. For example, for 16:00 the resulting array would be ['16', '00'].")
    par_fouteen_for_three=Paragraph.create(post_id: post_three.id, description: "ParseInt() can then convert the strings into integers if you iterate through each number of the array by their index, for example by doing parseInt(this_time[0]) to get 16, and parseInt(this_time[1]) to get 00. Before I used .parseInt(), I used .concat() to join the two strings in the array (this time without the colon sadly separating them!), which gave me 1600. Then I was able to run that integer through the if/else statements to find the appropriate greeting.")
    par_fifteen_for_three=Paragraph.create(post_id: post_three.id, description: "Misadventure #1 /heading")
    par_sixteen_for_three=Paragraph.create(post_id: post_three.id, description: "Now, for some of the discoveries I made before arriving at those solutions!
    One of the mistakes I made was saving the first index and the second index of this_time to separate variables, one for the hour and one for the minutes. I thought that I could handle it that way, but it was a path that led to many misadventures. Below is one attempt to make it work.")
    par_seventeen_for_three=Paragraph.create(post_id: post_three.id, description: "INSERT SCREEN SHOT")
    par_eighteen_for_three=Paragraph.create(post_id: post_three.id, description: "The Good Morning greeting was being returned reliably with this function. the Good Evening greeting was working starting at 18:00(it was supposed to be returned starting at 17:01). And between 12:00 and 17:00, Good Afternoon was being returned as long as it was on the hour (12:00, 13:00, etc.). For example, passing in 12:05 as an argument led to the result of TEST, when it should have returned Good Afternoon.")
    par_nineteen_for_three=Paragraph.create(post_id: post_three.id, description: "The first else if statement was where problems were coming in. If I gave a range between 12 and 17 for the hour and did not include the part of the code involving the minutes, then if a user entered 17:12, the function returned Good Afternoon, when it should have returned Good Evening.")
    par_twenty_for_three=Paragraph.create(post_id: post_three.id, description: "Though I meant for 'the_minutes <01' to limit only the range of time for the hour of 17, it was read as applying to every hour between 12 and 17. At one point, I believe I got a slight variation of this to work somehow. However, even when it worked in my Chrome DevTools console, in the terminal where I was completing the lab it gave me the intriguing error of 'legacy octal literals are not allowed in strict mode.' It objected to being asked to process 01, or 00, etc. as a number.")
    par_twentyone_for_three=Paragraph.create(post_id: post_three.id, description: "This leads me to one of my other takeaways from the lab related to .parseInt(). I had not used .parseInt() more than a couple times thus far in my learning process, so the notion of a base or radix mystified me. What I found out about this was that a radix of ten refers to the numeral system based on integers 0–9. When I experimented with this in my console, .parseInt() defaulted to a base of 10 if no argument was given for it - but refer to MDN(link below) or other documentation to get a thorough answer to what happens if you do not specify a radix. I tried changing the base to different values to see what would happen, but I was unable to understand from the output alone how the base resulted in the output it was giving me. Wikipedia gave me a glimpse of the wondrous rabbit-hole that I could have found myself going down if I had had more time to learn about different numeral systems. I encourage you all to take that journey, and I hope to join you there at some point, just not right now.")
    par_twentytwo_for_three=Paragraph.create(post_id: post_three.id, description: "INSERT LINK")
    par_twentythree_for_three=Paragraph.create(post_id: post_three.id, description: "INSERT LINK")
    par_twentyfour_for_three=Paragraph.create(post_id: post_three.id, description: "Misadventure #2 /heading")
    par_twentyfive_for_three=Paragraph.create(post_id: post_three.id, description: "The last couple of things that I reviewed and learned more about thanks to this lab were the importance of variables and the way the .join() method works. Below is the solution I arrived at but without all of the variables in place. When I split the_time, that work was lost without a variable to hold the transformed the_time in, because the .split() method is non-destructive (it does not permanently alter what it operates on). So, none of the following operations and statements in the function work correctly later on if I do not starting saving to variables right away.")
    par_twentysix_for_three=Paragraph.create(post_id: post_three.id, description: "INSERT LINK")
    par_twentyseven_for_three=Paragraph.create(post_id: post_three.id, description: "Lastly, I tried using the .join() method before I used .concat(). I made the mistake of calling .join() instead of .join(''). You can see the different results of using one versus the other below. Also refer to the MDN for more information about ways to use this method.")
    par_twentyeight_for_three=Paragraph.create(post_id: post_three.id, description: "INSERT LINK")
    par_twentynine_for_three=Paragraph.create(post_id: post_three.id, description: "INSERT LINK")
    par_thirty_for_three=Paragraph.create(post_id: post_three.id, description: "At first I didn't know why .join() was not working, but testing the code in the console allowed me to see what was happening. The .join() method separates the elements that it brings together by a comma unless you specify some other way to join them in one string. 12,00 was the result of using .join() on an argument of 12:00, and this interestingly turned into 12 when I used .parseInt() on it, so people were being told Good Morning all day long.")
    par_thirtyone_for_three=Paragraph.create(post_id: post_three.id, description: "INSERT VIDEO")
    par_thirtytwo_for_three=Paragraph.create(post_id: post_three.id, description: "However, .join('') (with no spaces between the quotation marks) resulted in the same string as when I used .concat(), so I could have done that. But when all else is equal, I generally consider it preferable to use methods with the word cat in them. You can decide for yourself.")
    par_thirtythree_for_three=Paragraph.create(post_id: post_three.id, description: "INSERT GIF")

    post_two=Post.create(title: "The Split Method and the Power of Punctuation")
    
    par_one_for_two=Paragraph.create(post_id: post_two.id, description: "This is my first blog, and it is going to be about the mysterious ways of the split method. I had the chance to learn more about this method while working on a lab called the OO Cash Register Lab during the first module of Flatiron School's Software Engineering program at Access Labs in Brooklyn, NY.* So, I will write about some of my misadventures while completing that lab and what I learned about the split method along the way.")
    par_two_for_two=Paragraph.create(post_id: post_two.id, description: "The prompt asked us to do the following:")
    par_three_for_two=Paragraph.create(post_id: post_two.id, description: "INSERT SCREEN SHOT")
    par_four_for_two=Paragraph.create(post_id: post_two.id, description: "https://learn.co/tracks/module-1-web-development-immersive-2-1/object-oriented-ruby/object-s-self/oo-cash-register /anchor")
    par_five_for_two=Paragraph.create(post_id: post_two.id, description: "One of the methods I was supposed to write would take parameters of a title of an item, the quantity of the item, and the price of it. It was supposed to update the total price of all items combined in the shopping cart and it was also supposed to add new items to the @items array to keep track of what was in the shopping cart.")
    par_six_for_two=Paragraph.create(post_id: post_two.id, description: "This is the beginning of the code to get you oriented:")
    par_seven_for_two=Paragraph.create(post_id: post_two.id, description: "INSERT SCREEN SHOT")
    par_eight_for_two=Paragraph.create(post_id: post_two.id, description: "This is the first method I wrote, for adding an item to the cart:")
    par_nine_for_two=Paragraph.create(post_id: post_two.id, description: "INSERT SCREEN SHOT")
    par_ten_for_two=Paragraph.create(post_id: post_two.id, description: "And below is the small part of the above that this blog is about. Dealing with quantity was what was most difficult for me at the time. The more stuff one has, the harder it can be to keep track of it.")
    par_eleven_for_two=Paragraph.create(post_id: post_two.id, description: "First, here is what worked, and then I will go through some of the things that didn't work. The binding.pry is included to show you how the array @items ends up looking under different conditions.")
    par_twelve_for_two=Paragraph.create(post_id: post_two.id, description: "INSERT SCREEN SHOT")
    par_thirteen_for_two=Paragraph.create(post_id: post_two.id, description: "When I call binding.pry on this, this is what I see:")
    par_fouteen_for_two=Paragraph.create(post_id: post_two.id, description: "INSERT SCREEN SHOT")
    par_fifteen_for_two=Paragraph.create(post_id: post_two.id, description: "So, the tests are looking to see whether we can handle different quantities of an item, in this case books. (Anyone with towers of books surrounding them in their apartment can tell you that it is important to try to keep them organized, even if more often than not this is a losing battle!)")
    par_sixteen_for_two=Paragraph.create(post_id: post_two.id, description: "Three books were added to the cart, and we see that reflected in the @items array. But it took me a long time to get to that point, so I will back up to show you some of the things that could (and did) go wrong.")
    par_seventeen_for_two=Paragraph.create(post_id: post_two.id, description: "First, I explored just multiplying the title by the quantity, like so (the working code is commented out):")
    par_eighteen_for_two=Paragraph.create(post_id: post_two.id, description: "INSERT SCREEN SHOT")
    par_nineteen_for_two=Paragraph.create(post_id: post_two.id, description: "But this is how that turned out:")
    par_twenty_for_two=Paragraph.create(post_id: post_two.id, description: "INSERT SCREEN SHOT")
    par_twentyone_for_two=Paragraph.create(post_id: post_two.id, description: "Instead of listing three new books in the cart, I have one big triple book. (Large volumes are not easy to carry around with you to read on the train, so this is a problem!) So, I knew with the help of binding.pry that I needed to find a way to split up the three books that did not currently want to be apart. This would also have to be the case for any quantity of items, not just for the test case of books. It occurred to me thanks to Learn.co's previous lessons that there was a method for that, the split method. Below is Ruby Doc's definition of the split method.")
    par_twentytwo_for_two=Paragraph.create(post_id: post_two.id, description: "INSERT SCREEN SHOT")
    par_twentythree_for_two=Paragraph.create(post_id: post_two.id, description: "https://ruby-doc.org/core-2.4.0/String.html#method-i-split /anchor")
    par_twentyfour_for_two=Paragraph.create(post_id: post_two.id, description: "Ruby Doc gives a number of examples of ways to split a string, and I will discuss a few of them. The problem that I ran into initially after suspecting that I should somehow put the split method to use was that there was nothing to split ['bookbookbook'] by, no punctuation marks and no white space, for example. Just calling .split on the array did nothing (yes, I am sure I tried that!). Using k as a delimiter, which you can try for fun like so:")
    par_twentyfive_for_two=Paragraph.create(post_id: post_two.id, description: "INSERT SCREEN SHOT")
    par_twentysix_for_two=Paragraph.create(post_id: post_two.id, description: "did this:")
    par_twentyseven_for_two=Paragraph.create(post_id: post_two.id, description: "INSERT SCREEN SHOT")
    par_twentyeight_for_two=Paragraph.create(post_id: post_two.id, description: "That might have been good for Halloween last week, but it is not exactly what I was looking for! Also, we might want to add items to the cart that do not have a k in them, and in that case this would also not do anything we want it to do.")
    par_twentynine_for_two=Paragraph.create(post_id: post_two.id, description: "Ruby Doc tells us that we can split along white space, like this, if there is white space to serve as a delimiter:")
    par_thirty_for_two=Paragraph.create(post_id: post_two.id, description: "INSERT SCREEN SHOT")
    par_thirtyone_for_two=Paragraph.create(post_id: post_two.id, description: "Or , it tells us, we could split along each letter, like this:")
    par_thirtytwo_for_two=Paragraph.create(post_id: post_two.id, description: "INSERT SCREEN SHOT")
    par_thirtythree_for_two=Paragraph.create(post_id: post_two.id, description: "to give us this:")
    par_thirtyfour_for_two=Paragraph.create(post_id: post_two.id, description: "INSERT SCREEN SHOT")
    par_thirtyfive_for_two=Paragraph.create(post_id: post_two.id, description: "But that is a little like buying a book by the chapter, too many volumes instead of too few.")
    par_thirtysix_for_two=Paragraph.create(post_id: post_two.id, description: "Another example of a delimiter that Ruby Doc gives us that I like, in spite of how ineffectual it would appear to be for the OO Cash Register Lab is:")
    par_thirtyseven_for_two=Paragraph.create(post_id: post_two.id, description: "INSERT SCREEN SHOT")
    par_thirtyeight_for_two=Paragraph.create(post_id: post_two.id, description: "Here is a link to that song, in case you are interested. Thank you Ruby Doc.")
    par_thirtynine_for_two=Paragraph.create(post_id: post_two.id, description: "https://www.youtube.com/watch?v=IQNBQI3UDag /anchor")
    par_forty_for_two=Paragraph.create(post_id: post_two.id, description: "This was all enough to get me to go back to try to interpolate my way out of the problem before again coming back to kneel at the shrine of the split method. So, I tried to interpolate a comma between the items like this:")
    par_fortyone_for_two=Paragraph.create(post_id: post_two.id, description: "INSERT SCREEN SHOT")
    par_fortytwo_for_two=Paragraph.create(post_id: post_two.id, description: "and got this:")
    par_fortythree_for_two=Paragraph.create(post_id: post_two.id, description: "INSERT SCREEN SHOT")    
    par_fortyfour_for_two=Paragraph.create(post_id: post_two.id, description: "It looked like I was getting closer, so I edited the above to also include a space after the comma, like this:")
    par_fortyfive_for_two=Paragraph.create(post_id: post_two.id, description: "INSERT SCREEN SHOT")    
    par_fortysix_for_two=Paragraph.create(post_id: post_two.id, description: "to get this:")    
    par_fortyseven_for_two=Paragraph.create(post_id: post_two.id, description: "INSERT SCREEN SHOT")    
    par_fortyeight_for_two=Paragraph.create(post_id: post_two.id, description: "Things were looking good, and I was feeling clever; but there was still an extra comma and space at the end of the string, and I still had one string of books instead of three separate strings. This is what brought me back to the split method.")    
    par_fortynine_for_two=Paragraph.create(post_id: post_two.id, description: "The split method separates your string into smaller strings and adds the commas for you while leaving off the unwanted comma at the end. I knew that the split method was the answer, even though it was giving me so many problems.")    
    par_fifty_for_two=Paragraph.create(post_id: post_two.id, description: "What I ended up realizing was that the split method speaks the language of punctuation. There are other delimiters, but punctuation is one thing it likes to work with. Since I am a beginner at software engineering, I don't know first-hand whether computers are stupid, as some people say. But I think that there is something smart about the focus that the split method has on punctuation.")    
    par_fiftyone_for_two=Paragraph.create(post_id: post_two.id, description: "Learning how to punctuate properly can be a difficult thing to master. It is something that as a writer and speaker, one can also overthink and in doing so miss the mark. When punctuation does not serve primarily to convey a message clearly, it can serve a stylistic purpose. It can arrest people's attention, make them unengaged, or make them wonder about something that is left hanging. Punctuation helps us to organize our thoughts. It gives them a certain speed(the urgency of the exclamation point) or forces us to take our time (commas might gather speed, but they can also make us take our time depending on the context). So, I like that the split method speaks the language of punctuation, even though it took me awhile to appreciate this, and even though there are still things about the method that are a mystery to me.")    
    par_fiftytwo_for_two=Paragraph.create(post_id: post_two.id, description: "So, that is how I got to the final result:")    
    par_fiftythree_for_two=Paragraph.create(post_id: post_two.id, description: "INSERT SCREEN SHOT")    
    par_fiftyfour_for_two=Paragraph.create(post_id: post_two.id, description: "giving me:")    
    par_fiftyfive_for_two=Paragraph.create(post_id: post_two.id, description: "INSERT SCREEN SHOT")    
    par_fiftysix_for_two=Paragraph.create(post_id: post_two.id, description: "I didn't have to add a space after the comma in the title interpolation, because the split method separates the strings in its resulting array according to the conventions of English grammar, or at least the grammar of arrays, with a comma and a space. Also, if I had added a space it would have actually just created other problems.")    
    par_fiftyseven_for_two=Paragraph.create(post_id: post_two.id, description: "INSERT SCREEN SHOT")    
    par_fiftyeight_for_two=Paragraph.create(post_id: post_two.id, description: "I had to use flatten!, because without it I had a nested array, like this:")    
    par_fiftynine_for_two=Paragraph.create(post_id: post_two.id, description: "INSERT SCREEN SHOT")    
    par_sixty_for_two=Paragraph.create(post_id: post_two.id, description: "This happened without the flatten! method being used on the array, because the @items variable was set equal to an empty array. Then, the split method turned the string into an array of strings, which is what I was pushing into the empty @items array. Flatten! collapses the nested arrays into one array that can later on be iterated over to display the contents of the shopping cart or do other things.")    
    par_sixtyone_for_two=Paragraph.create(post_id: post_two.id, description: "In spite of enjoying discovering that the split method speaks the language of punctuation, it turns out that I could have also achieved the same result by just adding a whitespace to the interpolation and then using white space as the delimiter, like this:")    
    par_sixtytwo_for_two=Paragraph.create(post_id: post_two.id, description: "INSERT SCREEN SHOT")    
    par_sixtythree_for_two=Paragraph.create(post_id: post_two.id, description: "Since it doesn't matter whether you use a punctuation mark or white space to serve as a delimiter, you can rely on your own preferences (or your own whims at the moment) for either punctuated or blank space.")    



