ArrayList<Obj> obj;
ArrayList<PVector> Gtotal;
ArrayList<Mobj> Mobj;



void setup(){
background(0);
size(1360,768);
frameRate(60);
obj=new ArrayList<Obj>();
Gtotal=new ArrayList<PVector>();
Mobj=new ArrayList<Mobj>();

for (int i = 0;i<30;i++){
Gtotal.add(new PVector());
obj.add(new Obj());
}
}
void draw(){
  //background(0);
  //add all the acc from objs to a objs and yes,it's not effiency
  for (int i=0; i<obj.size();i++){
  obj.get(i).drawobj();
  for (int j=1; j<obj.size(); j++){
    
  if ((i!=j)&&(i!=0)){
  Gtotal.get(i).x=(obj.get(0).G(obj.get(i)).add(obj.get(j).G(obj.get(i)))).x;
  Gtotal.get(i).y=(obj.get(0).G(obj.get(i)).add(obj.get(j).G(obj.get(i)))).y;
  }
  
  if (i==0){
  Gtotal.get(0).x=(obj.get(1).G(obj.get(0)).add(obj.get(j).G(obj.get(0)))).x;
  Gtotal.get(0).y=(obj.get(1).G(obj.get(0)).add(obj.get(j).G(obj.get(0)))).y;
  }
  if ((i!=j)&&(obj.get(i).touch(obj.get(j)))){
//Mobj.add(new Mobj(obj.get(i),obj.get(j)));
//obj.get(i).location.x=random(213123213,1999999);
//obj.get(i).location.y=random(-23232133,-21321321);
}     
}
  obj.get(i).v=obj.get(i).v.add(Gtotal.get(i));

}
   
}
  
 