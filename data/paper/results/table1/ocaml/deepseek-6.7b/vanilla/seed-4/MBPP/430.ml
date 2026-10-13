let rec parabola_directrix (a : int) (b : int) (c : int) : int =
  let discr = b * b - 4 * a * c in
  if discr < 0 then
    failwith "The equation has no real roots, cannot compute directrix." 
  else 
    let sqrt_discr = sqrt (float_of_int discr) in
    let two_a = 2 * a in
    let neg_b = -b in
    neg_b + sqrt_discr / two_a


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the directrix of a parabola. *)
