//trying to merg 2 touched obj
class Mobj {
PVector location=new PVector();
PVector v=new PVector();
PVector G=new PVector();
float mos,mass;
  
  
  Mobj(Obj a,Obj b){
  location=PVector.div(PVector.add(a.location,b.location),2);
  v= (a.v.mult(a.mass).add(b.v.mult(b.mass))).div(b.mass+a.mass);
  mos=pow((a.os*a.os*a.os+b.os*b.os*b.os),1/3);
  mass=3*PI*mos*mos*mos*pow(10,9)/4;  

  }
  
  
  void draw() {
    fill(255,0,0);
    ellipse(location.x,location.y,mos,mos);
    location=location.add(v);
  }
  PVector G(Obj other) {
    PVector dir=new PVector();
    dir.x=location.x-other.location.x;
    dir.y=location.y-other.location.y;
    G.x=dir.x*(6.7*pow(10,-11)*mass/pow(dir.mag(),3));
    G.y=dir.y*(6.7*pow(10,-11)*mass/pow(dir.mag(),3));
return G;

  }    
  
  
  
}