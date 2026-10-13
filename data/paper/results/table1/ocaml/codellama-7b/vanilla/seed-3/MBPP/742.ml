let rec area_tetrahedron (side : int) : float =
  if side < 1 then
    failwith "Side must be greater than or equal to 1"
  else
    let apothem = (sqrt 12.) /. 2. in
    let base = sqrt (((float_of_int side) ** 2.) -. (apothem ** 2.)) in
    (base ** 2.) * 4. *. apothem
   

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to caluclate the area of a tetrahedron. *)
