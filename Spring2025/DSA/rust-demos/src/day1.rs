
/// how modulus works internally related to binary representations of data
pub fn nate_mod(a: f64, b: f64) {
   let  q = (a/b).floor(); 
   dbg!(a);
   dbg!(b);
   dbg!(q);
   let m = a - q*b;
   dbg!(m);
}

pub fn nate_ieee() {
    print!("Radix: 2, p: 14");
    dbg!((2 as i32).pow(15));
    dbg!((2u32 as f32).powi(-14));
}
