import './App.css';
import React from 'react';
import music from './assets/music/music.ogg';

class App extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      play: false,
    };
  }

  componentDidMount() {
    window.addEventListener(
      'keydown',
      (event) => {
        const audio = document.getElementById('audio');
        audio.volume = 0.5;

        switch (event.key) {
          case ' ':
            if (this.state.play) {
              audio.pause();
              this.setState({ play: false });
            } else {
              audio.play();
              this.setState({ play: true });
            }
            break;
          default:
            break;
        }
      },
      false
    );
  }

  render() {
    return (
      <div className='App'>
        <h1 className='enable_music'>
          {'Use the '}
          <strong>{'spacebar'}</strong>
          {' to toggle music'}
        </h1>

        <h1 className='server_name'>
          <strong>{'Naka'}</strong>
          {' FFA'}
        </h1>

        <h1 className='under_text'>{'Connecting to the server'}</h1>
        <div className='overcast'></div>
        <div className='progress'></div>

        <audio
          id='audio'
          src={music}
          loop={true}
          hidden={true}
          autoPlay={true}
        />
      </div>
    );
  }
}

export default App;
