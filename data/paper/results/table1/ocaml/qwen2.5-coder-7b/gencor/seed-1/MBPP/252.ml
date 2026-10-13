
let rec convert (numbers : int) :  float * float = 
  let rec convert_angle acc range =
    if range = 0 then acc
    else convert_angle (acc +. 2. .  (float_of_int range) *. 3.14159) (range - 1)
  in
  let calculate_polar x y =
    let magnitude = sqrt (x *. x +. y *. y) in
    let angle = atan2 y x in
    (magnitude, angle)
  in
  calculate_polar numbers 0

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to convert complex numbers to polar coordinates. *)
