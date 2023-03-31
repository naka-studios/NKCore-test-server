import './App.css';
import React from 'react';
import heart from './assets/images/heart.png';
import armor from './assets/images/armor.png';
import oxygen from './assets/images/lightning.png';

class App extends React.Component {
  constructor(props) {
    super(props);
  }

  componentDidMount() {
    window.addEventListener('message', (event) => {
      document.getElementById('root').style.display = event.data.show == 'hide' ? 'none' : 'block';
      document.getElementById('boxHeal').setAttribute('style', 'width:' + event.data.health + '%');
      document.getElementById('boxArmor').setAttribute('style', 'width:' + event.data.armor + '%');
      document.getElementById('boxOxygen').setAttribute('style', 'width:' + event.data.oxygen + '%');
    });
  }

  render() {
    return (
      <div
        className='App'
        id='container'
      >
        <div id='heal'>
          <div id='boxHeal'></div>
          <img
            id='heart'
            src={heart}
          />
        </div>

        <div id='armor'>
          <div id='boxArmor'></div>
          <img
            id='vest'
            src={armor}
          />
        </div>

        <div id='oxygen'>
          <div id='boxOxygen'></div>
          <img
            id='stamina'
            src={oxygen}
          />
        </div>
      </div>
    );
  }
}

export default App;
