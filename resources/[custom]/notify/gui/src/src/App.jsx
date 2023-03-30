import "./App.css";
import React from "react";

class App extends React.Component {
  constructor(props) {
    super(props);
  }

  componentDidMount() {
    window.addEventListener("message", (event) => {
      this.CreateNotification(event.data);
    });
  }

  CreateNotification(data) {
    let $notification = document.createElement("div");

    $notification.classList.add("notification");
    $notification.classList.add(data.type);
    $notification.innerHTML = data.text;

    document.getElementById("App").appendChild($notification);

    setTimeout(() => {
      $notification.remove();
    }, data.duration);

    return;
  }

  render() {
    return <div className="App" id="App"></div>;
  }
}

export default App;
