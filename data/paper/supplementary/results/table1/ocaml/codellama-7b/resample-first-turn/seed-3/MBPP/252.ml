let rec convert (numbers : int) :  float * float =
  if numbers = 1 then
    (* This is the code that converts the first number to polar coordinates. *)
    let r = sqrt(real ** 2 + imaginary ** 2) in
    let theta = atan2(imaginary, real) in
    r, theta
  else
    (* This is the code that converts the remaining numbers to polar coordinates recursively. *)
    let r, theta = convert (numbers - 1) in
    let real' = real * cos(theta) - imaginary * sin(theta) in
    let imaginary' = real * sin(theta) + imaginary * cos(theta) in
    r, theta


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to convert complex numbers to polar coordinates. *)
