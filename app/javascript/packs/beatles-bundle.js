import ReactOnRails from 'react-on-rails';

import BeatlesApp from '../bundles/Beatles/startup/BeatlesApp';

// This is how react_on_rails can see the HelloWorld in the browser.
ReactOnRails.register({
  BeatlesApp,
});
