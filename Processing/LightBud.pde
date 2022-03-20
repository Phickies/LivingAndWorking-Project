class LightBud{

  private float posX, posY, widthX, widthY;
  private int lightTension = 0;
  
  LightBud(float posX, float posY, float widthX, float widthY){
    this.posX = posX;
    this.posY = posY;
    this.widthX = widthX;
    this.widthY = widthY;
  }
  
  public void display(){
    rect(this.posX, posY, this.widthX, this.widthY);
    fill(this.lightTension);
  }
  
  public void changeLightTension(boolean isHovered){
    if (isHovered){
      this.lightTension = 255;
    } else {
      this.lightTension = 0;
    }
  }
  
  public boolean isHovered(float mouseX){
    boolean isHovered = false;
    if (mouseX > this.posX && mouseX < (this.posX + this.widthX)){
      isHovered = true;
    }
    return isHovered;
  }
}
