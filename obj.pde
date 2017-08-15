class Obj {
PVector location=new PVector();
PVector v=new PVector();
PVector dir=new PVector();
PVector G=new PVector();
float os=random(5,15);
float mass;
boolean touch=false;
Obj() {
  //random location and initial velocity
  location.x=random(10,1350);
  location.y=random(10,758);
  v.x=random(-0.3,0.3);
  v.y=random(-0.3,0.3);
  //pow(10,random(8,9) is mass density
  mass=3*PI*os*os*os*pow(10,9)/4;  
}
void drawobj(){
fill(255);
ellipse(location.x,location.y,os,os);
move();
}
void move() {
location=location.add(v);
}
//acc that obj cause on other obj
PVector G(Obj other) {
dir.x=location.x-other.location.x;
dir.y=location.y-other.location.y;
G.x=dir.x*(6.7*pow(10,-11)*mass/pow(dir.mag(),3));
G.y=dir.y*(6.7*pow(10,-11)*mass/pow(dir.mag(),3));
return G;
}
//checking if 2 obj touch each other or not
boolean touch(Obj other){
float rad=os;
float radother=other.os;
if ((location.x-other.location.x)<(rad+radother) && (location.y-other.location.y)<(rad+radother))
{return true;}
return touch;
}

}
