class Clock {
    constructor() {
      const time = new Date(); // 1. Create a Date object.
      this.hours = time.getHours(); // 2. Store the hours, minutes, and seconds.
      this.minutes = time.getMinutes();
      this.seconds = time.getSeconds();
      this.printTime()// 3. Call printTime.
      setInterval(this._tick.bind(this), 
      1000); // 4. Schedule the tick at 1 second intervals.
    }
  
    printTime() {
      let timedisplay = `${this.hours}:${this.minutes}:${this.seconds}`; // Format the time in HH:MM:SS
      console.log(timedisplay);// Use console.log to print it.
    }
  
    _tick() {
        this.seconds += 1
        if (this.seconds > 59){
        this.minutes += 1; 
        this.seconds = 0; 
        } else if ( this.minutes > 59){
            this.hours += 1; 
            this.minutes = 0; 
        } else if (this.hour > 24){ 
            this.hour = 0
        };
        this.printTime();    
    }
}
  
  const clock = new Clock();

  // 1. Increment the time by one second.
  // 2. Call printTime.