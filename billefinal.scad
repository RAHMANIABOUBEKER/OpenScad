r_bille=0.8; //rayon de la bille
h_bille=0.45;  //hauteur de la bille

r_socle=1.1*r_bille; //rayon de socle (cylindre)
h_socle=h_bille; //hauteur de cylinder

//dimenstion du pavé 
x_paver = 11.7;
y_paver = 19.7;
z_paver = 6;
$fn=30; //la résoluion
//construcion de module bille pour l'ecriture braille 
module bille(){
    union(){
        scale([r_bille,r_bille,h_bille])
        color("red")    
        sphere(1.,center=true);
        translate([0.,0.,-(h_bille/2.)])
        color("blue")
        cylinder(h=h_socle,r=r_socle, center = true);
        
           translate([0.,0.,-((h_socle))])
        
        color("blue")
        cylinder(h=0.162244,r=r_socle, center = true);
        
        }
    }
    
   translate([0,0,0.45]) /*rotate(180, [0,1,0])*/  
    scale(9.8,9.8,9.8)
    bille();
    

    