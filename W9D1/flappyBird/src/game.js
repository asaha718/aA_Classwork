import Level from './level';

export default class FlappyBird {
  constructor(canvas){
    this.ctx = canvas.getContext("2d");
    this.dimensions = { width: canvas.width, height: canvas.height };

  }
  

  animate() {
    this.lvl.drawBackground(this.ctx); 
    this.bird.drawBird(this.ctx); 
  }
  

  restart() {
    this.lvl= new Level(this.dimensions); 
    this.bird= new Bird(this.dimensions); 
    this.animate(); 
  }

}

class Bird { 
  constructor(dimensions){ 
    this.velocity= 0; 
    this.dimensions= dimensions; 
    this.position= [100, 300] ; 
  }

  drawBird(context){ 
    context.fillStyle= "yellow"; 
    context.fillRect(...this.position, 40, 30); 
  }
}