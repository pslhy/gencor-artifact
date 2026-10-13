let rec convert (numbers : int) :  float * float = 
  let rec convert_angle acc range =
    if range = 0 then acc
    else convert_angle (acc +. 2. *. .pi /. float_of_int range) (range - 1) in
  let angle = convert_angle 0. numbers in
  let cos_angle = cos angle in
  let sin_angle = sin angle in
  (cos_angle, sin_angle)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to convert complex numbers to polar coordinates. *)
