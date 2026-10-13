let rec min_Jumps (steps :  int * int) (d : int) : float =
  let (x, y) = steps in
  if y > x || (x + y < d) then
    failwith "Impossible"
  else if y = 0 && x = d then 
    1.0
  else if y = 0 then 
    0.5 ** (float d)
  else
    min_Jumps (x + steps, y - steps) (d - steps) +. 0.5 ** (float (d - x))

let solve_2D_plane (steps : int) : float =
  min_Jumps (0, 0) steps


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check for the number of jumps required of given length to reach a point of form (d, 0) from origin in a 2d plane. *)
